/**Created by the LayaAirIDE,do not modify.*/
package MornUI.bossFight {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class RankInfoCellUI extends View {
		public var bg:Image;
		public var RankText0:Text;
		public var RankText1:Text;
		public var RankText2:Text;
		public var RankText3:Text;
		public var RankText4:Text;
		public var MyIconImage:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("bossFight/RankInfoCell");

		}

	}
}