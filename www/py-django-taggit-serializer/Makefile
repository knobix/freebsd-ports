# $FreeBSD$

PORTNAME=	django-taggit-serializer
DISTVERSION=	0.1.7
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	kai@FreeBSD.org
COMMENT=	Django Taggit serializer for the Django REST Framework

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${DJANGO_PKGNAMEPREFIX}django-taggit>=0:www/py-django-taggit@${DJANGO_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}six>=0:devel/py-six@${PY_FLAVOR}

USES=		python
USE_PYTHON=	distutils autoplist django

NO_ARCH=		yes

.include <bsd.port.mk>
