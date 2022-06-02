module models.administrations.entities.systems.securities.permission;

@safe:
import models.administrations;

// 
class DSystemSecurityPermissionEntity : DOOPEntity {
  mixin(EntityThis!("SystemSecurityPermissionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleId": StringAttribute, //
        "securityRoleName": StringAttribute, //
        "userLicenseType": StringAttribute, //
        "resourceName": StringAttribute, //
        "resourceType": StringAttribute, //
        "createAccess": StringAttribute, //
        "readAccess": StringAttribute, //
        "updateAccess": StringAttribute, //
        "deleteAccess": StringAttribute, //
        "invokeAccess": StringAttribute, //
        "correctAccess": StringAttribute, //	
      ])
      .registerPath("administration_systems.securities.permissions");
  }
}
mixin(EntityCalls!("SystemSecurityPermissionEntity"));

version(test_library) {
  unittest {
    assert(SystemSecurityPermissionEntity);
  
    auto entity = SystemSecurityPermissionEntity;
  }
}