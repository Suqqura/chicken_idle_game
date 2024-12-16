// Alustetaan tila, ajastin ja nopeus
state = chicken_state.idle; // Aloitustila
state_timer = irandom_range(90, 150); // Satunnainen aika ennen seuraavaa muutosta
speed = 0; // Nopeus on aluksi 0

// Käytettävä sprite (sisältää kaikki animaatiot)
sprite_index = spr_kana; // Yksi sprite kaikille tiloille

// Frame-alueet
frame_idle_start = 0;  // Pysähtelytilan animaation aloitusframe
frame_idle_end = 3;    // Pysähtelytilan animaation lopetusframe
frame_walking_start = 4; // Kävelyanimaation aloitusframe
frame_walking_end = 7;   // Kävelyanimaation lopetusframe
frame_pecking_start = 8; // Nokkimisanimaation aloitusframe
frame_pecking_end = 11;   // Nokkimisanimaation lopetusframe

// Aseta ensimmäinen munimisajastin
alarm[0] = room_speed * 5; // Munii ensimmäisen munan 5 sekunnin kuluttua
alarm[1] = room_speed * 1; // Munii ensimmäisen munan 1 sekunnin kuluttua
