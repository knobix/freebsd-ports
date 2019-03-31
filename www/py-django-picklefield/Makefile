# Created by: Johannes Meixner <johannes@perceivon.net>
# $FreeBSD$

PORTNAME=	django-picklefield
PORTVERSION=	2.0
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Pickled object field for Django

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

# Reminder: www/seahub depends on django, changing django version may break seahub
BUILD_DEPENDS=	${RUN_DEPENDS}

USES=		python
USE_PYTHON=	autoplist concurrent distutils django=build,run

NO_ARCH=	yes

PORTDOCS=	README.rst

OPTIONS_DEFINE=	DOCS

post-install-DOCS-on:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/${PORTDOCS} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
