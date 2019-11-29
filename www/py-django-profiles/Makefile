# Created by: Josh Paetzel <jpaetzel@FreeBSD.org>
# $FreeBSD$

PORTNAME=	django-profiles
PORTVERSION=	0.2
PORTREVISION=	2
CATEGORIES=	www python django
MASTER_SITES=	http://bitbucket.org/ubernostrum/django-profiles/get/
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}
DISTNAME=	v${PORTVERSION}
DIST_SUBDIR=	${PORTNAME}

MAINTAINER=	jpaetzel@FreeBSD.org
COMMENT=	User-profile application for Django

BROKEN=		unfetchable

LICENSE=	BSD3CLAUSE

WRKSRC=	${WRKDIR}/${PORTNAME}
USES=		python
USE_PYTHON=	distutils autoplist django
DOCSDIR=	${PREFIX}/share/doc/${DJANGO_PKGNAMEPREFIX}-${PORTNAME}
OPTIONS_DEFINE=	DOCS

PORTDOCS=	*

.include <bsd.port.options.mk>

post-install:
.if ${PORT_OPTIONS:MDOCS}
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/docs/* ${STAGEDIR}${DOCSDIR}
.endif

.include <bsd.port.mk>
