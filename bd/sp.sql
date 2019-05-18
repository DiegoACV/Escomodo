use escomodo;

drop procedure if exists sp_ACliente;
delimiter **
create procedure sp_ACliente(in nom nvarchar(60), in bol nvarchar(10), in mail nvarchar(40), in tel nvarchar(20), in cont nvarchar(16), in fot nvarchar(80))
begin
	declare msj nvarchar(60); 
    declare idc int;
    declare exs int;
    
    set exs = (select count(*) from cliente where boleta = bol);
    
    if exs = 0 then
		set exs = (select count(*) from cliente where email = mail);
        
		if exs = 0 then
			set idc =(select ifnull(max(idcliente),0) + 1 from cliente);
			insert into cliente values(idc,nom,bol,mail,tel, aes_encrypt(cont, 'huecofriends'),fot, true);
			set msj='Has sido registrado';
		else
			set msj ='Este correo ya está registrado :/';
        end if;
    else
		set msj ='Esta boleta ya está registrada :/';
    end if;
    select msj as MSJ;
end**
delimiter ;

call sp_ACliente('Diego','2015370179', 'prueba@aa.com', '5555555', '1234', 'prueba.png');
select * from cliente;

drop procedure if exists sp_ARepartidor;
delimiter **
create procedure sp_ARepartidor(in nom nvarchar(60), in bol nvarchar(10), in mail nvarchar(40), in tel nvarchar(20), in hor nvarchar(40), in cont nvarchar(16), in fot nvarchar(80))
begin
	declare msj nvarchar(60); 
    declare idr int;
    declare exs int;
    
    set exs = (select count(*) from repartidor where boleta = bol);
    
    if exs = 0 then
		set exs = (select count(*) from repartidor where email = mail);
        
		if exs = 0 then
			set idr =(select ifnull(max(idrepartidor),0) + 1 from repartidor);
			insert into repartidor values(idr,nom,bol,mail,tel,hor, aes_encrypt(cont, 'huecofriends'),fot, 0.0, true);
			set msj='Has sido registrado';
		else
			set msj ='Este correo ya está registrado :/';
        end if;
    else
		set msj ='Esta boleta ya está registrada :/';
    end if;
    select msj as MSJ;
end**
delimiter ;

call sp_ARepartidor('repar','2015570179', 'prueba@aaa.com', '5555555', 'horario', '1234', 'prueba.png');
select * from repartidor;

drop procedure if exists sp_AEstablecimiento;
delimiter **
create procedure sp_AEstablecimiento(in nom nvarchar(60),in ubi nvarchar(100), in rep nvarchar(60), in mail nvarchar(40), in tel nvarchar(20), in hor nvarchar(40), in cont nvarchar(16), in fot nvarchar(80))
begin
	declare msj nvarchar(60); 
    declare ide int;
    declare exs int;
    
    set exs = (select count(*) from establecimiento where email = mail);
    
    if exs = 0 then

		set ide =(select ifnull(max(idest),0) + 1 from establecimiento);
		insert into establecimiento values(ide,nom,ubi,rep,mail,tel,hor, aes_encrypt(cont, 'huecofriends'),fot, true);
		set msj='Has sido registrado';

    else
		set msj ='Este correo ya está registrado :/';
    end if;
    select msj as MSJ;
end**
delimiter ;

call sp_AEstablecimiento('Tienda','pus escom xddd','yo mero', 'prueba@aaaa.com', '5555555', 'horario', '1234', 'prueba.png');
select * from establecimiento;



drop procedure if exists sp_Login;
delimiter **
create procedure sp_Login(in mail nvarchar(40), in cont nvarchar(16))
begin
	declare exs int;
	declare cf boolean;
    declare msj nvarchar(60);
    
	set exs = (select count(*) from cliente where email = mail and (CAST(AES_DECRYPT(contra, 'huecofriends') AS char(16))) = cont);
    if exs = 1 then
		set cf = (select confirmado from cliente where email = mail);
        if cf = true then
			set msj='1';
		else
			set msj = '0';
		end if;
	else
		set exs = (select count(*) from establecimiento where email = mail and (CAST(AES_DECRYPT(contra, 'huecofriends') AS char(16))) = cont);
		if exs = 1 then
			set cf = (select confirmado from establecimiento where email = mail);
			if cf = true then
				set msj='2';
			else
				set msj = '0';
			end if;
        else  
			set exs = (select count(*) from repartidor where email = mail and (CAST(AES_DECRYPT(contra, 'huecofriends') AS char(16))) = cont);
			if exs = 1 then
				set cf = (select confirmado from repartidor where email = mail);
				if cf = true then
					set msj='3';
				else
					set msj = '0';
				end if;
			else
				set msj = 'Usuario no encontrado';
			end if;
		end if;
	end if;
    select msj as MSJ;
end**
delimiter ;

select CAST(AES_DECRYPT(contra, 'huecofriends') AS char(16)) end_data from repartidor;

call sp_Login('prueba@aa.com', '1234');


drop procedure if exists sp_APlatillo;
delimiter **
create procedure sp_APlatillo(in nom nvarchar(60), in pre float(5,2), in des tinytext, in fot nvarchar(80), in est int)
begin
	declare msj nvarchar(60); 
    declare idp int;
    declare exs int;
    
	set idp =(select ifnull(max(idplatillo),0) + 1 from platillo);
	insert into platillo values(idp,nom,0,pre,des, fot, est);
	set msj='Platillo registrado';
    select msj as MSJ;
end**
delimiter ;

call sp_APlatillo('platillo1', 5.50, 'platillo de prueba', 'p1.png', 1);
select * from platillo;

drop procedure if exists sp_getEstbyMail;
delimiter **
create procedure sp_getEstbyMail(in mail varchar(40))
begin
	select * from establecimiento where email = mail;
end**
delimiter ;

call sp_getEstbyMail('prueba@aaaa.com');

