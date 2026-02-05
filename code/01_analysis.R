
library(tidyverse)
if (!dir.exists("output")) dir.create("output")
path <- file.path("data", "googletrend.csv")
df <- read.csv(path, fileEncoding = "UTF-8-BOM", encoding = "UTF-8")

df <- df %>%
  rename(
    `Matahara (マタハラ)` = `マタハラ`,
    `Maternityharassment (マタニティハラスメント)` = `マタニティハラスメント`,
    `Maternity Harassment (マタニティ・ハラスメント)` = `マタニティ.ハラスメント`
  )

Sys.setlocale("LC_TIME", "C")  
df$Date <- as.Date(paste0(df$Date, "-01"), format = "%y-%b-%d")


df_long <- df %>%
  pivot_longer(
    cols = -Date,
    names_to = "Keyword",
    values_to = "Interest"
  )


key_dates <- as.Date(c(
  "2010-01-01", "2013-09-01", "2014-10-01", "2015-06-01",
  "2015-11-01", "2019-12-01", "2025-01-01"
))


p<-ggplot(df_long, aes(x = Date, y = Interest, color = Keyword)) +
  geom_line(linewidth = 1) +
  geom_point(size = 1.5) +
  
  
  geom_vline(xintercept = as.numeric(key_dates),
             linetype = "dashed", color = "gray40") +
  
  
  scale_x_date(
    breaks = key_dates,
    labels = format(key_dates, "%Y-%m")
  ) +
  
  
  labs(
    title = "Google Trends Over Time",
    x = "Date",
    y = "Search Interest",
    color = "Keyword"
  ) +
  
  
  theme_minimal() +
  theme(
    plot.title = element_text(size = 16, face = "bold", hjust = 0.5),
    axis.text.x = element_text(angle = 45, hjust = 1),
    axis.title = element_text(face = "bold"),
    legend.position = "bottom"
  )
message("Saving plot...")

png(filename = file.path("output", "google_trends_over_time.png"),
    width = 1200, height = 720)
print(p)
dev.off()

message("Saving session info...")
writeLines(capture.output(sessionInfo()),
           file.path("output", "sessionInfo.txt"))

message("Done saving.")

