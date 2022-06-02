module models.administrations.entities.dmf.entityexecutionparameters;

@safe:
import models.administrations;

class DDMFEntityExecutionParametersEntity : DOOPEntity {
  mixin(EntityThis!("DMFEntityExecutionParametersEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "entityName": StringAttribute, //
        "importThresholdRecordCount": StringAttribute, //
        "numberOfImportTasks": StringAttribute, //
      ])
      .registerPath("administration_dmf.entityexecutionparameters");
  }
}
mixin(EntityCalls!("DMFEntityExecutionParametersEntity"));

version(test_model_administrations) {
  unittest {
    assert(DMFEntityExecutionParametersEntity);

    auto entity = DMFEntityExecutionParametersEntity;
    // TODO more tests
  }
}