logfile="app.log"
backup="logs/backup-$(date +%Y%m%d-%H%M%S).log"

mkdir -p logs

if [ -f "$logfile" ]; then
  cp "$logfile" "$backup"
  echo "" > "$logfile"
  echo "✅ Log archived to $backup and cleared."
else
  echo "❌ Log file $logfile does not exist."
fi
	
