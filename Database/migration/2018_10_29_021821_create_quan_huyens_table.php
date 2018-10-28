<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateQuanHuyensTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('quan_huyens', function (Blueprint $table) {
            $table->increments('id');
            $table->string('ten')->nullable();
            $table->string('donvi')->nullable();
            $table->string('tenkhongdau')->nullable();
            $table->string('tendaydu')->nullable();
            $table->string('tenthuong')->nullable();
            $table->string('tenhanhchinh')->nullable();
            $table->integer('code')->nullable();
            $table->integer('id_tinhthanhpho')->unsigned();
            $table->foreign('id_tinhthanhpho')->references('id')->on('tinh_thanh_phos');
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
        Schema::dropIfExists('quan_huyens');
    }
}
