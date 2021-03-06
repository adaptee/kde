# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

FRAMEWORKS_TYPE="tier1"
inherit kde-frameworks

DESCRIPTION="ECMAScipt compatible parser and engine"
LICENSE="LGPL-2+"
KEYWORDS=""
IUSE=""

RDEPEND="
	dev-libs/libpcre
"
DEPEND="${RDEPEND}"

DOCS=( src/README )
