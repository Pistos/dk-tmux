tmux_rename_window_proc = Proc.new do |buffer|
  `tmux rename-window #{$diakonos.session["name"]}`
end

$diakonos.register_proc( tmux_rename_window_proc, :after_startup )
