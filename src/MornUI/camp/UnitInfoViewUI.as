/**Created by the LayaAirIDE,do not modify.*/
package MornUI.camp {
	import laya.ui.*;
	import laya.display.*; 
	
	import laya.display.Text;
	import MornUI.componets.DataComUI;
	import MornUI.componets.SkillComUI;

	public class UnitInfoViewUI extends View {
		public var closeBtn:Button;
		public var pic:Image;
		public var nextBtn:Button;
		public var prevBtn:Button;
		public var attackIcon:Image;
		public var defendIcon:Image;
		public var attackTF:Text;
		public var defendTF:Text;
		public var nameTF:Text;
		public var lvTF:Text;
		public var poIcon:Image;
		public var popTF:Text;
		public var dataInfo:DataComUI;
		public var stageIcon:Image;
		public var upBox:Box;
		public var upgradeBtn:Button;
		public var addBtn:Button;
		public var numTF:Text;
		public var skillCom:SkillComUI;
		public var titleTF:Text;
		public var kpiIcon:Image;
		public var powerTF:Text;
		public var maxIcon:Image;
		public var maxTF:Text;

		override protected function createChildren():void {
			View.regComponent("Text",Text);
			View.regComponent("MornUI.componets.DataComUI",DataComUI);
			View.regComponent("MornUI.componets.SkillComUI",SkillComUI);
			super.createChildren();
			loadUI("camp/UnitInfoView");

		}

	}
}