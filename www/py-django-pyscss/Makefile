# Created by: Alexander Nusov <alexander.nusov@nfvexpress.com>
# $FreeBSD$

PORTNAME=	django-pyscss
PORTVERSION=	2.0.2
PORTREVISION=	1
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	alexander.nusov@nfvexpress.com
COMMENT=	Makes it easier to use PySCSS in Django

LICENSE=	BSD2CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pyscss>=1.3.4:textproc/py-pyscss@${PY_FLAVOR}

NO_ARCH=	yes

USES=		python django
USE_PYTHON=	autoplist distutils

.include <bsd.port.mk>
