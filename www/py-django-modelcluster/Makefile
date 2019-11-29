# Created by: Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD$

PORTNAME=	django-modelcluster
PORTVERSION=	5.0
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Django extension for working with clusters of models as a single unit

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pytz>=2015.2:devel/py-pytz@${PY_FLAVOR}

USES=		python:3.5+
USE_PYTHON=	autoplist distutils django:2.2+

NO_ARCH=	yes

OPTIONS_DEFINE=	TAGGIT
TAGGIT_DESC=	Tagging support

TAGGIT_RUN_DEPENDS=	${DJANGO_PKGNAMEPREFIX}django-taggit>=0.20:www/py-django-taggit@${DJANGO_FLAVOR}

.include <bsd.port.mk>
