# Created by: Matthew X. Economou <xenophon+fbsdports@irtnog.org>
# $FreeBSD$

PORTNAME=	django-cms
PORTVERSION=	3.5.2
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	xenophon+fbsdports@irtnog.org
COMMENT=	Content management system built with the Django framework

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${DJANGO_PKGNAMEPREFIX}djangocms-admin-style>=1.0:www/py-djangocms-admin-style@${DJANGO_FLAVOR} \
		${DJANGO_PKGNAMEPREFIX}django-classy-tags>=0.7.2:www/py-django-classy-tags@${DJANGO_FLAVOR} \
		${DJANGO_PKGNAMEPREFIX}django-formtools>=1.0:www/py-django-formtools@${DJANGO_FLAVOR} \
		${DJANGO_PKGNAMEPREFIX}django-sekizai>=0.7:www/py-django-sekizai@${DJANGO_FLAVOR} \
		${DJANGO_PKGNAMEPREFIX}django-treebeard>=4.0.1:www/py-django-treebeard@${DJANGO_FLAVOR}

USES=		python
USE_PYTHON=	distutils autoplist django
NO_ARCH=	yes

OPTIONS_MULTI=		DATABASE
OPTIONS_MULTI_DATABASE=	MYSQL PGSQL SQLITE
OPTIONS_DEFAULT=	SQLITE
MYSQL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}MySQLdb>=1.2.2:databases/py-MySQLdb@${PY_FLAVOR}
PGSQL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}psycopg2>0:databases/py-psycopg2@${PY_FLAVOR}
SQLITE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}sqlite3>0:databases/py-sqlite3@${PY_FLAVOR}

.include <bsd.port.mk>
