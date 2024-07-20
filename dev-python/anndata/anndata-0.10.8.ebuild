# Copyright 1999-2024 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DISTUTILS_USE_PEP517=hatchling
PYTHON_COMPAT=( python3_{10..12} )

inherit pypi distutils-r1

DESCRIPTION="Handling annotated data matrices in memory and on disk"
HOMEPAGE="http://anndata.readthedocs.io/"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~amd64-linux"

RDEPEND="
	dev-python/array-api-compat[${PYTHON_USEDEP}]
	dev-python/h5py[${PYTHON_USEDEP}]
	dev-python/natsort[${PYTHON_USEDEP}]
	dev-python/numpy[${PYTHON_USEDEP}]
	dev-python/packaging[${PYTHON_USEDEP}]
	dev-python/pandas[${PYTHON_USEDEP}]
	dev-python/scipy[${PYTHON_USEDEP}]
"
#DEPEND="
#	test? (
#		dev-python/awkward[${PYTHON_USEDEP}]
#		dev-python/boltons[${PYTHON_USEDEP}]
#		dev-python/dask[${PYTHON_USEDEP}]
#		dev-python/joblib[${PYTHON_USEDEP}]
#		dev-python/numba[${PYTHON_USEDEP}]
#		dev-python/pyarrow[${PYTHON_USEDEP}]
#		dev-python/scikit-learn[${PYTHON_USEDEP}]
#		dev-python/zarr[${PYTHON_USEDEP}]
#	)
#"

# no ebuild for: dev-python/dask, numba[py3_12]
# dev-python/numcodecs: can not import 'Zstd' (not present)
RESTRICT="test"
distutils_enable_tests pytest
