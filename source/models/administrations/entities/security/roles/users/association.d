module models.administrations.entities.security.roles.users.association;

@safe:
import models.administrations;

// 
class DADMSecurityUserRoleAssociation : DOOPEntity {
  mixin(EntityThis!("ADMSecurityUserRoleAssociation"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AssignmentMode": StringAttributeClass, // 
        "AssignmentStatus": StringAttributeClass, // 
        "SecurityRole": StringAttributeClass, // 
        "UserId": StringAttributeClass, // 
        "SecurityRoleId": StringAttributeClass, // 
        "SecurityRoleName": StringAttributeClass, // 
      ])
      .registerPath("admin_securityuserroleassociation");
  }
}
mixin(EntityCalls!("ADMSecurityUserRoleAssociation"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMSecurityUserRoleAssociation);
  
  auto entity = ADMSecurityUserRoleAssociation;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}