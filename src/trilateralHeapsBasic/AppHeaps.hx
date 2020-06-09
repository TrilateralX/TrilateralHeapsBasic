package trilateralHeapsBasic;

import trilateral3.Trilateral;
import trilateral3.drawing.Pen;
import trilateral3.geom.FlatColorTriangles;
import trilateral3.nodule.HeapsG2Nodule;
import trilateral3.geom.FlatColorTriangles;
import h2d.Graphics;
// REQUIRES HAXE 4.2
class AppHeaps extends hxd.App {
    public var pen: Pen;
    public var nodule = new HeapsG2Nodule(); // same as PenNodule without transform.
    public var width:  Int;
    public var height: Int;
    public var tri: FlatColorTriangles;
    var g:    h2d.Graphics; 
    override function init() {
        g = new h2d.Graphics( s2d );
        width   = s2d.width;
        height  = s2d.height;
        pen     = nodule.pen;
        tri     = nodule.colorTriangles;
        firstDraw();
    }
    function firstDraw(){
        draw( nodule.pen );
        g.clear();
<<<<<<< HEAD
        for( i in 0...nodule.size ){
=======
        for( i in 0...pen.size ){
             tri.pos = i; // change the position.             
>>>>>>> 54ebc05faecd9bbce1fb59788f62043a3be57983
             g.beginFill( 0xffffff );
             // ignore z for now
             g.addVertex( tri.ax, tri.ay, tri.redA, tri.greenA, tri.blueA, tri.alphaA );
             g.addVertex( tri.bx, tri.by, tri.redB, tri.greenB, tri.blueB, tri.alphaB );
             g.addVertex( tri.cx, tri.cy, tri.redC, tri.greenC, tri.blueC, tri.alphaC );
             g.endFill();
         } 
    }
    // override
    public
    function draw( pen: Pen ){
        // draw stuff once
    }
    // override with empty if not needed.
    override function update( dt: Float ) {
        drawRender( nodule.pen );
        g.clear();
<<<<<<< HEAD
        for( i in 0...nodule.size ){
=======
        var currPos = tri.pos;
        for( i in 0...pen.size ){
             tri.pos = i; // change the position.
>>>>>>> 54ebc05faecd9bbce1fb59788f62043a3be57983
             g.beginFill( 0xffffff );
             // ignore z for now
             g.addVertex( tri.ax, tri.ay, tri.redA, tri.greenA, tri.blueA, tri.alphaA );
             g.addVertex( tri.bx, tri.by, tri.redB, tri.greenB, tri.blueB, tri.alphaB );
             g.addVertex( tri.cx, tri.cy, tri.redC, tri.greenC, tri.blueC, tri.alphaC );
             g.endFill();
         } 
         // reset pos afterwards probably not need
         tri.pos = currPos;
    }
    // override
    public
    function drawRender( pen: Pen ){
        // draw stuff every frame
    }
}
