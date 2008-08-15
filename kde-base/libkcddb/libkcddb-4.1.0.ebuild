# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="1"

KMNAME=kdemultimedia
inherit kde4-meta

DESCRIPTION="KDE library for CDDB"
KEYWORDS="~amd64"
IUSE="debug htmlhandbook musicbrainz"

# Tests are broken. Last checked on 4.1.0.
RESTRICT="test"

DEPEND="${DEPEND}
	=media-sound/phonon-4.2*
	musicbrainz? ( media-libs/musicbrainz )"
RDEPEND="${DEPEND}"

KMSAVELIBS="true"

src_compile() {
	mycmakeargs="${mycmakeargs}
		$(cmake-utils_use_enable musicbrainz MusicBrainz)"
	kde4-meta_src_compile
}
