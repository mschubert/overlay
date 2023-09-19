# Copyright 1999-2023 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Fast BAM/CRAM depth calculation for WGS, exome, or targeted sequencing"
HOMEPAGE="https://github.com/brentp/mosdepth"
SRC_URI="https://github.com/brentp/mosdepth/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

LICENSE="MIT"
SLOT="0"
IUSE=""

DEPEND="dev-lang/nim
	sci-libs/htslib"

src_compile() {
	nimble build --lib:"${EPREFIX}/usr/lib/nim" -y || die
}
