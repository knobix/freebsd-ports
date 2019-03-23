# $FreeBSD$

PORTNAME=	django-cron
PORTVERSION=	0.5.1
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	kai@FreeBSD.org
COMMENT=	Running Python crons in a Django project

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${DJANGO_PKGNAMEPREFIX}django-common-helpers>=0.6.4:www/py-django-common-helpers@${DJANGO_FLAVOR}

USES=		python
USE_PYTHON=	autoplist distutils django

NO_ARCH=	yes

.include <bsd.port.mk>
