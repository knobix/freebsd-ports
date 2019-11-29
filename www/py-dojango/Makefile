# Created by: jpaetzel
# $FreeBSD$

PORTNAME=	dojango
PORTVERSION=	0.5.9
PORTREVISION=	1
CATEGORIES=	www python django java
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	jpaetzel@FreeBSD.org
COMMENT=	Django application for building dojo

LICENSE=	BSD3CLAUSE

USES=		python
USE_PYTHON=	distutils autoplist django

USE_GITHUB=	yes
GH_ACCOUNT=	william-gr
GH_PROJECT=	dojango
GH_TAGNAME=	7477cee

OPTIONS_DEFINE=		JAVA

.include <bsd.port.options.mk>

.if ${PORT_OPTIONS:MJAVA}
USE_JAVA=	yes
.endif

.include <bsd.port.mk>
