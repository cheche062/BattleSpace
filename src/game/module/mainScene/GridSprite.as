package game.module.mainScene
{
	import laya.display.Sprite;
	import laya.maths.Point;
	
	public class GridSprite extends Sprite
	{
		protected var gridLineLayer:Sprite;		//网格线层
		protected var maskLayer:Sprite;	//迷雾层
		
		protected var wHalfTile:int;	//网格象素宽的一半
		protected var hHalfTile:int;	//网格象素高的一半
		private var _mapData:Object;
		private var _curW:Number;
		private var _curH:Number;
		
		public function GridSprite()
		{
			super();
			this.alpha = 0.3;
		}
		
		/**初始化参数*/
		public function initParam():void{
			
		}
		
		/**
		 * 画网格
		 * disArea -- 是否显示可视区域
		 */
		private function drawGrid():void
		{
			if (gridLineLayer) return;
			
			_curW = HomeData.MAX_COLUMN;
			_curH = HomeData.MAX_CURROW;
			trace("------------------", _curW, _curH);
			this._mapData = HomeData.intance.copyMap();
			
			this.wHalfTile = Math.floor(HomeData.tileW / 2);
			this.hHalfTile = Math.floor(HomeData.tileH / 2);
			
			this.gridLineLayer = new Sprite();
			this.addChild(this.gridLineLayer);
			
			var goPoint:Point = new Point();
			var toPoint:Point = new Point();
			
			var newX = HomeData.ORIGIN_POS.x;
			var newY = HomeData.ORIGIN_POS.y;
			//新的算法尝试
			for(var i:int=0; i<=_curW; i++){
				var arr:Array = getYArr(i, _curH);
				for(var j:int=0; j<arr.length; j++){
					goPoint.x = newX+arr[j]*wHalfTile - i*wHalfTile;
					goPoint.y = newY+arr[j]*hHalfTile + i*hHalfTile;
					
					toPoint.x = newX+(arr[j+1])*wHalfTile - i*wHalfTile;
					toPoint.y = newY+(arr[j+1])*hHalfTile + i*hHalfTile;
					this.gridLineLayer.graphics.drawLine(goPoint.x,goPoint.y,toPoint.x, toPoint.y ,"#ffffff", 1 );
					j++;
				}
			}

			for(i=0; i<=_curH; i++){
				arr = getXArr(i,_curW);
				for(j=0; j<arr.length; j++){
					goPoint.x = newX-arr[j]*wHalfTile+i*wHalfTile;
					goPoint.y = newY+arr[j]*hHalfTile+i*hHalfTile;
					
					toPoint.x = newX-arr[j+1]*wHalfTile+i*wHalfTile;
					toPoint.y = newY+arr[j+1]*hHalfTile+i*hHalfTile;
					this.gridLineLayer.graphics.drawLine(goPoint.x,goPoint.y,toPoint.x, toPoint.y ,"#ffffff", 1 );
					
					j++;
				}
			}
			this.gridLineLayer.cacheAsBitmap = true;
		}
		
		/**
		 * 确定x坐标，找一个能画的Y轴起点坐标
		 * @param x
		 * @param maxY
		 * @return 
		 * 
		 */
		private function getYArr(x:int, maxY:Number):Array{
			var key:String;
			var key2:String;
			var arr:Array = [];
			var n:int=0;
			for(var i:int=0;i<=maxY; i++){
				key = (x-1)+"_"+i;
				key2 = x+"_"+i;
				if(x < 1){
					key = key2;
				}else if(x == _curW){
					key2 = key;
				}
				if((!_mapData[key] || !_mapData[key2])&& n == 0){//找开始点
					arr.push(i);
					n = 1; 
				}else if(_mapData[key] && _mapData[key2] && n == 1 && arr.length){//找结束点
					arr.push(i);
					n = 0;
				}
			}
			if(arr.length%2 != 0){
				arr.push(maxY);
			}
//			trace(x+"getYArr=============="+maxY+arr);
			return arr;
		}
		
		//
		/**
		 * 确定Y坐标，找一个能画的x轴起点坐标
		 * @param y
		 * @param maxX
		 * @return 
		 * 
		 */
		private function getXArr(y:int, maxX:Number):Array{
			var key:String;
			var key2:String;
			var arr:Array = [];
			var n:int=0;
			for(var i:int=0;i<=maxX; i++){
				key = i+"_"+(y-1);
				key2 = i+"_"+y;
				if(y < 1){
					key = key2;
				}else if(y == _curH){
					key2 = key;
				}
				if((!_mapData[key] || !_mapData[key2]) && n == 0){//找开始点
					arr.push(i);
					n = 1;
				}else if(_mapData[key] && _mapData[key2] && n == 1 && arr.length){//找结束点
					arr.push(i);
					n = 0;
				}
			}
			if(arr.length%2 != 0){
				arr.push(maxX);
			}
//			trace(y,maxX,"getXArr==============",arr);
			return arr;
		}
		
		public function showGrid(v:Boolean):void{
			// 暂时全显示
//			v = true;
			if (!v) {
				gridLineLayer && (gridLineLayer.visible = false);
				return;
			}
			
			drawGrid();
			gridLineLayer.visible = true;
		}
	}
}