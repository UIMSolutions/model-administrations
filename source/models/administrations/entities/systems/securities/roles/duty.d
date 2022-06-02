module models.administrations.entities.systems.securities.roles.duty;

@safe:
import models.administrations;

// 
class DSystemSecurityRoleDutyEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityRoleDutyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityDutyId": UUIDAttribute, // 
        "securityDutyName": StringAttribute, // 
      ])
      .registerPath("administration_systems.securities.roleduties");
  }
}
mixin(EntityCalls!("SystemSecurityRoleDutyEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityRoleDutyEntity);
  
    auto entity = SystemSecurityRoleDutyEntity;
  }
}