# Created by: Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD$

PORTNAME=	jsonfield2
PORTVERSION=	3.0.3
CATEGORIES=	www python django
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Reusable Django field to store validated JSON in your model

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		python:3.5+
USE_PYTHON=	autoplist distutils django

NO_ARCH=	yes

# jsonfield2 3.1.0+ requires Django 2.2+
PORTSCOUT=	limit:^3\.0\.

GH_ACCOUNT=	rpkilby
USE_GITHUB=	yes

.include <bsd.port.mk>
