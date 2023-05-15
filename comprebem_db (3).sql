drop database if exists comprebem_db;
create database comprebem_db;
use comprebem_db;
CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `categoria` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`) VALUES
(1, 'alimentos'),
(2, 'bebidas'),
(3, 'limpeza'),
(4, 'petshop');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `forma_pagamento` varchar(20) NOT NULL,
  `total` double(10,2) NOT NULL,
  `datapedido` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  `foto_produto` longblob NOT NULL,
  `descricao` varchar(255) NOT NULL,
  `valor` double(12,2) NOT NULL,
  `estoque` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `id_categoria`, `foto_produto`, `descricao`, `valor`, `estoque`) VALUES
(1, 1, 0x32336263356139366539343761313232343265653063656331366465393636652e6a7067, 'milho de pipoca Yoki', 5.99, 100),
(2, 2, 0x35663664613335343863343838656466313732363266666264343533313135642e6a7067, 'whisky Redlabel 1L', 79.99, 20),
(3, 3, 0x31303639623032303830303830333131623538356566623431366135323662612e6a7067, 'kit shampoo e condicionador pantene', 29.49, 30),
(4, 4, 0x63333830316131313036633430363261363462643461376231313234386165372e6a7067, 'KIt Sanol Dog', 39.99, 5),
(5, 4, 0x66656663663939613938343264383230623739353031356433366364363766632e6a7067, 'shampoo antipulgas sanol', 9.99, 10),
(10, 2, 0x63303530653132393335343635323330386566363264633161643832313361652e6a7067, 'coca cola lata 350ml', 4.99, 100),
(11, 2, 0x31626339636461633632326365636239326664313935616139626363313165352e6a7067, 'whisky Buchanas 1L', 150.00, 10),
(12, 1, 0x38363339656161303338336431303231353030666330396239346536303332652e6a7067, 'Piraquê recheado chocolate', 4.49, 100),
(13, 1, 0x30653534666233393666663666653932343733363939396433636136366134302e6a7067, 'Piraquê leite maltado', 4.49, 100),
(14, 1, 0x38666565323037393665393661626234363437376266303738366364643631342e6a7067, 'Piraquê recheado maracujá', 4.49, 100),
(15, 1, 0x30633665613561643861373338383663373035373266303264356562383337322e6a7067, 'Piraquê goiabinha', 4.99, 100),
(16, 1, 0x62363636353461346164353635346163346334363361623938333732633237652e6a7067, 'Biscoito passatempo', 2.50, 100),
(17, 1, 0x63366432393732633332326330333363323361333533636238303536373661662e6a7067, 'Biscoito passatempo LEITE', 2.99, 100),
(18, 1, 0x63336132353032376435393833633531616433656139333061356631376366632e6a7067, 'Biscoito passatempo MORANGO', 2.50, 100),
(19, 1, 0x66336162386136643664373265643435386162393731633437366632663435392e6a7067, 'Biscoito passatempo CHOCOMIX', 2.50, 100),
(20, 1, 0x65313834363432336434383733313830613764303532343038653935613235382e6a7067, 'Bauducco Cookies original', 2.99, 100),
(21, 1, 0x38353331636531333434646662623739653337623466623539336234383834342e6a7067, 'Bauducco Cookies chocolate', 2.99, 100),
(22, 1, 0x37613630333039386165636633373562343263636638303866353362646431352e6a7067, 'Club Social', 3.50, 100),
(23, 2, 0x64363966313662386632393037353863653566343731333565626535383864662e6a7067, 'H2O Limão 500ml', 5.00, 100),
(24, 2, 0x65623131343632623732386532356265646633346333633337616265626436332e6a7067, 'H2O Limoneto 500ml', 5.00, 100),
(25, 2, 0x30326436616162353463313161633732666163356132316238646261383265352e706e67, 'H2O Limoneto 1,5L', 7.99, 100),
(26, 2, 0x38323261303734343234383837383464323761363338313230383161386666622e6a706567, 'H2O Limão 1,5L', 7.99, 100),
(28, 2, 0x65383030306432336134326632303466653939643036633936623730366230312e6a7067, 'Coca cola 2L', 10.00, 100),
(29, 2, 0x38386338346134343935336635663735666539393535326436646463313635652e6a7067, 'Fanta uva 2L', 8.00, 100),
(31, 2, 0x35346364666461333238333134363634323434616564353139636362356335312e6a7067, 'Pepsi 2L', 8.00, 100),
(32, 2, 0x38666139306432613032343231353666336232613866393761323337363537362e6a7067, 'Fanta laranja 2L', 8.00, 100),
(33, 2, 0x31346163643164613034323535653963323566623433663633316464343263642e6a7067, 'Fanta guarana 2L', 8.00, 100),
(34, 3, 0x39646130663037633062366161353863323134623665666438323637393935632e6a7067, 'Limpador multiuso UAU', 3.50, 100),
(35, 3, 0x39363261383138653832353030636131393863663635306130383331313031312e6a7067, 'Sabonete dove', 4.50, 100),
(36, 3, 0x61323464356632323761363637613363383561623965386563626534383866632e6a7067, 'Sabonete palmolive', 2.49, 100),
(37, 3, 0x38643432623336316635313665343931633633313836663137656434326565322e6a7067, 'Shampoo anti-caspas Clear', 14.45, 100),
(38, 3, 0x62636561346230376432626139343263633434343062643530613130336135322e6a7067, 'Shampoo anti-queda Salon-Line', 15.99, 100),
(39, 3, 0x38633966366432353330393039333734326562316135353834313734353636662e6a7067, 'Sabonete Líquido Granado-Bebê', 34.99, 100),
(40, 3, 0x30666561623165323138303431633965306136376234653131326131373433322e6a7067, 'Sabonete facial Neutrogena', 45.00, 100),
(41, 3, 0x64633332323734633235346335373539616537303631383339613733613634332e6a7067, 'Detergente Ypê 500ml', 2.90, 100),
(42, 3, 0x39346635343330653566613836353635623131366638643631666462343462642e6a7067, 'Detergente minuano 500ml', 3.00, 100),
(43, 3, 0x31653033653866636131336665376237663432343730373337303764363466642e6a7067, 'água sanitaria Qboa 5L', 17.99, 100),
(44, 3, 0x63383962326464366337653766386665616438313334633130336364323838642e6a7067, 'soda caustica diabo verde 250g', 15.50, 100),
(45, 4, 0x36373834313866633064323461646366373831623938396465363132326234312e6a7067, 'Ração pedigree adulto 15kg', 79.90, 100),
(46, 4, 0x61363839623833343038356538623563376135643661386633303161626330322e6a7067, 'Ração pedigree filhote 15kg', 99.90, 100),
(47, 4, 0x37623166383437396133336337633638653938356339386438356534633063622e6a7067, 'Vermifugo vermex 20ml', 32.00, 100),
(48, 4, 0x35353830393338356261303135326564373838363635393232353033313737642e6a7067, 'Anti-pulgas/carrapatos Bravecto', 33.49, 100),
(50, 4, 0x63316233313763656331303633343763386462353664653362626163313432642e6a7067, 'Comedouro antiderrapante Inox', 28.99, 100);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos_vendidos`
--

