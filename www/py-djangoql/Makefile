# $FreeBSD$

PORTNAME=	djangoql
PORTVERSION=	0.13.0
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	grembo@FreeBSD.org
COMMENT=	Advanced search language for Django, with auto-completion

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}ply>=3.8:devel/py-ply@${PY_FLAVOR}

USES=		python:3.5+
USE_PYTHON=	autoplist distutils django=2.1+

NO_ARCH=	yes

.include <bsd.port.mk>
