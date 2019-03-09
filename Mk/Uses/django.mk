# $FreeBSD$
#
# Provide django support.  Since django is a python application, this
# frequently extends settings from USES=python.  It is mandatory to
# add python to USES if you're going to use django, and python must
# appear before django in USES.
#
# Feature:	django
# Usage:	USES=django[:args]
# Valid ARGS:	<version>, build, run, test
#
# version	Define the versions of Django your port is compatible with:
#
#		    USES=django:1.8	  # Only use Django 1.8
#		    USES=django:2.0+	  # Use Django 2.0 or newer
#		    USES=django:1.8-1.11  # Use Django 1.8 or 1.11
#		    USES=django:-1.11	  # Use any Django up to 1.11
#		    USES=django		  # Use any version of Django
#
# build		Indicates that Django is needed at build time and adds
#               if to BUILD_DEPENDS
# run		Indicates that Django is needed at run time and adds
#		it to RUN_DEPENDS
# test		Indicates that Django is needed at test time and adds
#		it to TEST_DEPENDS
#
# Django will be added only as a RUN_DEPENDS if none of build, run,
# test are specified.
#
# Variables which can be set by a user:
#
# DEFAULT_VERSIONS     - standard mechanism for selecting which is the
#                        preferred version of django to choose.
#
# Variables which can be set by the port:
#
#   none
#
# Variables set by django.mk available to be used by the port:
#
# DJANGO_PORTVERSION   - Version number suitable for ${PORTVERSION}
#
# DJANGO_PORTSDIR      - The port directory of the chosen Django framework
#
# DJANGO_REL           - Django release number without dots, eg. 10818 11108
#                        20000
#
# DJANGO_SUFFIX        - The major-minor release number of the chosen Django
#                        framework without dots, e.g. 18, 111, 20
#
# DJANGO_MAJOR_VER     - The major release version of the chosen Django
#                        framework.  e.g. 1, 2
#
# DJANGO_VER           - The major-minor release version of the chosen Django
#                        framework.  e.g. 1.8, 1.11, 2.0
#
# DJANGO_PKGNAMEPREFIX - Use this as a ${PKGNAMEPREFIX} to distinguish
#                        packages for different Django+Python versions.
#                        default: py${PYTHON_SUFFIX}-django${DJANGO_SUFFIX}-
#
# DJANGO_FLAVOR        - Use to tag Django ports in {BUILD,RUN,TEST}_DEPENDS
#                        lines for flavor support.
#
# MAINTAINER:	python@FreeBSD.org

.if !defined(_INCLUDE_USES_DJANGO_MK)
_INCLUDE_USES_DJANGO_MK=	yes

# Ensure the USES=python has already been processed
.if !defined(_INCLUDE_USES_PYTHON_MK)
IGNORE=	USES=django must be preceeded by USES=python
.else

# What Django versions are currently supported?
# Please keep in sync with the comment in Mk/bsd.default-versions.mk
_DJANGO_VERSIONS=	1.11 2.0 1.8 # in preference order
_DJANGO_PORTBRANCH=	1.11         # ${_DJANGO_VERSIONS:[1]}
_DJANGO_RELPORTDIR=	www/py-django

_DJANGO_ARGS=	${django_ARGS:S/,/ /g}

.undef _DJANGO_BUILD_DEP
.if ${_DJANGO_ARGS:Mbuild}
_DJANGO_BUILD_DEP=	yes
_DJANGO_ARGS:=		${_DJANGO_ARGS:Nbuild}
.endif

.undef _DJANGO_RUN_DEP
.if ${_DJANGO_ARGS:Mrun}
_DJANGO_RUN_DEP=	yes
_DJANGO_ARGS:=		${_DJANGO_ARGS:Nrun}
.endif

.undef _DJANGO_TEST_DEP
.if ${_DJANGO_ARGS:Mtest}
_DJANGO_TEST_DEP=	yes
_DJANGO_ARGS:=		${_DJANGO_ARGS:Ntest}
.endif

# If none of build, run or test dependencies are specified, assume
# that only a RUN_DEPENDS is needed.
.if !defined(_DJANGO_BUILD_DEP) && !defined(_DJANGO_RUN_DEP) && \
    !defined(_DJANGO_TEST_DEP)
_DJANGO_RUN_DEP=	yes
.endif

# Choose ether the systemwide default -- the first value from
# _DJANGO_VERSIONS -- or the value set in DEFAULT_VERSIONS
_DJANGO_DEFAULT:= ${DJANGO_DEFAULT:U${_DJANGO_PORTBRANCH}}

# DEFAULT_VERSIONS should contain one of the known Django versions
.if ! ${_DJANGO_VERSIONS:M${_DJANGO_DEFAULT}}
IGNORE=	Invalid django version ${_DJANGO_DEFAULT} should be one of: ${_DJANGO_VERSIONS:O}
.endif

