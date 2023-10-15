//tela
int jogador, computador;
int tela;
int ultimapagina;

//cores
color ccuca;
color ccurupira;
color ciara;
color csaci;
color cboto;

//imagens
PImage inicio;
PImage info;
PImage escolha;
PImage luta;
PImage cuca;
PImage iara;
PImage boto;
PImage curupira;
PImage saci;
PImage derrota;
PImage vitoria;
PImage empate;
PImage b_s;
PImage cc_b;
PImage cc_cr;
PImage cc_i;
PImage cr_b;
PImage i_b;
PImage i_cr;
PImage s_cc;
PImage s_cr;
PImage s_i;
PImage e;

void setup () {
  size (1000, 600);
  colorMode (HSB, 360, 100, 100);
  inicio = loadImage ("inicio.png");
  info = loadImage ("info.png");
  escolha = loadImage ("escolha.png");
  luta = loadImage ("luta.png");
  cuca = loadImage ("cuca.png");
  iara = loadImage ("iara.png");
  boto = loadImage ("boto.png");
  curupira = loadImage ("curupira.png");
  saci = loadImage ("saci.png");
  derrota = loadImage ("derrota.png");
  vitoria = loadImage ("vitoria.png");
  empate = loadImage ("empate.png");
  b_s = loadImage ("b_s.png");
  cc_b = loadImage ("cc_b.png");
  cc_cr = loadImage ("cc_cr.png");
  cc_i = loadImage ("cc_i.png");
  cr_b = loadImage ("cr_b.png");
  i_b = loadImage ("i_b.png");
  i_cr = loadImage ("i_cr.png");
  s_cc = loadImage ("s_cc.png");
  s_cr = loadImage ("s_cr.png");
  s_i = loadImage ("s_i.png");
  e = loadImage ("e.png");

  ccuca = color (77, 38, 85);
  ccurupira = color (44, 55, 93);
  ciara = color (309, 10, 78);
  csaci = color (20, 56, 89);
  cboto = color (187, 23, 85);

  computador = int (random (1, 6));
}

void draw () {
  //inicio
  if (tela==0) {
    image (inicio, 0, 0, 1000, 600);
  }
  //escolha
  if (tela==1) {
    image (escolha, 0, 0, 1000, 600);
  }
  //info
  if (tela==2) {
    image (info, 0, 0, 1000, 600);
  }
  //luta
  if (tela==3) {
    if (jogador==1) {
      image (cuca, 0, 100, 500, 500);
    }
    if (jogador==2) {
      image (iara, 0, 100, 500, 500);
    }
    if (jogador==3) {
      image (boto, 0, 100, 500, 500);
    }
    if (jogador==4) {
      image (curupira, 0, 100, 500, 500);
    }
    if (jogador==5) {
      image (saci, 0, 100, 500, 500);
    }
    if (computador==1) {
      image (cuca, 500, 100, 500, 500);
    }
    if (computador==2) {
      image (iara, 500, 100, 500, 500);
    }
    if (computador==3) {
      image (boto, 500, 100, 500, 500);
    }
    if (computador==4) {
      image (curupira, 500, 100, 500, 500);
    }
    if (computador==5) {
      image (saci, 500, 100, 500, 500);
    }
    image (luta, 0, 0, 1000, 600);
  }
  
  //resultado
  if (tela==4) {
    if (jogador==1) {
      if (computador==1) {
        background (ccuca);
        image (empate, 0, 0, 1000, 600);
        image (e, 177, 266, 646, 130);
      }
      if (computador==2) {
        background (ccuca);
        image (vitoria, 0, 0, 1000, 600);
        image (cc_i, 177, 266, 646, 130);
      }
      if (computador==3) {
        background (ccuca);
        image (vitoria, 0, 0, 1000, 600);
        image (cc_b, 177, 266, 646, 130);
      }
      if (computador==4) {
        background (ccurupira);
        image (derrota, 0, 0, 1000, 600);
        image (cc_cr, 177, 266, 646, 130);
      }
      if (computador==5) {
        background (csaci);
        image (derrota, 0, 0, 1000, 600);
        image (s_cc, 177, 266, 646, 130);
      }
    }
    if (jogador==2) {
      if (computador==1) {
        background (ccuca);
        image (derrota, 0, 0, 1000, 600);
        image (cc_i, 177, 266, 646, 130);
      }
      if (computador==2) {
        background (ciara);
        image (empate, 0, 0, 1000, 600);
        image (e, 177, 266, 646, 130);
      }
      if (computador==3) {
        background (cboto);
        image (derrota, 0, 0, 1000, 600);
        image (i_b, 177, 266, 646, 130);
      }
      if (computador==4) {
        background (ciara);
        image (vitoria, 0, 0, 1000, 600);
        image (i_cr, 177, 266, 646, 130);
      }
      if (computador==5) {
        background (ciara);
        image (vitoria, 0, 0, 1000, 600);
        image (s_i, 177, 266, 646, 130);
      }
    }
    if (jogador==3) {
      if (computador==1) {
        background (ccuca);
        image (derrota, 0, 0, 1000, 600);
        image (cc_b, 177, 266, 646, 130);
      }
      if (computador==2) {
        background (cboto);
        image (vitoria, 0, 0, 1000, 600);
        image (i_b, 177, 266, 646, 130);
      }
      if (computador==3) {
        background (cboto);
        image (empate, 0, 0, 1000, 600);
        image (e, 177, 266, 646, 130);
      }
      if (computador==4) {
        background (ccurupira);
        image (derrota, 0, 0, 1000, 600);
        image (cr_b, 177, 266, 646, 130);
      }
      if (computador==5) {
        background (cboto);
        image (vitoria, 0, 0, 1000, 600);
        image (b_s, 177, 266, 646, 130);
      }
    }
    if (jogador==4) {
      if (computador==1) {
        background (ccurupira);
        image (vitoria, 0, 0, 1000, 600);
        image (cc_cr, 177, 266, 646, 130);
      }
      if (computador==2) {
        background (ciara);
        image (derrota, 0, 0, 1000, 600);
        image (i_cr, 177, 266, 646, 130);
      }
      if (computador==3) {
        background (ccurupira);
        image (vitoria, 0, 0, 1000, 600);
        image (cr_b, 177, 266, 646, 130);
      }
      if (computador==4) {
        background (ccurupira);
        image (empate, 0, 0, 1000, 600);
        image (e, 177, 266, 646, 130);
      }
      if (computador==5) {
        background (csaci);
        image (derrota, 0, 0, 1000, 600);
        image (s_cr, 177, 266, 646, 130);
      }
    }
    if (jogador==5) {
      if (computador==1) {
        background (csaci);
        image (vitoria, 0, 0, 1000, 600);
        image (s_cc, 177, 266, 646, 130);
      }
      if (computador==2) {
        background (ciara);
        image (derrota, 0, 0, 1000, 600);
        image (s_i, 177, 266, 646, 130);
      }
      if (computador==3) {
        background (cboto);
        image (derrota, 0, 0, 1000, 600);
        image (b_s, 177, 266, 646, 130);
      }
      if (computador==4) {
        background (csaci);
        image (vitoria, 0, 0, 1000, 600);
        image (s_cr, 177, 266, 646, 130);
      }
      if (computador==5) {
        background (csaci);
        image (empate, 0, 0, 1000, 600);
        image (e, 177, 266, 646, 130);
      }
    }
  }
}

