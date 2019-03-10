# $FreeBSD$

PORTNAME=	django-taggit
PORTVERSION=	0.23.0
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	kai@FreeBSD.org
COMMENT=	Reusable Django application for simple tagging

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

BUILD_DEPENDS=	${PYTHON_PKGNAMEPREFIX}isort>0:devel/py-isort@${PY_FLAVOR}

USES=		python django
USE_PYTHON=	autoplist distutils

NO_ARCH=		yes
CONFLICTS_INSTALL=	${PYTHON_PKGNAMEPREFIX}dj21-django-taggit

.include <bsd.port.mk>
