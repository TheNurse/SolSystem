use solarsystem;

/*adds all the info to element*/
INSERT INTO Element (Name,Mass,Diameter,MinTemp,MaxTemp,MeanTemp,RotationPeriod,RingSystem)VALUES('Solen',"1988430000000000000000000000000",1392000,5506,5506,5506,"0a27d6t36m0s",1);
INSERT INTO Element (Name,Mass,Diameter,MinTemp,MaxTemp,MeanTemp,RotationPeriod,RingSystem)VALUES('Merkur',"330200000000000000000000",4879,-180,-180,167,"0a58d15t30m32s",0);
INSERT INTO Element (Name,Mass,Diameter,MinTemp,MaxTemp,MeanTemp,RotationPeriod,RingSystem)VALUES('Venus',"4868500000000000000000000",12104,465,465,464,"0a224d16t49m23s",0);
INSERT INTO Element (Name,Mass,Diameter,MinTemp,MaxTemp,MeanTemp,RotationPeriod,RingSystem)VALUES('Jorden',"5972230000000000000000000",12746,-88,58,15,"0a23t56m4s",0);
INSERT INTO Element (Name,Mass,Diameter,MinTemp,MaxTemp,MeanTemp,RotationPeriod,RingSystem)VALUES('Månen',"73000000000000000000000",3475,-173,260,-20,"0a27d19t15m0s",0);
INSERT INTO Element (Name,Mass,Diameter,MinTemp,MaxTemp,MeanTemp,RotationPeriod,RingSystem)VALUES('Mars',"641850000000000000000000",6773,-125,20,-65,"0a1d0t37m23s",0);
INSERT INTO Element (Name,Mass,Diameter,MinTemp,MaxTemp,MeanTemp,RotationPeriod,RingSystem)VALUES('Jupiter',"1899000000000000000000000000",138347,-128,4,-110,"0a27d9t55m20s",1);
INSERT INTO Element (Name,Mass,Diameter,MinTemp,MaxTemp,MeanTemp,RotationPeriod,RingSystem)VALUES('Saturn',"568460000000000000000000000",378675,-173,57,-140,"0a27d10t39m22s",1);
INSERT INTO element (Name,Mass,Diameter,MinTemp,MaxTemp,MeanTemp,RotationPeriod,RingSystem)VALUES('Uranus',"86832000000000000000000000",50532,-224,-216,-220,"0a27d17t14m0s",1);
INSERT INTO Element (Name,Mass,Diameter,MinTemp,MaxTemp,MeanTemp,RotationPeriod,RingSystem)VALUES('Neptun',"102430000000000000000000000",49105,-218,-200,-200,"0a27d16t6m36s",1);
INSERT INTO Element (Name,Mass,Diameter,MinTemp,MaxTemp,MeanTemp,RotationPeriod,RingSystem)VALUES('Pluto',"12500000000000000000000",2390,-233,-223,-225,"0a6d9t17m36s",0);

/*adds the star*/
INSERT INTO Star (ElementId,Color,NumberOfPlanets)VALUES((SELECT ID FROM Element where Name = 'Solen'),'White',9);

