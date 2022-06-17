
import { LightningElement,wire,track } from 'lwc';
import getAccount from '@salesforce/apex/AccountController.getAccountList';

const columns=[

    {label:'recordId',fieldName:'Id'},
    {label:'recordName',fieldName:'Name'},
];


export default class CallApex extends LightningElement {
  @track err='';  
@track columns=columns;
@track data=[];

connectedCallback() {

    getAccount()
    .then(result=>{

        this.data=result;
    })
     .catch(error=>{
                 console.log(error);
                 this.err = error;
     })
}
    
}
