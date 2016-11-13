<?php

use Illuminate\Database\Seeder;
use App\Registrasi;

class RegistrasisSeeder extends Seeder
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
            Registrasi::create([
                'nama'          => $faker->name,
                'email'         => $faker->email,
                'password'      => bcrypt('password'),
                'no_telp'       => $faker->phoneNumber,
                'jenis_member'  => 'member',
                'imei'          => $faker->randomNumber($nbDigits = NULL)
            ]);
        }
    }
}
