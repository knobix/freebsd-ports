# Created by: Ultima
# $FreeBSD$

PORTNAME=	django-statici18n
PORTVERSION=	1.8.2
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	ultima@FreeBSD.org
COMMENT=	Helper for generating Javascript catalog to static files

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${DJANGO_PKGNAMEPREFIX}django-appconf>=0.6:www/py-django-appconf@${DJANGO_FLAVOR}

USES=		python
USE_PYTHON=	autoplist distutils django
NO_ARCH=	yes

.include <bsd.port.mk>
