# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="An ultra-fast all-in-one FASTQ preprocessor"
HOMEPAGE="https://github.com/OpenGene/fastp"
SRC_URI="https://github.com/OpenGene/fastp/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64"

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND="dev-libs/isa-l
	dev-libs/libdeflate"

src_install() {
	dodir /usr/bin
	emake PREFIX="${ED}"/usr install
}
