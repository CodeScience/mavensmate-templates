public with sharing class {{ api_name }} extends Selector {

	public {{ api_name }}() {
		super(Schema.{{ object_name }}.SObjectType);
	}
	
	public {{ api_name }}(Boolean enforceCRUD, Boolean enforceFLS, Boolean enforceShr) {
		super(Schema.{{ object_name }}.SObjectType, enforceCRUD, enforceFLS, enforceShr);
	}
	
	public override Set<String> getDefaultFields() {
		return new Set<String>{
			'Id',
			'Name',
			'YourCustomFieldHere__c'
		};
	}

	public List<{{ object_name }}> get{{ object_name }}ByFilter(String filter) {
		String query 	= getDefaultQuery();
		query 			+= ' WHERE YourCustomFieldHere__c LIKE :filter';
		return (List<{{ object_name }}>)Data.read(query, new Map<String,Object>{'YourCustomFieldHere__c' => filter}, this.isEnforcingCRUD(), this.isEnforcingFLS(), this.isEnforcingShr());
	}
}
