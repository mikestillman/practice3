example2 = () -> (
     R = CC[s1,s2,g1,g2,C1,C2];
     ideal(
	  s1^2+g1^2 - 1,
	  s2^2+g2^2 - 1,
	  C1*g1^3+C2*g2^3 - 1.2,
	  s1+s2-1,
	  g1+g2-2,
	  C1+C2-3)
)

example1 = () -> (
     R = CC[s1,s2,g1,g2,C1,C2];
     I = ideal( -- bertini is slow on this
  	  s1^2+g1^2 - 1, 
  	  s2^2+g2^2 - 1,
  	  C1*g1^3+C2*g2^3 - 1.2,
  	  C1*s1^3+C2*s2^3 - 1.2,
  	  C1*g1^2*s1+C2*g2^2*s2 - 0.7,
  	  C1*g1*s1^2+C2*g2*s2^2 - 0.7)
     )
      
katsura = method()
katsura ZZ := n -> (
     if n == 8 then (
     R := CC[x1,x2,x3,x4,x5,x6,x7,x8,x9];
     ideal { -x1+2*x9^2+2*x8^2+2*x7^2+2*x6^2+2*x5^2+2*x4^2+2*x3^2+2*x2^2+x1^2,
 	  -x2+2*x9*x8+2*x8*x7+2*x7*x6+2*x6*x5+2*x5*x4+2*x4*x3+2*x3*x2+2*x2*x1,
 	  -x3+2*x9*x7+2*x8*x6+2*x7*x5+2*x6*x4+2*x5*x3+2*x4*x2+2*x3*x1+x2^2,
 	  -x4+2*x9*x6+2*x8*x5+2*x7*x4+2*x6*x3+2*x5*x2+2*x4*x1+2*x3*x2,
 	  -x5+2*x9*x5+2*x8*x4+2*x7*x3+2*x6*x2+2*x5*x1+2*x4*x2+x3^2,
 	  -x6+2*x9*x4+2*x8*x3+2*x7*x2+2*x6*x1+2*x5*x2+2*x4*x3,
 	  -x7+2*x9*x3+2*x8*x2+2*x7*x1+2*x6*x2+2*x5*x3+x4^2,
 	  -x8+2*x9*x2+2*x8*x1+2*x7*x2+2*x6*x3+2*x5*x4,
 	  -1+2*x9+2*x8+2*x7+2*x6+2*x5+2*x4+2*x3+2*x2+x1 } 
     )
     else null
     )

