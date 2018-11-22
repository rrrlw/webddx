# export to user and return data frame; use JSON format
# possible fields: display_title, content, associated_gene,
#   symptoms, retrieved date, source_url, source, cui, score
# query should be vector of terms (term can have multiple words space-separated)
query_fz <- function(query, num_rows = 20, fields = c("display_title",
                                                      "symptoms",
                                                      "retrieved_date",
                                                      "source",
                                                      "score")) {
  # base URL for API with JSON format
  base_url <- "http://www.findzebra.com/api/call/json/query?"

  # make sure parameters are correctly formatted
  # at least length 1 for each
  if (length(query) < 1) {
    stop("Cannot have an empty query")
  }
  if (length(fields) < 1) {
    stop("Cannot have empty fields")
  }
  num_rows <- as.integer(num_rows)
  if (num_rows < 1) {
    stop("Cannot ask for less than 1 row of data")
  }
  # query must have only alphabetic and space chars
  # fields all elements must be from fixed list that FZ API accepts

  # format params correctly for URL - separate words in term with '+' and separate terms with '%2C+'
  query_corr <- paste(gsub(pattern = " ", replacement = "+", query, fixed = TRUE),
                      collapse = "%2C+")
  fields_corr<- paste(fields, collapse = ",%20")

  # build url request from FZ API
  query_url <- paste(base_url,
                     "q=",
                     query_corr,
                     "&fl=",
                     fields_corr,
                     "&rows=",
                     num_rows, sep = "")
  #print(query_url)

  # get JSON from FZ
  query_json <- jsonlite::fromJSON(query_url)

  # return JSON
  query_json$response$docs
}

