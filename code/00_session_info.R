dir.create("output", showWarnings = FALSE, recursive = TRUE)

sink("output/session_info.txt")
cat("Generated:", format(Sys.time(), tz = "UTC"), "UTC\n\n")

cat("R version:\n")
print(R.version.string)

cat("\nPlatform:\n")
print(Sys.info())

cat("\n\nSession info:\n")
print(sessionInfo())
sink()
