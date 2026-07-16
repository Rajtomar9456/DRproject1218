<?php

namespace App\Console\Commands;

use Illuminate\Console\Command;
use Symfony\Component\Process\Process;
use Symfony\Component\Process\Exception\ProcessFailedException;

class BackupDatabase extends Command
{
    /**
     * The name and signature of the console command.
     */
    protected $signature = 'db:backup';

    /**
     * The console command description.
     */
    protected $description = 'Backup MySQL database';

    /**
     * Execute the console command.
     */
    public function handle(): int
    {
        $database = env('DB_DATABASE');
        $username = env('DB_USERNAME');
        $password = env('DB_PASSWORD');

        $fileName = storage_path('app/backups/backup_' . date('Y_m_d_H_i_s') . '.sql');

        if (!file_exists(dirname($fileName))) {
            mkdir(dirname($fileName), 0755, true);
        }

        $command = sprintf(
            'mysqldump -u%s -p%s %s > %s',
            $username,
            $password,
            $database,
            $fileName
        );

        $process = Process::fromShellCommandline($command);

        $process->setTimeout(0);

        try {
            $process->mustRun();

            $this->info("Database backup created successfully:");
            $this->info($fileName);

        } catch (ProcessFailedException $exception) {
            $this->error('Backup failed: ' . $exception->getMessage());
            return Command::FAILURE;
        }

        return Command::SUCCESS;
    }
}