.if defined(DJANGO_VERSION)
# Inherit the Django version passed down via DEPENDS_ARGS, if set.
_DJANGO_VERSION:=	${DJANGO_VERSION:S/^django//}
.else
_DJANGO_VERSION:=	${_DJANGO_DEFAULT}
.endif

_DJANGO_VERSION_REL!=	${SH} ${SCRIPTSDIR}/version-rel.sh ${_DJANGO_VERSION}

# Validate whether the requested version meets the version restriction
# from USES.  Uses a rather circumlocuitous way of achieving a
# 'regular expression match'

.if empty(${_DJANGO_ARGS})
# Unspecified Version limits.

.undef _DJ_LOWER
.undef _DJ_LOWER_REL
.undef _DJ_UPPER
.undef _DJ_UPPER_REL

.elif ${_DJANGO_ARGS:C/^([1-9]\.[0-9]+)$/matched/:Mmatched}
# Exact Version number of the form: 1.11

_DJ_LOWER:=	${_DJANGO_ARGS:C/^([1-9]\.[0-9]+)$/\1/}
_DJ_LOWER_REL!= ${SH} ${SCRIPTSDIR}/version-rel.sh ${_DJ_LOWER}
_DJ_UPPER:=	${_DJ_LOWER}
_DJ_UPPER_REL:=	${_DJ_LOWER_REL}

.elif ${_DJANGO_ARGS:C/^(-[1-9]\.[0-9]+)$/matched/:Mmatched}
# Upper Version Limit of the form: -1.11

.undef _DJ_LOWER
.undef _DJ_LOWER_REL
_DJ_UPPER:=	${_DJANGO_ARGS:C/^-([1-9]\.[0-9]+)$/\1/}
_DJ_UPPER_REL!=	${SH} ${SCRIPTSDIR}/version-rel.sh ${_DJ_UPPER}

.elif ${_DJANGO_ARGS:C/^([1-9]\.[0-9]+-[1-9]\.[0-9]+)$/matched/:Mmatched}
# Specified Version Range of the form: 1.8-1.11

_DJ_LOWER:=	${_DJANGO_ARGS:C/^([1-9]\.[0-9]+)-[1-9]\.[0-9]+$/\1/}
_DJ_LOWER_REL!=	${SH} ${SCRIPTSDIR}/version-rel.sh ${_DJ_LOWER}
_DJ_UPPER:=	${_DJANGO_ARGS:C/^[1-9]\.[0-9]+-([1-9]\.[0-9]+)$/\1/}
_DJ_UPPER_REL!= ${SH} ${SCRIPTSDIR}/version-rel.sh ${_DJ_UPPER}

.elif ${_DJANGO_ARGS:C/^([1-9]\.[0-9]+\+)$/matched/:Mmatched}
# Lower Version Limit of the form: 1.11+

_DJ_LOWER:=	${_DJANGO_ARGS:C/^([1-9]\.[0-9]+)\+$/\1/}
_DJ_LOWER_REL!= ${SH} ${SCRIPTSDIR}/version-rel.sh ${_DJ_LOWER}
.undef _DJ_UPPER
.undef _DJ_UPPER_REL

.else
# We can't grok _DJANGO_ARGS
IGNORE=	Cannot parse \"${_DJANGO_ARGS}\" as a version or version range.
.endif

# Does the Django version we're depending on for this build fall
# within the specified limits?

.if defined(${_DJ_LOWER_REL}) && ${_DJANGO_VERSION_REL} < ${_DJ_LOWER_REL}
# Version requested too low for this port
_DJANGO_VERSION_UNSUPPORTED= ${_DJ_LOWER} at least
.endif

.if defined(${_DJ_UPPER_REL}) && ${_DJANGO_VERSION_REL} > ${_DJ_UPPER_REL}
# Version requested too high for this port
_DJANGO_VERION_UNSUPPORTED= ${_DJ_UPPER} at most
.endif

#
# If we have a port that needs a version of Django other than the
# specified one, we should set IGNORE.
#
.if defined(_DJANGO_VERSION_UNSUPPORTED)
_DJV:=	${_DJANGO_VERSION}
IGNORE= Port requires Django ${_DJANGO_VERSION_UNSUPPORTED} but ${_DJV} was specified.
.endif

# ------------------------------
# FLAVORS: these are a combination of the Django version and the
# Python version, with the restriction that Django 2.0+ requires
# Python 3.3+.  Essentially take the python flavors and append the
# django flavors to them.

_PY_FLAVORS:=	${FLAVORS}
.undef FLAVORS

.for _djv in ${_DJANGO_VERSIONS:S/.//g}
.  for _pyf in ${_PY_FLAVORS}
_f:=	${_pyf}_django${_djv}
.    if !${_f:C/^py2[0-9]+_django2[0-9]+$/matched/:Mmatched}
FLAVORS:=	${FLAVORS} ${_f}
.    endif
.  endfor
.endfor

.if !empty(FLAVORS) && empty(FLAVOR)
FLAVOR=	${FLAVORS:[1]}
.endif

.if ${FLAVOR:Mpy[23][0-9]_django[12]*}
_DJ_PYTHON_VERSION:=	${FLAVOR:C/^py([0-9]+)_.*$/\1/}
_DJANGO_VERSION:=	${FLAVOR:C/^.*_django([0-9]+)$/\1/:C/(.)/\1./}
.endif

# Fallback value if there are no flavorings to set the python version.
.if empty(_DJ_PYTHON_VERSION)
_DJ_PYTHON_VERSION:=	${_PYTHON_VERSION:S/.//}
.endif

#-------------------------------

# To avoid having dependencies with @ and empty flavor:
# _DJANGO_VERSION is either set by (first that matches):
# - If using Django flavors, from the current Django and Python flavors
# - If using a version restriction (USES=django:1.11+), from the first
#   acceptable default Python and Django versions.
# - From DJANGO_DEFAULT
DJANGO_FLAVOR=	py${_DJ_PYTHON_VERSION}_django${_DJANGO_VERSION:S/.//}

# Pass DJANGO_VERSION down the dependency chain. This ensures that
# port A -> B -> C all will use the same django and python versions
# and do not try to find different ones, if the passed version fits
# into the supported version range.

DJANGO_VERSION?=	py-django${_DJANGO_VERSION}
.if !defined(PYTHON_NO_DEPENDS) && \
    ${DJANGO_VERSION} != ${_DJANGO_DEFAULT}
DEPENDS_ARGS+=		DJANGO_VERSION=${DJANGO_VERSION}
.endif

#
# Set some publicly accessible variables
#
DJANGO_VER=		${_DJANGO_VERSION}
DJANGO_SUFFIX=		${_DJANGO_VERSION:S/.//}
DJANGO_MAJOR_VER=	${_DJANGO_VERSION:R}
DJANGO_PORTSDIR=	${_DJANGO_RELPORTDIR}${DJANGO_SUFFIX}

DJANGO_PKGNAMEPREFIX=	py${_DJ_PYTHON_VERSION}-django${DJANGO_SUFFIX}-

#
# Ensure we depend on the right python versions
#
PYTHON_PKGNAMEPREFIX=	py${_DJ_PYTHON_VERSION}-
PYTHON_VERSION=		python${_DJ_PYTHON_VERSION:C/^(.)/\1./}
PYTHON_CMD=		${PYTHONBASE}/bin/python${_DJ_PYTHON_VERSION:C/^(.)/\1./}
PYTHON_PORTSDIR=	lang/python${_DJ_PYTHON_VERSION}
PY_FLAVOR=		py${_DJ_PYTHON_VERSION}
PYTHON_SITELIBDIR=	${PYTHONBASE}/lib/python${_DJ_PYTHON_VERSION:C/^(.)/\1./}/site-packages

# Copied verbatim from python.mk...
.if !defined(_PORTS_ENV_CHECK) || exists(${PORTSDIR}/${PYTHON_PORTSDIR})
.include "${PORTSDIR}/${PYTHON_PORTSDIR}/Makefile.version"
.endif

PYTHON_REL=   ${PYTHON_PORTVERSION:C/^([0-9]+\.[0-9]+\.[0-9]+).*/\1/:C/\.([0-9]+)$/.0\1/:C/\.0?([0-9][0-9])$/.\1/:S/.//g}

# NOTE:
#
#  DJANGO_VERSION will hold whatever is passed down the dependency
#  chain.  If a user runs `make DJANGO_VERSION=django1.11,
#  DJANGO_VERSION will be set to 'django1.11'. A port however may
#  require a different version, which is stored (above) in
#  _DJANGO_VERSION.  Every django bit below hence should use
#  django${_DJANGO_VERSION}, since this is the value, the _port_
#  requires
#

# Protect partial checkouts from Mk/Scripts/functions.sh:export_ports_env().
.if !defined(_PORTS_ENV_CHECK) || exists(${PORTSDIR}/${DJANGO_PORTSDIR})
.include "${PORTSDIR}/${DJANGO_PORTSDIR}/Makefile.version"
.endif

# Create DJANGO_REL with the release version encoded as a 5 digit
# number zero padded so that a numeric sort will order versions
# correctly. e.g. 1.11.8 -> 11108, 2.0 -> 20000.
#
# Assumes minor or patchlevel fields do not exceed 99.
#

DJANGO_REL!=	${SH} ${SCRIPTSDIR}/version-rel.sh ${DJANGO_PORTVERSION}

.if defined(_DJANGO_BUILD_DEP)
BUILD_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}django${DJANGO_SUFFIX}>=0:${DJANGO_PORTSDIR}@${PY_FLAVOR}
.endif

.if defined(_DJANGO_RUN_DEP)
RUN_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}django${DJANGO_SUFFIX}>=0:${DJANGO_PORTSDIR}@${PY_FLAVOR}
.endif

.if defined(_DJANGO_TEST_DEP)
TEST_DEPENDS+=	${PYTHON_PKGNAMEPREFIX}django${DJANGO_SUFFIX}>=0:${DJANGO_PORTSDIR}@${PY_FLAVOR}
.endif

.endif # _INCLUSE_USES_PYTHON_MK
.endif # _INCLUDE_USES_DJANGO_MK
