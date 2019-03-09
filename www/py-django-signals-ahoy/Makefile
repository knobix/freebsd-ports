# Created by: Kevin Golding <ports@caomhin.org>
# $FreeBSD$

PORTNAME=	django-signals-ahoy
PORTVERSION=	0.1.3
PORTREVISION=	2
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP/source/d/${PORTNAME}
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}
DISTNAME=	${PORTNAME}-${PORTVERSION:C/([[:digit:]]\.[[:digit:]])\./\1-/g}

MAINTAINER=	ports@caomhin.org
COMMENT=	Extended set of signals for use by Django apps

LICENSE=	BSD3CLAUSE

NO_ARCH=	yes
USES=		python django
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
