package game.module.camp
{
	import MornUI.componets.DataComNewUI;
	
	import game.common.XFacade;
	import game.common.XTipManager;
	import game.common.XUtils;
	import game.common.base.BaseDialog;
	import game.global.GameConfigManager;
	import game.global.GameLanguage;
	import game.global.consts.ServiceConst;
	import game.global.event.Signal;
	import game.module.fighting.adata.ArmyData;
	import game.module.tips.PropertyTip;
	import game.net.socket.WebSocketNetService;
	
	import laya.display.Node;
	import laya.events.Event;
	import laya.html.dom.HTMLDivElement;
	import laya.ui.Box;
	import laya.ui.Button;
	import laya.ui.Image;
	import laya.ui.Label;
	import laya.utils.Handler;
	
	public class DataComNewView extends BaseDialog
	{
		private var unitData:ArmyData;
		private var imgAttrs = {
			"hp":"common/icons/HP_a.png",
			"defense":"common/icons/DEF_a.png",
			"attack":"common/icons/ATK_a.png",
			"speed":"common/icons/SPEED_a.png",
			"hit":"common/icons/hit_a.png",
			"dodge":"common/icons/dodge_a.png",
			"crit":"common/icons/crit_a.png",
			"critDamage":"common/icons/CDMG_a.png",
			"resilience":"common/icons/RES_a.png",
			"critDamReduct":"common/icons/CDMGR_a.png",
			
			"HP_Amp":"common/icons/HP`_a.png",
			"ATK_Amp":"common/icons/ATK`_a.png",
			"DEF_Amp":"common/icons/DEF`_a.png",
			"SPEED_Amp":"common/icons/SPEED`_a.png",
			"hit_Amp":"common/icons/hit`_a.png",
			"dodge_Amp":"common/icons/dodge`_a.png",
			"crit_Amp":"common/icons/crit`_a.png",
			"CDMG_Amp":"common/icons/CDMG`_a.png",
			"RES_Amp":"common/icons/RES`_a.png",
			"CDMGR_Amp":"common/icons/CDMGR`_a.png"
		};
		private static var tipDic:Object = 
			{
				"hp":[733,703],//语言包
				"defense":[743,744],//防御
				"attack":[741,742],//攻击
				"speed":[734,720],
				"hit":[721,722],
				"dodge":[723,724],
				"crit":[725,726],
				"critDamage":[727,728],
				"resilience":[729,730],
				"critDamReduct":[731,732],
				
				"HP_Amp":[2758,2768],//语言包
				"ATK_Amp":[2759,2769],//防御
				"DEF_Amp":[2760,2770],//攻击
				"SPEED_Amp":[2761,2771],
				"hit_Amp":[2762,2772],
				"dodge_Amp":[2763,2773],
				"crit_Amp":[2764,2774],
				"CDMG_Amp":[2766,2775],
				"RES_Amp":[2765,2776],
				"CDMGR_Amp":[2767,2777]
			}
		private static var iconDic:Object = 
			{
				"hp":"HP_a",
				"attack":"ATK_a",
				"defense":"DEF_a",
				"speed":"SPEED_a",
				"hit":"hit_a",
				"dodge":"dodge_a",
				"crit":"crit_a",
				"critDamage":"CDMG_a",
				"resilience":"RES_a",
				"critDamReduct":"CDMGR_a",
				
				"HP_Amp":"HP`_a",
				"ATK_Amp":"DEF`_a",
				"DEF_Amp":"ATK`_a",
				"SPEED_Amp":"SPEED`_a",
				"hit_Amp":"hit`_a",
				"dodge_Amp":"dodge`_a",
				"crit_Amp":"crit`_a",
				"CDMG_Amp":"CDMG`_a",
				"RES_Amp":"RES`_a",
				"CDMGR_Amp":"CDMGR`_a"
			}
		private static var proArr:Array = ["hp","attack","defense","speed","hit","dodge","crit","critDamage","resilience","critDamReduct",
			"HP_Amp","ATK_Amp","DEF_Amp","SPEED_Amp","hit_Amp","dodge_Amp","crit_Amp","CDMG_Amp","RES_Amp","CDMGR_Amp" ];
		private static const PRO_NUM:int = 10;
		
		public function DataComNewView()
		{
			super();
		}
		override public function createUI():void
		{
			this.addChild(view);
			
			this.view.listAttr.renderHandler = new Handler(this, onRender);
			this.view.listAttr.mouseHandler = new Handler(this, onMouse);
			this.view.listAttr.array = [];
			this.view.listAttr.hScrollBarSkin = '';
			view.btnLeft.visible = false;
			view.btnRight.visible = false;
		}
		
		private function onRender(cell:Box, index:int):void {
			if(index > this.view.listAttr.array.length)return;
			//获取当前渲染条目的数据
			var data:Object= this.view.listAttr.array[index];
			if(!data){return;}
			//根据子节点的名字listNumber，获取子节点对象。         
			var htmlText:HTMLDivElement=cell.getChildByName("htmlText") as HTMLDivElement;
			var imgIcon:Image=cell.getChildByName("imgIcon") as Image;
			htmlText.style.fontFamily = XFacade.FT_Futura;
			htmlText.style.fontSize = 16;
			htmlText.style.color = "#ffffff";
			htmlText.style.align = "right";
			var strNum = this.view.listAttr.array[index];
			htmlText.innerHTML = (strNum).toString()+"";
			imgIcon.skin = imgAttrs[proArr[index]];
			imgIcon.scaleX = (25/82);
			imgIcon.scaleY = (25/82);
//			imgIcon.width = 25;
//			imgIcon.height = 25;
		}
		
		private function onMouse(e:Event,index:Number):void {
			//鼠标单击事件触发
			if(e.type == Event.CLICK)
			{
//				//判断点击事件类型,如果点中的是Button组件执行
//				if((e.target) instanceof Button)
//				{
					var info:Object;
					var key = proArr[index];
					switch(key){
						case "hp":
						case "HP_Amp":
							info = {};
							info.name = GameLanguage.getLangByKey("L_A_"+tipDic[key][0]);
							info.des = GameLanguage.getLangByKey("L_A_"+tipDic[key][1]);
							info.icon = iconDic[key];
							break;
						case "attack":
						case "ATK_Amp":
							//XTipManager.addTip(ui["icon_"+i],getTipStr(tipDic[proArr[i]][obj.defense_type],proArr[i], data),PropertyTip);
							info = {};
							info.name = GameLanguage.getLangByKey("L_A_"+tipDic[key][0]);
							info.des = GameLanguage.getLangByKey("L_A_"+tipDic[key][1]);
							info.icon = iconDic[key]
							break;
						case "defense":
						case "DEF_Amp":
							//XTipManager.addTip(ui["icon_"+i],getTipStr(tipDic[proArr[i]][obj.attack_type],proArr[i], data),PropertyTip);
							info = {};
							info.name = GameLanguage.getLangByKey("L_A_"+tipDic[key][0]);
							info.des = GameLanguage.getLangByKey("L_A_"+tipDic[key][1]);
							info.icon = iconDic[key]
							break;
						case "speed":
						case "SPEED_Amp":
							info = {};
							info.name = GameLanguage.getLangByKey("L_A_"+tipDic[key][0]);
							info.des = GameLanguage.getLangByKey("L_A_"+tipDic[key][1]);
							info.icon = iconDic[key]
							break;
						case "hit_Amp":
						case "dodge_Amp":
						case "crit_Amp":
						case "RES_Amp":
						case "CDMG_Amp":
						case "CDMGR_Amp":
							info = {};
							info.name = GameLanguage.getLangByKey("L_A_"+tipDic[key][0]);
							info.des = GameLanguage.getLangByKey("L_A_"+tipDic[key][1]);
							info.icon = iconDic[key]
							break;
						default:
							info = getTipStr(tipDic[proArr[index]],proArr[index], this.unitData);
							break;
					}
					XTipManager.showTip( info,PropertyTip);
				}
//			}
		}
		
		private static function getTipStr(arr:Array, key:String, data:Object = null):Object{
			var str:String = "";
			var tipInfo:Object = {};
			tipInfo.name = GameLanguage.getLangByKey("L_A_"+arr[0])
			
			for(var i:uint=1; i<arr.length; i++){
				if(str != ""){
					str += "\n"
				}
				str+= GameLanguage.getLangByKey("L_A_"+arr[i])
			}
			str = str.replace(/##/g,"<br>");
			str = str.replace(/_x000\D_/g,"");
			
			tipInfo.des = str
			tipInfo.icon = iconDic[key];
			/*hit_rate	\$param1/(100*\$param2+900)+0.95
			dodge_rate	\$param1/(100*\$param2+950)
			crit_rate	\$param1/(100*\$param2+900)
			resilience_rate	\$param1/(100*\$param2+900)
			critical_damage_rate	\$param1/(100*\$param2+900)+1.5
			critical_damage_reduction_rate	\$param1/(100*\$param2+900)*/
			var rate:Number=0;
			var lv:Number = 1;
			var value:Number = 0;
			if(data)
			{
				if(data.hasOwnProperty(key)){
					value = data[key]
				}else{
					value = data[XUtils.getIconName(key)]
				}
				
				if(data.hasOwnProperty("level"))
				{
					lv = data.level;
				}
				
				switch(key){
					case "hit":
						rate = Math.round((((data[key] || data[XUtils.getIconName(key)])/(100*lv+900)+0.95)*1000))/10
						break;
					case "dodge":
						rate = Math.round((((data[key] || data[XUtils.getIconName(key)])/(100*lv+950)+0)*1000))/10
						break;
					case "crit":
						rate = Math.round((((data[key] || data[XUtils.getIconName(key)])/(100*lv+900)+0)*1000))/10
						break;
					case "resilience":
						rate = Math.round((((data[key] || data[XUtils.getIconName(key)])/(100*lv+900)+0)*1000))/10
						break;
					case "critDamage":
						rate = Math.round((((data[key] || data[XUtils.getIconName(key)])/(100*lv+900)+1.5)*1000))/10
						break;
					case "critDamReduct":
						rate = Math.round((((data[key] || data[XUtils.getIconName(key)])/(100*lv+900)+0)*1000))/10
						break;
				}
			}
			
			
			tipInfo.name = tipInfo.name.replace(/{(\d+)}/,rate);
			tipInfo.des = tipInfo.des.replace(/{(\d+)}/,rate);
			
			return tipInfo;
		}
		
		override public function show(...args):void
		{
			// TODO Auto Generated method stub
			super.show(args);
		}
		
		public function setUnitData(data:ArmyData):void{
			unitData = data;
			//拿到兵种ID去向服务器请求新加的十个属性
			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.TALENT_TO_NEWATTR),this,onResult);
			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.TALENT_TO_NEWATTR),this,onResult);
			WebSocketNetService.instance.sendData(ServiceConst.TALENT_TO_NEWATTR, unitData.unitId);
		}
		
		private var old_ten_attr;
		public function setListData(...args):void{
			var data = args;
//			this.view.listAttr.array = data[0];
			this.view.listAttr.array=[].concat(data[0]).concat(["0","0","0","0","0","0","0","0","0","0"]);
			old_ten_attr=[].concat(data[0]);
			view.listAttr.page = 0;
			view.listAttr.tweenTo(0);
//			this.view.listAttr.refresh();	
			changeBtnType();
		}
		
		private function onClick(event:Event):void
		{
			switch(event.target){
				case view.btnLeft:
					if(view.listAttr.page>0){
						view.listAttr.page = 0;
						view.listAttr.tweenTo(0);					
						changeBtnType();
					}
					break;
				case view.btnRight:
					if(view.listAttr.page<(view.listAttr.totalPage-1)){
						view.listAttr.page = 1;
						view.listAttr.tweenTo(10);
						changeBtnType();
					}
					break;
			}
		}
		
		private function changeBtnType():void{
			if(view.listAttr.totalPage<=1){
				return;
			}
			if(view.listAttr.page==0){
				view.btnLeft.visible = false;
			}
			else{
				view.btnLeft.visible = true;
			}
			if(view.listAttr.page==(view.listAttr.totalPage-1)){
				view.btnRight.visible = false;
			}
			else{
				view.btnRight.visible = true;
			}
		}
		
		private function onResult(cmd:int, ...args):void{
			trace("T_OnResult",args);
			switch(cmd){
				case ServiceConst.TALENT_TO_NEWATTR:
					view.listAttr.array = [].concat(old_ten_attr);
					if(view.listAttr.array.length == 10){
						var data = args[0];
						view.listAttr.array.push(data['HP_Amp'].toString());
						view.listAttr.array.push(data['ATK_Amp'].toString());
						view.listAttr.array.push(data['DEF_Amp'].toString());
						view.listAttr.array.push(data['SPEED_Amp'].toString());
						view.listAttr.array.push(data['hit_Amp'].toString());
						view.listAttr.array.push(data['dodge_Amp'].toString());
						view.listAttr.array.push(data['crit_Amp'].toString());
						view.listAttr.array.push(data['CDMG_Amp'].toString());
						view.listAttr.array.push(data['RES_Amp'].toString());
						view.listAttr.array.push(data['CDMGR_Amp'].toString());
						view.listAttr.refresh();
						changeBtnType();
					}
					break;
			}
		}
		
		override public function addEvent():void
		{
			view.on(Event.CLICK, this, this.onClick);
//			Signal.intance.on(ServiceConst.getServerEventKey(ServiceConst.TALENT_TO_NEWATTR),this,onResult);
			super.addEvent();
		}
		
		override public function removeEvent():void
		{
			view.off(Event.CLICK, this, this.onClick);
//			Signal.intance.off(ServiceConst.getServerEventKey(ServiceConst.TALENT_TO_NEWATTR),this,onResult);
			super.removeEvent();
		}
		
		override public function close():void
		{
		}
		
		private function onClose():void
		{
			// TODO Auto Generated method stub
			super.close();
		}
		
		
		override public function dispose():void
		{
			// TODO Auto Generated method stub
			super.dispose();
		}
		
		public function get view():DataComNewUI{
			_view = _view || new DataComNewUI();
			return _view;
		}
		
	}
}