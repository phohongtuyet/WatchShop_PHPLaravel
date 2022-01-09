<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use App\Models\Loai;

class CreateLoaisTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('loai', function (Blueprint $table) {
            $table->id();
            $table->string('tenloai');
            $table->string('tenloai_slug');
            $table->timestamp('created_at')->useCurrent();
            $table->timestamp('updated_at')->useCurrentOnUpdate();
            $table->engine = 'InnoDB';
        });
        Loai::create(['tenloai' => 'Đồng hồ pin','tenloai_slug' => 'dong-ho-pin']);
        Loai::create(['tenloai' => 'Đồng hồ cơ','tenloai_slug' => 'dong-ho-co']);
        Loai::create(['tenloai' => 'Đồng hồ thông minh','tenloai_slug' => 'dong-ho-thong-minh']);

    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('loai');
    }
}
