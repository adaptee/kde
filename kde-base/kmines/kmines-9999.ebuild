# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

KDE_HANDBOOK="optional"
KDE_SELINUX_MODULE="games"
inherit kde4-base

DESCRIPTION="KMines is a classic mine sweeper game"
HOMEPAGE="
	http://www.kde.org/applications/games/kmines/
	http://games.kde.org/game.php?game=kmines
"
KEYWORDS=""
IUSE="debug"

DEPEND="$(add_kdebase_dep libkdegames)"
RDEPEND="${DEPEND}"
