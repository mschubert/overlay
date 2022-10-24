# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{4..11} )

inherit cmake python-single-r1

DESCRIPTION="Graph-based alignment (Hierarchical Graph FM index)"
HOMEPAGE="https://daehwankimlab.github.io/hisat2/"
SRC_URI="https://github.com/DaehwanKimLab/hisat2/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND="dev-lang/perl
	dev-lang/python"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
		-DCMAKE_INSTALL_PREFIX=/usr
		-DCMAKE_CXX_FLAGS="-O3 -funroll-loops"
	)
	cmake_src_configure
}

src_install() {
	dobin "${BUILD_DIR}"/hisat2-{align{-l,-s},build{-l,-s},inspect{-l,-s},repeat}
	dolib.a "${BUILD_DIR}"/libhisat2lib.a
	dolib.so "${BUILD_DIR}"/libhisat2lib.so
	dobin "${S}"/hisat2{,-build,-build-new}
	dobin "${S}"/{,hisat2_}extract_{exons,splice_sites}.py
	dobin "${S}"/hisat2_extract_snps_haplotypes_{UCSC,VCF}.py
}
