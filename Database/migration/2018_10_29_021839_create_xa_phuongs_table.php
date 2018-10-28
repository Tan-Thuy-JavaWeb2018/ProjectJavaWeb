<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateXaPhuongsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('xa_phuongs', function (Blueprint $table) {
            $table->increments('id');
            $table->string('ten')->nullable();
            $table->string('donvi')->nullable();
            $table->string('tenkhongdau')->nullable();
            $table->string('tendaydu')->nullable();
            $table->string('tenthuong')->nullable();
            $table->string('tenhanhchinh')->nullable();
            $table->integer('code')->nullable();
            $table->integer('id_quanhuyen')->unsigned();
            $table->foreign('id_quanhuyen')->references('id')->on('quan_huyens');
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
        Schema::dropIfExists('xa_phuongs');
    }
}
