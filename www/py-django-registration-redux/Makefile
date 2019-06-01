# Created by: Kevin Golding <ports@caomhin.org>
# $FreeBSD$

PORTNAME=	django-registration-redux
PORTVERSION=	2.6
DISTVERSIONPREFIX=	v
CATEGORIES=	www python django
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	ports@caomhin.org
COMMENT=	User-registration application for Django

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		python
USE_PYTHON=	distutils autoplist django

USE_GITHUB=	yes
GH_ACCOUNT=	macropin
GH_PROJECT=	django-registration

NO_ARCH=	yes

CONFLICTS_INSTALL=	pootle ${DJANGO_PKGNAMEPREFIX}django-registration

.include <bsd.port.mk>
