<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('users', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name');
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->string('phanquyen');
            $table->string('gioitinh', 10);
            $table->string('hoten');
            $table->text('img')->nullable();
            $table->date('ngaysinh')->nullable();
            $table->string('sodienthoai')->nullable();
            $table->string('nghenghiep')->nullable();
            $table->text('sothich')->nullable();
            $table->text('gioithieubanthan')->nullable();
            $table->rememberToken();
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
        Schema::dropIfExists('users');
    }
}
