# $FreeBSD$

PORTNAME=	django-rq-dashboard
PORTVERSION=	0.3.1
PORTREVISION=	1
CATEGORIES=	devel python
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	swills@FreeBSD.org
COMMENT=	Monitor your RQ queues, jobs and workers from the Django admin

RUN_DEPENDS=	${DJANGO_PKGNAMEPREFIX}django-rq>0:devel/py-django-rq@${DJANGO_FLAVOR}

USE_GITHUB=	yes
GH_ACCOUNT=	brutasse

NO_ARCH=	yes

USES=		python:2.7 django
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
