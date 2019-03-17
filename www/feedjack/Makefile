# $FreeBSD$

PORTNAME=	feedjack
PORTVERSION=	0.9.16
PORTREVISION=	3
CATEGORIES=	www python django
MASTER_SITES=	http://www.feedjack.org/download/
DISTNAME=	Feedjack-${PORTVERSION}
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Feed aggregator written in Python using the Django framework

DEPRECATED=	Upstream gone

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/feedparser.py:textproc/py-feedparser@${PY_FLAVOR}

DIST_SUBDIR=	python
USES=		python:2.7
USE_PYTHON=	distutils autoplist django

.include <bsd.port.mk>
