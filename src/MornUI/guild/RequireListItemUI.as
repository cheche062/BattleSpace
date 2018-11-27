/**Created by the LayaAirIDE,do not modify.*/
package MornUI.guild {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;

	public class RequireListItemUI extends View {
		public var requireNameTF:Text;
		public var getNumTF:Text;
		public var stateTF:Text;
		public var donateBtn:Button;
		public var holdNumTF:Text;
		public var proccessBar:Image;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			super.createChildren();
			loadUI("guild/RequireListItem");

		}

	}
}