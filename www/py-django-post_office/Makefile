# Created by: Richard Gallamore <ultima@FreeBSD.org>
# $FreeBSD$

PORTNAME=	django-post_office
DISTVERSIONPREFIX=	v
DISTVERSION=	3.2.1
CATEGORIES=	www python django
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	ultima@FreeBSD.org
COMMENT=	Django app to monitor and send mail asynchronously

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

RUN_DEPENDS=	${DJANGO_PKGNAMEPREFIX}django-jsonfield>=0:www/py-django-jsonfield@${DJANGO_FLAVOR}

USES=		python
USE_PYTHON=	autoplist distutils django
USE_LOCALE=	en_US.UTF-8

USE_GITHUB=	yes
GH_ACCOUNT=	ui

NO_ARCH=	yes

.include <bsd.port.mk>
