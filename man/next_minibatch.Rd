% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/io.R
\name{next_minibatch}
\alias{next_minibatch}
\title{Next Minibatch}
\usage{
next_minibatch(minibatch_source, minibatch_size_in_samples, input_map = NULL,
  device = NULL, num_data_partitions = NULL, partition_index = NULL)
}
\arguments{
\item{minibatch_source}{(MinibatchSource or MinibatchSourceFromData) source
for minibatch}

\item{minibatch_size_in_samples}{number of samples to retrieve for the next
minibatch. Must be > 0.}

\item{input_map}{mapping of Variable to StreamInformation which will be used
to convert the returned data.}

\item{device}{- instance of DeviceDescriptor}

\item{num_data_partitions}{Used for distributed training, indicates into how
many partitions the source should split the data.}

\item{partition_index}{Used for distributed training, indicates data from
which partition to take.}
}
\value{
(MinibatchData) mapping of StreamInformation to MinibatchData if
input_map was not specified. Otherwise, the returned value will be a mapping
of Variable to class:MinibatchData. When the maximum number of
epochs/samples is exhausted, the return value is an empty dict.
}
\description{
Reads a minibatch that contains data for all input streams. The minibatch
size is specified in terms of #samples and/or #sequences for the primary
input stream; value of 0 for #samples/#sequences means unspecified. In case
the size is specified in terms of both #sequences and #samples, the smaller
of the 2 is taken. An empty map is returned when the MinibatchSource has no
more data to return.
}
