Vim�UnDo� �oJQ10.ܙ�KEs�-E_W�K{C��/�t   R           ^      
       
   
   
    gl�    _�                     /   7    ����                                                                                                                                                                                                                                                                                                                            /   7       /   A       v   A    gD2     �   .   0   S      C                <p className="et-fb-multiple-checkbox" key={index}>5��    .   7                  �                     5�_�                    0       ����                                                                                                                                                                                                                                                                                                                            /   7       /   A       v   A    gD3     �   /   2   S                          <label5��    /                    �                     �    0                     �                    �    0                      �                     5�_�                    1        ����                                                                                                                                                                                                                                                                                                                            /   7       /   A       v   A    gD4     �   0   2   T       �   1   2   T    5��    0                      �                     5�_�                    1   
    ����                                                                                                                                                                                                                                                                                                                            /   7       /   A       v   A    gD6     �               T   e// Like the built-in multiple checkboxes field, but preserves the IDs of the checkboxes in the value.       )import React, { Component } from "react";   import $ from "jquery";       -class Multiple_Checkboxes extends Component {   /    static slug = "custom_multiple_checkboxes";           state = {           checkedBoxes: [],       };           constructor(props) {           super(props);           this.state = {   N            checkedBoxes: this.props.value ? this.props.value.split(",") : [],   
        };       }       $    _onCheckboxChange = (event) => {   0        const { value, checked } = event.target;           this.setState(               (prevState) => {                   if (checked) {   P                    return { checkedBoxes: [...prevState.checkedBoxes, value] };                   } else {                       return {   D                        checkedBoxes: prevState.checkedBoxes.filter(   2                            (box) => box !== value                           ),                       };                   }               },               () => {   %                this.props._onChange(   $                    this.props.name,   5                    this.state.checkedBoxes.join(",")                   );               }   
        );       };           render() {   A        let checkboxes_data = this.props.fieldDefinition.options;   L        const checkboxes = Object.keys(checkboxes_data).map((id, index) => {               return (   8                <p className="et-fb-multiple-checkbox" >                       <label   key={index}   ^                        htmlFor={`${this.constructor.slug}-${this.props.name}-checkbox-${id}`}                       >                           <input   +                            type="checkbox"   ]                            id={`${this.constructor.slug}-${this.props.name}-checkbox-${id}`}   Y                            name={`${this.constructor.slug}-${this.props.name}-checkbox`}   &                            value={id}   ;                            data-text={checkboxes_data[id]}   =                            onChange={this._onCheckboxChange}   F                            checked={this.state.checkedBoxes.includes(   -                                id.toString()                               )}                           />   -                        {checkboxes_data[id]}                       </label>                   </p>               );           });               return (               <div   Z                className={`${this.constructor.slug}-wrap et-fb-multiple-checkboxes-wrap`}               >                   {checkboxes}                   <input   F                    id={`${this.constructor.slug}-${this.props.name}`}   *                    name={this.props.name}   ,                    value={this.props.value}   !                    type="hidden"                   />               </div>   
        );       }   }   #export default Multiple_Checkboxes;5��        e   S   #   S   $   e       r
      �
      5�_�                    /       ����                                                                                                                                                                                                                                                                                                                               7          A       v   A    gD8     �   .   /          7                <p className="et-fb-multiple-checkbox">5��    .                      N      8               5�_�                    2       ����                                                                                                                                                                                                                                                                                                                               7          A       v   A    gD9     �   1   2                              >5��    1                      �                     5�_�                    1   ^    ����                                                                                                                                                                                                                                                                                                                               7          A       v   A    gD;     �   0   2   R      ^                        htmlFor={`${this.constructor.slug}-${this.props.name}-checkbox-${id}`}5��    0   ^                  �                     5�_�      	              ?       ����                                                                                                                                                                                                                                                                                                                               7          A       v   A    gD=     �   >   ?                          </p>5��    >                      �                     5�_�      
           	   ?       ����                                                                                                                                                                                                                                                                                                                               7          A       v   A    gD>    �       R   Q   P   e// Like the built-in multiple checkboxes field, but preserves the IDs of the checkboxes in the value.       )import React, { Component } from "react";   import $ from "jquery";       -class Multiple_Checkboxes extends Component {   /    static slug = "custom_multiple_checkboxes";           state = {           checkedBoxes: []       };           constructor(props) {           super(props);           this.state = {   M            checkedBoxes: this.props.value ? this.props.value.split(",") : []   
        };       }       "    _onCheckboxChange = event => {   0        const { value, checked } = event.target;           this.setState(               prevState => {                   if (checked) {   P                    return { checkedBoxes: [...prevState.checkedBoxes, value] };                   } else {                       return {   D                        checkedBoxes: prevState.checkedBoxes.filter(   0                            box => box !== value                           )                       };                   }               },               () => {   %                this.props._onChange(   $                    this.props.name,   5                    this.state.checkedBoxes.join(",")                   );               }   
        );       };           render() {   A        let checkboxes_data = this.props.fieldDefinition.options;   L        const checkboxes = Object.keys(checkboxes_data).map((id, index) => {               return (                       <label   #                        key={index}   _                        htmlFor={`${this.constructor.slug}-${this.props.name}-checkbox-${id}`}>                           <input   +                            type="checkbox"   ]                            id={`${this.constructor.slug}-${this.props.name}-checkbox-${id}`}   Y                            name={`${this.constructor.slug}-${this.props.name}-checkbox`}   &                            value={id}   ;                            data-text={checkboxes_data[id]}   =                            onChange={this._onCheckboxChange}   F                            checked={this.state.checkedBoxes.includes(   -                                id.toString()                               )}                           />   -                        {checkboxes_data[id]}                       </label>               );           });               return (               <div   Z                className={`${this.constructor.slug}-wrap et-fb-multiple-checkboxes-wrap`}               >                   {checkboxes}                   <input   F                    id={`${this.constructor.slug}-${this.props.name}`}   *                    name={this.props.name}   ,                    value={this.props.value}   !                    type="hidden"                   />               </div>   
        );       }   }5��        e   O      P      e       �	      �	      5�_�   	               
   ;   (    ����                                                                                                                                                                                                                                                                                                                                                             gl�    �               R   e// Like the built-in multiple checkboxes field, but preserves the IDs of the checkboxes in the value.       )import React, { Component } from "react";   import $ from "jquery";       -class Multiple_Checkboxes extends Component {   /    static slug = "custom_multiple_checkboxes";           state = {           checkedBoxes: []       };           constructor(props) {           super(props);           this.state = {   M            checkedBoxes: this.props.value ? this.props.value.split(",") : []   
        };       }       "    _onCheckboxChange = event => {   0        const { value, checked } = event.target;           this.setState(               prevState => {                   if (checked) {   P                    return { checkedBoxes: [...prevState.checkedBoxes, value] };                   } else {                       return {   D                        checkedBoxes: prevState.checkedBoxes.filter(   0                            box => box !== value                           )                       };                   }               },               () => {   %                this.props._onChange(   $                    this.props.name,   5                    this.state.checkedBoxes.join(",")                   );               }   
        );       };           render() {   A        let checkboxes_data = this.props.fieldDefinition.options;   L        const checkboxes = Object.keys(checkboxes_data).map((id, index) => {               return (                   <label                       key={index}   Z                    htmlFor={`${this.constructor.slug}-${this.props.name}-checkbox-${id}`}                   >                       <input   '                        type="checkbox"   Y                        id={`${this.constructor.slug}-${this.props.name}-checkbox-${id}`}   U                        name={`${this.constructor.slug}-${this.props.name}-checkbox`}   "                        value={id}   7                        data-text={checkboxes_data[id]}   9                        onChange={this._onCheckboxChange}   B                        checked={this.state.checkedBoxes.includes(   )                            id.toString()                           )}                       />   )                    {checkboxes_data[id]}                   </label>               );           });               return (               <div   Z                className={`${this.constructor.slug}-wrap et-fb-multiple-checkboxes-wrap`}               >                   {checkboxes}                   <input   F                    id={`${this.constructor.slug}-${this.props.name}`}   *                    name={this.props.name}   ,                    value={this.props.value}   !                    type="hidden"                   />               </div>   
        );       }   }   $export default Multiple_Checkboxes;5�5��