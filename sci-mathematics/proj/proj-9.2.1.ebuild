# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Cartographic Projections and Coordinate Transformations Library"
HOMEPAGE="https://proj.org"
SRC_URI="https://github.com/OSGeo/PROJ/releases/download/${PV}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64"
