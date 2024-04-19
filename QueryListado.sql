select 
   case when [cc_tipo] = '0' then 'CERTIFICADOS'
	  when [cc_tipo] = '1' then 'CONTRATOS'
	  when [cc_tipo] = '2' then 'ANEXOS'
	  when [cc_tipo] = '4' then 'ADENDAS'
	  else 'SIN DOCUMENTO'
	  end TipoDoc,

		[cc_ano] AñoProyecto
      ,[cc_area] AreaProyecto
      ,[cc_costo] CCostoProyecto
	  ,[ct_desc] DescContractual
	  ,[ct_moneda_orig] MonedaOrigen
      ,[ni_importe_orig] ImporteMonedaOrigen
	  ,[ni_importe_mc] ImporteMonedaComercialUS$
	  ,[ni_tcambio] TCambio
	  ,[df_inicio] FInicio
      ,[df_termino] FTermino
      ,[ct_ruta] RutaDocumento    
      
      ,[cc_ruc]
      ,[ct_raz_social_cliente]
      
     -- ,[ct_cliente_consorcio]
     -- ,[cc_lib_tributaria]
      --,[cfl_servicio]
      , case when [cfl_servicio] = '1' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '2' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '3' then 'GERENCIAMIENTO DE PROYECTOS'
	  else 'SIN TIPO DE SERVICIO'
	  end TipoServicio
	  ,[cfl_orig]
      --,[ct_desc_adicional] 

from PUB_TA_CERTIFICADOS  
--WHERE cc_area = 'TP' 
UNION ALL 
select 
   case when [cc_tipo] = '0' then 'CERTIFICADOS'
	  when [cc_tipo] = '1' then 'CONTRATOS'
	  when [cc_tipo] = '2' then 'ANEXOS'
	  when [cc_tipo] = '4' then 'ADENDAS'
	  else 'SIN DOCUMENTO'
	  end TipoDoc,

	 [cc_ano]
      ,[cc_area]
      ,[cc_costo]
	  ,[ct_desc]
	  ,[ct_moneda_orig]
      ,[ni_importe_orig]
	  ,[ni_importe_mc]
	  ,[ni_tcambio]
	  ,[df_inicio]
      ,[df_termino]
      ,[ct_ruta]
      
      
      ,[cc_ruc]
      ,[ct_raz_social_cliente]      
      --,[ct_cliente_consorcio]
      --,[cc_lib_tributaria]
     --,[cfl_servicio]
      , case when [cfl_servicio] = '1' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '2' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '3' then 'GERENCIAMIENTO DE PROYECTOS'
	  else 'SIN TIPO DE SERVICIO'
	  end TipoServicio
	  ,[cfl_orig]
     -- ,[ct_desc_adicional] 
	   from dbo.PUB_TA_CONTRATOS  
	   --WHERE cc_area = 'TP'	  
	  UNION ALL 
	  select  
	     case when [cc_tipo] = '0' then 'CERTIFICADOS'
	  when [cc_tipo] = '1' then 'CONTRATOS'
	  when [cc_tipo] = '2' then 'ANEXOS'
	  when [cc_tipo] = '4' then 'ADENDAS'
	  else 'SIN DOCUMENTO'
	  end TipoDoc,
	  [cc_ano]
      ,[cc_area]
      ,[cc_costo]
	  ,[ct_desc]
	  ,[ct_moneda_orig]
      ,[ni_importe_orig]
	  ,[ni_importe_mc]
	  ,[ni_tcambio]
	  ,[df_inicio]
      ,[df_termino]
      ,[ct_ruta]
            
      ,[cc_ruc]
      ,[ct_raz_social_cliente]
      
      --,[ct_cliente_consorcio]
      --,[cc_lib_tributaria]
      --,[cfl_servicio]
      , case when [cfl_servicio] = '1' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '2' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '3' then 'GERENCIAMIENTO DE PROYECTOS'
	  else 'SIN TIPO DE SERVICIO'
	  end TipoServicio
	  ,[cfl_orig]
      --,[ct_desc_adicional] 
	   from dbo.PUB_TA_ANEXOS  
	   --WHERE cc_area = 'TP' 
	   UNION ALL 
	   select 
	      case when [cc_tipo] = '0' then 'CERTIFICADOS'
	  when [cc_tipo] = '1' then 'CONTRATOS'
	  when [cc_tipo] = '2' then 'ANEXOS'
	  when [cc_tipo] = '4' then 'ADENDAS'
	  else 'SIN DOCUMENTO'
	  end TipoDoc,
	    [cc_ano]
      ,[cc_area]
      ,[cc_costo]
	  ,[ct_desc]
	  ,[ct_moneda_orig]
      ,[ni_importe_orig]
	  ,[ni_importe_mc]
	  ,[ni_tcambio]
	  ,[df_inicio]
      ,[df_termino]
      ,[ct_ruta]
           
      ,[cc_ruc]
      ,[ct_raz_social_cliente]
      
      --,[ct_cliente_consorcio]
      --,[cc_lib_tributaria]
      --,[cfl_servicio]
      , case when [cfl_servicio] = '1' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '2' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '3' then 'GERENCIAMIENTO DE PROYECTOS'
	  else 'SIN TIPO DE SERVICIO'
	  end TipoServicio
	  ,[cfl_orig]
      --,[ct_desc_adicional] 
	   from dbo.PUB_TA_ADENDAS  
	   --WHERE cc_area = 'TP'

order by cc_ano desc, cc_costo desc, TipoDoc


--file://lim-fs01/CERTCON/1.CONTRATOS/2022-2023/230100_CONTRATO_Programa_Rehabilitaci%C3%B3n_Mejoramiento_Aeropuerto_Chachapoyas.pdf