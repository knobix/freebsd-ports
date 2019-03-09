# Created by: John Hixson <john@ixsystems.com>
# $FreeBSD$

PORTNAME=	django-simple-captcha
PORTVERSION=	0.4.1
PORTREVISION=	2
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	jhixson@gmail.com
COMMENT=	Simple, yet powerful, Django captcha application

LICENSE=	MIT

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pillow>=2.0.0:graphics/py-pillow@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}six>=1.2.0:devel/py-six@${PY_FLAVOR}

USES=		python django
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
