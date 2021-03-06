# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

FRAMEWORKS_TYPE="tier3"
inherit kde-frameworks

DESCRIPTION="Framework for converting units"
LICENSE="LGPL-2+"
KEYWORDS=""
IUSE=""

RDEPEND="
	$(add_frameworks_dep kconfig)
	$(add_frameworks_dep ki18n)
	dev-qt/qtnetwork:5
	dev-qt/qtxml:5
"
DEPEND="${RDEPEND}"
