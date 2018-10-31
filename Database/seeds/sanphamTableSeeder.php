<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;
class sanphamTableSeeder extends Seeder
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
            DB::table('sanpham')->insert(
                [
                    'tensanpham'=>$faker->name,
                    'mota'=>$faker->sentence,
                    'giagoc'=>$faker->randomFloat($nbMaxDecimals = 0, $min = 0, $max = NULL),
                    'khuyenmai'=>$faker->numberBetween($min = 0, $max = 100),
                    'anhchinh'=>'hinhanh'.$i,
                    'noibat'=>$faker->numberBetween($min = 0, $max = 1),
                    'luotthich'=>$faker->numberBetween($min = 0, $max = 10000), 
                    'id_loaisp'=>$faker->numberBetween($min = 1, $max = 5)  
                ]
            ); 
        }
        
    }
}
