# Created by: Li-Wen Hsu <lwhsu@FreeBSD.org>
# $FreeBSD$

PORTNAME=	django-evolution
PORTVERSION=	0.7.7
PORTREVISION=	1
DISTVERSIONPREFIX=	release-
CATEGORIES=	www python django
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	cs@FreeBSD.org
COMMENT=	Database schema evolution tool for the Django web framework

LICENSE=	BSD3CLAUSE

DEPRECATED=	Uses deprecated version of python
EXPIRATION_DATE=	2020-08-15

USE_GITHUB=	yes

GH_ACCOUNT=	beanbaginc
USES=		python:2.7
USE_PYTHON=	distutils autoplist django

post-extract:
	${RM} -r ${WRKSRC}/tests

.include <bsd.port.mk>
