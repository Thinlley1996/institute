<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;

class ClassTypesTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('class_types')->delete();

        $data = [
            ['name' => 'Web development', 'code' => 'WB'],
            ['name' => 'Designing', 'code' => 'D'],
            ['name' => 'Animation', 'code' => 'A'],
            ['name' => 'VFX', 'code' => 'V'],
            ['name' => 'Bg Artist', 'code' => 'BG'],
            ['name' => 'Music Artist', 'code' => 'M'],
        ];

        DB::table('class_types')->insert($data);

    }
}
