# $FreeBSD$

PORTNAME=	django-bulk-update
PORTVERSION=	2.2.0
PORTREVISION=	5
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Bulk update using a single query over Django ORM

LICENSE=	MIT

USES=		python:-3.4
USE_PYTHON=	autoplist concurrent distutils django

NO_ARCH=	yes

post-extract:
	${RM} ${WRKSRC}/tests/__init__.py # prevent conflict with devel/py-phply in textproc/pootle

.include <bsd.port.mk>
