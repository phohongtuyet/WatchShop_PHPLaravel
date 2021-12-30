<?php

use App\Models\NguoiDung;
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

class CreateUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('nguoidung', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->string('username', 100)->unique(); // Tên đăng nhập
            $table->string('email')->unique();
            $table->timestamp('email_verified_at')->nullable();
            $table->string('password');
            $table->rememberToken();
            $table->string('role', 20)->default('user'); // Quyền hạn: admin, user
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate();
            $table->engine = 'InnoDB';
        });

        NguoiDung::create([
			'name' => 'Administrator',
			'username' => 'admin',
			'email' => 'phohongtuyetse@gmail',
            'email_verified_at' => date('Y-m-d H:i:s'),
			'password' => '$2a$12$7x/9C1NRD56pOY4QvjHMreqU3B8TfXn.0FcNT5IvNxw5Xhg5SqACm', // 123456789
			'role' => 'admin',
		]);
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('nguoidung');
    }
}
