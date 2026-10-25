// Episode 1 part 2: scenes 5-9 (original gags)
SCENES.push({n:'Missing Berry',d:16,m:0,draw(t){
 bg(.8,0);basket(700,3);
 const x=kf(t,[[0,120],[2,480],[9,480],[12,840]]),j=jm(t,6.5,.5,70);
 if(t<12)el(900,GY+22,6,26,'#4aa3ff',.7);
 const h=critter({k:'fox',x,y:GY-j.l,lift:j.l,sx:j.sx,sy:j.sy,mv:t<2||(t>9&&t<12),wk:x/36,
  tilt:t>2.5&&t<5.5?Math.sin((t-2.5)*6)*.12:0,mood:t<6.5?0:t<7.5?3:4,
  look:t>7.5&&t<9?[Math.sin(t*3),0]:t>9&&t<12?[1,.8]:[1,0],
  aR:t>2.5&&t<6?1.6:t>12?kf(t,[[12,.3],[12.8,2.4]]):.3});
 if(t>12)el(h[0],h[1],6,26,'#4aa3ff',.5);
}});

SCENES.push({n:'The String Plan',d:18,m:2,draw(t){
 bg(.8,0);
 const x=kf(t,[[0,-100],[4,640],[5.2,640],[8.5,270]]),mv=t<4||(t>5.2&&t<8.5);
 if(t<8.5)bush(260);
 const h=critter({k:'fox',x,y:GY,f:t<5.2?1:t<8.5?-1:1,sy:kf(t,[[8.5,1],[9.5,.55]])*(t>4&&t<5.2?.85:1),mv,wk:x/36,
  mood:t<8.5?0:4,look:t>9.5?[1,.3]:[1,.2],aR:t<4.5?2.4:t<5.2?kf(t,[[4.5,2.4],[5,.4]]):.5});
 if(t>=8.5)bush(260);
 if(t>4.6){ctx.strokeStyle='#f4e4b0';ctx.lineWidth=3;ctx.beginPath();ctx.moveTo(700,GY+12);ctx.lineTo(h[0],h[1]);ctx.stroke();el(700,GY+12,11,11,'#e02040');el(697,GY+8,4,4,'#ff9ab0')}
 else el(h[0],h[1],10,10,'#e02040');
 if(t>14){const bx=kf(t,[[14,1380],[18,1000]]);critter({k:'bird',x:bx,y:GY,f:-1,mv:t<18,wk:bx/40,mood:4,look:[-1,.3]})}
}});

SCENES.push({n:'Tug of War',d:20,m:1,draw(t){
 bg(.8,0);
 const bx=kf(t,[[0,700],[3,700],[3.3,500],[4.8,500],[5.1,700],[6.4,700],[6.7,520],[8,520],[8.3,700]]);
 const bdx=kf(t,[[0,1100],[3,790],[4.4,560],[5.4,560],[6.6,760],[7.4,540],[8.4,600],[9.5,600],[11.5,520]]);
 const tug=t>12&&t<16,fall=t>=16;
 const fr=fall?kf(t,[[16,-.12],[16.6,-1.3],[18,-1.3],[19,0]]):tug?-.12+.04*Math.sin(t*10):0;
 const br=fall?kf(t,[[16,.12],[16.6,1.3],[18,1.3],[19,0]]):tug?.12-.04*Math.sin(t*10):0;
 const hF=critter({k:'fox',x:260,y:GY,f:1,sy:kf(t,[[11,.55],[11.8,1]]),rot:fr,mood:t<9?4:t<11.5?3:fall?(t<19?3:2):4,look:[1,.2],aR:1.2});
 const j=jm(t,3.3,.4,50);
 const hB=critter({k:'bird',x:bdx,y:GY-j.l,lift:j.l,f:-1,sy:j.sy,sx:j.sx,rot:br,tilt:t>8.4&&t<9.5?Math.sin(t*9)*.15:0,
  mood:t<3.3?4:t<11.5?3:fall?(t<19?3:2):4,look:t<9?[-1,(t%1)>.5?.6:-.2]:[-1,0],aR:t<11.5?.3:kf(t,[[11.5,.3],[12,1.4]])});
 bush(260);
 ctx.strokeStyle='#f4e4b0';ctx.lineWidth=3;ctx.beginPath();
 if(fall){ctx.moveTo(hF[0],hF[1]);ctx.lineTo(hF[0]+30,hF[1]+45);ctx.moveTo(hB[0],hB[1]);ctx.lineTo(hB[0]-30,hB[1]+45)}
 else if(t<12){ctx.moveTo(hF[0],hF[1]);ctx.lineTo(bx,GY+12)}
 else{ctx.moveTo(hF[0],hF[1]);ctx.lineTo(hB[0],hB[1])}
 ctx.stroke();
 if(t<12)el(bx,GY+12,11,11,'#e02040');
}});

