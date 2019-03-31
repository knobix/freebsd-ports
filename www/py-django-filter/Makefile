# $FreeBSD$

PORTNAME=	django-filter
DISTVERSION=	1.1.0
PORTREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	kai@FreeBSD.org
COMMENT=	Dynamic filtering for querysets with Django

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${DJANGO_PKGNAMEPREFIX}djangorestframework>0:www/py-djangorestframework@${DJANGO_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}coreapi>0:devel/py-coreapi@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}coreschema>0:devel/py-coreschema@${PY_FLAVOR}

USES=		python
USE_PYTHON=	distutils autoplist django=1.11

NO_ARCH=		yes
CONFLICTS_INSTALL=	${DJANGO_PKGNAMEPREFIX}django-filter2

.include <bsd.port.mk>
