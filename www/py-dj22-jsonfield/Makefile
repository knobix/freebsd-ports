# Created by: René Ladan <rene@FreeBSD.org>
# $FreeBSD$

PORTNAME=	jsonfield
PORTVERSION=	3.1.0
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}dj22-

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Reusable JSONField model for Django to store validated JSON

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		python:3.6+
USE_PYTHON=	autoplist concurrent distutils django=2.2+

NO_ARCH=	yes

CONFLICTS_INSTALL=	${DJANGO_PKGNAMEPREFIX}jsonfield

.include <bsd.port.mk>
