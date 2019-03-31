# $FreeBSD$

PORTNAME=	django-filter
DISTVERSION=	2.0.0
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}
PKGNAMESUFFIX=	-2

MAINTAINER=	kai@FreeBSD.org
COMMENT=	Dynamic filtering for querysets with Django

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		python:3.5+
USE_PYTHON=	distutils autoplist django=2.1+

NO_ARCH=		yes
CONFLICTS_INSTALL=	${DJANGO_PKGNAMEPREFIX}django-filter

.include <bsd.port.mk>
