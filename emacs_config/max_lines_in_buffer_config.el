;;increase the number of max lines in buffer from the default 1024 to a multiple of it
;;note that this file(config) should be fixed in the sence that it should check the system memory
;;and based on it increase the number of max lines or not(may even decrease)

(setq comint-buffer-maximum-size 4096)

(message "loaded max_lines_in_buffer_config")
