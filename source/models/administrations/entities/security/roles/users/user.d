module models.administrations.entities.security.roles.users.user;

@safe:
import models.administrations;

// 
class DADMSecurityUserRole : DOOPEntity {
  mixin(EntityThis!("ADMSecurityUserRole"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AssignmentMode": StringAttributeClass, // 
        "AssignmentStatus": StringAttributeClass, // 
        "SecurityRole": StringAttributeClass, // 
        "UserId": StringAttributeClass, // 
        "SecurityRoleIdentifier": StringAttributeClass, // 
        "SecurityRoleName": StringAttributeClass, // 
        "UserLicenseType": StringAttributeClass, // 
      ])
      .registerPath("admin_securityuserroles");
  }
}
mixin(EntityCalls!("ADMSecurityUserRole"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMSecurityUserRole);
  
  auto entity = ADMSecurityUserRole;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}