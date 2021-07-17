--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.24
-- Dumped by pg_dump version 9.5.1

-- Started on 2021-07-16 19:47:38

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 337 (class 1259 OID 81085)
-- Name: apertura_caja; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE apertura_caja (
    id_apertura integer NOT NULL,
    nu_cantidad_efectivo integer NOT NULL,
    nu_cantidad_dolares integer NOT NULL,
    nu_cantidad_punto_venta integer NOT NULL,
    nu_cantidad_transferencias integer NOT NULL,
    nu_cantidad_pago_movil integer NOT NULL,
    caja_id integer NOT NULL,
    usuario_id integer NOT NULL,
    status smallint NOT NULL,
    fecha_emision character varying(500) NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE apertura_caja OWNER TO postgres;

--
-- TOC entry 336 (class 1259 OID 81083)
-- Name: apertura_caja_id_apertura_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE apertura_caja_id_apertura_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE apertura_caja_id_apertura_seq OWNER TO postgres;

--
-- TOC entry 3024 (class 0 OID 0)
-- Dependencies: 336
-- Name: apertura_caja_id_apertura_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE apertura_caja_id_apertura_seq OWNED BY apertura_caja.id_apertura;


--
-- TOC entry 357 (class 1259 OID 81245)
-- Name: asignacion_trabajos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE asignacion_trabajos (
    id integer NOT NULL,
    tipo_trabajo character varying(500) NOT NULL,
    descripcion character varying(500) NOT NULL,
    fecha character varying(500) NOT NULL,
    estado_trabajo integer NOT NULL,
    empleado_id integer NOT NULL,
    usuario_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE asignacion_trabajos OWNER TO postgres;

--
-- TOC entry 356 (class 1259 OID 81243)
-- Name: asignacion_trabajos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE asignacion_trabajos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE asignacion_trabajos_id_seq OWNER TO postgres;

--
-- TOC entry 3025 (class 0 OID 0)
-- Dependencies: 356
-- Name: asignacion_trabajos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE asignacion_trabajos_id_seq OWNED BY asignacion_trabajos.id;


--
-- TOC entry 293 (class 1259 OID 80680)
-- Name: cajas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cajas (
    id integer NOT NULL,
    nu_caja integer NOT NULL,
    status smallint NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE cajas OWNER TO postgres;

--
-- TOC entry 292 (class 1259 OID 80678)
-- Name: cajas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cajas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cajas_id_seq OWNER TO postgres;

--
-- TOC entry 3026 (class 0 OID 0)
-- Dependencies: 292
-- Name: cajas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cajas_id_seq OWNED BY cajas.id;


--
-- TOC entry 349 (class 1259 OID 81181)
-- Name: cargos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cargos (
    id integer NOT NULL,
    nombre character varying(500) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE cargos OWNER TO postgres;

--
-- TOC entry 348 (class 1259 OID 81179)
-- Name: cargos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cargos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cargos_id_seq OWNER TO postgres;

--
-- TOC entry 3027 (class 0 OID 0)
-- Dependencies: 348
-- Name: cargos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cargos_id_seq OWNED BY cargos.id;


--
-- TOC entry 339 (class 1259 OID 81102)
-- Name: cierre_caja; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE cierre_caja (
    id_cierre integer NOT NULL,
    nu_cantidad_efectivo integer NOT NULL,
    nu_cantidad_dolares integer NOT NULL,
    nu_cantidad_punto_venta integer NOT NULL,
    nu_cantidad_transferencias integer NOT NULL,
    nu_cantidad_pago_movil integer NOT NULL,
    status smallint NOT NULL,
    caja_id integer NOT NULL,
    usuario_id integer NOT NULL,
    fecha_cierre timestamp(0) without time zone NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE cierre_caja OWNER TO postgres;

--
-- TOC entry 338 (class 1259 OID 81100)
-- Name: cierre_caja_id_cierre_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE cierre_caja_id_cierre_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE cierre_caja_id_cierre_seq OWNER TO postgres;

--
-- TOC entry 3028 (class 0 OID 0)
-- Dependencies: 338
-- Name: cierre_caja_id_cierre_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE cierre_caja_id_cierre_seq OWNED BY cierre_caja.id_cierre;


--
-- TOC entry 313 (class 1259 OID 80823)
-- Name: clientes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE clientes (
    id integer NOT NULL,
    nombre character varying(500) NOT NULL,
    apellido character varying(500),
    empresa integer DEFAULT 0 NOT NULL,
    rut character varying(500),
    mail character varying(500),
    direccion character varying(500),
    genero character varying(500),
    descuento_id integer,
    tipo_documento_id integer,
    plazo_factura integer,
    sucursal_id integer,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    telefono character varying(500),
    documento character varying(500),
    tipo_documento integer
);


ALTER TABLE clientes OWNER TO postgres;

--
-- TOC entry 312 (class 1259 OID 80821)
-- Name: clientes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE clientes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE clientes_id_seq OWNER TO postgres;

--
-- TOC entry 3029 (class 0 OID 0)
-- Dependencies: 312
-- Name: clientes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE clientes_id_seq OWNED BY clientes.id;


--
-- TOC entry 315 (class 1259 OID 80851)
-- Name: comprobantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE comprobantes (
    id integer NOT NULL,
    tipo_comprobante_id integer NOT NULL,
    descripcion_diferencia character varying(500),
    cantidad_diferencia character varying(500),
    moneda_id integer,
    cotizacion double precision DEFAULT '1'::double precision NOT NULL,
    cliente_id integer,
    serie character varying(500),
    numero integer,
    nombre_cliente character varying(500),
    direccion character varying(500),
    rut character varying(500),
    "subTotal" double precision DEFAULT '0'::double precision NOT NULL,
    iva double precision DEFAULT '0'::double precision NOT NULL,
    total double precision DEFAULT '0'::double precision NOT NULL,
    sucursal_id integer NOT NULL,
    fecha_emision timestamp(0) without time zone NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    descripcion_1 character varying(500),
    descripcion_2 character varying(500),
    descripcion_3 character varying(500),
    descripcion_4 character varying(500)
);


ALTER TABLE comprobantes OWNER TO postgres;

--
-- TOC entry 314 (class 1259 OID 80849)
-- Name: comprobantes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE comprobantes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE comprobantes_id_seq OWNER TO postgres;

--
-- TOC entry 3030 (class 0 OID 0)
-- Dependencies: 314
-- Name: comprobantes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE comprobantes_id_seq OWNED BY comprobantes.id;


--
-- TOC entry 304 (class 1259 OID 80739)
-- Name: descuentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE descuentos (
    id integer NOT NULL,
    nombre character varying(500) NOT NULL
);


ALTER TABLE descuentos OWNER TO postgres;

--
-- TOC entry 303 (class 1259 OID 80737)
-- Name: descuentos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE descuentos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE descuentos_id_seq OWNER TO postgres;

--
-- TOC entry 3031 (class 0 OID 0)
-- Dependencies: 303
-- Name: descuentos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE descuentos_id_seq OWNED BY descuentos.id;


--
-- TOC entry 353 (class 1259 OID 81203)
-- Name: empleados; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE empleados (
    id integer NOT NULL,
    nb_nombre character varying(500) NOT NULL,
    nb_apellido character varying(500) NOT NULL,
    nu_cedula character varying(500) NOT NULL,
    fe_ingreso character varying(500) NOT NULL,
    telefono character varying(500) NOT NULL,
    nb_profesion character varying(500) NOT NULL,
    sueldo_base character varying(500) NOT NULL,
    fecha_nacimiento character varying(500) NOT NULL,
    edad character varying(500) NOT NULL,
    usuario_id integer NOT NULL,
    cargo_id integer NOT NULL,
    modo_pagos_id integer NOT NULL,
    sucursal_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE empleados OWNER TO postgres;

--
-- TOC entry 352 (class 1259 OID 81201)
-- Name: empleados_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE empleados_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE empleados_id_seq OWNER TO postgres;

--
-- TOC entry 3032 (class 0 OID 0)
-- Dependencies: 352
-- Name: empleados_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE empleados_id_seq OWNED BY empleados.id;


--
-- TOC entry 328 (class 1259 OID 81005)
-- Name: facturas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE facturas (
    id integer NOT NULL,
    comprobante_id integer NOT NULL,
    fecha_vencimiento date NOT NULL,
    plazo integer,
    deuda_original double precision NOT NULL,
    deuda_actual double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE facturas OWNER TO postgres;

--
-- TOC entry 327 (class 1259 OID 81003)
-- Name: facturas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE facturas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE facturas_id_seq OWNER TO postgres;

--
-- TOC entry 3033 (class 0 OID 0)
-- Dependencies: 327
-- Name: facturas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE facturas_id_seq OWNED BY facturas.id;


--
-- TOC entry 335 (class 1259 OID 81071)
-- Name: failed_jobs; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE failed_jobs (
    id bigint NOT NULL,
    uuid character varying(500) NOT NULL,
    connection text NOT NULL,
    queue text NOT NULL,
    payload text NOT NULL,
    exception text NOT NULL,
    failed_at timestamp(0) without time zone DEFAULT now() NOT NULL
);


ALTER TABLE failed_jobs OWNER TO postgres;

--
-- TOC entry 334 (class 1259 OID 81069)
-- Name: failed_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE failed_jobs_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE failed_jobs_id_seq OWNER TO postgres;

--
-- TOC entry 3034 (class 0 OID 0)
-- Dependencies: 334
-- Name: failed_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE failed_jobs_id_seq OWNED BY failed_jobs.id;


--
-- TOC entry 309 (class 1259 OID 80769)
-- Name: familia_productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE familia_productos (
    id integer NOT NULL,
    nombre character varying(500) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE familia_productos OWNER TO postgres;

--
-- TOC entry 308 (class 1259 OID 80767)
-- Name: familia_productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE familia_productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE familia_productos_id_seq OWNER TO postgres;

--
-- TOC entry 3035 (class 0 OID 0)
-- Dependencies: 308
-- Name: familia_productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE familia_productos_id_seq OWNED BY familia_productos.id;


--
-- TOC entry 305 (class 1259 OID 80745)
-- Name: franja_descuentos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE franja_descuentos (
    descuento_id integer NOT NULL,
    monto_minimo integer NOT NULL,
    valor double precision NOT NULL,
    porcentual boolean DEFAULT true NOT NULL
);


ALTER TABLE franja_descuentos OWNER TO postgres;

--
-- TOC entry 347 (class 1259 OID 81165)
-- Name: ganancias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE ganancias (
    id integer NOT NULL,
    producto_id integer NOT NULL,
    cantidad character varying(500) NOT NULL,
    ganancia_por_producto double precision NOT NULL,
    total double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE ganancias OWNER TO postgres;

--
-- TOC entry 346 (class 1259 OID 81163)
-- Name: ganancias_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE ganancias_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE ganancias_id_seq OWNER TO postgres;

--
-- TOC entry 3036 (class 0 OID 0)
-- Dependencies: 346
-- Name: ganancias_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE ganancias_id_seq OWNED BY ganancias.id;


--
-- TOC entry 363 (class 1259 OID 81320)
-- Name: gastos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE gastos (
    id integer NOT NULL,
    tipo_gasto_id integer NOT NULL,
    cantidad double precision NOT NULL,
    fecha character varying(500) DEFAULT '16/07/2021'::character varying NOT NULL,
    descripcion character varying(500) NOT NULL,
    sucursal_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE gastos OWNER TO postgres;

--
-- TOC entry 362 (class 1259 OID 81318)
-- Name: gastos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE gastos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE gastos_id_seq OWNER TO postgres;

--
-- TOC entry 3037 (class 0 OID 0)
-- Dependencies: 362
-- Name: gastos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE gastos_id_seq OWNED BY gastos.id;


--
-- TOC entry 341 (class 1259 OID 81116)
-- Name: historial_cajas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE historial_cajas (
    id integer NOT NULL,
    descripcion character varying(500) NOT NULL,
    usuario_id integer NOT NULL,
    caja_id integer NOT NULL,
    fecha character varying(500) NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE historial_cajas OWNER TO postgres;

--
-- TOC entry 340 (class 1259 OID 81114)
-- Name: historial_cajas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE historial_cajas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE historial_cajas_id_seq OWNER TO postgres;

--
-- TOC entry 3038 (class 0 OID 0)
-- Dependencies: 340
-- Name: historial_cajas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE historial_cajas_id_seq OWNED BY historial_cajas.id;


--
-- TOC entry 317 (class 1259 OID 80887)
-- Name: linea_productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE linea_productos (
    id integer NOT NULL,
    producto_id integer NOT NULL,
    usuario_id integer NOT NULL,
    comprobante_id integer,
    descripcion character varying(500) NOT NULL,
    fecha timestamp(0) without time zone DEFAULT '2021-07-16 19:37:25'::timestamp without time zone NOT NULL,
    stock double precision DEFAULT '0'::double precision NOT NULL,
    tasa_iva_id integer DEFAULT 1 NOT NULL,
    "precioUnitario" double precision,
    cantidad integer NOT NULL,
    "subTotal" double precision,
    iva double precision,
    total double precision,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE linea_productos OWNER TO postgres;

--
-- TOC entry 316 (class 1259 OID 80885)
-- Name: linea_productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE linea_productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE linea_productos_id_seq OWNER TO postgres;

--
-- TOC entry 3039 (class 0 OID 0)
-- Dependencies: 316
-- Name: linea_productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE linea_productos_id_seq OWNED BY linea_productos.id;


--
-- TOC entry 359 (class 1259 OID 81266)
-- Name: linea_trabajadors; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE linea_trabajadors (
    id bigint NOT NULL,
    empleado_id integer NOT NULL,
    usuario_id integer NOT NULL,
    tipo_actividad character varying(500) NOT NULL,
    fecha character varying(500) NOT NULL,
    estado_actividad character varying(500) NOT NULL,
    descripcion character varying(500) NOT NULL,
    cantidad character varying(500),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE linea_trabajadors OWNER TO postgres;

--
-- TOC entry 358 (class 1259 OID 81264)
-- Name: linea_trabajadors_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE linea_trabajadors_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE linea_trabajadors_id_seq OWNER TO postgres;

--
-- TOC entry 3040 (class 0 OID 0)
-- Dependencies: 358
-- Name: linea_trabajadors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE linea_trabajadors_id_seq OWNED BY linea_trabajadors.id;


--
-- TOC entry 345 (class 1259 OID 81149)
-- Name: log_sistemas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE log_sistemas (
    id integer NOT NULL,
    user_id integer NOT NULL,
    tx_descripcion character varying(500) NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE log_sistemas OWNER TO postgres;

--
-- TOC entry 344 (class 1259 OID 81147)
-- Name: log_sistemas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE log_sistemas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE log_sistemas_id_seq OWNER TO postgres;

--
-- TOC entry 3041 (class 0 OID 0)
-- Dependencies: 344
-- Name: log_sistemas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE log_sistemas_id_seq OWNED BY log_sistemas.id;


--
-- TOC entry 365 (class 1259 OID 81342)
-- Name: logins; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE logins (
    id integer NOT NULL,
    user_id integer NOT NULL,
    user_agent character varying(500) NOT NULL,
    session_token character varying(40) NOT NULL,
    ip_address character varying(40) NOT NULL,
    login_at timestamp(0) without time zone DEFAULT now() NOT NULL,
    logout_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE logins OWNER TO postgres;

--
-- TOC entry 364 (class 1259 OID 81340)
-- Name: logins_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE logins_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE logins_id_seq OWNER TO postgres;

--
-- TOC entry 3042 (class 0 OID 0)
-- Dependencies: 364
-- Name: logins_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE logins_id_seq OWNED BY logins.id;


--
-- TOC entry 287 (class 1259 OID 80647)
-- Name: migrations; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE migrations (
    id integer NOT NULL,
    migration character varying(500) NOT NULL,
    batch integer NOT NULL
);


ALTER TABLE migrations OWNER TO postgres;

--
-- TOC entry 286 (class 1259 OID 80645)
-- Name: migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE migrations_id_seq OWNER TO postgres;

--
-- TOC entry 3043 (class 0 OID 0)
-- Dependencies: 286
-- Name: migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE migrations_id_seq OWNED BY migrations.id;


--
-- TOC entry 370 (class 1259 OID 81383)
-- Name: model_has_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE model_has_permissions (
    permission_id bigint NOT NULL,
    model_type character varying(500) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE model_has_permissions OWNER TO postgres;

--
-- TOC entry 371 (class 1259 OID 81397)
-- Name: model_has_roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE model_has_roles (
    role_id bigint NOT NULL,
    model_type character varying(500) NOT NULL,
    model_id bigint NOT NULL
);


ALTER TABLE model_has_roles OWNER TO postgres;

--
-- TOC entry 351 (class 1259 OID 81192)
-- Name: modo_pagos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE modo_pagos (
    id integer NOT NULL,
    nb_modo_pago character varying(500) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE modo_pagos OWNER TO postgres;

--
-- TOC entry 350 (class 1259 OID 81190)
-- Name: modo_pagos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE modo_pagos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE modo_pagos_id_seq OWNER TO postgres;

--
-- TOC entry 3044 (class 0 OID 0)
-- Dependencies: 350
-- Name: modo_pagos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE modo_pagos_id_seq OWNED BY modo_pagos.id;


--
-- TOC entry 307 (class 1259 OID 80758)
-- Name: monedas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE monedas (
    id integer NOT NULL,
    nombre character varying(500) NOT NULL,
    simbolo character varying(500) NOT NULL,
    redondeo integer NOT NULL
);


ALTER TABLE monedas OWNER TO postgres;

--
-- TOC entry 306 (class 1259 OID 80756)
-- Name: monedas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE monedas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE monedas_id_seq OWNER TO postgres;

--
-- TOC entry 3045 (class 0 OID 0)
-- Dependencies: 306
-- Name: monedas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE monedas_id_seq OWNED BY monedas.id;


--
-- TOC entry 343 (class 1259 OID 81137)
-- Name: movimiento_cajas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE movimiento_cajas (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    tipo_comprobante_id integer NOT NULL,
    tipo_pago_id integer NOT NULL,
    moneda_id integer NOT NULL,
    cotizacion double precision DEFAULT '1'::double precision NOT NULL,
    cliente character varying(500),
    caja_id integer NOT NULL,
    comprobante_id integer NOT NULL,
    producto_id integer NOT NULL,
    fecha character varying(500) NOT NULL,
    descripcion character varying(500) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE movimiento_cajas OWNER TO postgres;

--
-- TOC entry 342 (class 1259 OID 81135)
-- Name: movimiento_cajas_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE movimiento_cajas_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE movimiento_cajas_id_seq OWNER TO postgres;

--
-- TOC entry 3046 (class 0 OID 0)
-- Dependencies: 342
-- Name: movimiento_cajas_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE movimiento_cajas_id_seq OWNED BY movimiento_cajas.id;


--
-- TOC entry 325 (class 1259 OID 80967)
-- Name: notificacion_usuarios; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE notificacion_usuarios (
    id integer NOT NULL,
    leido boolean DEFAULT false NOT NULL,
    usuario_id integer NOT NULL,
    notificacion_id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE notificacion_usuarios OWNER TO postgres;

--
-- TOC entry 324 (class 1259 OID 80965)
-- Name: notificacion_usuarios_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE notificacion_usuarios_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE notificacion_usuarios_id_seq OWNER TO postgres;

--
-- TOC entry 3047 (class 0 OID 0)
-- Dependencies: 324
-- Name: notificacion_usuarios_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE notificacion_usuarios_id_seq OWNED BY notificacion_usuarios.id;


--
-- TOC entry 323 (class 1259 OID 80955)
-- Name: notificaciones; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE notificaciones (
    id integer NOT NULL,
    titulo character varying(500) NOT NULL,
    texto character varying(500) DEFAULT ''::character varying NOT NULL,
    link_texto character varying(500),
    link character varying(500),
    fecha timestamp(0) without time zone NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE notificaciones OWNER TO postgres;

--
-- TOC entry 322 (class 1259 OID 80953)
-- Name: notificaciones_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE notificaciones_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE notificaciones_id_seq OWNER TO postgres;

--
-- TOC entry 3048 (class 0 OID 0)
-- Dependencies: 322
-- Name: notificaciones_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE notificaciones_id_seq OWNED BY notificaciones.id;


--
-- TOC entry 361 (class 1259 OID 81287)
-- Name: pagos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE pagos (
    id integer NOT NULL,
    empleado_id integer NOT NULL,
    usuario_id integer NOT NULL,
    tipo_pago_empleado_id integer NOT NULL,
    nu_cantidad_tipo_pago double precision DEFAULT '0'::double precision NOT NULL,
    fecha timestamp(0) without time zone NOT NULL,
    tx_descripcion character varying(500) NOT NULL,
    sucursal_id integer NOT NULL,
    total double precision DEFAULT '0'::double precision NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE pagos OWNER TO postgres;

--
-- TOC entry 360 (class 1259 OID 81285)
-- Name: pagos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE pagos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE pagos_id_seq OWNER TO postgres;

--
-- TOC entry 3049 (class 0 OID 0)
-- Dependencies: 360
-- Name: pagos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE pagos_id_seq OWNED BY pagos.id;


--
-- TOC entry 296 (class 1259 OID 80700)
-- Name: password_resets; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE password_resets (
    email character varying(500) NOT NULL,
    token character varying(500) NOT NULL,
    created_at timestamp(0) without time zone
);


ALTER TABLE password_resets OWNER TO postgres;

--
-- TOC entry 367 (class 1259 OID 81359)
-- Name: permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE permissions (
    id bigint NOT NULL,
    name character varying(500) NOT NULL,
    guard_name character varying(500) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE permissions OWNER TO postgres;

--
-- TOC entry 366 (class 1259 OID 81357)
-- Name: permissions_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE permissions_id_seq OWNER TO postgres;

--
-- TOC entry 3050 (class 0 OID 0)
-- Dependencies: 366
-- Name: permissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE permissions_id_seq OWNED BY permissions.id;


--
-- TOC entry 326 (class 1259 OID 80990)
-- Name: preferencias; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE preferencias (
    usuario_id integer NOT NULL,
    estilo character varying(500) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE preferencias OWNER TO postgres;

--
-- TOC entry 319 (class 1259 OID 80922)
-- Name: producto_precio; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE producto_precio (
    id integer NOT NULL,
    producto_id integer NOT NULL,
    usuario_id integer NOT NULL,
    fecha timestamp(0) without time zone NOT NULL,
    precio double precision DEFAULT '0'::double precision NOT NULL
);


ALTER TABLE producto_precio OWNER TO postgres;

--
-- TOC entry 318 (class 1259 OID 80920)
-- Name: producto_precio_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE producto_precio_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE producto_precio_id_seq OWNER TO postgres;

--
-- TOC entry 3051 (class 0 OID 0)
-- Dependencies: 318
-- Name: producto_precio_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE producto_precio_id_seq OWNED BY producto_precio.id;


--
-- TOC entry 311 (class 1259 OID 80782)
-- Name: productos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE productos (
    id integer NOT NULL,
    codigo character varying(500),
    codigo_de_barras character varying(500),
    marca_producto character varying(500) NOT NULL,
    familiaproducto_id integer DEFAULT 1,
    tasa_iva_id integer DEFAULT 1,
    stock character varying(500) DEFAULT '0'::character varying NOT NULL,
    nombre character varying(500),
    descripcion text,
    precio character varying(500) DEFAULT '0'::character varying NOT NULL,
    precio_compra character varying(500) DEFAULT '0'::character varying NOT NULL,
    stock_minimo_valor integer DEFAULT 0 NOT NULL,
    stock_minimo_notificar integer DEFAULT 0 NOT NULL,
    sucursal_id integer DEFAULT 1,
    producto_garantia integer DEFAULT 0 NOT NULL,
    producto_tiempo_garantia character varying(500) DEFAULT '3 meses'::character varying NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE productos OWNER TO postgres;

--
-- TOC entry 310 (class 1259 OID 80780)
-- Name: productos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE productos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE productos_id_seq OWNER TO postgres;

--
-- TOC entry 3052 (class 0 OID 0)
-- Dependencies: 310
-- Name: productos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE productos_id_seq OWNED BY productos.id;


--
-- TOC entry 321 (class 1259 OID 80941)
-- Name: proveedores; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE proveedores (
    id integer NOT NULL,
    nombre character varying(500),
    razon_social character varying(500),
    rut character varying(500),
    mail character varying(500),
    direccion character varying(500),
    telefono character varying(500),
    web character varying(500),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE proveedores OWNER TO postgres;

--
-- TOC entry 320 (class 1259 OID 80939)
-- Name: proveedores_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE proveedores_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE proveedores_id_seq OWNER TO postgres;

--
-- TOC entry 3053 (class 0 OID 0)
-- Dependencies: 320
-- Name: proveedores_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE proveedores_id_seq OWNED BY proveedores.id;


--
-- TOC entry 331 (class 1259 OID 81045)
-- Name: recibo_facturas; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE recibo_facturas (
    factura_id integer NOT NULL,
    recibo_id integer NOT NULL,
    deuda_inicial double precision NOT NULL,
    deuda_final double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE recibo_facturas OWNER TO postgres;

--
-- TOC entry 330 (class 1259 OID 81020)
-- Name: recibos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE recibos (
    id integer NOT NULL,
    usuario_id integer NOT NULL,
    moneda_id integer,
    cotizacion double precision DEFAULT '1'::double precision NOT NULL,
    concepto character varying(500),
    lugar character varying(500),
    monto double precision NOT NULL,
    cliente_id integer,
    fecha timestamp(0) without time zone NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE recibos OWNER TO postgres;

--
-- TOC entry 329 (class 1259 OID 81018)
-- Name: recibos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE recibos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE recibos_id_seq OWNER TO postgres;

--
-- TOC entry 3054 (class 0 OID 0)
-- Dependencies: 329
-- Name: recibos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE recibos_id_seq OWNED BY recibos.id;


--
-- TOC entry 372 (class 1259 OID 81411)
-- Name: role_has_permissions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE role_has_permissions (
    permission_id bigint NOT NULL,
    role_id bigint NOT NULL
);


ALTER TABLE role_has_permissions OWNER TO postgres;

--
-- TOC entry 369 (class 1259 OID 81372)
-- Name: roles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE roles (
    id bigint NOT NULL,
    name character varying(500) NOT NULL,
    guard_name character varying(500) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE roles OWNER TO postgres;

--
-- TOC entry 368 (class 1259 OID 81370)
-- Name: roles_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE roles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE roles_id_seq OWNER TO postgres;

--
-- TOC entry 3055 (class 0 OID 0)
-- Dependencies: 368
-- Name: roles_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE roles_id_seq OWNED BY roles.id;


--
-- TOC entry 289 (class 1259 OID 80658)
-- Name: sucursales; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE sucursales (
    id integer NOT NULL,
    nombre character varying(500) NOT NULL,
    telefono character varying(500) NOT NULL,
    direccion character varying(500) NOT NULL,
    rif character varying(500) NOT NULL,
    status character varying(500) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE sucursales OWNER TO postgres;

--
-- TOC entry 288 (class 1259 OID 80656)
-- Name: sucursales_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE sucursales_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE sucursales_id_seq OWNER TO postgres;

--
-- TOC entry 3056 (class 0 OID 0)
-- Dependencies: 288
-- Name: sucursales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE sucursales_id_seq OWNED BY sucursales.id;


--
-- TOC entry 300 (class 1259 OID 80717)
-- Name: tasas_iva; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tasas_iva (
    id integer NOT NULL,
    nombre character varying(500) NOT NULL,
    tasa double precision NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE tasas_iva OWNER TO postgres;

--
-- TOC entry 299 (class 1259 OID 80715)
-- Name: tasas_iva_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tasas_iva_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tasas_iva_id_seq OWNER TO postgres;

--
-- TOC entry 3057 (class 0 OID 0)
-- Dependencies: 299
-- Name: tasas_iva_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tasas_iva_id_seq OWNED BY tasas_iva.id;


--
-- TOC entry 302 (class 1259 OID 80728)
-- Name: tipo_comprobantes; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipo_comprobantes (
    id integer NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    nombre character varying(500) NOT NULL
);


ALTER TABLE tipo_comprobantes OWNER TO postgres;

--
-- TOC entry 301 (class 1259 OID 80726)
-- Name: tipo_comprobantes_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_comprobantes_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_comprobantes_id_seq OWNER TO postgres;

--
-- TOC entry 3058 (class 0 OID 0)
-- Dependencies: 301
-- Name: tipo_comprobantes_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_comprobantes_id_seq OWNED BY tipo_comprobantes.id;


--
-- TOC entry 298 (class 1259 OID 80709)
-- Name: tipo_documento; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipo_documento (
    id integer NOT NULL,
    tipo_documento character varying(500) NOT NULL
);


ALTER TABLE tipo_documento OWNER TO postgres;

--
-- TOC entry 297 (class 1259 OID 80707)
-- Name: tipo_documento_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_documento_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_documento_id_seq OWNER TO postgres;

--
-- TOC entry 3059 (class 0 OID 0)
-- Dependencies: 297
-- Name: tipo_documento_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_documento_id_seq OWNED BY tipo_documento.id;


--
-- TOC entry 355 (class 1259 OID 81234)
-- Name: tipo_gastos; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipo_gastos (
    id integer NOT NULL,
    nombre character varying(500) NOT NULL,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE tipo_gastos OWNER TO postgres;

--
-- TOC entry 354 (class 1259 OID 81232)
-- Name: tipo_gastos_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_gastos_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_gastos_id_seq OWNER TO postgres;

--
-- TOC entry 3060 (class 0 OID 0)
-- Dependencies: 354
-- Name: tipo_gastos_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_gastos_id_seq OWNED BY tipo_gastos.id;


--
-- TOC entry 291 (class 1259 OID 80669)
-- Name: tipo_pago; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipo_pago (
    id integer NOT NULL,
    nb_tipo_pago character varying(500) NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE tipo_pago OWNER TO postgres;

--
-- TOC entry 333 (class 1259 OID 81060)
-- Name: tipo_pago_empleado; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE tipo_pago_empleado (
    id_tipo_pago_empleado integer NOT NULL,
    nb_tipo_pago_empleado character varying(500) NOT NULL,
    deleted_at timestamp(0) without time zone,
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone
);


ALTER TABLE tipo_pago_empleado OWNER TO postgres;

--
-- TOC entry 332 (class 1259 OID 81058)
-- Name: tipo_pago_empleado_id_tipo_pago_empleado_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_pago_empleado_id_tipo_pago_empleado_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_pago_empleado_id_tipo_pago_empleado_seq OWNER TO postgres;

--
-- TOC entry 3061 (class 0 OID 0)
-- Dependencies: 332
-- Name: tipo_pago_empleado_id_tipo_pago_empleado_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_pago_empleado_id_tipo_pago_empleado_seq OWNED BY tipo_pago_empleado.id_tipo_pago_empleado;


--
-- TOC entry 290 (class 1259 OID 80667)
-- Name: tipo_pago_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE tipo_pago_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE tipo_pago_id_seq OWNER TO postgres;

--
-- TOC entry 3062 (class 0 OID 0)
-- Dependencies: 290
-- Name: tipo_pago_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE tipo_pago_id_seq OWNED BY tipo_pago.id;


--
-- TOC entry 295 (class 1259 OID 80688)
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE users (
    id integer NOT NULL,
    name character varying(500) NOT NULL,
    username character varying(500) NOT NULL,
    lastname character varying(500) NOT NULL,
    genero character varying(500) NOT NULL,
    email character varying(500) NOT NULL,
    email_verified_at timestamp(0) without time zone,
    password character varying(500) NOT NULL,
    status smallint DEFAULT '0'::smallint NOT NULL,
    remember_token character varying(100),
    created_at timestamp(0) without time zone,
    updated_at timestamp(0) without time zone,
    deleted_at timestamp(0) without time zone
);


ALTER TABLE users OWNER TO postgres;

--
-- TOC entry 294 (class 1259 OID 80686)
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE users_id_seq OWNER TO postgres;

--
-- TOC entry 3063 (class 0 OID 0)
-- Dependencies: 294
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE users_id_seq OWNED BY users.id;


--
-- TOC entry 2626 (class 2604 OID 81088)
-- Name: id_apertura; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY apertura_caja ALTER COLUMN id_apertura SET DEFAULT nextval('apertura_caja_id_apertura_seq'::regclass);


--
-- TOC entry 2637 (class 2604 OID 81248)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_trabajos ALTER COLUMN id SET DEFAULT nextval('asignacion_trabajos_id_seq'::regclass);


--
-- TOC entry 2581 (class 2604 OID 80683)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cajas ALTER COLUMN id SET DEFAULT nextval('cajas_id_seq'::regclass);


--
-- TOC entry 2633 (class 2604 OID 81184)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cargos ALTER COLUMN id SET DEFAULT nextval('cargos_id_seq'::regclass);


--
-- TOC entry 2627 (class 2604 OID 81105)
-- Name: id_cierre; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cierre_caja ALTER COLUMN id_cierre SET DEFAULT nextval('cierre_caja_id_cierre_seq'::regclass);


--
-- TOC entry 2602 (class 2604 OID 80826)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clientes ALTER COLUMN id SET DEFAULT nextval('clientes_id_seq'::regclass);


--
-- TOC entry 2604 (class 2604 OID 80854)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comprobantes ALTER COLUMN id SET DEFAULT nextval('comprobantes_id_seq'::regclass);


--
-- TOC entry 2587 (class 2604 OID 80742)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY descuentos ALTER COLUMN id SET DEFAULT nextval('descuentos_id_seq'::regclass);


--
-- TOC entry 2635 (class 2604 OID 81206)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleados ALTER COLUMN id SET DEFAULT nextval('empleados_id_seq'::regclass);


--
-- TOC entry 2620 (class 2604 OID 81008)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY facturas ALTER COLUMN id SET DEFAULT nextval('facturas_id_seq'::regclass);


--
-- TOC entry 2624 (class 2604 OID 81074)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY failed_jobs ALTER COLUMN id SET DEFAULT nextval('failed_jobs_id_seq'::regclass);


--
-- TOC entry 2590 (class 2604 OID 80772)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY familia_productos ALTER COLUMN id SET DEFAULT nextval('familia_productos_id_seq'::regclass);


--
-- TOC entry 2632 (class 2604 OID 81168)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ganancias ALTER COLUMN id SET DEFAULT nextval('ganancias_id_seq'::regclass);


--
-- TOC entry 2642 (class 2604 OID 81323)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gastos ALTER COLUMN id SET DEFAULT nextval('gastos_id_seq'::regclass);


--
-- TOC entry 2628 (class 2604 OID 81119)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historial_cajas ALTER COLUMN id SET DEFAULT nextval('historial_cajas_id_seq'::regclass);


--
-- TOC entry 2609 (class 2604 OID 80890)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea_productos ALTER COLUMN id SET DEFAULT nextval('linea_productos_id_seq'::regclass);


--
-- TOC entry 2638 (class 2604 OID 81269)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea_trabajadors ALTER COLUMN id SET DEFAULT nextval('linea_trabajadors_id_seq'::regclass);


--
-- TOC entry 2631 (class 2604 OID 81152)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY log_sistemas ALTER COLUMN id SET DEFAULT nextval('log_sistemas_id_seq'::regclass);


--
-- TOC entry 2644 (class 2604 OID 81345)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY logins ALTER COLUMN id SET DEFAULT nextval('logins_id_seq'::regclass);


--
-- TOC entry 2578 (class 2604 OID 80650)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY migrations ALTER COLUMN id SET DEFAULT nextval('migrations_id_seq'::regclass);


--
-- TOC entry 2634 (class 2604 OID 81195)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY modo_pagos ALTER COLUMN id SET DEFAULT nextval('modo_pagos_id_seq'::regclass);


--
-- TOC entry 2589 (class 2604 OID 80761)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY monedas ALTER COLUMN id SET DEFAULT nextval('monedas_id_seq'::regclass);


--
-- TOC entry 2629 (class 2604 OID 81140)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY movimiento_cajas ALTER COLUMN id SET DEFAULT nextval('movimiento_cajas_id_seq'::regclass);


--
-- TOC entry 2618 (class 2604 OID 80970)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY notificacion_usuarios ALTER COLUMN id SET DEFAULT nextval('notificacion_usuarios_id_seq'::regclass);


--
-- TOC entry 2616 (class 2604 OID 80958)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY notificaciones ALTER COLUMN id SET DEFAULT nextval('notificaciones_id_seq'::regclass);


--
-- TOC entry 2639 (class 2604 OID 81290)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pagos ALTER COLUMN id SET DEFAULT nextval('pagos_id_seq'::regclass);


--
-- TOC entry 2646 (class 2604 OID 81362)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permissions ALTER COLUMN id SET DEFAULT nextval('permissions_id_seq'::regclass);


--
-- TOC entry 2613 (class 2604 OID 80925)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto_precio ALTER COLUMN id SET DEFAULT nextval('producto_precio_id_seq'::regclass);


--
-- TOC entry 2591 (class 2604 OID 80785)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productos ALTER COLUMN id SET DEFAULT nextval('productos_id_seq'::regclass);


--
-- TOC entry 2615 (class 2604 OID 80944)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proveedores ALTER COLUMN id SET DEFAULT nextval('proveedores_id_seq'::regclass);


--
-- TOC entry 2621 (class 2604 OID 81023)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY recibos ALTER COLUMN id SET DEFAULT nextval('recibos_id_seq'::regclass);


--
-- TOC entry 2647 (class 2604 OID 81375)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles ALTER COLUMN id SET DEFAULT nextval('roles_id_seq'::regclass);


--
-- TOC entry 2579 (class 2604 OID 80661)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sucursales ALTER COLUMN id SET DEFAULT nextval('sucursales_id_seq'::regclass);


--
-- TOC entry 2585 (class 2604 OID 80720)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tasas_iva ALTER COLUMN id SET DEFAULT nextval('tasas_iva_id_seq'::regclass);


--
-- TOC entry 2586 (class 2604 OID 80731)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_comprobantes ALTER COLUMN id SET DEFAULT nextval('tipo_comprobantes_id_seq'::regclass);


--
-- TOC entry 2584 (class 2604 OID 80712)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_documento ALTER COLUMN id SET DEFAULT nextval('tipo_documento_id_seq'::regclass);


--
-- TOC entry 2636 (class 2604 OID 81237)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_gastos ALTER COLUMN id SET DEFAULT nextval('tipo_gastos_id_seq'::regclass);


--
-- TOC entry 2580 (class 2604 OID 80672)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_pago ALTER COLUMN id SET DEFAULT nextval('tipo_pago_id_seq'::regclass);


--
-- TOC entry 2623 (class 2604 OID 81063)
-- Name: id_tipo_pago_empleado; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_pago_empleado ALTER COLUMN id_tipo_pago_empleado SET DEFAULT nextval('tipo_pago_empleado_id_tipo_pago_empleado_seq'::regclass);


--
-- TOC entry 2582 (class 2604 OID 80691)
-- Name: id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users ALTER COLUMN id SET DEFAULT nextval('users_id_seq'::regclass);


--
-- TOC entry 2984 (class 0 OID 81085)
-- Dependencies: 337
-- Data for Name: apertura_caja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY apertura_caja (id_apertura, nu_cantidad_efectivo, nu_cantidad_dolares, nu_cantidad_punto_venta, nu_cantidad_transferencias, nu_cantidad_pago_movil, caja_id, usuario_id, status, fecha_emision, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3064 (class 0 OID 0)
-- Dependencies: 336
-- Name: apertura_caja_id_apertura_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('apertura_caja_id_apertura_seq', 1, false);


--
-- TOC entry 3004 (class 0 OID 81245)
-- Dependencies: 357
-- Data for Name: asignacion_trabajos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY asignacion_trabajos (id, tipo_trabajo, descripcion, fecha, estado_trabajo, empleado_id, usuario_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3065 (class 0 OID 0)
-- Dependencies: 356
-- Name: asignacion_trabajos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('asignacion_trabajos_id_seq', 1, false);


--
-- TOC entry 2940 (class 0 OID 80680)
-- Dependencies: 293
-- Data for Name: cajas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cajas (id, nu_caja, status, deleted_at, created_at, updated_at) FROM stdin;
1	1	0	\N	2021-07-16 19:37:30	2021-07-16 19:37:30
\.


--
-- TOC entry 3066 (class 0 OID 0)
-- Dependencies: 292
-- Name: cajas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cajas_id_seq', 1, true);


--
-- TOC entry 2996 (class 0 OID 81181)
-- Dependencies: 349
-- Data for Name: cargos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cargos (id, nombre, created_at, updated_at) FROM stdin;
1	Vendedor	\N	\N
\.


--
-- TOC entry 3067 (class 0 OID 0)
-- Dependencies: 348
-- Name: cargos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cargos_id_seq', 1, true);


--
-- TOC entry 2986 (class 0 OID 81102)
-- Dependencies: 339
-- Data for Name: cierre_caja; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY cierre_caja (id_cierre, nu_cantidad_efectivo, nu_cantidad_dolares, nu_cantidad_punto_venta, nu_cantidad_transferencias, nu_cantidad_pago_movil, status, caja_id, usuario_id, fecha_cierre, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3068 (class 0 OID 0)
-- Dependencies: 338
-- Name: cierre_caja_id_cierre_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('cierre_caja_id_cierre_seq', 1, false);


--
-- TOC entry 2960 (class 0 OID 80823)
-- Dependencies: 313
-- Data for Name: clientes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY clientes (id, nombre, apellido, empresa, rut, mail, direccion, genero, descuento_id, tipo_documento_id, plazo_factura, sucursal_id, deleted_at, created_at, updated_at, telefono, documento, tipo_documento) FROM stdin;
1	ZALAYETA S.A.	\N	1	827311221933	contacto@jojovo.com.es	Libertad 2391	\N	\N	\N	\N	1	\N	2021-07-16 19:37:07	\N	9039314	\N	\N
2	Andrés	Suárez	0	\N	andsuarez22@peretch.com	21 de Septiembre 551 Apto. 205	m	\N	\N	\N	1	\N	2021-07-16 19:37:07	\N	099523412	\N	1
3	Sofía	Henderson	0	\N	andsuarez22@peretch.com	Rambla Gandhi 292. Apto. 901	f	\N	\N	\N	1	\N	2021-07-16 19:37:07	\N	097612221	\N	1
4	Cartagena S.R.L.	\N	1	210984000312	contacto@cartagena.uy	Av. Italia 2588	\N	\N	\N	\N	1	\N	2021-07-16 19:37:07	\N	25078293	\N	\N
5	AMV	\N	1	782323123234	msantos@AMV.com.uy	Lorenzo Carneli 221	\N	\N	\N	\N	1	\N	2021-07-16 19:37:07	\N	24185542	\N	\N
\.


--
-- TOC entry 3069 (class 0 OID 0)
-- Dependencies: 312
-- Name: clientes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('clientes_id_seq', 5, true);


--
-- TOC entry 2962 (class 0 OID 80851)
-- Dependencies: 315
-- Data for Name: comprobantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY comprobantes (id, tipo_comprobante_id, descripcion_diferencia, cantidad_diferencia, moneda_id, cotizacion, cliente_id, serie, numero, nombre_cliente, direccion, rut, "subTotal", iva, total, sucursal_id, fecha_emision, deleted_at, created_at, updated_at, descripcion_1, descripcion_2, descripcion_3, descripcion_4) FROM stdin;
\.


--
-- TOC entry 3070 (class 0 OID 0)
-- Dependencies: 314
-- Name: comprobantes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('comprobantes_id_seq', 1, false);


--
-- TOC entry 2951 (class 0 OID 80739)
-- Dependencies: 304
-- Data for Name: descuentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY descuentos (id, nombre) FROM stdin;
\.


--
-- TOC entry 3071 (class 0 OID 0)
-- Dependencies: 303
-- Name: descuentos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('descuentos_id_seq', 1, false);


--
-- TOC entry 3000 (class 0 OID 81203)
-- Dependencies: 353
-- Data for Name: empleados; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY empleados (id, nb_nombre, nb_apellido, nu_cedula, fe_ingreso, telefono, nb_profesion, sueldo_base, fecha_nacimiento, edad, usuario_id, cargo_id, modo_pagos_id, sucursal_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3072 (class 0 OID 0)
-- Dependencies: 352
-- Name: empleados_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('empleados_id_seq', 1, false);


--
-- TOC entry 2975 (class 0 OID 81005)
-- Dependencies: 328
-- Data for Name: facturas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY facturas (id, comprobante_id, fecha_vencimiento, plazo, deuda_original, deuda_actual, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3073 (class 0 OID 0)
-- Dependencies: 327
-- Name: facturas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('facturas_id_seq', 1, false);


--
-- TOC entry 2982 (class 0 OID 81071)
-- Dependencies: 335
-- Data for Name: failed_jobs; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY failed_jobs (id, uuid, connection, queue, payload, exception, failed_at) FROM stdin;
\.


--
-- TOC entry 3074 (class 0 OID 0)
-- Dependencies: 334
-- Name: failed_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('failed_jobs_id_seq', 1, false);


--
-- TOC entry 2956 (class 0 OID 80769)
-- Dependencies: 309
-- Data for Name: familia_productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY familia_productos (id, nombre, created_at, updated_at) FROM stdin;
1	Productos de almacén	\N	\N
\.


--
-- TOC entry 3075 (class 0 OID 0)
-- Dependencies: 308
-- Name: familia_productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('familia_productos_id_seq', 1, true);


--
-- TOC entry 2952 (class 0 OID 80745)
-- Dependencies: 305
-- Data for Name: franja_descuentos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY franja_descuentos (descuento_id, monto_minimo, valor, porcentual) FROM stdin;
\.


--
-- TOC entry 2994 (class 0 OID 81165)
-- Dependencies: 347
-- Data for Name: ganancias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY ganancias (id, producto_id, cantidad, ganancia_por_producto, total, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3076 (class 0 OID 0)
-- Dependencies: 346
-- Name: ganancias_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('ganancias_id_seq', 1, false);


--
-- TOC entry 3010 (class 0 OID 81320)
-- Dependencies: 363
-- Data for Name: gastos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY gastos (id, tipo_gasto_id, cantidad, fecha, descripcion, sucursal_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3077 (class 0 OID 0)
-- Dependencies: 362
-- Name: gastos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('gastos_id_seq', 1, false);


--
-- TOC entry 2988 (class 0 OID 81116)
-- Dependencies: 341
-- Data for Name: historial_cajas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY historial_cajas (id, descripcion, usuario_id, caja_id, fecha, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3078 (class 0 OID 0)
-- Dependencies: 340
-- Name: historial_cajas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('historial_cajas_id_seq', 1, false);


--
-- TOC entry 2964 (class 0 OID 80887)
-- Dependencies: 317
-- Data for Name: linea_productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY linea_productos (id, producto_id, usuario_id, comprobante_id, descripcion, fecha, stock, tasa_iva_id, "precioUnitario", cantidad, "subTotal", iva, total, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3079 (class 0 OID 0)
-- Dependencies: 316
-- Name: linea_productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('linea_productos_id_seq', 1, false);


--
-- TOC entry 3006 (class 0 OID 81266)
-- Dependencies: 359
-- Data for Name: linea_trabajadors; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY linea_trabajadors (id, empleado_id, usuario_id, tipo_actividad, fecha, estado_actividad, descripcion, cantidad, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3080 (class 0 OID 0)
-- Dependencies: 358
-- Name: linea_trabajadors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('linea_trabajadors_id_seq', 1, false);


--
-- TOC entry 2992 (class 0 OID 81149)
-- Dependencies: 345
-- Data for Name: log_sistemas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY log_sistemas (id, user_id, tx_descripcion, deleted_at, created_at, updated_at) FROM stdin;
1	3	El usuario: Dixyelis Niño Ha ingresado al home del sistema a las: 19:07:37 del día: 16/07/2021	\N	2021-07-16 19:37:36	2021-07-16 19:37:36
2	3	El usuario: Dixyelis Niño Ha ingresado al home del sistema a las: 19:07:37 del día: 16/07/2021	\N	2021-07-16 19:37:57	2021-07-16 19:37:57
3	3	El usuario: Dixyelis Niño Ha ingresado al home del sistema a las: 19:07:38 del día: 16/07/2021	\N	2021-07-16 19:38:03	2021-07-16 19:38:03
4	3	El usuario: Dixyelis Niño Ha ingresado al home del sistema a las: 19:07:38 del día: 16/07/2021	\N	2021-07-16 19:38:05	2021-07-16 19:38:05
5	3	El usuario: Dixyelis Niño Ha ingresado al home del sistema a las: 19:07:38 del día: 16/07/2021	\N	2021-07-16 19:38:28	2021-07-16 19:38:28
6	3	El usuario: Dixyelis Niño Ha ingresado al home del sistema a las: 19:07:38 del día: 16/07/2021	\N	2021-07-16 19:38:37	2021-07-16 19:38:37
7	3	El usuario: Dixyelis Niño Ha ingresado al home del sistema a las: 19:07:38 del día: 16/07/2021	\N	2021-07-16 19:38:53	2021-07-16 19:38:53
\.


--
-- TOC entry 3081 (class 0 OID 0)
-- Dependencies: 344
-- Name: log_sistemas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('log_sistemas_id_seq', 7, true);


--
-- TOC entry 3012 (class 0 OID 81342)
-- Dependencies: 365
-- Data for Name: logins; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY logins (id, user_id, user_agent, session_token, ip_address, login_at, logout_at, deleted_at, created_at, updated_at) FROM stdin;
1	3	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36	sWNCyDUEv0USp8g2diF70ms4udS32qcx6yBDuIr8	127.0.0.1	2021-07-16 19:37:36	2021-07-16 19:38:31	\N	2021-07-16 19:37:36	2021-07-16 19:38:31
2	3	Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/91.0.4472.124 Safari/537.36	3lQNrkab818sUEranks89sGf6NOhTl0GIeNfFOtV	127.0.0.1	2021-07-16 19:38:36	2021-07-16 19:39:00	\N	2021-07-16 19:38:36	2021-07-16 19:39:00
\.


--
-- TOC entry 3082 (class 0 OID 0)
-- Dependencies: 364
-- Name: logins_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('logins_id_seq', 2, true);


--
-- TOC entry 2934 (class 0 OID 80647)
-- Dependencies: 287
-- Data for Name: migrations; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY migrations (id, migration, batch) FROM stdin;
1	2013_05_08_211207_create_sucursales_table	1
2	2014_03_03_132856_create_tipo_pagos_table	1
3	2014_03_03_134340_create_cajas_table	1
4	2014_10_12_000000_create_users_table	1
5	2014_10_12_100000_create_password_resets_table	1
6	2016_10_05_200203_create_tipo_documentos_table	1
7	2017_08_15_041216_create_tasa_ivas_table	1
8	2017_08_16_202051_create_tipo_comprobantes_table	1
9	2017_08_18_005611_create_descuentos_table	1
10	2017_08_18_005625_create_franja_descuentos_table	1
11	2017_08_18_011442_create_monedas_table	1
12	2017_08_18_175224_create_familia_productos_table	1
13	2017_08_18_225600_create_productos_table	1
14	2017_08_18_225647_create_clientes_table	1
15	2017_08_19_044418_create_comprobantes_table	1
16	2017_08_19_225827_create_linea_productos_table	1
17	2017_08_23_033640_create_producto_precio_table	1
18	2017_08_24_031723_create_proveedores_table	1
19	2017_08_26_010631_create_notificaciones_table	1
20	2017_08_26_010644_create_notificacion_usuarios_table	1
21	2017_09_20_140134_updateFacturasTable	1
22	2017_11_05_184918_moduloClientesMigration	1
23	2017_12_11_234643_create_preferencias_table	1
24	2018_01_28_235128_create_facturas_table	1
25	2018_01_29_000325_create_recibos_table	1
26	2018_02_14_140303_create_recibo_facturas_table	1
27	2019_03_22_195507_create_tipo_pago_empleado_table	1
28	2019_08_19_000000_create_failed_jobs_table	1
29	2020_03_03_131317_create_aperuras_table	1
30	2020_03_03_134108_create_cierre_cajas_table	1
31	2020_03_20_020942_create_historial_cajas_table	1
32	2020_03_27_211010_create_movimiento_cajas_table	1
33	2021_04_25_191437_create_log_sistemas_table	1
34	2021_05_27_190658_create_ganancias_table	1
35	2021_05_28_115600_create_cargos_table	1
36	2021_05_28_115702_create_modo_pagos_table	1
37	2021_05_28_115713_create_empleados_table	1
38	2021_05_30_202802_create_tipo_gastos_table	1
39	2021_05_31_134235_create_asignacion_trabajos_table	1
40	2021_05_31_152642_create_linea_trabajadors_table	1
41	2021_05_31_172649_create_pagos_table	1
42	2021_05_31_202527_create_gastos_table	1
43	2021_07_04_130219_create_logins_table	1
44	2021_07_04_154343_create_permission_tables	1
\.


--
-- TOC entry 3083 (class 0 OID 0)
-- Dependencies: 286
-- Name: migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('migrations_id_seq', 44, true);


--
-- TOC entry 3017 (class 0 OID 81383)
-- Dependencies: 370
-- Data for Name: model_has_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY model_has_permissions (permission_id, model_type, model_id) FROM stdin;
\.


--
-- TOC entry 3018 (class 0 OID 81397)
-- Dependencies: 371
-- Data for Name: model_has_roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY model_has_roles (role_id, model_type, model_id) FROM stdin;
1	App\\Models\\User	1
2	App\\Models\\User	2
3	App\\Models\\User	3
\.


--
-- TOC entry 2998 (class 0 OID 81192)
-- Dependencies: 351
-- Data for Name: modo_pagos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY modo_pagos (id, nb_modo_pago, created_at, updated_at) FROM stdin;
1	Semanal	\N	\N
2	Quincenal	\N	\N
3	Mensual	\N	\N
\.


--
-- TOC entry 3084 (class 0 OID 0)
-- Dependencies: 350
-- Name: modo_pagos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('modo_pagos_id_seq', 3, true);


--
-- TOC entry 2954 (class 0 OID 80758)
-- Dependencies: 307
-- Data for Name: monedas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY monedas (id, nombre, simbolo, redondeo) FROM stdin;
1	Bolívares	Bs	0
2	Dólares	$	2
\.


--
-- TOC entry 3085 (class 0 OID 0)
-- Dependencies: 306
-- Name: monedas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('monedas_id_seq', 2, true);


--
-- TOC entry 2990 (class 0 OID 81137)
-- Dependencies: 343
-- Data for Name: movimiento_cajas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY movimiento_cajas (id, usuario_id, tipo_comprobante_id, tipo_pago_id, moneda_id, cotizacion, cliente, caja_id, comprobante_id, producto_id, fecha, descripcion, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3086 (class 0 OID 0)
-- Dependencies: 342
-- Name: movimiento_cajas_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('movimiento_cajas_id_seq', 1, false);


--
-- TOC entry 2972 (class 0 OID 80967)
-- Dependencies: 325
-- Data for Name: notificacion_usuarios; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY notificacion_usuarios (id, leido, usuario_id, notificacion_id, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3087 (class 0 OID 0)
-- Dependencies: 324
-- Name: notificacion_usuarios_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('notificacion_usuarios_id_seq', 1, false);


--
-- TOC entry 2970 (class 0 OID 80955)
-- Dependencies: 323
-- Data for Name: notificaciones; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY notificaciones (id, titulo, texto, link_texto, link, fecha, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3088 (class 0 OID 0)
-- Dependencies: 322
-- Name: notificaciones_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('notificaciones_id_seq', 1, false);


--
-- TOC entry 3008 (class 0 OID 81287)
-- Dependencies: 361
-- Data for Name: pagos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY pagos (id, empleado_id, usuario_id, tipo_pago_empleado_id, nu_cantidad_tipo_pago, fecha, tx_descripcion, sucursal_id, total, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3089 (class 0 OID 0)
-- Dependencies: 360
-- Name: pagos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('pagos_id_seq', 1, false);


--
-- TOC entry 2943 (class 0 OID 80700)
-- Dependencies: 296
-- Data for Name: password_resets; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY password_resets (email, token, created_at) FROM stdin;
\.


--
-- TOC entry 3014 (class 0 OID 81359)
-- Dependencies: 367
-- Data for Name: permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY permissions (id, name, guard_name, created_at, updated_at) FROM stdin;
1	VerUsuario	web	2021-07-16 19:37:29	2021-07-16 19:37:29
2	RegistrarUsuario	web	2021-07-16 19:37:29	2021-07-16 19:37:29
3	EditarUsuario	web	2021-07-16 19:37:29	2021-07-16 19:37:29
4	EliminarUsuario	web	2021-07-16 19:37:29	2021-07-16 19:37:29
5	AsignarPermisos	web	2021-07-16 19:37:29	2021-07-16 19:37:29
6	VerPermisos	web	2021-07-16 19:37:29	2021-07-16 19:37:29
7	CrearPermisos	web	2021-07-16 19:37:29	2021-07-16 19:37:29
8	EditarPermisos	web	2021-07-16 19:37:29	2021-07-16 19:37:29
9	EliminarPermisos	web	2021-07-16 19:37:29	2021-07-16 19:37:29
10	VerLogins	web	2021-07-16 19:37:29	2021-07-16 19:37:29
11	VerLogSistema	web	2021-07-16 19:37:29	2021-07-16 19:37:29
12	VerRole	web	2021-07-16 19:37:29	2021-07-16 19:37:29
13	RegistrarRole	web	2021-07-16 19:37:29	2021-07-16 19:37:29
14	EditarRole	web	2021-07-16 19:37:29	2021-07-16 19:37:29
15	EliminarRole	web	2021-07-16 19:37:29	2021-07-16 19:37:29
16	VerProducto	web	2021-07-16 19:37:29	2021-07-16 19:37:29
17	RegistraProducto	web	2021-07-16 19:37:29	2021-07-16 19:37:29
18	EditaProducto	web	2021-07-16 19:37:29	2021-07-16 19:37:29
19	EliminaProducto	web	2021-07-16 19:37:29	2021-07-16 19:37:29
20	VerCliente	web	2021-07-16 19:37:29	2021-07-16 19:37:29
21	RegistrarCliente	web	2021-07-16 19:37:29	2021-07-16 19:37:29
22	EditaCliente	web	2021-07-16 19:37:29	2021-07-16 19:37:29
23	EliminaCliente	web	2021-07-16 19:37:29	2021-07-16 19:37:29
24	VerProveedor	web	2021-07-16 19:37:29	2021-07-16 19:37:29
25	RegistrarProveedor	web	2021-07-16 19:37:29	2021-07-16 19:37:29
26	EditaProveedor	web	2021-07-16 19:37:29	2021-07-16 19:37:29
27	EliminaProveedor	web	2021-07-16 19:37:29	2021-07-16 19:37:29
28	VerEmpleados	web	2021-07-16 19:37:29	2021-07-16 19:37:29
29	RegistrarEmpleados	web	2021-07-16 19:37:29	2021-07-16 19:37:29
30	EditaEmpleados	web	2021-07-16 19:37:29	2021-07-16 19:37:29
31	EliminarEmpleados	web	2021-07-16 19:37:29	2021-07-16 19:37:29
32	AperturarCaja	web	2021-07-16 19:37:29	2021-07-16 19:37:29
33	CerrarCaja	web	2021-07-16 19:37:29	2021-07-16 19:37:29
34	VerVentas	web	2021-07-16 19:37:29	2021-07-16 19:37:29
35	RegistrarVentas	web	2021-07-16 19:37:29	2021-07-16 19:37:29
36	EditaVentas	web	2021-07-16 19:37:29	2021-07-16 19:37:29
37	EliminarVentas	web	2021-07-16 19:37:29	2021-07-16 19:37:29
38	VerGastos	web	2021-07-16 19:37:29	2021-07-16 19:37:29
39	RegistrarGastos	web	2021-07-16 19:37:30	2021-07-16 19:37:30
40	EditaGastos	web	2021-07-16 19:37:30	2021-07-16 19:37:30
41	EliminarGastos	web	2021-07-16 19:37:30	2021-07-16 19:37:30
42	VerGanancias	web	2021-07-16 19:37:30	2021-07-16 19:37:30
43	VerSucursales	web	2021-07-16 19:37:30	2021-07-16 19:37:30
44	RegistrarSucursales	web	2021-07-16 19:37:30	2021-07-16 19:37:30
45	EditaSucursales	web	2021-07-16 19:37:30	2021-07-16 19:37:30
46	EliminarSucursales	web	2021-07-16 19:37:30	2021-07-16 19:37:30
\.


--
-- TOC entry 3090 (class 0 OID 0)
-- Dependencies: 366
-- Name: permissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('permissions_id_seq', 46, true);


--
-- TOC entry 2973 (class 0 OID 80990)
-- Dependencies: 326
-- Data for Name: preferencias; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY preferencias (usuario_id, estilo, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2966 (class 0 OID 80922)
-- Dependencies: 319
-- Data for Name: producto_precio; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY producto_precio (id, producto_id, usuario_id, fecha, precio) FROM stdin;
\.


--
-- TOC entry 3091 (class 0 OID 0)
-- Dependencies: 318
-- Name: producto_precio_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('producto_precio_id_seq', 1, false);


--
-- TOC entry 2958 (class 0 OID 80782)
-- Dependencies: 311
-- Data for Name: productos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY productos (id, codigo, codigo_de_barras, marca_producto, familiaproducto_id, tasa_iva_id, stock, nombre, descripcion, precio, precio_compra, stock_minimo_valor, stock_minimo_notificar, sucursal_id, producto_garantia, producto_tiempo_garantia, deleted_at, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3092 (class 0 OID 0)
-- Dependencies: 310
-- Name: productos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('productos_id_seq', 1, false);


--
-- TOC entry 2968 (class 0 OID 80941)
-- Dependencies: 321
-- Data for Name: proveedores; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY proveedores (id, nombre, razon_social, rut, mail, direccion, telefono, web, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3093 (class 0 OID 0)
-- Dependencies: 320
-- Name: proveedores_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('proveedores_id_seq', 1, false);


--
-- TOC entry 2978 (class 0 OID 81045)
-- Dependencies: 331
-- Data for Name: recibo_facturas; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY recibo_facturas (factura_id, recibo_id, deuda_inicial, deuda_final, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 2977 (class 0 OID 81020)
-- Dependencies: 330
-- Data for Name: recibos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY recibos (id, usuario_id, moneda_id, cotizacion, concepto, lugar, monto, cliente_id, fecha, created_at, updated_at) FROM stdin;
\.


--
-- TOC entry 3094 (class 0 OID 0)
-- Dependencies: 329
-- Name: recibos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('recibos_id_seq', 1, false);


--
-- TOC entry 3019 (class 0 OID 81411)
-- Dependencies: 372
-- Data for Name: role_has_permissions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY role_has_permissions (permission_id, role_id) FROM stdin;
1	1
2	1
3	1
4	1
5	1
6	1
7	1
8	1
9	1
10	1
11	1
12	1
13	1
14	1
15	1
16	1
17	1
18	1
19	1
20	1
21	1
22	1
23	1
24	1
25	1
26	1
27	1
28	1
29	1
30	1
31	1
32	1
33	1
34	1
35	1
36	1
37	1
38	1
39	1
40	1
41	1
42	1
43	1
44	1
45	1
46	1
16	2
17	2
18	2
19	2
20	2
21	2
22	2
23	2
24	2
25	2
26	2
27	2
28	2
29	2
30	2
31	2
32	2
33	2
34	2
35	2
36	2
37	2
38	2
39	2
40	2
41	2
42	2
43	2
44	2
45	2
46	2
16	3
20	3
21	3
22	3
23	3
24	3
25	3
26	3
27	3
32	3
34	3
35	3
36	3
37	3
\.


--
-- TOC entry 3016 (class 0 OID 81372)
-- Dependencies: 369
-- Data for Name: roles; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY roles (id, name, guard_name, created_at, updated_at) FROM stdin;
1	Super Administrador	web	2021-07-16 19:37:30	2021-07-16 19:37:30
2	Gerente	web	2021-07-16 19:37:30	2021-07-16 19:37:30
3	Vendedor	web	2021-07-16 19:37:30	2021-07-16 19:37:30
\.


--
-- TOC entry 3095 (class 0 OID 0)
-- Dependencies: 368
-- Name: roles_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('roles_id_seq', 3, true);


--
-- TOC entry 2936 (class 0 OID 80658)
-- Dependencies: 289
-- Data for Name: sucursales; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY sucursales (id, nombre, telefono, direccion, rif, status, created_at, updated_at) FROM stdin;
1	Caracas	0424123456	La hoyada	v-2522239	1	\N	\N
\.


--
-- TOC entry 3096 (class 0 OID 0)
-- Dependencies: 288
-- Name: sucursales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('sucursales_id_seq', 1, true);


--
-- TOC entry 2947 (class 0 OID 80717)
-- Dependencies: 300
-- Data for Name: tasas_iva; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tasas_iva (id, nombre, tasa, created_at, updated_at) FROM stdin;
1	Básica	22	\N	\N
2	Mínimo	10	\N	\N
3	Exento	0	\N	\N
\.


--
-- TOC entry 3097 (class 0 OID 0)
-- Dependencies: 299
-- Name: tasas_iva_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tasas_iva_id_seq', 3, true);


--
-- TOC entry 2949 (class 0 OID 80728)
-- Dependencies: 302
-- Data for Name: tipo_comprobantes; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_comprobantes (id, created_at, updated_at, nombre) FROM stdin;
1	\N	\N	Venta al contado
2	\N	\N	Devolución al contado
3	\N	\N	Factura de venta crédito
\.


--
-- TOC entry 3098 (class 0 OID 0)
-- Dependencies: 301
-- Name: tipo_comprobantes_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_comprobantes_id_seq', 3, true);


--
-- TOC entry 2945 (class 0 OID 80709)
-- Dependencies: 298
-- Data for Name: tipo_documento; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_documento (id, tipo_documento) FROM stdin;
1	V
2	E
3	J
4	G
\.


--
-- TOC entry 3099 (class 0 OID 0)
-- Dependencies: 297
-- Name: tipo_documento_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_documento_id_seq', 4, true);


--
-- TOC entry 3002 (class 0 OID 81234)
-- Dependencies: 355
-- Data for Name: tipo_gastos; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_gastos (id, nombre, created_at, updated_at) FROM stdin;
1	Empleados	\N	\N
2	Oficina	\N	\N
3	Extras	\N	\N
\.


--
-- TOC entry 3100 (class 0 OID 0)
-- Dependencies: 354
-- Name: tipo_gastos_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_gastos_id_seq', 3, true);


--
-- TOC entry 2938 (class 0 OID 80669)
-- Dependencies: 291
-- Data for Name: tipo_pago; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_pago (id, nb_tipo_pago, deleted_at, created_at, updated_at) FROM stdin;
1	Efectivo	\N	\N	\N
2	Punto de venta	\N	\N	\N
3	Dólares	\N	\N	\N
4	Transferencia	\N	\N	\N
5	Pago Movil	\N	\N	\N
\.


--
-- TOC entry 2980 (class 0 OID 81060)
-- Dependencies: 333
-- Data for Name: tipo_pago_empleado; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY tipo_pago_empleado (id_tipo_pago_empleado, nb_tipo_pago_empleado, deleted_at, created_at, updated_at) FROM stdin;
1	Bono	\N	\N	\N
2	Sueldo	\N	\N	\N
3	Deduccion	\N	\N	\N
4	Comisión	\N	\N	\N
\.


--
-- TOC entry 3101 (class 0 OID 0)
-- Dependencies: 332
-- Name: tipo_pago_empleado_id_tipo_pago_empleado_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_pago_empleado_id_tipo_pago_empleado_seq', 4, true);


--
-- TOC entry 3102 (class 0 OID 0)
-- Dependencies: 290
-- Name: tipo_pago_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('tipo_pago_id_seq', 5, true);


--
-- TOC entry 2942 (class 0 OID 80688)
-- Dependencies: 295
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY users (id, name, username, lastname, genero, email, email_verified_at, password, status, remember_token, created_at, updated_at, deleted_at) FROM stdin;
1	Theizer	laradmin	Gonzalez	M	admin@mail.com	\N	$2y$10$hui60Ng5j54c7m6N1zXDcOKWntrcWk5HaN4gVwpomGLj26gtYSP2e	1	\N	2021-07-16 19:37:30	2021-07-16 19:37:30	\N
2	Dixon	dnino	Niño	F	usuario@mail.com	\N	$2y$10$9/401NaF172p7Y5a1neqbuicuWl9WAUGXyA8Li36d.QrmQNPF3Y7q	1	\N	2021-07-16 19:37:30	2021-07-16 19:37:30	\N
3	Dixyelis	dixyelis	Niño	F	vendedor@mail.com	\N	$2y$10$lJeBp07j/fAD2dVvBacbuuZ/vm10rM6e/i1PYD5hxRfViF5u.H246	1	\N	2021-07-16 19:37:30	2021-07-16 19:37:30	\N
\.


--
-- TOC entry 3103 (class 0 OID 0)
-- Dependencies: 294
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('users_id_seq', 3, true);


--
-- TOC entry 2721 (class 2606 OID 81093)
-- Name: apertura_caja_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY apertura_caja
    ADD CONSTRAINT apertura_caja_pkey PRIMARY KEY (id_apertura);


--
-- TOC entry 2742 (class 2606 OID 81253)
-- Name: asignacion_trabajos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_trabajos
    ADD CONSTRAINT asignacion_trabajos_pkey PRIMARY KEY (id);


--
-- TOC entry 2655 (class 2606 OID 80685)
-- Name: cajas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cajas
    ADD CONSTRAINT cajas_pkey PRIMARY KEY (id);


--
-- TOC entry 2734 (class 2606 OID 81189)
-- Name: cargos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cargos
    ADD CONSTRAINT cargos_pkey PRIMARY KEY (id);


--
-- TOC entry 2724 (class 2606 OID 81107)
-- Name: cierre_caja_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cierre_caja
    ADD CONSTRAINT cierre_caja_pkey PRIMARY KEY (id_cierre);


--
-- TOC entry 2687 (class 2606 OID 80832)
-- Name: clientes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clientes
    ADD CONSTRAINT clientes_pkey PRIMARY KEY (id);


--
-- TOC entry 2690 (class 2606 OID 80863)
-- Name: comprobantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comprobantes
    ADD CONSTRAINT comprobantes_pkey PRIMARY KEY (id);


--
-- TOC entry 2668 (class 2606 OID 80744)
-- Name: descuentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY descuentos
    ADD CONSTRAINT descuentos_pkey PRIMARY KEY (id);


--
-- TOC entry 2738 (class 2606 OID 81211)
-- Name: empleados_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleados
    ADD CONSTRAINT empleados_pkey PRIMARY KEY (id);


--
-- TOC entry 2710 (class 2606 OID 81010)
-- Name: facturas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY facturas
    ADD CONSTRAINT facturas_pkey PRIMARY KEY (id);


--
-- TOC entry 2716 (class 2606 OID 81080)
-- Name: failed_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY failed_jobs
    ADD CONSTRAINT failed_jobs_pkey PRIMARY KEY (id);


--
-- TOC entry 2718 (class 2606 OID 81082)
-- Name: failed_jobs_uuid_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY failed_jobs
    ADD CONSTRAINT failed_jobs_uuid_unique UNIQUE (uuid);


--
-- TOC entry 2674 (class 2606 OID 80779)
-- Name: familia_productos_nombre_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY familia_productos
    ADD CONSTRAINT familia_productos_nombre_unique UNIQUE (nombre);


--
-- TOC entry 2676 (class 2606 OID 80777)
-- Name: familia_productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY familia_productos
    ADD CONSTRAINT familia_productos_pkey PRIMARY KEY (id);


--
-- TOC entry 2670 (class 2606 OID 80755)
-- Name: franja_descuentos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY franja_descuentos
    ADD CONSTRAINT franja_descuentos_pkey PRIMARY KEY (descuento_id, monto_minimo);


--
-- TOC entry 2732 (class 2606 OID 81173)
-- Name: ganancias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ganancias
    ADD CONSTRAINT ganancias_pkey PRIMARY KEY (id);


--
-- TOC entry 2748 (class 2606 OID 81329)
-- Name: gastos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gastos
    ADD CONSTRAINT gastos_pkey PRIMARY KEY (id);


--
-- TOC entry 2726 (class 2606 OID 81124)
-- Name: historial_cajas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historial_cajas
    ADD CONSTRAINT historial_cajas_pkey PRIMARY KEY (id);


--
-- TOC entry 2693 (class 2606 OID 80898)
-- Name: linea_productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea_productos
    ADD CONSTRAINT linea_productos_pkey PRIMARY KEY (id);


--
-- TOC entry 2744 (class 2606 OID 81274)
-- Name: linea_trabajadors_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea_trabajadors
    ADD CONSTRAINT linea_trabajadors_pkey PRIMARY KEY (id);


--
-- TOC entry 2730 (class 2606 OID 81157)
-- Name: log_sistemas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY log_sistemas
    ADD CONSTRAINT log_sistemas_pkey PRIMARY KEY (id);


--
-- TOC entry 2750 (class 2606 OID 81351)
-- Name: logins_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY logins
    ADD CONSTRAINT logins_pkey PRIMARY KEY (id);


--
-- TOC entry 2649 (class 2606 OID 80655)
-- Name: migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY migrations
    ADD CONSTRAINT migrations_pkey PRIMARY KEY (id);


--
-- TOC entry 2761 (class 2606 OID 81396)
-- Name: model_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY model_has_permissions
    ADD CONSTRAINT model_has_permissions_pkey PRIMARY KEY (permission_id, model_id, model_type);


--
-- TOC entry 2764 (class 2606 OID 81410)
-- Name: model_has_roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY model_has_roles
    ADD CONSTRAINT model_has_roles_pkey PRIMARY KEY (role_id, model_id, model_type);


--
-- TOC entry 2736 (class 2606 OID 81200)
-- Name: modo_pagos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY modo_pagos
    ADD CONSTRAINT modo_pagos_pkey PRIMARY KEY (id);


--
-- TOC entry 2672 (class 2606 OID 80766)
-- Name: monedas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY monedas
    ADD CONSTRAINT monedas_pkey PRIMARY KEY (id);


--
-- TOC entry 2728 (class 2606 OID 81146)
-- Name: movimiento_cajas_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY movimiento_cajas
    ADD CONSTRAINT movimiento_cajas_pkey PRIMARY KEY (id);


--
-- TOC entry 2704 (class 2606 OID 80973)
-- Name: notificacion_usuarios_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY notificacion_usuarios
    ADD CONSTRAINT notificacion_usuarios_pkey PRIMARY KEY (id);


--
-- TOC entry 2702 (class 2606 OID 80964)
-- Name: notificaciones_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY notificaciones
    ADD CONSTRAINT notificaciones_pkey PRIMARY KEY (id);


--
-- TOC entry 2746 (class 2606 OID 81297)
-- Name: pagos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pagos
    ADD CONSTRAINT pagos_pkey PRIMARY KEY (id);


--
-- TOC entry 2752 (class 2606 OID 81369)
-- Name: permissions_name_guard_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permissions
    ADD CONSTRAINT permissions_name_guard_name_unique UNIQUE (name, guard_name);


--
-- TOC entry 2754 (class 2606 OID 81367)
-- Name: permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY permissions
    ADD CONSTRAINT permissions_pkey PRIMARY KEY (id);


--
-- TOC entry 2706 (class 2606 OID 81002)
-- Name: preferencias_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY preferencias
    ADD CONSTRAINT preferencias_pkey PRIMARY KEY (usuario_id);


--
-- TOC entry 2695 (class 2606 OID 80928)
-- Name: producto_precio_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto_precio
    ADD CONSTRAINT producto_precio_pkey PRIMARY KEY (id);


--
-- TOC entry 2681 (class 2606 OID 80820)
-- Name: productos_codigo_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productos
    ADD CONSTRAINT productos_codigo_unique UNIQUE (codigo);


--
-- TOC entry 2683 (class 2606 OID 80800)
-- Name: productos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productos
    ADD CONSTRAINT productos_pkey PRIMARY KEY (id);


--
-- TOC entry 2698 (class 2606 OID 80949)
-- Name: proveedores_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proveedores
    ADD CONSTRAINT proveedores_pkey PRIMARY KEY (id);


--
-- TOC entry 2700 (class 2606 OID 80952)
-- Name: proveedores_rut_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY proveedores
    ADD CONSTRAINT proveedores_rut_unique UNIQUE (rut);


--
-- TOC entry 2712 (class 2606 OID 81029)
-- Name: recibos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY recibos
    ADD CONSTRAINT recibos_pkey PRIMARY KEY (id);


--
-- TOC entry 2766 (class 2606 OID 81425)
-- Name: role_has_permissions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY role_has_permissions
    ADD CONSTRAINT role_has_permissions_pkey PRIMARY KEY (permission_id, role_id);


--
-- TOC entry 2756 (class 2606 OID 81382)
-- Name: roles_name_guard_name_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_name_guard_name_unique UNIQUE (name, guard_name);


--
-- TOC entry 2758 (class 2606 OID 81380)
-- Name: roles_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY roles
    ADD CONSTRAINT roles_pkey PRIMARY KEY (id);


--
-- TOC entry 2651 (class 2606 OID 80666)
-- Name: sucursales_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY sucursales
    ADD CONSTRAINT sucursales_pkey PRIMARY KEY (id);


--
-- TOC entry 2664 (class 2606 OID 80725)
-- Name: tasas_iva_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tasas_iva
    ADD CONSTRAINT tasas_iva_pkey PRIMARY KEY (id);


--
-- TOC entry 2666 (class 2606 OID 80736)
-- Name: tipo_comprobantes_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_comprobantes
    ADD CONSTRAINT tipo_comprobantes_pkey PRIMARY KEY (id);


--
-- TOC entry 2662 (class 2606 OID 80714)
-- Name: tipo_documento_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_documento
    ADD CONSTRAINT tipo_documento_pkey PRIMARY KEY (id);


--
-- TOC entry 2740 (class 2606 OID 81242)
-- Name: tipo_gastos_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_gastos
    ADD CONSTRAINT tipo_gastos_pkey PRIMARY KEY (id);


--
-- TOC entry 2714 (class 2606 OID 81068)
-- Name: tipo_pago_empleado_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_pago_empleado
    ADD CONSTRAINT tipo_pago_empleado_pkey PRIMARY KEY (id_tipo_pago_empleado);


--
-- TOC entry 2653 (class 2606 OID 80677)
-- Name: tipo_pago_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY tipo_pago
    ADD CONSTRAINT tipo_pago_pkey PRIMARY KEY (id);


--
-- TOC entry 2657 (class 2606 OID 80699)
-- Name: users_email_unique; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_email_unique UNIQUE (email);


--
-- TOC entry 2659 (class 2606 OID 80697)
-- Name: users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);


--
-- TOC entry 2719 (class 1259 OID 81099)
-- Name: apertura_caja_fecha_emision_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX apertura_caja_fecha_emision_index ON public.apertura_caja USING btree (fecha_emision);


--
-- TOC entry 2722 (class 1259 OID 81113)
-- Name: cierre_caja_fecha_cierre_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX cierre_caja_fecha_cierre_index ON public.cierre_caja USING btree (fecha_cierre);


--
-- TOC entry 2684 (class 1259 OID 80989)
-- Name: clientes_documento_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX clientes_documento_index ON public.clientes USING btree (documento);


--
-- TOC entry 2685 (class 1259 OID 80848)
-- Name: clientes_mail_rut_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX clientes_mail_rut_index ON public.clientes USING btree (mail, rut);


--
-- TOC entry 2688 (class 1259 OID 80884)
-- Name: comprobantes_fecha_emision_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX comprobantes_fecha_emision_index ON public.comprobantes USING btree (fecha_emision);


--
-- TOC entry 2707 (class 1259 OID 81017)
-- Name: facturas_comprobante_id_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX facturas_comprobante_id_index ON public.facturas USING btree (comprobante_id);


--
-- TOC entry 2708 (class 1259 OID 81016)
-- Name: facturas_fecha_vencimiento_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX facturas_fecha_vencimiento_index ON public.facturas USING btree (fecha_vencimiento);


--
-- TOC entry 2691 (class 1259 OID 80919)
-- Name: linea_productos_fecha_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX linea_productos_fecha_index ON public.linea_productos USING btree (fecha);


--
-- TOC entry 2759 (class 1259 OID 81389)
-- Name: model_has_permissions_model_id_model_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX model_has_permissions_model_id_model_type_index ON public.model_has_permissions USING btree (model_id, model_type);


--
-- TOC entry 2762 (class 1259 OID 81403)
-- Name: model_has_roles_model_id_model_type_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX model_has_roles_model_id_model_type_index ON public.model_has_roles USING btree (model_id, model_type);


--
-- TOC entry 2660 (class 1259 OID 80706)
-- Name: password_resets_email_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX password_resets_email_index ON public.password_resets USING btree (email);


--
-- TOC entry 2677 (class 1259 OID 80818)
-- Name: productos_codigo_codigo_de_barras_nombre_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX productos_codigo_codigo_de_barras_nombre_index ON public.productos USING btree (codigo, codigo_de_barras, nombre);


--
-- TOC entry 2678 (class 1259 OID 80802)
-- Name: productos_codigo_de_barras_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX productos_codigo_de_barras_index ON public.productos USING btree (codigo_de_barras);


--
-- TOC entry 2679 (class 1259 OID 80801)
-- Name: productos_codigo_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX productos_codigo_index ON public.productos USING btree (codigo);


--
-- TOC entry 2696 (class 1259 OID 80950)
-- Name: proveedores_nombre_rut_index; Type: INDEX; Schema: public; Owner: postgres
--

CREATE INDEX proveedores_nombre_rut_index ON public.proveedores USING btree (nombre, rut);


--
-- TOC entry 2794 (class 2606 OID 81094)
-- Name: apertura_caja_usuario_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY apertura_caja
    ADD CONSTRAINT apertura_caja_usuario_id_foreign FOREIGN KEY (usuario_id) REFERENCES users(id);


--
-- TOC entry 2805 (class 2606 OID 81254)
-- Name: asignacion_trabajos_empleado_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_trabajos
    ADD CONSTRAINT asignacion_trabajos_empleado_id_foreign FOREIGN KEY (empleado_id) REFERENCES empleados(id);


--
-- TOC entry 2804 (class 2606 OID 81259)
-- Name: asignacion_trabajos_usuario_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY asignacion_trabajos
    ADD CONSTRAINT asignacion_trabajos_usuario_id_foreign FOREIGN KEY (usuario_id) REFERENCES users(id);


--
-- TOC entry 2795 (class 2606 OID 81108)
-- Name: cierre_caja_usuario_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY cierre_caja
    ADD CONSTRAINT cierre_caja_usuario_id_foreign FOREIGN KEY (usuario_id) REFERENCES users(id);


--
-- TOC entry 2771 (class 2606 OID 80984)
-- Name: cliente_tipo_documento; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clientes
    ADD CONSTRAINT cliente_tipo_documento FOREIGN KEY (tipo_documento) REFERENCES tipo_documento(id);


--
-- TOC entry 2774 (class 2606 OID 80833)
-- Name: clientes_descuento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clientes
    ADD CONSTRAINT clientes_descuento_id_foreign FOREIGN KEY (descuento_id) REFERENCES descuentos(id);


--
-- TOC entry 2772 (class 2606 OID 80843)
-- Name: clientes_sucursal_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clientes
    ADD CONSTRAINT clientes_sucursal_id_foreign FOREIGN KEY (sucursal_id) REFERENCES sucursales(id);


--
-- TOC entry 2773 (class 2606 OID 80838)
-- Name: clientes_tipo_documento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY clientes
    ADD CONSTRAINT clientes_tipo_documento_id_foreign FOREIGN KEY (tipo_documento_id) REFERENCES tipo_documento(id);


--
-- TOC entry 2776 (class 2606 OID 80874)
-- Name: comprobantes_cliente_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comprobantes
    ADD CONSTRAINT comprobantes_cliente_id_foreign FOREIGN KEY (cliente_id) REFERENCES clientes(id);


--
-- TOC entry 2777 (class 2606 OID 80869)
-- Name: comprobantes_moneda_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comprobantes
    ADD CONSTRAINT comprobantes_moneda_id_foreign FOREIGN KEY (moneda_id) REFERENCES monedas(id);


--
-- TOC entry 2775 (class 2606 OID 80879)
-- Name: comprobantes_sucursal_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comprobantes
    ADD CONSTRAINT comprobantes_sucursal_id_foreign FOREIGN KEY (sucursal_id) REFERENCES sucursales(id);


--
-- TOC entry 2778 (class 2606 OID 80864)
-- Name: comprobantes_tipo_comprobante_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY comprobantes
    ADD CONSTRAINT comprobantes_tipo_comprobante_id_foreign FOREIGN KEY (tipo_comprobante_id) REFERENCES tipo_comprobantes(id);


--
-- TOC entry 2802 (class 2606 OID 81217)
-- Name: empleados_cargo_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleados
    ADD CONSTRAINT empleados_cargo_id_foreign FOREIGN KEY (cargo_id) REFERENCES cargos(id);


--
-- TOC entry 2801 (class 2606 OID 81222)
-- Name: empleados_modo_pagos_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleados
    ADD CONSTRAINT empleados_modo_pagos_id_foreign FOREIGN KEY (modo_pagos_id) REFERENCES modo_pagos(id);


--
-- TOC entry 2800 (class 2606 OID 81227)
-- Name: empleados_sucursal_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleados
    ADD CONSTRAINT empleados_sucursal_id_foreign FOREIGN KEY (sucursal_id) REFERENCES sucursales(id);


--
-- TOC entry 2803 (class 2606 OID 81212)
-- Name: empleados_usuario_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY empleados
    ADD CONSTRAINT empleados_usuario_id_foreign FOREIGN KEY (usuario_id) REFERENCES users(id);


--
-- TOC entry 2788 (class 2606 OID 81011)
-- Name: facturas_comprobante_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY facturas
    ADD CONSTRAINT facturas_comprobante_id_foreign FOREIGN KEY (comprobante_id) REFERENCES comprobantes(id);


--
-- TOC entry 2767 (class 2606 OID 80749)
-- Name: franja_descuentos_descuento_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY franja_descuentos
    ADD CONSTRAINT franja_descuentos_descuento_id_foreign FOREIGN KEY (descuento_id) REFERENCES descuentos(id);


--
-- TOC entry 2799 (class 2606 OID 81174)
-- Name: ganancias_producto_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY ganancias
    ADD CONSTRAINT ganancias_producto_id_foreign FOREIGN KEY (producto_id) REFERENCES productos(id);


--
-- TOC entry 2812 (class 2606 OID 81335)
-- Name: gastos_sucursal_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gastos
    ADD CONSTRAINT gastos_sucursal_id_foreign FOREIGN KEY (sucursal_id) REFERENCES sucursales(id);


--
-- TOC entry 2813 (class 2606 OID 81330)
-- Name: gastos_tipo_gasto_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY gastos
    ADD CONSTRAINT gastos_tipo_gasto_id_foreign FOREIGN KEY (tipo_gasto_id) REFERENCES tipo_gastos(id);


--
-- TOC entry 2796 (class 2606 OID 81130)
-- Name: historial_cajas_caja_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historial_cajas
    ADD CONSTRAINT historial_cajas_caja_id_foreign FOREIGN KEY (caja_id) REFERENCES cajas(id);


--
-- TOC entry 2797 (class 2606 OID 81125)
-- Name: historial_cajas_usuario_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY historial_cajas
    ADD CONSTRAINT historial_cajas_usuario_id_foreign FOREIGN KEY (usuario_id) REFERENCES users(id);


--
-- TOC entry 2780 (class 2606 OID 80909)
-- Name: linea_productos_comprobante_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea_productos
    ADD CONSTRAINT linea_productos_comprobante_id_foreign FOREIGN KEY (comprobante_id) REFERENCES comprobantes(id);


--
-- TOC entry 2782 (class 2606 OID 80899)
-- Name: linea_productos_producto_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea_productos
    ADD CONSTRAINT linea_productos_producto_id_foreign FOREIGN KEY (producto_id) REFERENCES productos(id);


--
-- TOC entry 2779 (class 2606 OID 80914)
-- Name: linea_productos_tasa_iva_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea_productos
    ADD CONSTRAINT linea_productos_tasa_iva_id_foreign FOREIGN KEY (tasa_iva_id) REFERENCES tasas_iva(id);


--
-- TOC entry 2781 (class 2606 OID 80904)
-- Name: linea_productos_usuario_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea_productos
    ADD CONSTRAINT linea_productos_usuario_id_foreign FOREIGN KEY (usuario_id) REFERENCES users(id);


--
-- TOC entry 2807 (class 2606 OID 81275)
-- Name: linea_trabajadors_empleado_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea_trabajadors
    ADD CONSTRAINT linea_trabajadors_empleado_id_foreign FOREIGN KEY (empleado_id) REFERENCES empleados(id);


--
-- TOC entry 2806 (class 2606 OID 81280)
-- Name: linea_trabajadors_usuario_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY linea_trabajadors
    ADD CONSTRAINT linea_trabajadors_usuario_id_foreign FOREIGN KEY (usuario_id) REFERENCES users(id);


--
-- TOC entry 2798 (class 2606 OID 81158)
-- Name: log_sistemas_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY log_sistemas
    ADD CONSTRAINT log_sistemas_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id);


--
-- TOC entry 2814 (class 2606 OID 81352)
-- Name: logins_user_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY logins
    ADD CONSTRAINT logins_user_id_foreign FOREIGN KEY (user_id) REFERENCES users(id);


--
-- TOC entry 2815 (class 2606 OID 81390)
-- Name: model_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY model_has_permissions
    ADD CONSTRAINT model_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES permissions(id) ON DELETE CASCADE;


--
-- TOC entry 2816 (class 2606 OID 81404)
-- Name: model_has_roles_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY model_has_roles
    ADD CONSTRAINT model_has_roles_role_id_foreign FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE;


--
-- TOC entry 2785 (class 2606 OID 80979)
-- Name: not_usr_not_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY notificacion_usuarios
    ADD CONSTRAINT not_usr_not_fk FOREIGN KEY (notificacion_id) REFERENCES notificaciones(id);


--
-- TOC entry 2786 (class 2606 OID 80974)
-- Name: not_usr_usr_fk; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY notificacion_usuarios
    ADD CONSTRAINT not_usr_usr_fk FOREIGN KEY (usuario_id) REFERENCES users(id);


--
-- TOC entry 2811 (class 2606 OID 81298)
-- Name: pagos_empleado_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pagos
    ADD CONSTRAINT pagos_empleado_id_foreign FOREIGN KEY (empleado_id) REFERENCES empleados(id);


--
-- TOC entry 2808 (class 2606 OID 81313)
-- Name: pagos_sucursal_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pagos
    ADD CONSTRAINT pagos_sucursal_id_foreign FOREIGN KEY (sucursal_id) REFERENCES sucursales(id);


--
-- TOC entry 2809 (class 2606 OID 81308)
-- Name: pagos_tipo_pago_empleado_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pagos
    ADD CONSTRAINT pagos_tipo_pago_empleado_id_foreign FOREIGN KEY (tipo_pago_empleado_id) REFERENCES tipo_pago_empleado(id_tipo_pago_empleado);


--
-- TOC entry 2810 (class 2606 OID 81303)
-- Name: pagos_usuario_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY pagos
    ADD CONSTRAINT pagos_usuario_id_foreign FOREIGN KEY (usuario_id) REFERENCES users(id);


--
-- TOC entry 2787 (class 2606 OID 80996)
-- Name: preferencias_usuario_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY preferencias
    ADD CONSTRAINT preferencias_usuario_id_foreign FOREIGN KEY (usuario_id) REFERENCES users(id);


--
-- TOC entry 2784 (class 2606 OID 80929)
-- Name: producto_precio_producto_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto_precio
    ADD CONSTRAINT producto_precio_producto_id_foreign FOREIGN KEY (producto_id) REFERENCES productos(id);


--
-- TOC entry 2783 (class 2606 OID 80934)
-- Name: producto_precio_usuario_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY producto_precio
    ADD CONSTRAINT producto_precio_usuario_id_foreign FOREIGN KEY (usuario_id) REFERENCES users(id);


--
-- TOC entry 2770 (class 2606 OID 80803)
-- Name: productos_familiaproducto_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productos
    ADD CONSTRAINT productos_familiaproducto_id_foreign FOREIGN KEY (familiaproducto_id) REFERENCES familia_productos(id);


--
-- TOC entry 2768 (class 2606 OID 80813)
-- Name: productos_sucursal_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productos
    ADD CONSTRAINT productos_sucursal_id_foreign FOREIGN KEY (sucursal_id) REFERENCES sucursales(id);


--
-- TOC entry 2769 (class 2606 OID 80808)
-- Name: productos_tasa_iva_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY productos
    ADD CONSTRAINT productos_tasa_iva_id_foreign FOREIGN KEY (tasa_iva_id) REFERENCES tasas_iva(id);


--
-- TOC entry 2793 (class 2606 OID 81048)
-- Name: recibo_facturas_factura_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY recibo_facturas
    ADD CONSTRAINT recibo_facturas_factura_id_foreign FOREIGN KEY (factura_id) REFERENCES facturas(id);


--
-- TOC entry 2792 (class 2606 OID 81053)
-- Name: recibo_facturas_recibo_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY recibo_facturas
    ADD CONSTRAINT recibo_facturas_recibo_id_foreign FOREIGN KEY (recibo_id) REFERENCES recibos(id);


--
-- TOC entry 2789 (class 2606 OID 81040)
-- Name: recibos_cliente_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY recibos
    ADD CONSTRAINT recibos_cliente_id_foreign FOREIGN KEY (cliente_id) REFERENCES clientes(id);


--
-- TOC entry 2790 (class 2606 OID 81035)
-- Name: recibos_moneda_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY recibos
    ADD CONSTRAINT recibos_moneda_id_foreign FOREIGN KEY (moneda_id) REFERENCES monedas(id);


--
-- TOC entry 2791 (class 2606 OID 81030)
-- Name: recibos_usuario_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY recibos
    ADD CONSTRAINT recibos_usuario_id_foreign FOREIGN KEY (usuario_id) REFERENCES users(id);


--
-- TOC entry 2818 (class 2606 OID 81414)
-- Name: role_has_permissions_permission_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY role_has_permissions
    ADD CONSTRAINT role_has_permissions_permission_id_foreign FOREIGN KEY (permission_id) REFERENCES permissions(id) ON DELETE CASCADE;


--
-- TOC entry 2817 (class 2606 OID 81419)
-- Name: role_has_permissions_role_id_foreign; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY role_has_permissions
    ADD CONSTRAINT role_has_permissions_role_id_foreign FOREIGN KEY (role_id) REFERENCES roles(id) ON DELETE CASCADE;


-- Completed on 2021-07-16 19:47:43

--
-- PostgreSQL database dump complete
--

