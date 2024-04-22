USE CERTCONT_GI
GO
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
	 -- ,replace([ct_desc], char(13)+char(10),' ') DescContractual
	  ,replace((SELECT ct_desc_larga from ERP_TEST..PUB_TA_CCOSTOS where cc_cia = '01' and cc_costo = PUB_TA_CERTIFICADOS.cc_costo), char(13)+char(10),' ') DescContractual
	  ,[ct_moneda_orig] MonedaOrigen
      ,[ni_importe_orig] ImporteMonedaOrigen
	  ,[ni_importe_mc] ImporteMonedaComercialUS$
	  ,[ni_tcambio] TCambio
	  ,[df_inicio] FInicio
      ,[df_termino] FTermino
      ,replace([ct_ruta], char(13)+char(10),' ') RutaDocumento          
      ,[cc_ruc] RucCliente
      ,replace([ct_raz_social_cliente], char(13)+char(10),' ') RazonSocialCliente
      --,[cfl_servicio]
      , case when [cfl_servicio] = '1' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '2' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '3' then 'GERENCIAMIENTO DE PROYECTOS'
	  else 'OTROS SERVICIOS'
	  end TipoServicio
	  ,[cfl_orig]    

from PUB_TA_CERTIFICADOS  
WHERE coalesce(cc_area,'') <> '' and cc_area <> 'NN'
UNION ALL 
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
	  --,replace([ct_desc], char(13)+char(10),' ') DescContractual
	  ,replace((SELECT ct_desc_larga from ERP_TEST..PUB_TA_CCOSTOS where cc_cia = '01' and cc_costo = PUB_TA_CONTRATOS.cc_costo), char(13)+char(10),' ') DescContractual
	  ,[ct_moneda_orig] MonedaOrigen
      ,[ni_importe_orig] ImporteMonedaOrigen
	  ,[ni_importe_mc] ImporteMonedaComercialUS$
	  ,[ni_tcambio] TCambio
	  ,[df_inicio] FInicio
      ,[df_termino] FTermino
      ,replace([ct_ruta], char(13)+char(10),' ') RutaDocumento          
      ,[cc_ruc]
      ,replace([ct_raz_social_cliente], char(13)+char(10),' ') 
      --,[cfl_servicio]
      , case when [cfl_servicio] = '1' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '2' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '3' then 'GERENCIAMIENTO DE PROYECTOS'
	  else 'OTROS SERVICIOS'
	  end TipoServicio
	  ,[cfl_orig]   
	   from dbo.PUB_TA_CONTRATOS  
	   WHERE coalesce(cc_area,'') <> '' and cc_area <> 'NN'  
 UNION ALL 
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
	  --,replace([ct_desc], char(13)+char(10),' ') DescContractual
	  ,replace((SELECT ct_desc_larga from ERP_TEST..PUB_TA_CCOSTOS where cc_cia = '01' and cc_costo = PUB_TA_ANEXOS.cc_costo), char(13)+char(10),' ') DescContractual
	  ,[ct_moneda_orig] MonedaOrigen
      ,[ni_importe_orig] ImporteMonedaOrigen
	  ,[ni_importe_mc] ImporteMonedaComercialUS$
	  ,[ni_tcambio] TCambio
	  ,[df_inicio] FInicio
      ,[df_termino] FTermino
      ,replace([ct_ruta], char(13)+char(10),' ') RutaDocumento          
      ,[cc_ruc]
      ,replace([ct_raz_social_cliente], char(13)+char(10),' ') 
      --,[cfl_servicio]
      , case when [cfl_servicio] = '1' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '2' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '3' then 'GERENCIAMIENTO DE PROYECTOS'
	  else 'OTROS SERVICIOS'
	  end TipoServicio
	  ,[cfl_orig]   
	   from dbo.PUB_TA_ANEXOS  
	   WHERE coalesce(cc_area,'') <> '' and cc_area <> 'NN'
UNION ALL 
	  select  case when [cc_tipo] = '0' then 'CERTIFICADOS'
	  when [cc_tipo] = '1' then 'CONTRATOS'
	  when [cc_tipo] = '2' then 'ANEXOS'
	  when [cc_tipo] = '4' then 'ADENDAS'
	  else 'SIN DOCUMENTO'
	  end TipoDoc,

		[cc_ano] AñoProyecto
      ,[cc_area] AreaProyecto
      ,[cc_costo] CCostoProyecto
	  --,replace([ct_desc], char(13)+char(10),' ') DescContractual
	  ,replace((SELECT ct_desc_larga from ERP_TEST..PUB_TA_CCOSTOS where cc_cia = '01' and cc_costo = PUB_TA_ADENDAS.cc_costo), char(13)+char(10),' ') DescContractual
	  ,[ct_moneda_orig] MonedaOrigen
      ,[ni_importe_orig] ImporteMonedaOrigen
	  ,[ni_importe_mc] ImporteMonedaComercialUS$
	  ,[ni_tcambio] TCambio
	  ,[df_inicio] FInicio
      ,[df_termino] FTermino
      ,replace([ct_ruta], char(13)+char(10),' ') RutaDocumento          
      ,[cc_ruc]
      ,replace([ct_raz_social_cliente], char(13)+char(10),' ') 
      --,[cfl_servicio]
      , case when [cfl_servicio] = '1' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '2' then 'ESTUDIOS Y DISEÑOS'
	  when [cfl_orig] = '3' then 'GERENCIAMIENTO DE PROYECTOS'
	  else 'OTROS SERVICIOS'
	  end TipoServicio
	  ,[cfl_orig]   
	   from dbo.PUB_TA_ADENDAS  
	   WHERE coalesce(cc_area,'') <> '' and cc_area <> 'NN'
order by cc_ano desc, cc_costo desc, TipoDoc


--file://lim-fs01/CERTCON/1.CONTRATOS/2022-2023/230100_CONTRATO_Programa_Rehabilitaci%C3%B3n_Mejoramiento_Aeropuerto_Chachapoyas.pdf