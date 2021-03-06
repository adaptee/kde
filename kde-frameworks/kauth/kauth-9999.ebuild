# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

FRAMEWORKS_TYPE="tier2"
VIRTUALX_REQUIRED="test"
inherit kde-frameworks

DESCRIPTION="Authorisation framework that can be used in combination with PolicyKit"
LICENSE="LGPL-2.1+"
KEYWORDS=""
IUSE="+policykit"

DEPEND="
	$(add_frameworks_dep kcoreaddons)
	dev-qt/qtdbus:5
	dev-qt/qtgui:5
	dev-qt/qtwidgets:5
	policykit? ( sys-auth/polkit-qt )
"
RDEPEND="${DEPEND}"
PDEPEND="policykit? ( sys-auth/polkit-kde-agent )"

src_configure() {
	local mycmakeargs=(
		$(cmake-utils_use_find_package policykit PolkitQt-1)
	)

	kde-frameworks_src_configure
}
