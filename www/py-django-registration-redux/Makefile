# Created by: Kevin Golding <ports@caomhin.org>
# $FreeBSD$

PORTNAME=	django-registration-redux
PORTVERSION=	2.4
DISTVERSIONPREFIX=	v
PORTREVISION=	1
CATEGORIES=	www python
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	ports@caomhin.org
COMMENT=	User-registration application for Django

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

NO_ARCH=	yes
USES=		python django
USE_PYTHON=	distutils autoplist

USE_GITHUB=	yes
GH_ACCOUNT=	macropin
GH_PROJECT=	django-registration

CONFLICTS_INSTALL=	pootle ${DJANGO_PKGNAMEPREFIX}django-registration

.include <bsd.port.mk>
