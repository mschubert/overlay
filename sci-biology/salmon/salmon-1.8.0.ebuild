# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=7

inherit cmake

DESCRIPTION="Transcript-level quantification from RNA-seq reads using lightweight alignments"
HOMEPAGE="https://github.com/COMBINE-lab/salmon"
SRC_URI="https://github.com/COMBINE-lab/${PN}/archive/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"
IUSE=""

DEPEND="dev-libs/boost:0
		dev-libs/cereal
		dev-libs/jemalloc
		dev-cpp/tbb"
RDEPEND="${DEPEND}"

src_configure() {
	local mycmakeargs=(
#		-DBOOST_INCLUDEDIR="${EPREFIX}/usr/include/boost"
#		-DBOOST_LIBRARYDIR="${EPREFIX}/usr/lib64"
		-DFETCH_BOOST=TRUE
	)
	cmake_src_configure
}
