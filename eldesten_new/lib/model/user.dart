class user {
  int userid;
  String nameuser;
  String typeuser;

  dataModel( String _name,int userid,String typeuser) {
    this.userid = userid;
    this.nameuser = nameuser;
    this.typeuser= typeuser;
  }

  int getuserid() {
    return userid;
  }

  void setuserid(int userid) {
    this.userid = userid;
  }

  String get_name() {
    return nameuser;
  }

  void set_name(String nameuser) {
    this.nameuser = nameuser;
  }
  String gettypeuser() {
    return nameuser;
  }

  void settypeuser(String typeuser) {
    this.typeuser = typeuser;
  }

  @override
  String toString() {
    return 'user{ID: $userid, Le nom d utilisateur est: $nameuser, type d utiilisateur: $typeuser}';
  }

}
