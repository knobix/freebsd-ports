# Created by: Carlo Strub
# $FreeBSD$

PORTNAME=	django-markdownx
PORTVERSION=	2.0.21
PORTREVISION=	1
DISTVERSIONPREFIX=	v
CATEGORIES=	www python
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	cs@FreeBSD.org
COMMENT=	Django Markdown editor with image uploads and live preview

LICENSE=	GPLv2

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pillow>0:graphics/py-pillow@${PY_FLAVOR}

USE_GITHUB=	yes

GH_ACCOUNT=	neutronX
USES=		python django
USE_PYTHON=	autoplist distutils

NO_ARCH=	yes

.include <bsd.port.mk>
