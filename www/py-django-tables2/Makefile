# Created by: Kozlov Sergey <kozlov.sergey.404@gmail.com>
# $FreeBSD$

PORTNAME=	django-tables2
DISTVERSION=	1.21.2
PORTREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	kai@FreeBSD.org
COMMENT=	Table/data-grid framework for Django

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}tablib>=0:textproc/py-tablib@${PY_FLAVOR}

USES=		python
USE_PYTHON=	distutils autoplist django=1.11

NO_ARCH=		yes
CONFLICTS_INSTALL=	${DJANGO_PKGNAMEPREFIX}django-tables2-2

.include <bsd.port.mk>
