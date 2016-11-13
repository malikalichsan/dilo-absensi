<?php

use Illuminate\Database\Seeder;
use App\Acara;

class AcarasSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $faker = Faker\Factory::create();
        foreach (range(1, 10) as $i) {
            Acara::create([
                'tanggal'       => $faker->dateTime(),
                'nama_acara'    => $faker->streetName,
                'desc'          => $faker->text($maxNbChars = 200),
                'gambar'        => 'acara/images.jpeg',
                'barcode'       => $faker->ean13
            ]);
        }
    }
}
