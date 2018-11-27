/**Created by the LayaAirIDE,do not modify.*/
package MornUI.military {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class MilitaryRankItemUI extends View {
		public var bg:Image;
		public var visitBtn:Button;
		public var rankTf:Text;
		public var lvTF:Text;
		public var nameTF:Text;
		public var medalTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("military/MilitaryRankItem");

		}

	}
}