/**Created by the LayaAirIDE,do not modify.*/
package MornUI.chests {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.chests.ChestPropertyComUI;
	import MornUI.componets.SkillComUI;

	public class ChestItemDropViewUI extends View {
		public var btn_0:Button;
		public var btn_1:Button;
		public var btn_3:Button;
		public var btn_4:Button;
		public var btn_2:Button;
		public var btn_5:Button;
		public var CloseBtn:Button;
		public var TitleText:Text;
		public var HeroList:List;
		public var HeroProperty:ChestPropertyComUI;
		public var SelectList:List;
		public var skillCom:SkillComUI;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.chests.ChestPropertyComUI",ChestPropertyComUI);
			View.regComponent("MornUI.componets.SkillComUI",SkillComUI);
			super.createChildren();
			loadUI("chests/ChestItemDropView");

		}

	}
}