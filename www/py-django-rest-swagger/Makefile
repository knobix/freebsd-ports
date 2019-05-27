# $FreeBSD$

PORTNAME=	django-rest-swagger
DISTVERSION=	2.2.0
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	kai@FreeBSD.org
COMMENT=	Swagger UI for Django REST framework

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}coreapi>0:devel/py-coreapi@${PY_FLAVOR} \
		${DJANGO_PKGNAMEPREFIX}djangorestframework>0:www/py-djangorestframework@${DJANGO_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}openapi-codec>0:devel/py-openapi-codec@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}simplejson>0:devel/py-simplejson@${PY_FLAVOR}

USES=		python
USE_PYTHON=	distutils autoplist django
NO_ARCH=	yes

.include <bsd.port.mk>
