<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class taikhoanTableSeed extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker::create(); 
        for($i = 0; $i< 5 ; $i++){
            DB::table('taikhoan')->insert(
                [
                    'tentaikhoan'=>$faker->username,
                    'email'=>$faker->email,
                    'matkhau'=>$faker->word,
                    'phanquyen'=>$faker->numberBetween($min = 0, $max = 1),
                    'tenhienthi'=>$faker->name,
                    'hinhanh'=>'hinhanh'.$i
                ]
            );
        }

    }
}
