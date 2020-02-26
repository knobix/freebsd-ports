# Created by: René Ladan <rene@FreeBSD.org>
# $FreeBSD$

PORTNAME=	jsonfield
PORTVERSION=	2.1.1
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Reusable JSONField model for Django to store validated JSON

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		python
USE_PYTHON=	autoplist concurrent distutils django

NO_ARCH=	yes

CONFLICTS_INSTALL=	${PYTHON_PKGNAMEPREFIX}dj22-jsonfield

# jsonfield 3.0.0+ requires Django 2.2+
PORTSCOUT=	limit:^2\.

.include <bsd.port.mk>
