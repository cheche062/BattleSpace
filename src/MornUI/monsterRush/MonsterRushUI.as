/**Created by the LayaAirIDE,do not modify.*/
package MornUI.monsterRush {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MonsterRushUI extends View {
		public var closeBtn:Button;
		public var attackBtn:Button;
		public var timesTF:Text;
		public var rewardTF_0:Text;
		public var rewardTF_1:Text;
		public var icon_0:Image;
		public var icon_1:Image;
		public var list:List;
		public var tipTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("monsterRush/MonsterRush");

		}

	}
}