# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit kde4-meta-pkg

DESCRIPTION="kdeutils - merge this to pull in all kdeutils-derived packages"
HOMEPAGE="http://www.kde.org/applications/utilities http://utils.kde.org"
KEYWORDS=""
IUSE="cups floppy lirc"

RDEPEND="
	$(add_kdebase_dep ark)
	$(add_kdebase_dep filelight)
	$(add_kdebase_dep kcalc)
	$(add_kdebase_dep kcharselect)
	$(add_kdebase_dep kdf)
	$(add_kdebase_dep kgpg)
	$(add_kdebase_dep ktimer)
	$(add_kdebase_dep kwallet)
	$(add_kdebase_dep superkaramba)
	$(add_kdebase_dep sweeper)
	cups? ( $(add_kdebase_dep print-manager) )
	floppy? ( $(add_kdebase_dep kfloppy) )
	lirc? ( $(add_kdebase_dep kremotecontrol) )
"
