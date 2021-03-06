% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/F0066.R
\name{run.mnn}
\alias{run.mnn}
\title{Run MNN alignment on the main data.}
\usage{
run.mnn(
  x = NULL,
  method = "base.mean.rank",
  top.rank = 500,
  gene.list = "character",
  data.type = "main",
  k = 20,
  cos.norm = TRUE,
  ndist = 3,
  d = 50,
  approximate = FALSE,
  irlba.args = list(),
  subset.row = NULL,
  auto.order = FALSE,
  pc.input = FALSE,
  compute.variances = FALSE,
  assay.type = "logcounts",
  get.spikes = FALSE,
  BNPARAM = NULL,
  BPPARAM = SerialParam()
)
}
\arguments{
\item{x}{An object of class iCellR.}

\item{method}{Choose from "base.mean.rank" or "gene.model", default is "base.mean.rank". If gene.model is chosen you need to provide gene.list.}

\item{top.rank}{A number taking the top genes ranked by base mean, default = 500.}

\item{gene.list}{A charactor vector of genes to be used for PCA. If "clust.method" is set to "gene.model", default = "my_model_genes.txt".}

\item{data.type}{Choose from "main" and "imputed", default = "main"}

\item{k}{An integer scalar specifying the number of nearest neighbors to consider when identifying MNNs.}

\item{cos.norm}{A logical scalar indicating whether cosine normalization should be performed on the input data prior to calculating distances between cells.}

\item{ndist}{A numeric scalar specifying the threshold beyond which neighbours are to be ignored when computing correction vectors. Each threshold is defined in terms of the number of median distances.}

\item{d}{Number of dimentions to pass to ‘multiBatchPCA’.}

\item{approximate}{Further arguments to pass to ‘multiBatchPCA’. Setting ‘approximate=TRUE’ is recommended for large data sets with many cells.}

\item{irlba.args}{Further arguments to pass to ‘multiBatchPCA’. Setting ‘approximate=TRUE’ is recommended for large data sets with many cells.}

\item{subset.row}{See ‘?"scran-gene-selection"’.}

\item{auto.order}{Logical scalar indicating whether re-ordering of batches should be performed to maximize the number of MNN pairs at each step. Alternatively an integer vector containing a permutation of ‘1:N’ where ‘N’ is the number of batches.}

\item{pc.input}{Logical scalar indicating whether the values in ‘...’ are already low-dimensional, e.g., the output of ‘multiBatchPCA’.}

\item{compute.variances}{Logical scalar indicating whether the percentage of variance lost due to non-orthogonality should be computed.}

\item{assay.type}{A string or integer scalar specifying the assay containing the expression values, if SingleCellExperiment objects are present in ‘...’.}

\item{get.spikes}{See ‘?"scran-gene-selection"’. Only relevant if ‘...’ contains SingleCellExperiment objects.}

\item{BNPARAM}{A BiocNeighborParam object specifying the nearest neighbor algorithm. Defaults to an exact algorithm if ‘NULL’, see ‘?findKNN’ for more details.}

\item{BPPARAM}{A BiocParallelParam object specifying whether the PCA and nearest-neighbor searches should be parallelized.}
}
\value{
An object of class iCellR.
}
\description{
This function takes an object of class iCellR and runs MNN alignment. It's a wrapper for scran.
}
