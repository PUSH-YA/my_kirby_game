
particle_system = part_system_create();

particle_dust = part_type_create();

part_type_sprite(particle_dust, s_particle_dust, 1,0,0);
part_type_direction(particle_dust, 0, 359, 0, 1);
part_type_speed(particle_dust, 0.1, 0.2, -0.004, 0);
part_type_life(particle_dust, 40, 80);
part_type_orientation(particle_dust, 0, 359, 0.1, 1, 0);
part_type_alpha3(particle_dust, 0.1, 0.2, 0.01);