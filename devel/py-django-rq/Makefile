# Created by: René Ladan <rene@freebsd.org>
# $FreeBSD$

PORTNAME=	django-rq
PORTVERSION=	1.0.1
PORTREVISION=	1
DISTVERSIONPREFIX=	v
CATEGORIES=	devel python
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	rene@FreeBSD.org
COMMENT=	Provides Django integration for RQ (Redis Queue)

LICENSE=	MIT

TEST_DEPENDS=	redis-server:databases/redis
RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}rq>=0.5.5:devel/py-rq@${PY_FLAVOR}

NO_ARCH=	yes

USES=		python django
USE_PYTHON=	autoplist distutils

USE_GITHUB=	yes
GH_ACCOUNT=	ui

TEST_TARGET=	test

.include <bsd.port.mk>
