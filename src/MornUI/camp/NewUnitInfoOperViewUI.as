/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.componets.DataComUI;
	import MornUI.componets.SkillItemUI;
	import laya.display.Text;

	public class NewUnitInfoOperViewUI extends View {
		public var showBox:Box;
		public var dataInfo:DataComUI;
		public var dom_skill_box:HBox;
		public var pListBox:Box;
		public var nameTF:Text;
		public var lvTF:Text;
		public var poIcon:Image;
		public var popTF:Text;
		public var maxIcon:Image;
		public var maxTF:Text;
		public var upgradeBtn:Button;
		public var needBox:Box;
		public var numTF:Text;
		public var addBtn:Button;

		override protected function createChildren():void {
			View.regComponent("MornUI.componets.DataComUI",DataComUI);
			View.regComponent("MornUI.componets.SkillItemUI",SkillItemUI);
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("camp/NewUnitInfoOperView");

		}

	}
}