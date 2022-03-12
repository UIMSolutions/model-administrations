module models.administrations.entities.security.roles.users.association;

@safe:
import models.administrations;

// 
class DADMSecurityUserRoleAssociation : DOOPEntity {
  mixin(OOPEntityThis!("ADMSecurityUserRoleAssociation"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "AssignmentMode": OOPAttributeString.descriptions(["en":""]),
        "AssignmentStatus": OOPAttributeString.descriptions(["en":""]),
        "SecurityRole": OOPAttributeString.descriptions(["en":""]),
        "UserId": OOPAttributeString.descriptions(["en":""]),
        "SecurityRoleId": OOPAttributeString.descriptions(["en":""]),
        "SecurityRoleName": OOPAttributeString.descriptions(["en":""]),
      ])
      .registerPath("admin_securityuserroleassociation");
  }
}
mixin(OOPEntityCalls!("ADMSecurityUserRoleAssociation"));

unittest {
  version(uim_entities) {
    assert(ADMSecurityUserRoleAssociation);
  
  auto entity = ADMSecurityUserRoleAssociation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}