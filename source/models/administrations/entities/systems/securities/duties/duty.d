module models.administrations.entities.systems.securities.duties.duty;

@safe:
import models.administrations;

class DSecurityDutyEntity : DOOPEntity {
  mixin(EntityThis!("SecurityDutyEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "securityDutyId": UUIDAttribute, // 
        "securityDutyName": StringAttribute, // 
        "securityPrivilegeName": StringAttribute, // 
        "securityPrivilege": StringAttribute, // 
        "securityPrivilegeId": UUIDAttribute, // 
      ])
      .registerPath("security_duties");
  }
}
mixin(EntityCalls!("SecurityDutyEntity"));

version(test_library) {
  unittest {
    assert(SecurityDutyEntity);
  
    auto entity = SecurityDutyEntity;
  }
}