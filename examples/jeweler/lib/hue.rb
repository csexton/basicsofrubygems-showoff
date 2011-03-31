module Hue
  BLACK_FG = "\033[30m"
  RED_FG = "\033[31m"
  GREEN_FG = "\033[32m"
  BROWN_FG = "\033[33m"
  BLUE_FG = "\033[34m"
  MAGENTA_FG = "\033[35m"
  CYAN_FG = "\033[36m"
  GRAY_FG = "\033[37m"

  BLACK_BG = "\033[40m"
  RED_BG = "\033[41m"
  GREEN_BG = "\033[42m"
  BROWN_BG = "\033[43m"
  BLUE_BG = "\033[44m"
  MAGENTA_BG = "\033[45m"
  CYAN_BG = "\033[46m"
  WHITE_BG = "\033[47m"

  RESET_COLORS = "\033[0m"
  BOLD_ON = "\033[1m"
  BLINK_ON = "\033[5m"
  REVERSE_ON = "\033[7m"
  BOLD_OFF = "\033[22m"
  BLINK_OFF = "\033[25m"
  REVERSE_OFF = "\033[27m"

  def self.red(str)
    "#{RED_FG}#{str}#{RESET_COLORS}"
  end
end
