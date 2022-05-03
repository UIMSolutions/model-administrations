module models.administrations.entities.security.roles.customization;

@safe:
import models.administrations;

// 
class DADMSecurityRoleCustomization : DOOPEntity {
  mixin(EntityThis!("ADMSecurityRoleCustomization"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
      "identifier": StringAttributeClass, // 
      "xmlObject": StringAttributeClass, // 
      "isDisabled": BooleanAttributeClass, // 
      ])
      .registerPath("admin_securityrolecustomizations");
  }
}
mixin(EntityCalls!("ADMSecurityRoleCustomization"));

unittest {
  version(uim_entities) {
    assert(ADMSecurityRoleCustomization);
  
  auto entity = ADMSecurityRoleCustomization;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}