CREATE TABLE `produtos_vendidos` (
  `id` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_produto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11)PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `cpf` varchar(14) NOT NULL,
  `nascimento` varchar(10) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `datacad` timestamp NOT NULL DEFAULT current_timestamp(),
  `endereco` varchar(255) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  `bairro` varchar(60) DEFAULT NULL,
  `cidade` varchar(60) DEFAULT NULL,
  `cep` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `cpf`, `nascimento`, `telefone`, `datacad`, `endereco`, `num`, `bairro`, `cidade`, `cep`) VALUES
(1, 'cleitin da silva', 'CleitonRasta@gmail.com', '12345678', '12345678910', '13/01', '22988718656', '2022-07-19 22:27:56', 'Rua 3', 5, 'Leblon', 'Rio de Janeiro', NULL),
(2, 'Compre Bem', 'admin@comprebem.com', 'Comprebem123', '12345678910', '25/08', '22996139780', '2022-07-19 23:21:35', 'Rua dos Tatus', 69, 'Unamar', 'Cabo Frio', NULL);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PEDIDOS_1` (`id_usuario`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PRODUTOS_1` (`id_categoria`);

--
-- Índices para tabela `produtos_vendidos`
--
ALTER TABLE `produtos_vendidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_PRODUTOS_VENDIDOS_1` (`id_pedido`),
  ADD KEY `FK_PRODUTOS_VENDIDOS_2` (`id_produto`);


--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `produtos_vendidos`
--
ALTER TABLE `produtos_vendidos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;


--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `FK_PEDIDOS_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `FK_PRODUTOS_1` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id`) ON DELETE CASCADE;

--
-- Limitadores para a tabela `produtos_vendidos`
--
ALTER TABLE `produtos_vendidos`
  ADD CONSTRAINT `FK_PRODUTOS_VENDIDOS_1` FOREIGN KEY (`id_pedido`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_PRODUTOS_VENDIDOS_2` FOREIGN KEY (`id_produto`) REFERENCES `produtos` (`id`) ON DELETE CASCADE;