/*adds all the planets*/
INSERT INTO Planet (ElementId,Star,NumberOfMoons,DistanceToSun)VALUES((SELECT ID FROM Element where Name = 'Merkur'),(SELECT ElementId FROM Star as s, Element as e where e.Name = 'Solen' AND s.ElementId = e.ID),0,57522077);
INSERT INTO Planet (ElementId,Star,NumberOfMoons,DistanceToSun)VALUES((SELECT ID FROM Element where Name = 'Venus'),(SELECT ElementId FROM Star as s, Element as e where e.Name = 'Solen' AND s.ElementId = e.ID),0,108208926);
INSERT INTO Planet (ElementId,Star,NumberOfMoons,DistanceToSun)VALUES((SELECT ID FROM Element where Name = 'Jorden'),(SELECT ElementId FROM Star as s, Element as e where e.Name = 'Solen' AND s.ElementId = e.ID),1,149597887);
INSERT INTO Planet (ElementId,Star,NumberOfMoons,DistanceToSun)VALUES((SELECT ID FROM Element where Name = 'Mars'),(SELECT ElementId FROM Star as s, Element as e where e.Name = 'Solen' AND s.ElementId = e.ID),2,227936637);
INSERT INTO Planet (ElementId,Star,NumberOfMoons,DistanceToSun)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),(SELECT ElementId FROM Star as s, Element as e where e.Name = 'Solen' AND s.ElementId = e.ID),79,778412027);
INSERT INTO Planet (ElementId,Star,NumberOfMoons,DistanceToSun)VALUES((SELECT ID FROM Element where Name = 'Saturn'),(SELECT ElementId FROM Star as s, Element as e where e.Name = 'Solen' AND s.ElementId = e.ID),62,1426725413);
INSERT INTO Planet (ElementId,Star,NumberOfMoons,DistanceToSun)VALUES((SELECT ID FROM Element where Name = 'Uranus'),(SELECT ElementId FROM Star as s, Element as e where e.Name = 'Solen' AND s.ElementId = e.ID),27,2870972220);
INSERT INTO Planet (ElementId,Star,NumberOfMoons,DistanceToSun)VALUES((SELECT ID FROM Element where Name = 'Neptun'),(SELECT ElementId FROM Star as s, Element as e where e.Name = 'Solen' AND s.ElementId = e.ID),14,4498252900);
INSERT INTO Planet (ElementId,Star,NumberOfMoons,DistanceToSun)VALUES((SELECT ID FROM Element where Name = 'Pluto'),(SELECT ElementId FROM Star as s, Element as e where e.Name = 'Solen' AND s.ElementId = e.ID),5,5906376272);

/*Adds the moons*/
INSERT INTO Moons (ElementId,Parent,DistanceToPlanet)VALUES((SELECT ID FROM Element where Name = 'Månen'),(SELECT ElementId FROM Planet as s, Element as e where e.Name = 'Jorden' AND s.ElementId = e.ID),384400);

/*addes the pics*/
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Solen'),"./Pics/RealPlanet/Sun.gif",0);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Merkur'),"./Pics/RealPlanet/Merkur.gif",0);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Venus'),"./Pics/RealPlanet/Venus.gif",0);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Jorden'),"./Pics/RealPlanet/Earth.gif",0);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Månen'),"./Pics/RealPlanet/Moon.gif",0);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Mars'),"./Pics/RealPlanet/Mars.gif",0);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),"./Pics/RealPlanet/Jupiter.gif",0);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Saturn'),"./Pics/RealPlanet/Saturn.gif",0);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Uranus'),"./Pics/RealPlanet/Uranus.gif",0);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Neptun'),"./Pics/RealPlanet/Neptune.gif",0);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Pluto'),"./Pics/RealPlanet/Pluto.gif",0);

INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Solen'),"./Pics/ComicPlanet/Sun.png",1);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Merkur'),"./Pics/ComicPlanet/Merkur.png",1);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Venus'),"./Pics/ComicPlanet/Venus.png",1);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Jorden'),"./Pics/ComicPlanet/Earth.png",1);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Månen'),"./Pics/ComicPlanet/Moon.png",1);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Mars'),"./Pics/ComicPlanet/Mars.png",1);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),"./Pics/ComicPlanet/Jupiter.png",1);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Saturn'),"./Pics/ComicPlanet/Saturn.png",1);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Uranus'),"./Pics/ComicPlanet/Uranus.png",1);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Neptun'),"./Pics/ComicPlanet/Neptune.png",1);
INSERT INTO Pics (ElementId,Title,Comic)VALUES((SELECT ID FROM Element where Name = 'Pluto'),"./Pics/ComicPlanet/Pluto.png",1);

