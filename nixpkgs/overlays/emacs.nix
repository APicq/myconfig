self: super: {
  emacs = super.emacs.override {
    imagemagick = true ;
    libjpeg = true;
    librsvg = true;
  };
}
  
