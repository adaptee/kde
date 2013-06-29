# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

if [[ $PV != *9999 ]]; then
	KMNAME="kdenetwork"
	KDE_ECLASS=meta
else
	KDE_ECLASS=base
fi

inherit kde4-${KDE_ECLASS}

DESCRIPTION="kcontrol filesharing config module for SMB"
KEYWORDS=" ~amd64 ~arm ~ppc ~ppc64 ~x86 ~amd64-linux ~x86-linux"
IUSE="debug"