# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="C/C++ library for starting, stopping and communicating with external programs"
HOMEPAGE="https://github.com/DaanDeMeyer/reproc"
SRC_URI="https://github.com/DaanDeMeyer/reproc/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
IUSE="test"
RESTRICT="!test? ( test )"

src_configure() {
	local mycmakeargs=(
		-DREPROC++=ON
	)
	cmake_src_configure
}
