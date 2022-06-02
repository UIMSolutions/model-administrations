module source.models.administrations.entities.securities.sods.rule;

@safe:
import models.administrations;

// 
class DSecuritySegregationOfDutiesRuleEntity : DOOPEntity {
  mixin(EntityThis!("SecuritySegregationOfDutiesRuleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "validFrom":  StringAttribute, // 
        "validTo":  StringAttribute, // 
        "name":  StringAttribute, // 
        "firstDuty":  StringAttribute, // 
        "secondDuty":  StringAttribute, // 
        "firstSecurityDutyIdentifier":  StringAttribute, // 
        "firstSecurityDutyName":  StringAttribute, // 
        "secondSecurityDutyIdentifier":  StringAttribute, // 
        "secondSecurityDutyName":  StringAttribute, // 
        "severity":  StringAttribute, // 
        "risk":  StringAttribute, // 
        "mitigation":  StringAttribute, //      
      ])
      .registerPath("security_sodrules");
  }
}
mixin(EntityCalls!("SecuritySegregationOfDutiesRuleEntity"));

version(test_library) {
  unittest {
    assert(SecuritySegregationOfDutiesRuleEntity);
  
    auto entity = SecuritySegregationOfDutiesRuleEntity;
  }
}