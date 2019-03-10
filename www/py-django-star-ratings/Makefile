# Created by: Kevin Golding <ports@caomhin.org>
# $FreeBSD$

PORTNAME=	django-star-ratings
PORTVERSION=	0.7.0
PORTREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	ports@caomhin.org
COMMENT=	Django app to add star ratings to models

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	${DJANGO_PKGNAMEPREFIX}django-braces>=0:www/py-django-braces@${DJANGO_FLAVOR} \
		${DJANGO_PKGNAMEPREFIX}django-model-utils>=0:www/py-django-model-utils@${DJANGO_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}swapper>=0:www/py-swapper@${PY_FLAVOR}

USES=		python django
USE_PYTHON=	distutils autoplist

NO_ARCH=	yes

.include <bsd.port.mk>
