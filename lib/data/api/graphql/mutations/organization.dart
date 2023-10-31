class MutationOrg {
  String createOrg(String orgId, String orgCover) {
    return """   
      mutation{
        create_organization(name:"schoolName",info:"schoolInfo",privacy:"Privacy"){
          message
        }
      }
    """;
  }

  String updateOrg(
      {
      String? orgId,
      String? schoolName,
      String? schoolInfo,
      String? privacy,
      String? orgCover,
      String? schoolLogo,
      bool? active}) {
    return """
      mutation{
        edit_organization(id:"$orgId",name:"$schoolName",info:"$schoolInfo",privacy:"$privacy",cover:"$orgCover",logo:"$schoolLogo",active:$active){
          message
        }
      }

    """;
  }

  String updateOrgStatus({String? id, bool? active}){
    return """
    mutation{
        edit_organization(id:"$id",active:$active){
          message
        }
      }
    """;
  }

  String deleteOrg(String orgId) {
    return """
      mutation  {
        delete_organization(id: "$orgId") {
          message
          status
        }
      }
    """;
  }
}
