# Created by: Fukang Chen <loader@FreeBSD.org>
# $FreeBSD$

PORTNAME=	semantic_version
PORTVERSION=	2.8.2
MASTER_SITES=	CHEESESHOP
CATEGORIES=	devel python
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	sunpoeter@FreeBSD.org
COMMENT=	Python library provides a few tools to handle SemVer in Python

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

USES=		python
USE_PYTHON=	autoplist concurrent distutils django=test,nodjangoflavor

NO_ARCH=	yes

do-test:
	@(cd ${TEST_WRKSRC}; ${SETENV} ${TEST_ENV} ${PYTHON_CMD} ${PYDISTUTILS_SETUP} test)

.include <bsd.port.mk>
