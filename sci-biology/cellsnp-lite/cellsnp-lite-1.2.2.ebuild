# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit autotools

DESCRIPTION="Efficient genotyping bi-allelic SNPs on single cells"
HOMEPAGE="https://cellsnp-lite.readthedocs.io/"
SRC_URI="https://github.com/single-cell-genetics/${PN}/archive/refs/tags/v${PV}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~amd64 ~x86 ~amd64-linux ~x86-linux"

DEPEND="sci-biology/htslib"
