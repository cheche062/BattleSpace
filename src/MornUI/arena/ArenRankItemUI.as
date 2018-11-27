/**Created by the LayaAirIDE,do not modify.*/
package MornUI.arena {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class ArenRankItemUI extends View {
		public var rankBg:Image;
		public var nameTF:Text;
		public var lvTF:Text;
		public var rkTF:Text;
		public var powerTF:Text;
		public var stateIcon:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("arena/ArenRankItem");

		}

	}
}