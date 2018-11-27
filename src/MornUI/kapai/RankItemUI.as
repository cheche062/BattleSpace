/**Created by the LayaAirIDE,do not modify.*/
package MornUI.kapai {
	import laya.ui.*;
	import laya.display.*; 
	

	public class RankItemUI extends View {
		public var dom_rank:Label;
		public var dom_name:Label;
		public var dom_score:Label;
		public var dom_HBox:HBox;

		override protected function createChildren():void {
			super.createChildren();
			loadUI("kapai/RankItem");

		}

	}
}