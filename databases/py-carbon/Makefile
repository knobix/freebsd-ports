# Created by: Evan Sarmiento <bsdports@wayfair.com>
# $FreeBSD$

PORTNAME=	carbon
PORTVERSION=	1.0.2
PORTREVISION=	1
CATEGORIES=	databases python
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	swills@FreeBSD.org
COMMENT=	Backend storage application for graphite

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}twisted>=0:devel/py-twisted@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}txamqp>=0.3:net/py-txamqp@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}whisper>=0.9.10:databases/py-whisper@${PY_FLAVOR}

NO_ARCH=	yes
USE_PYTHON=	distutils
USES=		python:2.7 django
USE_RC_SUBR=	carbon
USE_GITHUB=	yes
GH_ACCOUNT=	graphite-project
MAKE_ENV=	GRAPHITE_NO_PREFIX=yes

post-patch:
	@${REINPLACE_CMD} 's|%%PREFIX%%|${PREFIX}|g' ${WRKSRC}/setup.py

post-install:
	${RM} -r ${STAGEDIR}${PREFIX}/examples/init.d
	${RMDIR} ${STAGEDIR}${PREFIX}/examples

.include <bsd.port.mk>
