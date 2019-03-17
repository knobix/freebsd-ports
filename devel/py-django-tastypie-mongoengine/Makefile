# Created by: Dan Langille <dvl@FreeBSD.org>
# $FreeBSD$

PORTNAME=		django-tastypie-mongoengine
PORTVERSION=		0.4.6
PORTREVISION=	3
DISTVERSIONPREFIX=	v
CATEGORIES=		devel python django
PKGNAMEPREFIX=		${DJANGO_PKGNAMEPREFIX}

MAINTAINER=		dvl@FreeBSD.org
COMMENT=		MongoEngine support for django-tastypie

LICENSE=	AGPLv3
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS?=	${DJANGO_PKGNAMEPREFIX}django-tastypie>=0.9.12:www/py-django-tastypie@${DJANGO_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}mongoengine>=0.8.7:databases/py-mongoengine@${PY_FLAVOR}

USE_GITHUB=		yes
GH_ACCOUNT=		wlanslovenija

USES=		python
USE_PYTHON=	autoplist distutils django

.include <bsd.port.mk>