SCENES.push({n:'The Chase',d:16,m:1,draw(t){
 const cam=t*320;bg(.8,cam);
 for(let i=0;i<14;i++)tree(300+i*470-cam);
 const lx=2200-cam;ctx.fillStyle='#8a5a2c';ctx.fillRect(lx-70,GY-42,140,52);el(lx-70,GY-16,20,26,'#b07a40');el(lx+70,GY-16,20,26,'#b07a40');
 ctx.strokeStyle='rgba(255,255,255,.5)';ctx.lineWidth=4;
 for(let i=0;i<6;i++){const x=((i*260-t*1700)%1500+1500)%1500-100,y=GY-260+i*55;ctx.beginPath();ctx.moveTo(x,y);ctx.lineTo(x+110,y);ctx.stroke()}
 const fxx=kf(t,[[0,380],[5.7,380],[7.5,-250],[9.5,-250],[11,330],[16,330]]),roll=t>5.7&&t<7.3,j=jm(t,4.4,.7,110);
 critter({k:'fox',x:fxx,y:GY,rot:roll?(t-5.7)*8:0,mv:!roll&&(t<5.7||t>9.5),wk:t*14,mood:t<5.7?4:t<7.5?3:4,look:[1,0],aL:1.1+Math.sin(t*14)*.5,aR:1.1-Math.sin(t*14)*.5});
 critter({k:'bird',x:700,y:GY-j.l,lift:j.l,sy:j.sy,sx:j.sx,mv:t<4.4||t>5.1,wk:t*14,mood:t<4.2?3:2,look:t>5?[-1,0]:[1,0],aL:1.5+Math.sin(t*30)*.7,aR:1.5+Math.sin(t*30)*.7});
}});

SCENES.push({n:'Mud Puddle',d:14,m:1,draw(t){
 bg(.8,0);el(800,GY+35,190,34,'#6b4423');el(800,GY+32,160,24,'#8a5a30');
 const bx=kf(t,[[0,100],[3.2,560],[4.2,1100],[9.6,1100],[10.4,980]]),j=jm(t,3.2,1,130),bf=t>10.4;
 const fxx=kf(t,[[0,-250],[3.9,640],[4.8,800]]),sink=t>4.4;
 const fy=t<4.4?GY:GY+22,fs=t<4.4?1:t<5?.7:kf(t,[[5,.7],[6,1]]);
 critter({k:'bird',x:bx,y:bf?GY+24:GY-j.l,lift:bf?0:j.l,f:t<4.3?1:-1,sy:bf?.65:j.sy,sx:j.sx,rot:t>10.4?kf(t,[[10.4,0],[10.8,-.5]]):0,
  tilt:t>4.8&&t<10.4?Math.sin(t*25)*.08:0,mv:t<3.2,wk:bx/32,mood:t<4.3?3:t<10.4?2:t<11.5?3:2});
 critter({k:'fox',x:fxx,y:fy,sy:fs,rot:t>3.9&&t<4.5?-.5:0,tilt:t>6&&t<7.5?Math.sin(t*30)*.15:0,mv:t<4.2,wk:fxx/36,
  mood:t<4.4?4:t<5?3:t<9?4:t>11.5?2:3,look:[1,0]});
 if(sink){const m='rgba(95,58,26,.7)';el(fxx,fy-105,52,46,m);el(fxx-10,fy-195,50,32,m);el(fxx-34,fy-215,14,10,'rgba(95,58,26,.9)')}
 el(800,GY+50,185,16,'#6b4423');
 for(const [a,b,cx] of [[4.4,5.6,800],[10.4,11.4,980]]){const w=sg(t,a,b);if(w>0&&w<1)for(let i=0;i<10;i++)el(cx+(i-4.5)*40*w*2,GY-(80+i*14)*4*w*(1-w),8,8,'#6b4423')}
}});
