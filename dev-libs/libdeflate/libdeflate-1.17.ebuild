# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit cmake

DESCRIPTION="Heavily optimized library for DEFLATE/zlib/gzip compression and decompression"
HOMEPAGE="https://github.com/ebiggers/libdeflate"
SRC_URI="https://github.com/ebiggers/libdeflate/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"
KEYWORDS="~amd64 ~x86"

LICENSE="MIT"
SLOT="0"
IUSE=""
