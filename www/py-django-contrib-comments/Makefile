# Created by: Kubilay Kocak <koobs@FreeBSD.org>
# $FreeBSD$

PORTNAME=	django-contrib-comments
PORTVERSION=	1.9.1
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	koobs@FreeBSD.org
COMMENT=	Code formerly known as django.contrib.comments

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE.txt

USES=		python
USE_PYTHON=	autoplist distutils django

NO_ARCH=	yes

do-test:
	@cd ${WRKSRC} && ${SETENV} TZ=UTC ${PYTHON_CMD} ${PYDISTUTILS_SETUP} test

.include <bsd.port.mk>
