% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ops.R
\name{op_convolution_transpose}
\alias{op_convolution_transpose}
\title{Convolution Transpose}
\usage{
op_convolution_transpose(convolution_map, operand, strides = c(1),
  sharing = c(TRUE), auto_padding = c(TRUE), output_shape = NULL,
  max_temp_mem_size_in_samples = 0, name = "")
}
\arguments{
\item{strides}{(int or tuple of ints, defaults to 1) – stride of the
operation. Use a list of ints to specify a per-axis value.}

\item{output_shape}{- user expected output shape after convolution transpose.}

\item{name}{(str) the name of the Function instance in the network}
}
\description{
Computes the transposed convolution of convolution_map (typically a tensor
of learnable parameters) with operand (commonly an image or output of a
previous convolution/pooling operation). This is also known as fractionally
strided convolutional layers, or, deconvolution. This operation is used in
image and language processing applications. It supports arbitrary
dimensions, strides, sharing, and padding.
}
\details{
This function operates on input tensors with dimensions
[C×M1×M2×…×Mn][C×M1×M2×…×Mn]. This can be understood as a rank-n object,
where each entry consists of a CC-dimensional vector. For example, an RGB
image would have dimensions [3×W×H][3×W×H], i.e. a [W×H][W×H]-sized
structure, where each entry (pixel) consists of a 3-tuple.

convolution_transpose convolves the input operand with a n+2n+2 rank tensor
of (typically learnable) filters called convolution_map of shape
[I×O×m1×m2×…×mn][I×O×m1×m2×…×mn] (typically mi≪Mimi≪Mi). The first
dimension, II, must match the number of channels in the input. The second
dimension, OO, is the number of convolution filters (i.e. the number of
channels in the output). The last n dimensions are the spatial extent of the
filter. I.e. for each output position, a vector of dimension OO is computed.
Hence, the total number of filter parameters is I×O×m1×m2×…×mn
}
