# $FreeBSD$

PORTNAME=	django-rq-dashboard
PORTVERSION=	0.3.3
PORTREVISION=	1
CATEGORIES=	devel python
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	swills@FreeBSD.org
COMMENT=	Monitor your RQ queues, jobs and workers from the Django admin

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENCE

RUN_DEPENDS=	${DJANGO_PKGNAMEPREFIX}django-rq>0:devel/py-django-rq@${DJANGO_FLAVOR}

USES=		python django
USE_PYTHON=	autoplist distutils

USE_GITHUB=	yes
GH_ACCOUNT=	brutasse
NO_ARCH=	yes

post-patch:
	# Fix for Python v3.x builds
	@${REINPLACE_CMD} -e "s|open('README.rst').read()|'${COMMENT}'|" \
	${WRKSRC}/setup.py

.include <bsd.port.mk>
