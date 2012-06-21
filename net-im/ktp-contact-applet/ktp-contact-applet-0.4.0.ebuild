# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4

KDE_SCM="git"
KDE_LINGUAS="cs da de el es et ga gl hu it ja lt nb nds nl pl pt pt_BR sk sr
sr@ijekavian sr@ijekavianlatin sr@latin sv uk zh_CN zh_TW"
inherit kde4-base

DESCRIPTION="KDE Telepathy contact applet"
HOMEPAGE="http://community.kde.org/Real-Time_Communication_and_Collaboration"
if [[ ${PV} != *9999* ]]; then
	SRC_URI="mirror://kde/unstable/kde-telepathy/${PV}/src/${P}.tar.bz2"
	KEYWORDS="~amd64 ~x86"
else
	KEYWORDS=""
fi

LICENSE="GPL-2"
SLOT="4"
IUSE="debug"

DEPEND="
	>=net-im/ktp-common-internals-${PV}
	>=net-libs/telepathy-qt-0.9.1
"
RDEPEND="${DEPEND}
	>=net-im/ktp-contact-list-${PV}
"