// Alustetaan tila, ajastin ja nopeus
state = "idle"; // Aloitustila
state_timer = irandom_range(300, 600); // Satunnainen aika ennen seuraavaa muutosta
speed = 0; // Nopeus on aluksi 0

// Käytettävä sprite (sisältää kaikki animaatiot)
sprite_index = spr_kana_pink; // Yksi sprite kaikille tiloille

// Frame-alueet
frame_idle_start = 0;  // Pysähtelytilan animaation aloitusframe
frame_idle_end = 1;    // Pysähtelytilan animaation lopetusframe
frame_walking_start = 2; // Kävelyanimaation aloitusframe
frame_walking_end = 4;   // Kävelyanimaation lopetusframe
frame_pecking_start = 7; // Nokkimisanimaation aloitusframe
frame_pecking_end = 10;   // Nokkimisanimaation lopetusframe

// Aseta ensimmäinen munimisajastin
alarm[0] = room_speed * 5; // Munii ensimmäisen munan 5 sekunnin kuluttua

