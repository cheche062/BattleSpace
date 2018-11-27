/**Created by the LayaAirIDE,do not modify.*/
package MornUI.componets {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.componets.SkillItemUI;

	public class SkillComUI extends View {
		public var item_0:SkillItemUI;
		public var item_2:SkillItemUI;
		public var item_1:SkillItemUI;

		override protected function createChildren():void {
			View.regComponent("MornUI.componets.SkillItemUI",SkillItemUI);
			super.createChildren();
			loadUI("componets/SkillCom");

		}

	}
}