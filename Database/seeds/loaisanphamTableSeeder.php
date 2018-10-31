<?php

use Illuminate\Database\Seeder; 
class loaisanphamTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {  
        DB::table('loaisanpham')->insert(
            [
                ['tenloai'=>"Bánh mặn"],
                ['tenloai'=>"Bánh ngọt"],
                ['tenloai'=>"Nước uống"],
                ['tenloai'=>"Trà sữa"],
                ['tenloai'=>"Sản phẩm khác"]
            ]
            
        ); 
    }
}
