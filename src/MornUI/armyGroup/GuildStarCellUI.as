/**Created by the LayaAirIDE,do not modify.*/
package MornUI.armyGroup {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class GuildStarCellUI extends View {
		public var StarNameText:Text;
		public var GuildImage:Image;
		public var GuildNameText:Text;
		public var ItemList:List;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("armyGroup/GuildStarCell");

		}

	}
}