module source.models.administrations.entities.permission;

@safe:
import models.administrations;

// 
class DSecurityPermissionEntity : DOOPEntity {
  mixin(EntityThis!("SecurityPermissionEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "securityRoleIdentifier": StringAttribute, //
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
      .registerPath("security_permissions");
  }
}
mixin(EntityCalls!("SecurityPermissionEntity"));

version(test_library) {
  unittest {
    assert(SecurityPermissionEntity);
  
    auto entity = SecurityPermissionEntity;
  }
}