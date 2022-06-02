module models.administrations.entities.brazilian.parameter;

@safe:
import models.administrations;

class DBrazilianParametersEntity : DOOPEntity {
  mixin(EntityThis!("BrazilianParametersEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "approximateTaxesPrintOnlyFinalUser": StringAttribute, //
        "approximateTaxesSource": StringAttribute, //
        "approximateTaxesText": StringAttribute, //
        "basicTaxValueForCOFINSInCumulativeRegimen": StringAttribute, //
        "basicTaxValueForCOFINSInNonCumulativeRegimen": StringAttribute, //
        "basicTaxValueForPISInCumulativeRegimen": StringAttribute, //
        "basicTaxValueForPISInNonCumulativeRegimen": StringAttribute, //
        "fiscalDocumentEnableFixIssueDate": StringAttribute, //
        "taxComplementaryFiscalDocumentSalesTaxCodeForCOFINS": StringAttribute, //
        "taxComplementaryFiscalDocumentSalesTaxCodeForPIS": StringAttribute, //
        "complementaryFiscalDocumentSourceText": StringAttribute, //
        "financialDimensionForCostCenterRecId": StringAttribute, //
        "enableCFPSCode": StringAttribute, //
        "ledgerIntegrationStatus": StringAttribute, //
        "fciText": StringAttribute, //
        "taxFiscalDocumentItem": StringAttribute, //
        "fiscalDocumentTextDocumentType": StringAttribute, //
        "financialDimensionForFiscalEstablishmentRecId": StringAttribute, //
        "freeTextInvoiceItem": StringAttribute, //
        "freeTextInvoiceServiceItem": StringAttribute, //
        "importDeclarationText": StringAttribute, //
        "importDeclarationLineAmountIsBasedOn": StringAttribute, //
        "goodsToConsumeProductType": StringAttribute, //
        "referencedFiscalDocumentModel02SalesTaxCodeForCOFINS": StringAttribute, //
        "referencedFiscalDocumentModel02SalesTaxCodeForICMS": StringAttribute, //
        "referencedFiscalDocumentModel02SalesTaxCodeForPIS": StringAttribute, //
        "projectFiscalDocumentUnit": StringAttribute, //
        "purchasePrimaryMethodOfPaymentDescription": StringAttribute, //
        "purchasePrimaryMethodOfPayment": StringAttribute, //
        "requestForQuotationOperationTypeRecId": StringAttribute, //
        "purchaseRequisitionOperationTypeRecId": StringAttribute, //
        "salesPrimaryMethodOfPaymentDescription": StringAttribute, //
        "salesPrimaryMethodOfPayment": StringAttribute, //
        "suframaTextForIssueFiscalDocument": StringAttribute, //
        "taxFiscalDocumentsSalesTaxCodeForCOFINS": StringAttribute, //
        "taxFiscalDocumentsSalesTaxCodeForPIS": StringAttribute, //
        "fiscalDocumentTextForWithholdingTax": StringAttribute, //
        "volumeQuantity": StringAttribute, //
        "volumeType": StringAttribute, //
        "icmsTaxationCodeOverridesICMSST": StringAttribute, //
        "purchaseRequisitionOperationType": StringAttribute, //
        "requestForQuotationOperationType": StringAttribute, //
        "financialDimensionForCostCenter": StringAttribute, //
        "financialDimensionForFiscalEstablishment": StringAttribute, //
        "retailApproximateTaxValueTextId": StringAttribute, //
        "backingTable_BrazilParametersRelationshipId": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_brazilian.electronicreportingparameters");
  }
}
mixin(EntityCalls!("BrazilianParametersEntity"));

version(test_model_administrations) {
  unittest {
    assert(BrazilianParametersEntity);

    auto entity = BrazilianParametersEntity;
  }
}