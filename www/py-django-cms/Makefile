# Created by: Matthew X. Economou <xenophon+fbsdports@irtnog.org>
# $FreeBSD$

PORTNAME=	django-cms
PORTVERSION=	2.4.1
PORTREVISION=	3
CATEGORIES=	www python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	xenophon+fbsdports@irtnog.org
COMMENT=	Content management system built with the Django framework

LICENSE=	BSD3CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}south>=0.7.3:databases/py-south@${PY_FLAVOR} \
		${DJANGO_PKGNAMEPREFIX}django-classy-tags>=0.3.4.1:www/py-django-classy-tags@${DJANGO_FLAVOR} \
		${DJANGO_PKGNAMEPREFIX}django-mptt>=0.5.2:www/py-django-mptt@${DJANGO_FLAVOR} \
		${DJANGO_PKGNAMEPREFIX}django-sekizai>=0.6.1:www/py-django-sekizai@${DJANGO_FLAVOR} \
		${PYTHON_PKGNAMEPREFIX}html5lib>=0.90:www/py-html5lib@${PY_FLAVOR}

USES=		python:2 django
USE_PYTHON=	autoplist distutils

OPTIONS_MULTI=	DATABASE
OPTIONS_DEFAULT=SQLITE
OPTIONS_MULTI_DATABASE=MYSQL PGSQL SQLITE

MYSQL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}MySQLdb>=1.2.2:databases/py-MySQLdb@${PY_FLAVOR}
PGSQL_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}psycopg2>0:databases/py-psycopg2@${PY_FLAVOR}
SQLIE_RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}sqlite3>0:databases/py-sqlite3@${PY_FLAVOR}

.include <bsd.port.mk>
