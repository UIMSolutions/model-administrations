module models.administrations.entities.security.roles.role;

@safe:
import models.administrations;

// 
class DADMSecurityRole : DOOPEntity {
  mixin(EntityThis!("ADMSecurityRole"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleIdentifier": StringAttributeClass, // 
        "securityRoleName": StringAttributeClass, // 
        "accessToSensitiveData": StringAttributeClass, // 
        "userLicenseType": StringAttributeClass, // 
        "contextString": StringAttributeClass, // 
      ])
      .registerPath("admin_securityroles");
  }
}
mixin(EntityCalls!("ADMSecurityRole"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMSecurityRole);
  
  auto entity = ADMSecurityRole;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}