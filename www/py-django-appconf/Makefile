# $FreeBSD$

PORTNAME=	django-appconf
PORTVERSION=	1.0.2
PORTREVISION=	1
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	rm@FreeBSD.org
COMMENT=	Helper class for handling configuration defaults gracefully

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}six>0:devel/py-six@${PY_FLAVOR}

NO_ARCH=	yes
USES=		python
USE_PYTHON=	autoplist distutils django

.include <bsd.port.mk>
