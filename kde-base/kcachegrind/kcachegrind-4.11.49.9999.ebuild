# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

KDE_HANDBOOK="optional"
inherit kde4-base

DESCRIPTION="KDE Frontend for Cachegrind"
HOMEPAGE="http://www.kde.org/applications/development/kcachegrind
http://kcachegrind.sourceforge.net"
KEYWORDS=""
IUSE="debug"

RDEPEND="
	media-gfx/graphviz
"
