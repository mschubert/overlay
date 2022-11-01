# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="The Fast Cross-Platform Package Manager"
HOMEPAGE="https://mamba.readthedocs.io/"
#SRC_URI="https://github.com/mamba-org/mamba/archive/refs/tags/2022.10.04.tar.gz"
SRC_URI="https://github.com/mamba-org/mamba/archive/refs/heads/main.zip -> ${P}.zip"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
IUSE="test"
RESTRICT="!test? ( test )"

DEPENDS="app-arch/libarchive
	dev-cpp/CLI11
	dev-cpp/nlohmann_json
	dev-cpp/termcolor
	dev-cpp/yaml-cpp
	dev-libs/libsolv
	dev-libs/openssl
	dev-libs/reproc
	dev-libs/spdlog
	dev-python/pybind11"
# dev-libs/libfmt for -DBUILD_MAMBA_PACKAGE=ON

#S="${WORKDIR}"/mamba-2022.10.04
S="${WORKDIR}"/mamba-main

src_configure() {
	local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX="${EPREFIX}"/usr \
        -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
        -DBUILD_LIBMAMBA=ON \
        -DBUILD_LIBMAMBAPY=ON \
        -DBUILD_LIBMAMBA_TESTS=OFF \
        -DBUILD_MAMBA_PACKAGE=ON \
        -DBUILD_MICROMAMBA=ON \
        -DBUILD_SHARED=ON \
        -DBUILD_STATIC=OFF \
	)
	cmake_src_configure
}
