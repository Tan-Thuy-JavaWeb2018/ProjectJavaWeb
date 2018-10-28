<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateChiTietSanPhamsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chi_tiet_san_phams', function (Blueprint $table) {
            $table->increments('id');
            $table->string('ten');
            $table->text('img')->nulable();
            $table->integer('noibat')->default(0);
            $table->double('gia', 15, 0)->default(0);
            $table->integer('khuyenmai')->default(0);
            $table->text('mota')->nullable();
            $table->integer('id_sanpham')->unsigned();
            $table->foreign('id_sanpham')->references('id')->on('san_phams');
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
        Schema::dropIfExists('chi_tiet_san_phams');
    }
}
