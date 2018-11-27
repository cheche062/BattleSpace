/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import game.module.pvp.views.ui.UnitCardItem;

	public class BuffShowContainerUI extends View {
		public var cardList:List;
		public var buffWord:Label;
		public var bTxt:Label;
		public var zTxt:Label;
		public var zAddBtn:Button;
		public var zTypeImg:Image;
		public var bAddBtn:Button;
		public var bTypeImg:Image;
		public var zAddTxt:Label;
		public var bAddTxt:Label;

		override protected function createChildren():void {
			View.regComponent("game.module.pvp.views.ui.UnitCardItem",UnitCardItem);
			super.createChildren();
			loadUI("pvpFight/BuffShowContainer");

		}

	}
}