/**Created by the LayaAirIDE,do not modify.*/
package MornUI.componets {
	import laya.ui.*;
	import laya.display.*; 
	

	public class SkillItemUI extends View {
		public var skillBg:Image;
		public var icon:Image;
		public var nameTF:Label;
		public var lvBG:Image;
		public var lvTF:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("componets/SkillItem");

		}

	}
}