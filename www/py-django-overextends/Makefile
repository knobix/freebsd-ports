# Created by: René Ladan <rene@freebsd.org>
# $FreeBSD$

PORTNAME=	django-overextends
PORTVERSION=	0.4.3
PORTREVISION=	2
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Django reusable app enabling circular template inheritance

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}sphinx-me>=0.1.2:textproc/py-sphinx-me@${PY_FLAVOR}

USES=		python
USE_PYTHON=	autoplist concurrent distutils django

NO_ARCH=	yes

.include <bsd.port.mk>
