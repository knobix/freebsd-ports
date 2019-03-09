# Created by: Matthew X. Economou <xenophon+fbsdports@irtnog.org>
# $FreeBSD$

PORTNAME=	django-filer
PORTVERSION=	0.8.6
PORTREVISION=	4
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	xenophon+fbsdports@irtnog.org
COMMENT=	File and Image Management Application for django

RUN_DEPENDS=	${DJANGO_PKGNAMEPREFIX}easy-thumbnails>=0:graphics/py-django-easy-thumbnails@${DJANGO_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pillow>=0:graphics/py-pillow@${PY_FLAVOR}

USES=		python django
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
