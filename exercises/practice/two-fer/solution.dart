String twoFer([String? s]) {
  return 'One for ${s ?? "you"}, one for me.';
  //bad example because of concatenation and ?: instead of ??
//   return 'One for ' + (s != null ? s : 'you') + ', one for me.';
}
