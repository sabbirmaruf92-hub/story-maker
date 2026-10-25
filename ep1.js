// Episode 1: "The Berry Basket" - scenes 1-4
SCENES.push({n:'Sunrise Nap',d:16,m:0,draw(t){
 const cam=kf(t,[[0,0],[11,0],[15,260]]);bg(.15+.6*sg(t,0,14),cam);
 ctx.translate(-cam,0);tree(380);basket(1000,5);
 const j=jm(t,11.2,.6,70),x=kf(t,[[0,470],[12.6,470],[16,800]]),sl=t<5.5,up=t>7&&t<9;
 const sy=sl?.85+.02*Math.sin(t*2):t<7?1+.25*Math.sin(Math.PI*sg(t,5.6,6.6)):t<9?1+.18*Math.sin(Math.PI*sg(t,7,9)):j.sy;
 critter({k:'fox',x,y:GY-j.l,lift:j.l,sy,sx:t>9?j.sx:1,
  tilt:sl?.55+.04*Math.sin(t*2):kf(t,[[5.5,.55],[6.3,-.1],[7,0]]),
  bl:t<6?1:(t%3.3>3.18?1:0),mood:t<7?0:t<9?3:t<11.2?0:t<12.4?3:2,
  look:t>9&&t<11.2?[1,-.6]:[1,0],aL:up?2.6:.3,aR:up?2.6:.3,mv:t>12.6,wk:x/36});
 if(sl){const b=10+9*Math.sin(t*2);el(x+82,GY-125,b,b,'rgba(190,230,255,.7)')}
}});

SCENES.push({n:'Berry Feast',d:18,m:0,draw(t){
 bg(.8,0);tree(1090);
 const by=kf(t,[[0,560],[8.5,560],[9.2,462],[9.9,462],[10.2,560],[12,560],[12.7,462],[16,462],[16.4,560]]);
 critter({k:'bird',x:1010,y:by,s:.55,f:-1,look:[-1,.5],bl:t%2.7>2.55?1:0});
 el(1010,440,95,48,'#2f9a4a');el(960,455,60,38,'#38a855');el(1060,455,60,38,'#2b8c44');
 basket(760,6-(t>6?1:0)-(t>13.8?1:0));
 const x=kf(t,[[0,150],[4,620]]),j=jm(t,4.2,.5,80),lie=t>16.2,chew=(t>7.2&&t<9.4)||(t>14.6&&t<16.2);
 const aR=kf(t,[[5,.3],[5.8,2.4],[7.2,2.4],[7.8,.3],[13,.3],[13.6,2.4],[14.6,2.4],[15.2,.3]]);
 const h=critter({k:'fox',x,y:GY-j.l,lift:j.l,sx:j.sx,sy:lie?.85:j.sy,
  tilt:lie?.5+.03*Math.sin(t*2):chew?Math.sin(t*14)*.07:0,bl:lie?1:(t%3.3>3.18?1:0),
  mood:(t>10.3&&t<11.5)?4:2,look:(t>10.3&&t<11.5)?[1,-.4]:[1,0],aR,mv:t<4,wk:x/36});
 if((t>5.8&&t<7.2)||(t>13.4&&t<14.6))el(h[0],h[1],10,10,'#e02040');
}});

SCENES.push({n:'Wobbly Branch',d:16,m:1,draw(t){
 bg(.8,0);ctx.fillStyle='#7a4a24';ctx.fillRect(290,GY-300,52,310);ctx.fillRect(290,236,720,26);
 el(320,200,170,100,'#2f9a4a');el(430,215,100,60,'#38a855');
 critter({k:'fox',x:1120,y:GY,s:.5,sy:.85,tilt:.5,bl:1,aL:.2,aR:.2});
 const x=kf(t,[[0,380],[6,840]]),u=sg(t,8.5,9.6),by=t<8.5?236:t<9.6?lp(236,GY+40,u*u):kf(t,[[9.6,GY+40],[11,GY+40],[11.3,GY-5]]);
 const rot=t<8.5?kf(t,[[6,0],[7.5,.6]])+(t>7.5?Math.sin(t*25)*.06:0):0,flap=t>7.5&&t<9.6;
 critter({k:'bird',x,y:by,rot,sy:t<8.5?1:t<9.6?1.3:t<9.9?.7:1,mood:t<6?0:t<12.5?3:4,
  look:t<6?[1,.1]:t<11.3?[1,.9]:[1,0],aL:flap?1.9+Math.sin(t*35)*.6:.3,aR:flap?1.9+Math.sin(t*35)*.6:.3,mv:t<6,wk:x/32});
 bush(840);
 if(t>9.6&&t<10.8){const w=sg(t,9.6,10.8);for(let i=0;i<9;i++)el(840+Math.cos(i*.7)*w*140,GY-10-Math.abs(Math.sin(i*1.3))*w*150,9*(1-w)+2,6*(1-w)+2,'#38a855',i)}
 if(t>11.3){el(835,by-250,16,8,'#2f9a4a',.4);el(852,by-246,14,7,'#38a855',-.5)}
 if(t>12.5){const g=Math.min(1,(t-12.5)*2);el(x,by-320,30*g,30*g,rg(x,by-320,30*g,'#fff8b0','#ffd23a'))}
}});

SCENES.push({n:'Sneaky Berry',d:18,m:2,draw(t){
 bg(.8,0);basket(760,4-(t>8.5?1:0));
 const sl=t<11.2,fx=t<14.5?520:kf(t,[[14.5,520],[18,90]]);
 critter({k:'fox',x:fx,y:GY,f:t<14.5?1:-1,sy:sl?.85+.02*Math.sin(t*2):t<12?1+.25*Math.sin(Math.PI*sg(t,11.2,12)):1,
  tilt:sl?.5+.04*Math.sin(t*2):kf(t,[[11.2,.5],[12,0]]),bl:sl?1:(t%3.3>3.18?1:0),
  mood:t<12?0:t<13.8?4:t<15?1:0,look:t>12&&t<13.8?[1,-.2]:[1,0],
  aL:t>13.8&&t<14.6?1.3:.3,aR:t>13.8&&t<14.6?1.3:.3,mv:t>14.5,wk:fx/36});
 if(sl){const b=10+9*Math.sin(t*2);el(fx+82,GY-125,b,b,'rgba(190,230,255,.7)')}
 const bx=kf(t,[[0,1350],[7,880]]);
 const h=critter({k:'bird',x:bx,y:GY,f:-1,mv:t<7,wk:bx/45,mood:t<11.2?4:t<14?3:t<15.4?0:2,look:[-1,.3],
  tilt:t>16.5?Math.sin(t*14)*.07:0,aL:t>11.2&&t<14?2.8:.3,
  aR:t<7?.3:kf(t,[[7,.3],[7.9,1.2],[8.6,1.2],[9.4,.5],[11.2,.5],[11.6,2.8],[14,2.8],[14.6,.5],[15.4,.5],[16,2.4],[17.4,2.4]])});
 if(t>8.4)el(h[0],h[1],10*(1-sg(t,16.3,17.7)),10*(1-sg(t,16.3,17.7)),'#e02040');
}});
