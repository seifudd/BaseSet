% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/union.R
\name{union}
\alias{union}
\alias{union.TidySet}
\title{Merge two sets}
\usage{
union(object, ...)

\method{union}{TidySet}(
  object,
  sets,
  name = NULL,
  FUN = "max",
  keep = FALSE,
  keep_relations = keep,
  keep_elements = keep,
  keep_sets = keep,
  ...
)
}
\arguments{
\item{object}{A TidySet object}

\item{...}{Other arguments.}

\item{sets}{The name of the sets to be used.}

\item{name}{The name of the new set.}

\item{FUN}{A function to be applied when performing the union.
The standard union is the "max" function, but you can provide any other
function that given a numeric vector returns a single number.}

\item{keep}{A logical value if you want to keep}

\item{keep_relations}{A logical value if you wan to keep old relations}

\item{keep_elements}{A logical value if you wan to keep old elements}

\item{keep_sets}{A logical value if you wan to keep old sets}
}
\value{
A \code{TidySet} object.
}
\description{
Given a TidySets merges two sets into the new one.
}
\examples{
relations <- data.frame(sets = c(rep("a", 5), "b"),
                        elements = letters[seq_len(6)],
                        fuzzy = runif(6))
a <- tidySet(relations)
union(a, c("a", "b"), "C")
}
\seealso{
Other methods that create new sets: 
\code{\link{complement_element}()},
\code{\link{complement_set}()},
\code{\link{intersection}()},
\code{\link{subtract}()}

Other methods: 
\code{\link{TidySet-class}},
\code{\link{activate}()},
\code{\link{add_column}()},
\code{\link{add_relation}()},
\code{\link{arrange.TidySet}()},
\code{\link{cartesian}()},
\code{\link{complement_element}()},
\code{\link{complement_set}()},
\code{\link{complement}()},
\code{\link{element_size}()},
\code{\link{elements}()},
\code{\link{filter.TidySet}()},
\code{\link{group_by.TidySet}()},
\code{\link{group}()},
\code{\link{incidence}()},
\code{\link{intersection}()},
\code{\link{is.fuzzy}()},
\code{\link{is_nested}()},
\code{\link{move_to}()},
\code{\link{mutate.TidySet}()},
\code{\link{nElements}()},
\code{\link{nRelations}()},
\code{\link{nSets}()},
\code{\link{name_elements<-}()},
\code{\link{name_sets<-}()},
\code{\link{name_sets}()},
\code{\link{power_set}()},
\code{\link{pull.TidySet}()},
\code{\link{relations}()},
\code{\link{remove_column}()},
\code{\link{remove_element}()},
\code{\link{remove_relation}()},
\code{\link{remove_set}()},
\code{\link{rename_elements}()},
\code{\link{rename_set}()},
\code{\link{select.TidySet}()},
\code{\link{set_size}()},
\code{\link{sets}()},
\code{\link{subtract}()}
}
\concept{methods}
\concept{methods that create new sets}
