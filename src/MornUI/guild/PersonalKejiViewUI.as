/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import MornUI.guild.PersonalKejiItemUI;
	import laya.display.Text;

	public class PersonalKejiViewUI extends View {
		public var dom_list:List;
		public var dom_icon:Image;
		public var dom_fund:Label;

		override protected function createChildren():void {
			View.regComponent("MornUI.guild.PersonalKejiItemUI",PersonalKejiItemUI);
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/PersonalKejiView");

		}

	}
}