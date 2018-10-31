<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        $this->call(taikhoanTableSeed::class);
        $this->call(loaisanphamTableSeeder::class);
        $this->call(sanphamTableSeeder::class);
        $this->call(baivietTableSeeder::class);
    }
}
