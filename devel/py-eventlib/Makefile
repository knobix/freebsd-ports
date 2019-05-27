# Created by: Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD$

PORTNAME=	eventlib
PORTVERSION=	0.1.5
PORTREVISION=	1
CATEGORIES=	devel python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Library to make it easy to track events in python/django apps

LICENSE=	LGPL3+
LICENSE_FILE=	${WRKSRC}/COPYING

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}celery>=3.0.0:devel/py-celery@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}ejson>=0:devel/py-ejson@${PY_FLAVOR} \
		${DJANGO_PKGNAMEPREFIX}logan>=0.5.0:devel/py-logan@${DJANGO_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}redis>=2.7.1:databases/py-redis@${PY_FLAVOR}

NO_ARCH=	yes
USE_PYTHON=	autoplist concurrent distutils django
USES=		python

.include <bsd.port.mk>
