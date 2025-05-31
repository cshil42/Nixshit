{
  services.cron.systemCronJobs = [
    "0 0 * * *      root    rclone sync --inplace --quiet --size-only --fast-list --copy-links /home/connor/Sync /run/media/connor/BACKUP/daily > /var/log/daily-backup.log 2>&1"
    "0 0 * * 0      root    rclone sync --inplace --quiet --size-only --fast-list --copy-links /home/connor/Sync /run/media/connor/BACKUP/weekly > /var/log/weekly-backup.log 2>&1"
    "0 0 1 * *      root    rclone sync --inplace --quiet --size-only --fast-list --copy-links /home/connor/Sync /run/media/connor/BACKUP/monthly > /var/log/monthly-backup.log 2>&1"
    "0 0 1 1 *      root    rclone sync --inplace --quiet --size-only --fast-list --copy-links /home/connor/Sync /run/media/connor/BACKUP/yearly > /var/log/yearly-backup.log 2>&1"
  ];
}