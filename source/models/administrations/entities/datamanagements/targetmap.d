module models.administrations.entities.datamanagements.targetmap;

@safe:
import models.administrations;

class DDataManagementTargetMapEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementTargetMapEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "entity": StringAttribute, //
        "isAutoManual": StringAttribute, //
        "targetDataSourceName": StringAttribute, //
        "targetField": StringAttribute, //
        "targetTable": StringAttribute, //
        "stagingField": StringAttribute, //
        "arrayIndex": StringAttribute, //
        "shortStagingField": StringAttribute, //
        "isRequired": StringAttribute, //
        "isSystem": StringAttribute, //
        "fieldDataTypeValue": StringAttribute, //
        "recVersionValue": StringAttribute, //
        "dataSourceName": StringAttribute, //
        "dataSourceField": StringAttribute, //
        "fieldLength": StringAttribute, //
        "entityLabel": StringAttribute, //
        "fieldAOTName": StringAttribute, //
      ])
      .registerPath("administration_datamanagements.targetmaps");
  }
}
mixin(EntityCalls!("DataManagementTargetMapEntity"));

version(test_model_administrations) {
  unittest {
    assert(DataManagementTargetMapEntity);

    auto entity = DataManagementTargetMapEntity;
    // TODO more tests
  }
}