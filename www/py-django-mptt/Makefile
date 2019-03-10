# Created by: Carlo Strub
# $FreeBSD$

PORTNAME=	django-mptt
PORTVERSION=	0.9.1
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	cs@FreeBSD.org
COMMENT=	Utilities for implementing Modified Preorder Tree Traversal in Django

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${DJANGO_PKGNAMEPREFIX}django-js-asset>0:www/py-django-js-asset@${DJANGO_FLAVOR}

USES=		gettext python django
USE_PYTHON=	autoplist distutils

NO_ARCH=		yes
CONFLICTS_INSTALL=	${PYTHON_PKGNAMEPREFIX}django-happenings

.include <bsd.port.mk>
