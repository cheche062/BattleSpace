/**Created by the LayaAirIDE,do not modify.*/
package MornUI.pvpFight {
	import laya.ui.*;
	import laya.display.*; 
	

	public class RankItemRenderUI extends View {
		public var icon:Image;
		public var counTxt:Label;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("pvpFight/RankItemRender");

		}

	}
}