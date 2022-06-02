module models.administrations.entities.datamanagements.executionjob;

@safe:
import models.administrations;

class DDataManagementExecutionJobEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementExecutionJobEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "description": StringAttribute
        "jobId": StringAttribute
      ])
      .registerPath("administration_datamanagements.executionjobs");
  }
}
mixin(EntityCalls!("DataManagementExecutionJobEntity"));

version(test_model_administrations) {
  unittest {
    assert(DataManagementExecutionJobEntity);

    auto entity = DataManagementExecutionJobEntity;
    // TODO more tests
  }
}