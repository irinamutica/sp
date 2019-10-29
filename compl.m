function[ma,v,mp]=compl(vec)
ma=mean(real(vec)) %media aritmetica a elementelor reale din vector
v=vec.^2 %generarea patratelor elementelor vectorului initial
mp=vec*(transpose(vec)) %obtinerea unei matrici prin inmultirea vectorului initial cu transpusul sau
end