{
  services.cron = {
    enable = true;
    systemCronJobs = [
      "0 0 * * *      root    rclone sync --inplace --quiet --size-only --fast-list --copy-links /home/hans/Sync /run/media/hans/BACKUP/daily > /var/log/daily-backup.log 2>&1"
      "0 0 1 * *      root    rclone sync --inplace --quiet --size-only --fast-list --copy-links /home/hans/Sync /run/media/hans/BACKUP/monthly > /var/log/monthly-backup.log 2>&1"
      "0 0 1 1 *      root    rclone sync --inplace --quiet --size-only --fast-list --copy-links /home/hans/Sync /run/media/hans/BACKUP/yearly > /var/log/yearly-backup.log 2>&1"
    ];
  };
}