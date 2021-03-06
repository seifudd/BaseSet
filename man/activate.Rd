% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/activate.R, R/deactivate.R
\name{activate}
\alias{activate}
\alias{active}
\alias{deactivate}
\title{Determine the context of subsequent manipulations.}
\usage{
activate(.data, what)

active(.data)

deactivate(.data)
}
\arguments{
\item{.data}{A \code{TidySet} object.}

\item{what}{Either "elements", "sets" or "relations"}
}
\value{
A \code{TidySet} object.
}
\description{
Functions to help to perform some action to just some type of data: elements,
sets or relations.
\code{activate}: To table the focus of future manipulations: elements, sets
or relations.
\code{active}: To check the focus on the \code{TidySet}.
\code{deactivate}: To remove the focus on a specific \code{TidySet}-
}
\examples{
relations <- data.frame(sets = c(rep("a", 5), "b", rep("a2", 5), "b2"),
                        elements = rep(letters[seq_len(6)], 2),
                        fuzzy = runif(12))
a <- tidySet(relations)
elements(a) <- cbind(elements(a),
                 type = c(rep("Gene", 4), rep("lncRNA", 2)))
# Filter in the whole TidySet
filter(a, elements == "a")
filter(a, elements == "a", type == "Gene")
# Equivalent to filter_elements
filter_element(a, type == "Gene")
a <- activate(a, "elements")
active(a)
filter(a, type == "Gene")
a <- deactivate(a)
active(a)
filter(a, type == "Gene")
}
\seealso{
Other methods: 
\code{\link{TidySet-class}},
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
\code{\link{subtract}()},
\code{\link{union}()}
}
\concept{methods}
