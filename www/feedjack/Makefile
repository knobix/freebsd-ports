# $FreeBSD$

PORTNAME=	feedjack
PORTVERSION=	0.9.16
PORTREVISION=	3
CATEGORIES=	www
MASTER_SITES=	http://www.feedjack.org/download/
DISTNAME=	Feedjack-${PORTVERSION}

MAINTAINER=	flz@FreeBSD.org
COMMENT=	Feed aggregator written in Python using the Django framework

RUN_DEPENDS=	${PYTHON_SITELIBDIR}/feedparser.py:textproc/py-feedparser@${PY_FLAVOR}

DIST_SUBDIR=	python
USES=		python:2.7 django
USE_PYTHON=	distutils autoplist

.include <bsd.port.mk>
