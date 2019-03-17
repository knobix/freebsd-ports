# Created by: Carlo Strub
# $FreeBSD$

PORTNAME=	django-markdownx
PORTVERSION=	2.0.23
PORTREVISION=	1
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	cs@FreeBSD.org
COMMENT=	Django Markdown editor with image uploads and live preview

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}markdown>0:textproc/py-markdown@${PY_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}pillow>0:graphics/py-pillow@${PY_FLAVOR}

USES=		python
USE_PYTHON=	autoplist distutils django
NO_ARCH=	yes

.include <bsd.port.mk>
