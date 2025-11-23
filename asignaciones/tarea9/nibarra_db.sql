-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-11-2025 a las 06:20:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nibarra_db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chatbot_conversations`
--

CREATE TABLE `chatbot_conversations` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `usuario_nombre` varchar(150) DEFAULT NULL,
  `mensaje_usuario` text DEFAULT NULL,
  `respuesta_chatbot` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `chatbot_conversations`
--

INSERT INTO `chatbot_conversations` (`id`, `usuario_id`, `usuario_nombre`, `mensaje_usuario`, `respuesta_chatbot`, `created_at`) VALUES
(1, 1, 'Carlos López', 'horario', 'Nuestro horario de atención es Lunes a Viernes de 8:00 a 17:00.', '2025-11-09 22:08:30'),
(2, 1, 'Carlos López', 'hola', '¡Hola! Soy el asistente virtual de NIBARRA. ¿En qué puedo ayudarte?', '2025-11-09 22:08:34'),
(3, 1, 'Carlos López', 'quiero ver el horario', 'Nuestro horario de atención es Lunes a Viernes de 8:00 a 17:00.', '2025-11-09 22:08:43'),
(4, 1, 'Carlos López', 'quiero saber el mantenimiento', 'Tenemos mantenimiento preventivo, predictivo y correctivo. ¿Cuál deseas agendar?', '2025-11-09 22:08:58'),
(5, 1, 'Carlos López', 'preventivo', 'Tenemos mantenimiento preventivo, predictivo y correctivo. ¿Cuál deseas agendar?', '2025-11-09 22:09:07'),
(6, 1, 'Carlos López', 'ninguno', 'Lo siento, no entendí. ¿Puedes dar más detalles o escribir \"ayuda\" para opciones?', '2025-11-09 22:09:16'),
(7, 1, 'Carlos López', 'ayuda', 'Lo siento, no entendí. ¿Puedes dar más detalles o escribir \"ayuda\" para opciones?', '2025-11-09 22:09:20'),
(8, 3, 'Juan Perez', 'hola', '¡Hola! Soy el asistente virtual de NIBARRA. ¿En qué puedo ayudarte?', '2025-11-09 23:35:46'),
(9, 3, 'Juan Perez', 'mantenimiento', 'Tenemos mantenimiento preventivo, predictivo y correctivo. ¿Cuál deseas agendar?', '2025-11-09 23:35:51'),
(10, 3, 'Juan Perez', 'agendar', 'Para agendar, indícanos el equipo y la fecha preferida y te confirmamos disponibilidad.', '2025-11-09 23:35:54'),
(11, 3, 'Juan Perez', 'precio', 'Para cotizaciones por favor envíe marca y modelo. También puede solicitar una revisión técnica.', '2025-11-09 23:35:59'),
(12, 1, 'Carlos López', 'comandos', '📋 *Comandos disponibles:*\r\n- mantenimiento preventivo\r\n- mantenimiento correctivo\r\n- precios\r\n- tiempo de mantenimiento\r\n- contacto técnico\r\n- horario de atención\r\n- estado del equipo [ID]\r\n- garantía\r\n- salir', '2025-11-09 23:55:45'),
(13, 1, 'Carlos López', 'precios', 'Para cotizaciones por favor envíe marca y modelo. También puede solicitar una revisión técnica.', '2025-11-09 23:55:52'),
(14, 1, 'Carlos López', 'estado del equipo 7', '📋 El equipo con ID 7 está actualmente en proceso de mantenimiento preventivo.', '2025-11-09 23:56:05'),
(15, 1, 'Carlos López', 'estado del equipo 10', '📋 El equipo con ID 10 está actualmente en proceso de mantenimiento preventivo.', '2025-11-09 23:56:13'),
(16, 1, 'Carlos López', 'garantia', 'Lo siento, no entendí. ¿Puedes dar más detalles o escribir \"ayuda\" para opciones?', '2025-11-09 23:56:20'),
(17, 1, 'Carlos López', 'contacto técnico', '📞 Puedes comunicarte con soporte técnico en *soporte@nibarra.com* o al *+507 6000-0000*.', '2025-11-09 23:56:30'),
(18, 1, 'Carlos López', 'horario de atención', 'Nuestro horario de atención es Lunes a Viernes de 8:00 a 17:00.', '2025-11-09 23:56:39'),
(19, 1, 'Carlos López', 'garantía', '🧾 Todos nuestros mantenimientos incluyen garantía de *30 días* en el servicio realizado.', '2025-11-09 23:56:49'),
(20, 1, 'Carlos López', 'tiempo de mantenimiento', 'Tenemos mantenimiento preventivo, predictivo y correctivo. ¿Cuál deseas agendar?', '2025-11-09 23:57:03'),
(21, 1, 'Carlos López', 'preventivo', 'Tenemos mantenimiento preventivo, predictivo y correctivo. ¿Cuál deseas agendar?', '2025-11-09 23:57:11'),
(22, 1, 'Carlos López', 'salir', 'Lo siento, no entendí. ¿Puedes dar más detalles o escribir \"ayuda\" para opciones?', '2025-11-09 23:57:21'),
(23, 1, 'Carlos López', 'ayuda', '📋 *Comandos disponibles:*\r\n- mantenimiento preventivo\r\n- mantenimiento correctivo\r\n- precios\r\n- tiempo de mantenimiento\r\n- contacto técnico\r\n- horario de atención\r\n- estado del equipo [ID]\r\n- garantía\r\n- salir', '2025-11-09 23:57:26'),
(24, 1, 'Carlos López', 'comandos', '📋 *Comandos disponibles:*\r\n- mantenimiento preventivo\r\n- mantenimiento correctivo\r\n- precios\r\n- tiempo de mantenimiento\r\n- contacto técnico\r\n- horario de atención\r\n- estado del equipo [ID]\r\n- garantía\r\n- salir', '2025-11-10 05:09:39'),
(25, 1, 'Carlos López', 'horario', 'Nuestro horario de atención es Lunes a Viernes de 8:00 a 17:00.', '2025-11-10 05:10:16'),
(26, 1, 'Carlos López', 'mantenimiento', 'Tenemos mantenimiento preventivo, predictivo y correctivo. ¿Cuál deseas agendar?', '2025-11-10 05:10:22'),
(27, 1, 'Carlos López', 'hola', '¡Hola! Soy el asistente virtual de NIBARRA. ¿En qué puedo ayudarte?', '2025-11-10 05:10:40'),
(28, 1, 'Carlos López', 'precio', 'Para cotizaciones por favor envíe marca y modelo. También puede solicitar una revisión técnica.', '2025-11-10 05:10:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chatbot_responses`
--

