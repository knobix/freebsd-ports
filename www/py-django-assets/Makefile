# $FreeBSD$

PORTNAME=	django-assets
PORTVERSION=	0.12
PORTREVISION=	1
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	wg@FreeBSD.org
COMMENT=	Compress and merge CSS and Javascript files

LICENSE=	BSD2CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}webassets>0:www/py-webassets@${PY_FLAVOR}

USES=		python
USE_PYTHON=	autoplist distutils django

NO_ARCH=	yes

.include <bsd.port.mk>
