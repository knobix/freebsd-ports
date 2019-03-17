# Created by: Carlo Strub <cs@FreeBSD.org>
# $FreeBSD$

PORTNAME=	django-otp-yubikey
PORTVERSION=	0.5.0
CATEGORIES=	www python django
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${DJANGO_PKGNAMEPREFIX}

MAINTAINER=	cs@FreeBSD.org
COMMENT=	Plugin that verifies YubiKey OTP tokens

LICENSE=	BSD2CLAUSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}YubiOTP>=0.2.1:security/py-YubiOTP@${PY_FLAVOR} \
		${DJANGO_PKGNAMEPREFIX}django-otp>0.4.0:www/py-django-otp@${DJANGO_FLAVOR}

USES=		python
USE_PYTHON=	autoplist distutils django

.include <bsd.port.mk>
