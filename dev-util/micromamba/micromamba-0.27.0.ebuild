# Copyright 1999-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="The Fast Cross-Platform Package Manager"
HOMEPAGE="https://mamba.readthedocs.io/"
SRC_URI="https://github.com/mamba-org/mamba/archive/refs/tags/2022.10.04.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~arm64"
IUSE="test"
RESTRICT="!test? ( test )"

DEPENDS="app-arch/libarchive
	dev-cpp/nlohmann_json
	dev-cpp/termcolor
	dev-cpp/yaml-cpp
	dev-libs/libsolv
	dev-libs/openssl
	dev-libs/reproc
	dev-libs/spdlog
	dev-python/pybind11"

S="${WORKDIR}"/mamba-2022.10.04

src_configure() {
	local mycmakeargs=(
        -DCMAKE_INSTALL_PREFIX=/usr \
        -DCMAKE_POSITION_INDEPENDENT_CODE=ON \
        -DBUILD_LIBMAMBA=ON \
        -DBUILD_LIBMAMBAPY=ON \
        -DBUILD_LIBMAMBA_TESTS=OFF \
        -DBUILD_MAMBA_PACKAGE=OFF \
        -DBUILD_MICROMAMBA=ON \
        -DBUILD_SHARED=ON \
        -DBUILD_STATIC=OFF \
	)
	cmake_src_configure
}

#src_install() {
#	dobin "${BUILD_DIR}"/hisat2-{align{-l,-s},build{-l,-s},inspect{-l,-s},repeat}
#	dolib.a "${BUILD_DIR}"/libhisat2lib.a
#	dolib.so "${BUILD_DIR}"/libhisat2lib.so
#	dobin "${S}"/hisat2{,-build,-build-new}
#	dobin "${S}"/{,hisat2_}extract_{exons,splice_sites}.py
#	dobin "${S}"/hisat2_extract_snps_haplotypes_{UCSC,VCF}.py
#}