/*Adds info to OrbitingElement*/
INSERT INTO orbitingelement (ElementId,Revolution,LengthOfDay)VALUES((SELECT ID FROM Element where Name = 'Merkur'),'0a87d57t36m0s','0a58d15t30m0s');
INSERT INTO orbitingelement (ElementId,Revolution,LengthOfDay)VALUES((SELECT ID FROM Element where Name = 'Venus'),'0a218d16t4m48s','0a243d0t0m0s');
INSERT INTO orbitingelement (ElementId,Revolution,LengthOfDay)VALUES((SELECT ID FROM Element where Name = 'Jorden'),'1a0d0t10m1s','0a0d23t56m4s');
INSERT INTO orbitingelement (ElementId,Revolution,LengthOfDay)VALUES((SELECT ID FROM Element where Name = 'Månen'),'0a27d7t43m12s','0a29d12t0m0s');
INSERT INTO orbitingelement (ElementId,Revolution,LengthOfDay)VALUES((SELECT ID FROM Element where Name = 'Mars'),'1a321d17t2m32s','0a1d0t37m0s');
INSERT INTO orbitingelement (ElementId,Revolution,LengthOfDay)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),'11a317d14t30m29s','0a0d9t55m0s');
INSERT INTO orbitingelement (ElementId,Revolution,LengthOfDay)VALUES((SELECT ID FROM Element where Name = 'Saturn'),'29a165d11t40m34s','0a0d10t33m0s');
INSERT INTO orbitingelement (ElementId,Revolution,LengthOfDay)VALUES((SELECT ID FROM Element where Name = 'Uranus'),'84a27d3t50m24s','0a0d17t14m0s');
INSERT INTO orbitingelement (ElementId,Revolution,LengthOfDay)VALUES((SELECT ID FROM Element where Name = 'Neptun'),'164a323d21t41m11s','0a0d15t57m0s');
INSERT INTO orbitingelement (ElementId,Revolution,LengthOfDay)VALUES((SELECT ID FROM Element where Name = 'Pluto'),'248a31d7t20m21s','0a6d9t36m0s');

/*Element info*/
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Solen'),0,'Størrelse','Solen er 1.300.000 gange større end Jorden.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Solen'),0,'Masse','Solen indeholder 74%  af al masse, og 92% af alt rumfang i vores solsystem. Solen taber 4 millioner tons masse i sekundet.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Solen'),0,'Ringesystem','Solen har et slags ringesystem, som ligger imellem Mars og Jupiter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Solen'),1,'Størrelse','Solens diameter er 1.392.000 Km. ');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Solen'),1,'Masse','Solen vejer 1.988.430.000.000.000.000.000.000.000 tons. men taber 4.000.000 tons i sekundet.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Solen'),1,'Ringsystem','Solen har et Asteroidebælte, som ligger imellem Mars og Jupiter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Solen'),1,'Temperature','Solen har en Temperature ved overfladen på 5.507°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Solen'),1,'Dag','Solen drejer rundt om sig selv, det tager 27dage og 6timer for at dreje en gang rundt.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Solen'),2,'Diameter','1.392.000 Km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Solen'),2,'Masse','1.988.430.000.000.000.000.000.000.000 tons.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Solen'),2,'Ringsystem','Solen har et Asteroidebælte, som ligger imellem Mars og Jupiter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Solen'),2,'Temperature','overfladen på 5.507°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Solen'),2,'TyndeKraft','28g.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Solen'),2,'Dag','Solen drejer rundt om sig selv, det tager 27dage og 6timer for at dreje en gang rundt.');

INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),0,'Størrelse','Merkur er den mindste planet i vores solsystem den er kun en smule større end månen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),0,'Afstand til solen','Merkur er den planet, der er tættest på solen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),0,'Overflade','Merkur er en stenørken – meget ligesom vores månes overflade.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),1,'Størrelse','Merkur har en diameter på 4.879km, som er 1.5 gange større end vores måne.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),1,'Masse','Merkur Vejer 330.200.000.000.000.000.000 tons, som kun er 6% af hvad Jorden vejer.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),1,'Afstand til solen','Merkur er den tættest planet på solen, men er stadig i gennemsnit 57.910.000km væk fra solen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),1,'Temperature','Merkur har ingen måde at holde temperaturen så når der ikke er noget sol er det -183°C, men når solen er på er det 427°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),1,'Dag','En dag(soldag) på Merkur er 176 dage på Jorden.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),2,'Diameter','4.879km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),2,'Masse','330.200.000.000.000.000.000 tons.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),2,'Afstand til Solen','45.693.773km til 69.350.381km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),2,'Temperature','-183°C til 427°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),2,'Dag','176 dage.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),2,'År','87dage 23timer 11minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Merkur'),2,'TyndeKraft','0.38g.');

INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),0,'Størrelse','Venus er kun en lille smule mindre end Jorden.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),0,'Afstand til solen','Venus er den anden tætteste planet på solen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),0,'Overflade','Venus er en klippeplanet, hvor landskabet er præget af vulkaner og kratere.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),1,'Størrelse','Venus har en diameter på 12.104km, som kun er lidt mindre en Jorden.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),1,'Masse','Venus vejer 4.868.500.000.000.000.000.000 tons, som er 80% af hvad Jorden vejer.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),1,'Afstand til solen','Merkur er den næst tættest planet på solen, men er næsten double så langt væk som Merkur er. afstanden er 108.208.926km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),1,'Temperature','Venus har en måde at holde varmen inden, men stadig rammer -45°C, men den kommer helt op på 500°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),1,'Dag','En dag(soldag) på Venus er 243 dage på Jorden.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),2,'Diameter','12.104km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),2,'Masse','4.868.500.000.000.000.000.000 tons.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),2,'Afstand til Solen','107.476.002km til 108.941.850km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),2,'Temperature','-45°C til 500°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),2,'Dag','243 dage.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),2,'År','1år 218dage 16timer 4minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Venus'),2,'TyndeKraft','0.90g.');

INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),0,'Størrelse','Jorden er den største af de 4 tætteste planeter på solen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),0,'Afstand til solen','Jorden er den tredje tætteste planet på solen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),0,'Overflade','Jorden har en mere glat overflade end en bowlingkugle vil have hvis de var den samme størrelse.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),0,'Måner','Jorden har en måne.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),1,'Størrelse','Jorden er trykket lidt flad som gør at den er bredder på Ækvator (12.756,27km), og er kortes fra nordpolen til sydpolen (12.713,5km).');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),1,'Masse','Jorden vejer 5.972.230.000.000.000.000.000 tons, som gør den til den tungeste planet imellem de 4 tættest på solen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),1,'Afstand til solen','Jorden er den tredje tætteste planet på solen, hvor afstanden er i gennemsnit 149.597.887km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),1,'Temperature','Som du nok ved har Jorden en atmosfære, som hjælper med at holde temperaturen, men det kan stadig komme helt ned på -90°C og komme op på 57°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),1,'Måner','Jorden har kun en Måne.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),1,'Dag','En dag er i gennemsnit 24 timer.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),2,'Diameter','(Ækvator) 12.756,27km, (Polerne) 12.713,5km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),2,'Masse','5.972.230.000.000.000.000.000 tons.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),2,'Afstand til Solen','147.098.073km til 152.097.701km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),2,'Temperature','-90°C til 57°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),2,'Måner','1.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),2,'Dag','gennemsnit 24 timer.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),2,'År','1år 10minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jorden'),2,'TyndeKraft','1g.');

INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Månen'),0,'Størrelse','Månen er den femte største måne i vores solsystem.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Månen'),0,'Afstand til Jorden','Selvom månen ser ud som om at den er tæt på er kan jorden være imellem os og månen 30 gange.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Månen'),0,'Overflade','Er en stenørken med kratere.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Månen'),1,'Størrelse','Månen har en diameter på 3.475km, som er 27% af Jordens gennemsnit diameter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Månen'),1,'Masse','Månen vejer 73.490.000.000.000.000.000 tons.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Månen'),1,'Afstand til Jorden','Selv om det ser ud som om at Månen er tæt på, men den er i gennemsnit 380.000km, som svare til at jorden kan være imellem der 30 gange.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Månen'),1,'Temperature','Månen kommer helt ned på -233°C og op på 123°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Månen'),2,'Diameter','3.475km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Månen'),2,'Masse','73.490.000.000.000.000.000 tons.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Månen'),2,'Afstand til Jorden','363.300km til 405.500km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Månen'),2,'Temperature','-233°C til 123°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Månen'),2,'Omløbstid omkring Jorden','27dage 7timer 43min.');

INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),0,'Størrelse','Er kun halv så stor som Jorden.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),0,'Afstand til solen','Mars er den fjerde tætteste planet på solen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),0,'Overflade','Mars er en klippeplanet, som bærer præg af vulkaner, og har støvstorme/sandstorme.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),0,'Måner','Mars har 2 måner, men de er ikke mere end 30 km bredde.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),1,'Størrelse','Mars har en diameter på 6.792km, som kun er double så stor som vores måne.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),1,'Masse','Mars vejer 641.850.000.000.000.000.000 tons, som er lidt under 10 gange så meget som vores måne.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),1,'Afstand til solen','Mars er den fjerde tættest planet på solen, afstanden er i gennemsnit 227.936.637km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),1,'Temperature','Mars har en tynd atmosfære, men det rammer stadig -140°C og kommer kun op på 20°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),1,'Måner','Mars har 2 Måner, men de meget små den stør af dem er kun 30km i diameteren.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),1,'Dag','En dag på Mars er næsten lige så lang som en dag på Jorden. en dag er nemlig 24timer og 40 minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),2,'Diameter','6.792km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),2,'Masse','641.850.000.000.000.000.000 tons.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),2,'Afstand til Solen','206.644.545km til 249.228.729km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),2,'Temperature','-140°C til 20°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),2,'Måner','2.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),2,'Dag','24timer 40 minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),2,'År','1år 321dage 17timer 2minutter. ');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Mars'),2,'TyndeKraft','0.38g.');

INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),0,'Størrelse','Jupiter er den største planet i vores solsystem. den er 1000 gange større end Jorden.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),0,'Afstand til solen','Jupiter er den femte planet fra solen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),0,'Overflade','Jupiter er en gasplanet, og har derfor ingen fast overflade.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),0,'Måner/Ringe','Jupiter har 79 kendte. Jupiter har også et system af ringe, men de kan være svære at se.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),1,'Størrelse','Jupiter er stor diameteren er 142.984km ved Ækvator, som er over 10 gange så stor som Jordens diameter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),1,'Masse','Jupiter vejer 1.899.000.000.000.000.000.000.000 tons, som er omkring 320 gange så meget som hvad Jorden vejer.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),1,'Afstand til solen','Jupiter er på den anden side af solens Asteroidebælte. Jupiter er i gennemsnit 778.412.027km væk fra Solen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),1,'Temperature','Den laveste Temperature Jupiter rammer er -163°C, og vi har ikke målet den højeste Temperature.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),1,'Måner','Jupiter har mange Måner, den har hele 79 af dem, hvor 4 af dem har en diameter over 1.000km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),1,'Ringsystemer','Jupiter har et ringesystem, hvor den centrale ring er på cirka 7.000km i bredden, og er 20km tyk.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),1,'Dag','Jupiter drejer virkelig hurtigt rundt et døgn tager kun lige under 10timer.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),2,'Diameter','(Ækvator) 142.984km, (Polerne) 133.709km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),2,'Masse','1.899.000.000.000.000.000.000.000 tons.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),2,'Afstand til Solen','740.742.598km til 816.081.456km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),2,'Temperature','-163°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),2,'Måner','79.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),2,'Ringsystemer','Flere ganske tynde ringe af støv fra månerne.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),2,'Dag','9 timer 56minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),2,'År','11år 317dage 14timer 30minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Jupiter'),2,'TyndeKraft','2.34g.');

INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),0,'Størrelse','Saturn er 755 gange større end Jorden. men vejer kun omrking 95 gange så meget som Jorden.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),0,'Afstand til solen','Saturn er den sjette planet fra solen. den er double så langt væk fra solen som Jupiter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),0,'Overflade','Saturn er en gasplanet, og har derfor ingen solid overflade. ');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),0,'Måner/Ringe','Saturn har 53 kendte måner og yderligere 9 måner afventer godkendelse, den har også 7 ringe.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),1,'Størrelse','Saturen har en diameter på 120.536km, som er næsten 10 gange så meget som Jordens.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),1,'Masse','Saturen vejer 568.460.000.000.000.000.000.000 tons, som er næsten kun 1/4 af Jupiters.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),1,'Afstand til solen','Saturen er 1.426.725.413km væk fra solen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),1,'Temperature','Saturen er lidt på samme måde som Jupiter med vi ikke har kunne måle en maks Temperature, men dens mindste Temperature er -191°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),1,'Måner','Saturen har 53 kendte måner og 9 måner som venter på at blive godkendt.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),1,'Ringsystemer','Saturen har hele 7 ringe i sit ringsystem, men man ser ofte kun 2 af dem i et teleskop.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),1,'Dag','Saturen er drejer hurtigt rundt, en dag tager kun 10 timer og 42 minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),2,'Diameter','120.536km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),2,'Masse','568.460.000.000.000.000.000.000 tons.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),2,'Afstand til Solen','1.349.467.376km til 1.503.983.450km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),2,'Temperature','-191°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),2,'Måner','53 kendte måner og 9 måner som venter på at blive godkendt.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),2,'Ringsystemer','7 ringe, men man ser ofte kun 2 af dem i et teleskop.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),2,'Dag','10 timer 42 minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),2,'År','29år 165dage 11timer 40minutter .');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Saturn'),2,'TyndeKraft','1.16g.');

INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),0,'Størrelse','Uranus er 14 gange større end Jorden.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),0,'Afstand til solen','Uranus er den syvende planet fra solen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),0,'Overflade','Saturn er en gasplanet, og har derfor ingen solid overflade, men har en lille stenkerne');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),0,'Måner/ringe','Uranus har 27 måner, og 13 ringe, men de er tynde og mørke.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),1,'Størrelse','Uranus har en diameter på 50.000km, som næsten er 5 gange så meget som Jordens.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),1,'Masse','Uranus vejer 86.832.000.000.000.000.000.000 tons.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),1,'Afstand til solen','Uranus er næsten double så langt væk som Saturen, den er hele 3.000.000.000km væk fra Solen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),1,'Temperature','Den er lige som de andre planeter ude i denne afstand, vi har kun kunne måle den mindste Temperature på -214°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),1,'Måner','Uranus har 27 måner.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),1,'Ringsystemer','Uranus har hele 13 ringe men alle sammen er tynde og mørke.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),1,'Dag','en dag på Uranus er 17 timer og 14 minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),2,'Diameter','(Ækvator) 51.118km, (Polerne) 49.946km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),2,'Masse','86.832.000.000.000.000.000.000 tons.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),2,'Afstand til Solen','2.735.555.035km til 3.006.389.405km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),2,'Temperature','-214°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),2,'Måner','27.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),2,'Ringsystemer','13 ringe men alle sammen er tynde og mørke.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),2,'Dag','17 timer og 14 minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),2,'År','84år 27dage 3timer 50minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Uranus'),2,'TyndeKraft','1.15g.');

INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),0,'Størrelse','Er næsten lige så stor som Uranus.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),0,'Afstand til solen','Neptun er den ottende planet fra solen, som er  omkring 30 gange så meget som afstanden fra Jorden til solen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),0,'Overflade','Nepturn er en gasplanet, og har derfor ingen solid overflade, men har en kerne på størrelse med Jorden');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),0,'Måner/Ringe','Neptun har 14 kendte måner, og som mange af de andre gasplaneter har Neptun også et ringsystem.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),1,'Størrelse','Neptun har en diameter på 49.000km, som er næsten det samme som Uranus.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),1,'Masse','Neptun vejer 102.430.000.000.000.000.000.000 tons, hvor det meste er gas, men den har en kerne på størrelse med jorden.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),1,'Afstand til solen','Neptun er 3 gange så langt væk som Saturen er, som bliver ca. 4.500.000.000km væk fra Solen.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),1,'Temperature','Temperaturen på Neptun kommer ned på -223°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),1,'Måner','Den har 14 måner.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),1,'Ringsystem','Neptun har et ringsystem som er meget svagt, og mørkt der næsten ikke kan ses.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),1,'Dag','16timer 6minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),2,'Diameter','(Ækvator) 49.528km, (Polerne) 48.681km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),2,'Masse','102.430.000.000.000.000.000.000 tons.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),2,'Afstand til Solen','4.459.631.485km til 4.536.874.315km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),2,'Temperature','-223°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),2,'Måner','14.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),2,'Ringsystemer','Har et meget svagt, og mørkt ringsystem.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),2,'Dag','16timer 6minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),2,'År','164år 323dage 21timer 41minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Neptun'),2,'TyndeKraft','1.19g.');

INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),0,'Størrelse','Pluto er mindre end Månen (vores måne).');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),0,'Afstand til solen','Pluto er meget mærklig i dens afstand til solen, den kommer tætter på en Neptun, men den kommer også double så langt væk fra solen end Neptun.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),0,'Overflade','Den lange distance mellem Jorden og Pluto kender man ikke meget til Plutos overflade.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),0,'Måner','Pluto har 5 måner, hvor den største måne er halv så stor som pluto den selv.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),1,'Størrelse','Pluto er for lille til at være en planet, da den kun er 2.390km i diameteren, som er meget mindre en vores måne. ');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),1,'Masse','12.500.000.000.000.000.000 tons, som er ca 20% af vores månes.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),1,'Afstand til solen','pluto har en lidt sjovt da den kommer tætter på solen en Neptun(4.500.000.000km), men det kommer også næsten double så langt væk fra solen som Neptun(7.400.000.000km).');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),1,'Temperature','Pluto er langt væk fra solen så den kun kommer op på -218°C, og kommer ned på -240°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),1,'Måner','Selvom den er lille har den 5 måner, og den største måne er halv så stor diameter som Pluto er i diameter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),1,'Dag','En dag er ca. 6dage og 9timer på Jorden.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),2,'Diameter','2.390km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),2,'Masse','12.500.000.000.000.000.000 tons.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),2,'Afstand til Solen','4.436.824.613km til 7.375.927.931km.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),2,'Temperature','-218°C til -240°C.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),2,'Måner','5.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),2,'Dag','6dage 9timer.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),2,'År','248år 31dage 7timer 20minutter.');
INSERT INTO ElementInfo (ElementId,ClassTier,Title,Info)VALUES((SELECT ID FROM Element where Name = 'Pluto'),2,'TyndeKraft','0.04g.');


/* Questions */
INSERT INTO difficulty (Difficulty,Description) VALUES (1,"Egnet til 0-1 Klasse");
INSERT INTO difficulty (Difficulty,Description) VALUES (2,"Egnet til 2-3 Klasse");
INSERT INTO difficulty (Difficulty,Description) VALUES (3,"Egnet til 4-5 Klasse");
INSERT INTO questions(Content) VALUES("Kan man se den kinesiske mur fra rummet?");
INSERT INTO answerchoise(Answer, IsCorrect) VALUES("Nej, det er en myte. Månen ligger alt for langt væk", 1);
INSERT INTO answerchoise(Answer, IsCorrect) VALUES("Ja, den er jo MEGA stor, den mur der.", 0);
INSERT INTO answerchoise(Answer, IsCorrect) VALUES("Ingen ved det helt præcist. Forskerne er uenige.", 0);
INSERT INTO answerchoise(Answer, IsCorrect) VALUES("Kommer an på hvor i rummet man er.", 0);
INSERT INTO quesanswer(QuesID, AnswerID) VALUES (1,1);
INSERT INTO quesanswer(QuesID, AnswerID) VALUES (1,2);
INSERT INTO quesanswer(QuesID, AnswerID) VALUES (1,3);
INSERT INTO quesanswer(QuesID, AnswerID) VALUES (1,4);

