# Created by: Kozlov Sergey <kozlov.sergey.404@gmail.com>
# $FreeBSD$

PORTNAME=	django-tables2
DISTVERSION=	2.0.3
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}
PKGNAMESUFFIX=	-2

MAINTAINER=	kai@FreeBSD.org
COMMENT=	Table/data-grid framework for Django

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}tablib>=0:textproc/py-tablib@${PY_FLAVOR}

USES=		python:3.5+
USE_PYTHON=	distutils autoplist django=2.1+

NO_ARCH=		yes
CONFLICTS_INSTALL=	${DJANGO_PKGNAMEPREFIX}django-tables2

.include <bsd.port.mk>
