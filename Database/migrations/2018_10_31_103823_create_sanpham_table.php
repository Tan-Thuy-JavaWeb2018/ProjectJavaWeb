<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateSanphamTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('sanpham', function (Blueprint $table) {
            $table->increments('id');

            $table->string('tensanpham');
            $table->string('mota');
            // Nhận 15 số và lấy 0 chữ số sau dấu phẩy
            $table->double('giagoc',15,0);
            $table->integer('khuyenmai');
            $table->text('anhchinh');
            $table->integer('noibat');
            $table->integer('luotthich');
            // Khóa liên kết đến loại sản phẩ
            $table->integer('id_loaisp')->unsigned();
            $table->foreign('id_loaisp')->references('id')->on('loaisanpham');  
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('sanpham');
    }
}
