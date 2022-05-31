# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

DESCRIPTION="NGS suite for analysis of mapped reads, summary of exon/intron/gene counts"
HOMEPAGE="http://subread.sourceforge.net/"
SRC_URI="https://sourceforge.net/projects/subread/files/"${P}"/"${P}"-source.tar.gz"
KEYWORDS="~amd64 ~x86"

LICENSE="GPL-3"
SLOT="0"
IUSE=""

DEPEND="sys-libs/zlib"
RDEPEND="${DEPEND}"

S="${WORKDIR}/${P}-source"

src_prepare() {
	sed -e "s/-mtune=core2//g" -e "s/-O9//g" -i src/Makefile.Linux || die
	default
}

src_compile() {
	cd src || die
	emake -f Makefile.Linux
}

src_install() {
	dobin bin/[a-s]* bin/utilities/*
	dodoc README.txt doc/SubreadUsersGuide.pdf
	insinto /usr/share/subread
	doins annotation/*.txt
}
