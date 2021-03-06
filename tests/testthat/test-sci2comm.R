# tests for sci2comm fxn in taxize
context("sci2comm")


test_that("sci2comm returns the correct value", {
  skip_on_cran()

  tt <- sci2comm(scinames = 'Helianthus annuus', db = 'ncbi', verbose = FALSE)
  uu <- sci2comm(scinames = 'Helianthus annuus', db = 'itis', verbose = FALSE)
  zz <- sci2comm(scinames = 'Pomatomus saltatrix', db = 'worms', verbose = FALSE)

  expect_that(names(tt), equals('Helianthus annuus'))
  expect_that(names(uu), equals('Helianthus annuus'))
  expect_that(names(zz), equals('Pomatomus saltatrix'))

  expect_that(tt, is_a("list"))
  expect_that(tt[[1]], is_a("character"))

  expect_that(uu, is_a("list"))
  expect_that(uu[[1]], is_a("character"))

  expect_that(zz, is_a("list"))
  expect_that(zz[[1]], is_a("character"))
})
