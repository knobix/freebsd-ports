# Created by: Ultima
# $FreeBSD$

PORTNAME=	django-statici18n
PORTVERSION=	1.5.0
PORTREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	ultima@FreeBSD.org
COMMENT=	Helper for generating Javascript catalog to static files

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${DJANGO_PKGNAMEPREFIX}django-appconf>=0.6:www/py-django-appconf@${DJANGO_FLAVOR}

USES=		python:2.7-3.5 django
USE_PYTHON=	autoplist distutils
NO_ARCH=	yes

.include <bsd.port.mk>
