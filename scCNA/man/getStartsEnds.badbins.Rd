\name{getStartsEnds.Variable}
\alias{getStartsEnds.Variable}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
get starts ends of the bins from a given file
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
getStartsEnds.Variable(window, chr, pathWindows = paste0("/srv/data/vanloo/mtarabichi/sc-all/code/variable_", window, "_150_bowtie"), pathBadBins = paste0("/srv/data/vanloo/mtarabichi/sc-all/code/badbins_variable_", window, "_150_bowtie"))
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{window}{
%%     ~~Describe \code{window} here~~
}
  \item{chr}{
%%     ~~Describe \code{chr} here~~
}
  \item{pathWindows}{
%%     ~~Describe \code{pathWindows} here~~
}
  \item{pathBadBins}{
%%     ~~Describe \code{pathBadBins} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (window, chr, pathWindows = paste0("/srv/data/vanloo/mtarabichi/sc-all/code/variable_",
    window, "_150_bowtie"), pathBadBins = paste0("/srv/data/vanloo/mtarabichi/sc-all/code/badbins_variable_",
    window, "_150_bowtie"))
{
    badbins <- read.table(pathBadBins)
    t <- read.table(pathWindows, header = T)
    t <- t[-c(badbins), ]
    subt <- t[t$CHR == chr, ]
    starts <- c(1, as.numeric(as.character(subt$END[-c(length(subt$END))])) +
        1)
    ends <- as.numeric(as.character(subt$END))
    list(starts = starts, ends = ends)
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
