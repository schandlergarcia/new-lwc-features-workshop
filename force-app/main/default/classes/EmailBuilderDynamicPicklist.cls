global without sharing class EmailBuilderDynamicPicklist extends VisualEditor.DynamicPickList{
    global override VisualEditor.DataRow getDefaultValue(){
        List<Account> accounts = [SELECT Id, Name FROM Account];
        VisualEditor.DataRow defaultValue = new VisualEditor.DataRow(accounts[0].Name, accounts[0].Name);
        return defaultValue;
    }
    global override VisualEditor.DynamicPickListRows getValues() {
        VisualEditor.DynamicPickListRows  myValues = new VisualEditor.DynamicPickListRows();
        List<Account> accounts = [SELECT Id, Name FROM Account];
        for(Account account : accounts){
            VisualEditor.DataRow value = new VisualEditor.DataRow(account.Name, account.Name);
            myValues.addRow(value);
        }
        return myValues;
    }

}