# $FreeBSD$

PORTNAME=	django-treebeard
DISTVERSION=	4.3
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	kai@FreeBSD.org
COMMENT=	Efficient tree implementations for Django

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		python
USE_PYTHON=	distutils autoplist django
NO_ARCH=	yes
PORTDOCS=	*

OPTIONS_DEFINE=	DOCS
DOCS_USE=		PYTHON=django=build
DOCS_BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}graphviz>0:graphics/py-graphviz@${PY_FLAVOR} \
			${PYTHON_PKGNAMEPREFIX}sphinx>0:textproc/py-sphinx@${PY_FLAVOR}
DOCS_VARS=		PYDISTUTILS_BUILD_TARGET+="build_sphinx -a -E"

post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	@(cd ${WRKSRC}/build/sphinx/html && \
	${COPYTREE_SHARE} . ${STAGEDIR}${DOCSDIR} \
		"! -name .buildinfo -and ! -name objects.inv")

.include <bsd.port.mk>
