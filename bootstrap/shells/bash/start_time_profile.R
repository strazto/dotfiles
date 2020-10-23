# ps4 should be specified like so
# export PS4='+\011 $(date "+%s.%N")\011 '

# for example
bashstart_file <- "~/bashstart.33364.log"

bashstart <- read.delim(bashstart_file, header = FALSE) %>% 
  tibble::as_tibble()

bashstart_procd <- bashstart %>%
  dplyr::rename(stack = V1, time = V2, cmd = V3) %>%
  dplyr::filter(stringr::str_detect(stack, "^\\++$")) %>%
  dplyr::mutate(
    time = as.double(time),
    time_ns = time*1e9,
    time_ns = time_ns - min(time_ns)
    ) %>% 
  dplyr::arrange(time_ns) %>% 
  dplyr::mutate(timediff_ns = time_ns - dplyr::lag(time_ns))

