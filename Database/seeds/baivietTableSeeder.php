<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class baivietTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create(); 
        for($i = 0; $i< 20 ; $i++){
            DB::table('baiviet')->insert(
                [
                    'tieude'=>$faker->name,
                    'mota'=>$faker->sentence,
                    'noidung'=>$faker->text,
                    'hinhanh'=>'hinhanh'.$i,
                    'id_taikhoan'=>$faker->numberBetween($min = 1, $max = 5) 
                ]
            );
        }

        
    }
}