void mousePressed () {
   //inicio
  if (tela==0) {
    if (mouseX>433 && mouseX<566 && mouseY>308 && mouseY<354) {
      tela = 1;
    }
    if (mouseX>851 && mouseX<967 && mouseY>27 && mouseY<73) {
      ultimapagina = tela;
      tela = 2;
    }
  }
  //info
  if (tela==2) {
    if (mouseX>33 && mouseX<92 && mouseY>27 && mouseY<73) {
      tela = ultimapagina;
    }
  }
  //escolha
  if (tela==1) {
    if (mouseX>851 && mouseX<967 && mouseY>27 && mouseY<73) {
      ultimapagina = tela;
      tela = 2;
    }
    //cuca
    if (mouseX>11 && mouseX<184 && mouseY>410 && mouseY<456) {
      jogador = 1;
      tela = 3;
    }
    //iara
    if (mouseX>211 && mouseX<384 && mouseY>410 && mouseY<456) {
      jogador = 2;
      tela = 3;
    }
    //boto
    if (mouseX>413 && mouseX<586 && mouseY>410 && mouseY<456) {
      jogador = 3;
      tela = 3;
    }
    //curupira
    if (mouseX>613 && mouseX<786 && mouseY>410 && mouseY<456) {
      jogador = 4;
      tela = 3;
    }
    //saci
    if (mouseX>813 && mouseX<986 && mouseY>410 && mouseY<456) {
      jogador = 5;
      tela = 3;
    }
  }
  //luta
  if (tela==3) {
    if (mouseX>33 && mouseX<92 && mouseY>27 && mouseY<73) {
      computador = int(random(1, 6));
      tela = 1;
    }
    if (mouseX>398 && mouseX<602 && mouseY>471 && mouseY<517) {
      tela = 4;
    }
  }
  //resultado
  if (tela==4) {
    if (mouseX>908 && mouseX<967 && mouseY>27 && mouseY<73) {
      tela = 0;
    }
    if (mouseX>349 && mouseX<651 && mouseY>422 && mouseY<468) {
      computador = int (random (1, 6));
      tela = 1;
    }
  }
}
