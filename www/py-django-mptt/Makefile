# Created by: Carlo Strub
# $FreeBSD$

PORTNAME=	django-mptt
PORTVERSION=	0.9.0
PORTREVISION=	1
CATEGORIES=	www python
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	cs@FreeBSD.org
COMMENT=	Utilities for implementing Modified Preorder Tree Traversal in Django

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

CONFLICTS_INSTALL= py*-django*-django-happenings

USE_GITHUB=	yes

USES=		gettext python django
USE_PYTHON=	autoplist distutils

NO_ARCH=	yes

.include <bsd.port.mk>