CREATE TABLE `chatbot_responses` (
  `id` int(11) NOT NULL,
  `patrones` text NOT NULL,
  `respuesta` text NOT NULL,
  `creado_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `chatbot_responses`
--

INSERT INTO `chatbot_responses` (`id`, `patrones`, `respuesta`, `creado_at`) VALUES
(1, 'horario,horas,abre,cierra', 'Nuestro horario de atención es Lunes a Viernes de 8:00 a 17:00.', '2025-11-09 22:03:38'),
(2, 'precio,costo,cotizacion,valor', 'Para cotizaciones por favor envíe marca y modelo. También puede solicitar una revisión técnica.', '2025-11-09 22:03:38'),
(3, 'mantenimiento,preventivo,predictivo,correctivo', 'Tenemos mantenimiento preventivo, predictivo y correctivo. ¿Cuál deseas agendar?', '2025-11-09 22:03:38'),
(4, 'agendar,cita,reservar', 'Para agendar, indícanos el equipo y la fecha preferida y te confirmamos disponibilidad.', '2025-11-09 22:03:38'),
(5, 'saludo,hola,buenos', '¡Hola! Soy el asistente virtual de NIBARRA. ¿En qué puedo ayudarte?', '2025-11-09 22:03:38'),
(6, 'gracias,gracias!', 'Con gusto 👍. Si necesitas algo más dinos.', '2025-11-09 22:03:38'),
(7, '', 'Lo siento, no entendí. ¿Puedes dar más detalles o escribir \"ayuda\" para opciones?', '2025-11-09 22:03:38'),
(8, 'hola, buenos días, buenas tardes', '👋 ¡Hola! Soy el asistente virtual de mantenimiento de NIBARRA. Escribe *comandos* para ver lo que puedo hacer.', '2025-11-09 23:45:10'),
(9, 'comandos, ayuda, opciones', '📋 *Comandos disponibles:*\r\n- mantenimiento preventivo\r\n- mantenimiento correctivo\r\n- precios\r\n- tiempo de mantenimiento\r\n- contacto técnico\r\n- horario de atención\r\n- estado del equipo [ID]\r\n- garantía\r\n- salir', '2025-11-09 23:45:10'),
(10, 'mantenimiento preventivo, preventivo', '🔧 El *mantenimiento preventivo* incluye limpieza, revisión y calibración. Costo base: *$25 por equipo*. Duración estimada: *1–2 horas*.', '2025-11-09 23:45:10'),
(11, 'mantenimiento correctivo, correctivo, reparar', '⚙️ El *mantenimiento correctivo* se realiza cuando hay fallas. Costo: *$40–$60*, dependiendo del diagnóstico. Duración: *2–5 horas*.', '2025-11-09 23:45:10'),
(12, 'precio, precios, costo, costos, cuánto cuesta', '💰 Los precios promedio son:\r\n- Preventivo: $25 por equipo\r\n- Correctivo: $40–$60 por equipo', '2025-11-09 23:45:10'),
(13, 'tiempo, demora, cuánto tarda', '🕐 El mantenimiento preventivo demora de 1 a 2 horas; el correctivo, de 2 a 5 horas, según la falla.', '2025-11-09 23:45:10'),
(14, 'contacto, soporte, ayuda humana', '📞 Puedes comunicarte con soporte técnico en *soporte@nibarra.com* o al *+507 6000-0000*.', '2025-11-09 23:45:10'),
(15, 'horario, atención, apertura, cierre', '🕒 Nuestro horario es de *lunes a viernes de 8:00 a.m. a 5:00 p.m.* y sábados de *8:00 a.m. a 12:00 p.m.*.', '2025-11-09 23:45:10'),
(16, 'estado del equipo, equipo', '🔍 Para consultar el estado de un equipo, escribe *estado del equipo [ID]* (ejemplo: estado del equipo 1023).', '2025-11-09 23:45:10'),
(17, 'garantía, seguro, cobertura', '🧾 Todos nuestros mantenimientos incluyen garantía de *30 días* en el servicio realizado.', '2025-11-09 23:45:10'),
(18, '', '❓ No entendí tu mensaje. Escribe *comandos* para ver las opciones disponibles.', '2025-11-09 23:45:10');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id` int(11) NOT NULL,
  `nombre_equipo` varchar(100) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `fecha_ingreso` date NOT NULL,
  `descripcion` text NOT NULL,
  `usuario_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`id`, `nombre_equipo`, `tipo`, `estado`, `fecha_ingreso`, `descripcion`, `usuario_id`) VALUES
(2, 'Laptop HP Pavilion 15', 'PC', 'En mantenimiento', '2025-11-07', 'Presenta sobrecalentamiento y ruidos del ventilador. Se solicita limpieza interna y cambio de pasta térmica.', 0),
(3, 'Impresora Epson L3250', 'Impresora', 'En espera', '2025-11-06', 'No imprime en color, probablemente por obstrucción de inyectores.', 0),
(4, 'CPU Dell Optiplex 7090', 'PC de escritorio', 'En espera', '2025-11-05', 'No enciende. Posible daño en la fuente de poder o placa madre.', 1),
(5, 'CPU Lenovo ThinkCentre M700', 'PC  de escritorio', 'Reparado', '2016-02-15', 'No arranca después de una actualización de BIOS. Pendiente de revisión.', 1),
(6, 'Impresora Canon MG3610', 'Impresora', 'En mantenimiento', '2025-07-22', 'No reconoce los cartuchos. Se está reemplazando el cabezal de impresión.', 1),
(7, 'Proyector Epson EB-S04', 'Proyector', 'En espera', '2016-09-18', 'Lámpara fundida, pendiente de sustitución.', 3),
(8, 'Laptop HP Pavilion 15', 'Laptop', 'En espera', '2025-11-09', 'No carga. Posible daño en el conector de carga o batería agotada', 3),
(9, 'Impresora HP LaserJet Pro M404dn', 'Impresora', 'En espera', '2025-11-09', 'Imprime con líneas negras en la hoja. Posible fallo en el cartucho o en el fusor.', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `facturas`
--

CREATE TABLE `facturas` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `equipo_id` int(11) NOT NULL,
  `cliente` varchar(255) NOT NULL,
  `equipo` varchar(255) NOT NULL,
  `servicios` text NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `itbms` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `fecha` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `facturas`
--

INSERT INTO `facturas` (`id`, `usuario_id`, `equipo_id`, `cliente`, `equipo`, `servicios`, `subtotal`, `itbms`, `total`, `fecha`) VALUES
(1, 1, 4, 'admin', 'CPU Dell Optiplex 7090', '0', 155.00, 10.85, 165.85, '2025-11-10 03:12:45'),
(2, 1, 8, 'juanp', 'Laptop HP Pavilion 15', '0', 170.00, 11.90, 181.90, '2025-11-10 03:20:49'),
(3, 1, 9, 'juanp', 'Impresora HP LaserJet Pro M404dn', '[{\"nombre\":\"Limpieza interna y revisión de rodillos\",\"precio\":20},{\"nombre\":\"Sustitución de cartucho de tóner\",\"precio\":45},{\"nombre\":\"Revisión del fusor\",\"precio\":15},{\"nombre\":\"Prueba de impresión y calibración\",\"precio\":10}]', 90.00, 6.30, 96.30, '2025-11-10 03:30:39');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mantenimientos`
--

CREATE TABLE `mantenimientos` (
  `id` int(11) NOT NULL,
  `equipo_id` int(11) DEFAULT NULL,
  `tipo_mantenimiento` varchar(50) DEFAULT NULL,
  `estado` varchar(50) DEFAULT NULL,
  `porcentaje` int(11) DEFAULT 0,
  `fecha_programada` date DEFAULT NULL,
  `observaciones` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mantenimientos`
--

INSERT INTO `mantenimientos` (`id`, `equipo_id`, `tipo_mantenimiento`, `estado`, `porcentaje`, `fecha_programada`, `observaciones`) VALUES
(1, 2, 'Preventivo', 'Por hacer', 0, '2025-08-11', 'Revisión de filtros y niveles de aceite.'),
(2, 6, 'Preventivo', 'Por hacer', 50, '2025-07-24', 'Falla en el regulador de voltaje. Se está reemplazando.'),
(3, 7, 'Correctivo', 'Terminado', 100, '2016-09-20', 'Cambio de fuente de poder'),
(4, 4, 'Preventivo', 'Terminado', 100, '2025-11-10', 'Fuente de poder dañada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `rol` enum('Administrador','Cliente') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `password`, `rol`) VALUES
(1, 'Carlos López', 'admin', '0192023a7bbd73250516f069df18b500', 'Administrador'),
(2, 'María Pérez', 'cliente', '7159bbe0c8ca2a67230a26b72dea7557', 'Cliente'),
(3, 'Juan Perez', 'juanp', 'f5737d25829e95b9c234b7fa06af8736', 'Cliente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chatbot_conversations`
--
ALTER TABLE `chatbot_conversations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chatbot_responses`
--
ALTER TABLE `chatbot_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `facturas`
--
ALTER TABLE `facturas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `equipo_id` (`equipo_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chatbot_conversations`
--
ALTER TABLE `chatbot_conversations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `chatbot_responses`
--
ALTER TABLE `chatbot_responses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `facturas`
--
ALTER TABLE `facturas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mantenimientos`
--
ALTER TABLE `mantenimientos`
  ADD CONSTRAINT `mantenimientos_ibfk_1` FOREIGN KEY (`equipo_id`) REFERENCES `equipos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
