double Scor =0 ;
ChoixReponse(int indexQuestion, int indexReponse) {
  if (indexQuestion == 0) {
    if (indexReponse == 2) {
      Scor += (1 / 6);
    }
  } else if (indexQuestion == 1) {
    if (indexReponse == 0) {
      Scor += (1 / 6);
    }
  } else if (indexQuestion == 2) {
    if (indexReponse == 2) {
      Scor += (1 / 6);
    }
  } else if (indexQuestion == 3) {
    if (indexReponse == 3) {
      Scor += (1 / 6);
    }
  } else if (indexQuestion == 4) {
    if (indexReponse == 2) {
      Scor += (1 / 6);
    }
  } else if (indexQuestion == 5) {
    if (indexReponse == 0) {
      Scor += (1 / 6);
    }
  }
  return print(Scor);
}
