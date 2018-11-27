/**Created by the LayaAirIDE,do not modify.*/
package MornUI.monsterRush {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MonsterRushItemUI extends View {
		public var icon:Image;
		public var nameTF:Text;
		public var valueTF_0:Text;
		public var valueTF_1:Text;
		public var icon_0:Image;
		public var icon_1:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("monsterRush/MonsterRushItem");

		}

	}
}