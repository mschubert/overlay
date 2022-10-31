# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Implementation of std::expected with functional-style extensions"
HOMEPAGE="https://github.com/TartanLlama/expected"
SRC_URI="https://github.com/TartanLlama/expected/archive/refs/tags/v${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
IUSE="test"
RESTRICT="!test? ( test )"

src_configure() {
	# https://bugs.gentoo.org/803962
	local mycmakeargs=(
		-DEXPECTED_ENABLE_TESTS:BOOL=OFF
	)
	cmake_src_configure
}
