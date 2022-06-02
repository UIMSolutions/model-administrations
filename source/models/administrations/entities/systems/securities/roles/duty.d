module models.administrations.entities.systems.securities.roles.duty;

@safe:
import models.administrations;

// 
class DSecurityRoleDutyEntity : DOOPEntity {
  mixin(EntityThis!("SecurityRoleDutyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityDutyId": UUIDAttribute, // 
        "securityDutyName": StringAttribute, // 
      ])
      .registerPath("admin_securityroleduties");
  }
}
mixin(EntityCalls!("SecurityRoleDutyEntity"));

version(test_library) {
  unittest {
    assert(SecurityRoleDutyEntity);
  
    auto entity = SecurityRoleDutyEntity;
  }
}