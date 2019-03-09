# Created by: Kevin Golding <ports@caomhin.org>
# $FreeBSD$

PORTNAME=	sorl-thumbnail
PORTVERSION=	3.2.5
PORTREVISION=	7
CATEGORIES=	graphics python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	ports@caomhin.org
COMMENT=	Sorl-thumbnail provides an easy way to generate image thumbnails

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}pillow>0:graphics/py-pillow@${PY_FLAVOR}

USES=		python
USE_PYTHON=	autoplist distutils

DOCSDIR=	${PREFIX}/share/doc/py-${PORTNAME}@${PY_FLAVOR}

OPTIONS_DEFINE=	DJANGO PDF WORD
DJANGO_DESC=	Enable Django
DJANGO_VARS=	PKGNAMEPREFIX=${DJANGO_PKGNAMEPREFIX}

PDF_DESC=	PDF Thumbnails
WORD_DESC=	Word Document thumbnail handling

OPTIONS_DEFAULT=	DJANGO

DJANGO_USES=		django
PDF_RUN_DEPENDS=	${LOCALBASE}/bin/Magick-config:graphics/ImageMagick
WORD_RUN_DEPENDS=	wvVersion:textproc/wv

.include <bsd.port.mk>
