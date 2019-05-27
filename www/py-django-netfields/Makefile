# $FreeBSD$

PORTNAME=	django-netfields
DISTVERSION=	0.8
PORTREVISION=	1
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	alfred@FreeBSD.org
COMMENT=	Django PostgreSQL netfields implementation

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}netaddr>=0:net/py-netaddr@${PY_FLAVOR} \
		${PY_IPADDRESS}

USES=		python
USE_PYTHON=	autoplist concurrent distutils django

NO_ARCH=	yes

.include <bsd.port.mk>
