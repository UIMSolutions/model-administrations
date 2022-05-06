module models.administrations.entities.security.roles.duty;

@safe:
import models.administrations;

// 
class DADMSecurityRoleDuty : DOOPEntity {
  mixin(EntityThis!("ADMSecurityRoleDuty"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": StringAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityDutyId": StringAttribute, // 
        "securityDutyName": StringAttribute, // 
      ])
      .registerPath("admin_securityroleduties");
  }
}
mixin(EntityCalls!("ADMSecurityRoleDuty"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMSecurityRoleDuty);
  
  auto entity = ADMSecurityRoleDuty;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}