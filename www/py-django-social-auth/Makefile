# Created by: Tom Judge <tj@FreeBSD.org>
# $FreeBSD$

PORTNAME=	social-auth
PORTVERSION=	0.7.28
PORTREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}
DISTNAME=	django-${PORTNAME}-${PORTVERSION}

MAINTAINER=	tj@FreeBSD.org
COMMENT=	Setup social authentication/authorization mechanism for Django

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}python-social-auth>=0:security/py-python-social-auth@${PY_FLAVOR}

USES=		python django
USE_PYTHON=	distutils autoplist
NO_ARCH=	yes

.include <bsd.port.mk>
