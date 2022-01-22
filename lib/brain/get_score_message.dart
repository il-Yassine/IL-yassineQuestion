get_score_message(double score) {
  if (score < 0.4) {
    return " Vous devez en apprendre plus";
  }
  if ((0.4 >= score) && (score < 7 ) ) {
    return " Vous pouvez mieux faire";
  }

  if (score >= 0.7) {
    return " Vous avez bien répondu a toutes les questions";
  }
}
