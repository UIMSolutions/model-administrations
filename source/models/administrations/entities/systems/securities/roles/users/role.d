module models.administrations.entities.systems.securities.roles.users.role;

@safe:
import models.administrations;

// 
class DSystemSecurityUserRoleEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityUserRoleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": UUIDAttribute, // 
        "securityRoleName": StringAttribute, // 
        "accessToSensitiveData": StringAttribute, // 
        "userLicenseType": StringAttribute, // 
        "assignmentMode":		StringAttribute, //
        "assignmentStatus":		StringAttribute, //
        "securityRole":		StringAttribute, //
        "userId": StringAttribute, //
      ])
      .registerPath("administration_system.securities.userroles");
  }
}
mixin(EntityCalls!("SystemSecurityUserRoleEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityUserRoleEntity);
  
  auto entity = SystemSecurityUserRoleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}