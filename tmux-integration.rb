tmux_rename_window_proc = Proc.new do |buffer|
  session_name = $diakonos.session.name
  if session_name && ! session_name.strip.empty?
    `tmux rename-window #{session_name}`
  end
end

$diakonos.register_proc( tmux_rename_window_proc, :after_startup )
