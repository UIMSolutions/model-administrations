module models.administrations.entities.systems.securities.roles.users.user;

@safe:
import models.administrations;

// 
class DADMSecurityUserRole : DOOPEntity {
  mixin(EntityThis!("ADMSecurityUserRole"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "AssignmentMode": StringAttribute, // 
        "AssignmentStatus": StringAttribute, // 
        "SecurityRole": StringAttribute, // 
        "UserId": UUIDAttribute, // 
        "SecurityRoleId": UUIDAttribute, // 
        "SecurityRoleName": StringAttribute, // 
        "UserLicenseType": StringAttribute, // 
      ])
      .registerPath("admin_securityuserroles");
  }
}
mixin(EntityCalls!("ADMSecurityUserRole"));

version(test_library) {
  unittest {
    assert(ADMSecurityUserRole);
  
  auto entity = ADMSecurityUserRole;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}