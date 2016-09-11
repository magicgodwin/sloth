package ${packageName}.model;

import javax.annotation.Generated;

@Generated(
	value = {
	"https://github.com/coolcooldee/sloth",
	"Sloth version:1.0"
	},
	comments = "This class is generated by Sloth"
)
public class ${upperFirstLetterName} {

	<#list columns as column>
	/**
	   ${column.remark}
	 */
	private ${column.type} ${column.lowerFirstLetterName};
	</#list>

	<#list columns as column>
	public ${column.type} get${column.upperFirstLetterName}() {
		return ${column.lowerFirstLetterName};
	}

	public void set${column.upperFirstLetterName}(${column.type} ${column.lowerFirstLetterName}) {
		this.${column.lowerFirstLetterName} = ${column.lowerFirstLetterName};
	} 
	</#list>
}