stewartGough40real = () -> (
     R := CC[n1,n2,n3,h11,h12,h13,h21,h22,h23];
ideal { n1^2 + n2^2 + n3^2 - 1,
 h11^2 + h12^2 + h13^2 - 1,
 h21^2 + h22^2 + h23^2 - 1,
 h11*h21 + h12*h22 + h13*h23,
 n1^2 + 1.085610*n1*h11 - 2.215830*n1 + 0.2946372680*h11^2 - 1.202763603*h11
 + 0.8110958214+n2^2 + 1.085610*n2*h12 + 0.2946372680*h12^2 + n3^2
 + 1.085610*n3*h13 + 0.2946372680*h13^2,
 - 1.050876963*h11 - 1.446982100*h12 + 0.5808481060*h21 + 0.7997861232*h22
 - 1.098188*n1 - 1.512126*n2 - 1.012257626*h12*h22 + 0.9156939726*h11^2
 + 0.9156939726*h12^2 + 0.2797510772*h23^2 + 0.9156939726*h13^2 + n2^2 + n3^2
 - 1.012257626*h11*h21 + n1^2 - 1.012257626*h13*h23 + 0.2797510772*h22^2
 + 0.2797510772*h21^2 - 1.057830*n3*h23 - 0.3068774482 + 1.913838*n1*h11
 + 1.913838*n2*h12 + 1.913838*n3*h13 - 1.057830*n1*h21 - 1.057830*n2*h22,
 2.805076*n1*h12*h23 - 0.9789534962*h11 + 0.2982299150*h12 - 0.7004990340*h13
 + 0.5196729762*h21 - 0.1583139833*h22 + 0.3718567014*h23 - 1.470154*n1
 + 0.447870*n2 - 1.051982*n3 + 2.805076*n3*h11*h22 - 0.4707567232*h12*h22
 - 2.061946850*h12*h23 - 0.6281546940*h11*h23 - 1.475444730*h11*h22
 + 1.475444730*h12*h21 - 2.805076*n1*h13*h22 + 2.805076*n2*h13*h21
 - 2.805076*n2*h11*h23 + 0.4434028332*h11^2 + 0.4434028332*h12^2
 + 0.1249495243*h23^2 + 0.4434028332*h13^2 + 0.6281546940*h13*h21
 + 2.061946850*h13*h22 + n2^2 + n3^2 - 2.805076*n3*h12*h21
 - 0.4707567232*h11*h21 + n1^2 - 0.4707567232*h13*h23 - 1.393177215
 + 0.1249495243*h22^2 + 0.1249495243*h21^2 - 3.934225682*h11*h22*h12*h21
 + 1.967112841*h11^2*h22^2 + 1.967112841*h12^2*h21^2 - 0.706964*n3*h23
 + 1.967112841*h12^2*h23^2 + 1.967112841*h13^2*h22^2 + 1.331770*n1*h11
 + 1.331770*n2*h12 + 1.331770*n3*h13 - 3.934225682*h12*h23*h13*h22
 + 1.967112841*h13^2*h21^2 + 1.967112841*h11^2*h23^2
 - 3.934225682*h13*h21*h11*h23 - 0.706964*n1*h21 - 0.706964*n2*h22,
 0.215344*n1*h12*h23 - 0.4919329150*h11 + 0.5032939412*h12 + 0.3524721322*h13
 - 1.191622463*h21 + 1.219142585*h22 + 0.8538028204*h23 - 1.028376*n1
 + 1.052126*n2 + 0.736836*n3 + 0.215344*n3*h11*h22 + 1.108589329*h12*h22
 - 0.1107273007*h12*h23 - 0.1132845107*h11*h23 + 0.7933660580e-1*h11*h22
 - 0.7933660580e-1*h12*h21 - 0.215344*n1*h13*h22 + 0.215344*n2*h13*h21
 - 0.215344*n2*h11*h23 + 0.2288273329*h11^2 + 0.2288273329*h12^2
 + 1.342683023*h23^2 + 0.2288273329*h13^2 + 0.1132845107*h13*h21
 + 0.1107273007*h13*h22 + n2^2 + n3^2 - 0.215344*n3*h12*h21
 + 1.108589329*h11*h21 + n1^2 + 1.108589329*h13*h23 + 1.342683023*h22^2
 + 1.342683023*h21^2 - 0.2318651916e-1*h11*h22*h12*h21
 + 0.1159325958e-1*h11^2*h22^2 + 0.1159325958e-1*h12^2*h21^2
 + 2.317484*n3*h23 + 0.1159325958e-1*h12^2*h23^2 + 0.1159325958e-1*h13^2*h22^2
 + 0.956718*n1*h11 + 0.956718*n2*h12 + 0.956718*n3*h13
 - 0.2318651916e-1*h12*h23*h13*h22 + 0.1159325958e-1*h13^2*h21^2
 + 0.1159325958e-1*h11^2*h23^2 - 0.2318651916e-1*h13*h21*h11*h23
 + 2.317484*n1*h21 + 2.317484*n2*h22 - 0.9664888140,
 0.707826*n1*h12*h23 + 0.1618923443*h11 + 0.2597332554e-1*h12
 - 0.5621060514e-1*h13 + 0.2776652044*h21 + 0.4454743538e-1*h22
 - 0.9640807436e-1*h23 - 1.180946*n1 - 0.189466*n2 + 0.410036*n3
 + 0.707826*n3*h11*h22 + 0.6446406506e-1*h12*h22 - 0.4179521416*h12*h23
 + 0.6705448046e-1*h11*h23 + 0.1451170709*h11*h22 - 0.1451170709*h12*h21
 - 0.707826*n1*h13*h22 + 0.707826*n2*h13*h21 - 0.707826*n2*h11*h23
 + 0.1879284557e-1*h11^2 + 0.1879284557e-1*h12^2 + 0.5528188464e-1*h23^2
 + 0.1879284557e-1*h13^2 - 0.6705448046e-1*h13*h21 + 0.4179521416*h13*h22
 + n2^2 + n3^2 - 0.707826*n3*h12*h21 + 0.6446406506e-1*h11*h21 + n1^2
 + 0.6446406506e-1*h13*h23 + 0.5528188464e-1*h22^2 + 0.5528188464e-1*h21^2
 - 0.2505088232*h11*h22*h12*h21 + 0.1252544116*h11^2*h22^2
 + 0.1252544116*h12^2*h21^2 - 0.470242*n3*h23 + 0.1252544116*h12^2*h23^2
 + 0.1252544116*h13^2*h22^2 - 0.274174*n1*h11 - 0.274174*n2*h12
 - 0.274174*n3*h13 - 0.2505088232*h12*h23*h13*h22 + 0.1252544116*h13^2*h21^2
 + 0.1252544116*h11^2*h23^2 - 0.2505088232*h13*h21*h11*h23 - 0.470242*n1*h21
 - 0.470242*n2*h22 - 0.1948854017 }
)

randomNFactorialSystem = (n,kk) -> (
     R = kk[vars(53..n+51)];
     ideal apply(n-1, d-> sum(n-1, i -> random(-100,100)*R_i^(d+2)) - 100)
     )

randomQuadraticSystem = (n,kk) -> (
     R = kk[vars(53..n+52)];
     ideal apply(n, i->random(2,R) - 1)
     )

cyclic = (n,kk) -> (
     R = kk[vars(53..n+52)];
     ideal apply(1..n-1, d-> sum(0..n-1, i -> product(d, k -> R_((i+k)%n)))) 
       + ideal(product gens R - 1))

