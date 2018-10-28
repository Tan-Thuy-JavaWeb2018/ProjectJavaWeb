<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateTinhThanhPhosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tinh_thanh_phos', function (Blueprint $table) {
            $table->increments('id');
            $table->string('ten')->nullable();
            $table->string('tenkhongdau')->nullable();
            $table->string('donvi')->nullable();
            $table->string('tendaydu')->nullable();
            $table->integer('code')->nullable();
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
        Schema::dropIfExists('tinh_thanh_phos');
    }
}
