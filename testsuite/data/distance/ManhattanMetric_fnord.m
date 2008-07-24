accuracy = 1e-08;
dm_train = [0, 2.52348968, 2.85806715, 4.64289444, 3.97865249, 4.74062265, 3.70520239, 4.52098026, 2.54755664, 3.95368874, 3.49769401;2.52348968, 0, 3.87713602, 4.64706964, 4.45853965, 5.38240665, 3.32493012, 3.85909254, 2.24515175, 4.25385719, 4.17394766;2.85806715, 3.87713602, 0, 5.15116792, 4.23273988, 5.24676191, 2.60094815, 4.89559086, 2.93983956, 4.08900734, 4.41339823;4.64289444, 4.64706964, 5.15116792, 0, 3.95121167, 3.23115141, 4.75345328, 4.73916962, 5.1646929, 3.887941, 2.66315387;3.97865249, 4.45853965, 4.23273988, 3.95121167, 0, 3.33296008, 4.06640544, 4.03034086, 3.31214346, 1.54409993, 2.8822323;4.74062265, 5.38240665, 5.24676191, 3.23115141, 3.33296008, 0, 4.80371377, 3.77585911, 5.56778859, 3.68757096, 2.06260553;3.70520239, 3.32493012, 2.60094815, 4.75345328, 4.06640544, 4.80371377, 0, 5.39447539, 3.01194459, 4.29494492, 3.40016863;4.52098026, 3.85909254, 4.89559086, 4.73916962, 4.03034086, 3.77585911, 5.39447539, 0, 3.91793632, 3.44757828, 3.24176809;2.54755664, 2.24515175, 2.93983956, 5.1646929, 3.31214346, 5.56778859, 3.01194459, 3.91793632, 0, 3.57673658, 4.27383455;3.95368874, 4.25385719, 4.08900734, 3.887941, 1.54409993, 3.68757096, 4.29494492, 3.44757828, 3.57673658, 0, 3.05801899;3.49769401, 4.17394766, 4.41339823, 2.66315387, 2.8822323, 2.06260553, 3.40016863, 3.24176809, 4.27383455, 3.05801899, 0];
init_random = 42;
name = 'ManhattanMetric';
data_type = 'double';
dm_test = [1.71769453, 3.35114169, 3.11206795, 3.19666076, 3.49809375, 2.66941752, 4.9687255, 4.36335968, 3.60208783, 3.1834475, 3.369431, 3.76052029, 3.89799164, 4.6045319, 3.74393212, 3.56954947, 3.4567156;2.67633224, 4.20139064, 2.71891775, 3.64575634, 2.74208157, 3.11917144, 4.56824008, 4.74626198, 4.553142, 2.47741853, 3.51206818, 4.80210266, 4.14475899, 5.12418347, 4.84267067, 5.01697963, 3.72791112;3.74565697, 3.61558281, 4.59515814, 4.44697048, 4.78067715, 3.33150597, 5.28379463, 3.57049622, 4.74862292, 4.88598413, 4.14557245, 2.98510522, 4.75484534, 4.51372598, 4.20163255, 4.15133231, 5.19250556;3.97120235, 3.29811291, 3.10418357, 3.13009006, 2.67443028, 3.63852369, 4.05108549, 3.20131323, 2.35265204, 3.03946503, 5.26029111, 2.5934641, 3.62768256, 3.17950779, 5.04895394, 2.57495058, 4.53742992;2.54145742, 3.36185195, 4.14860367, 3.53189242, 3.86462628, 3.1950946, 4.27762287, 3.20134906, 3.89578273, 3.99581163, 2.45851722, 3.36245616, 3.7080049, 2.36784275, 3.92100768, 2.05087729, 3.75625288;3.84943935, 2.9751439, 4.40543214, 4.11393429, 5.13222816, 4.45294691, 2.36419976, 4.16631509, 3.13013663, 3.40768238, 4.64155013, 3.40391625, 3.61694505, 3.25509672, 3.08340329, 2.37852783, 3.3105791;3.5544602, 4.33442488, 4.83028285, 3.50925306, 5.33169204, 2.63754131, 4.38830524, 3.72653851, 4.4216488, 4.2245197, 3.98370104, 4.84579506, 6.24594961, 3.74928288, 3.44085421, 3.85567602, 4.27886239;3.13117534, 3.13434496, 3.729832, 3.89697584, 4.44205481, 5.50404588, 3.62026308, 5.02819071, 4.06533546, 3.24387279, 3.83546598, 3.85995033, 2.9921866, 3.20865264, 3.43676552, 3.94287826, 3.88106478;2.07856474, 3.93171504, 3.41101709, 3.08699437, 3.55805061, 2.97158722, 4.97711409, 3.6016375, 5.47498156, 3.4131483, 2.47186146, 4.16027369, 3.77624488, 3.79372419, 3.60435564, 4.00315166, 3.6700072;2.88280913, 3.85910895, 3.30760512, 3.64097693, 3.96710188, 3.50487246, 3.39471435, 3.99902592, 2.83369985, 4.56819645, 3.2448851, 3.49392889, 4.45405347, 2.24246716, 4.19376895, 2.79708227, 4.64943499;2.22950955, 2.90619371, 3.39041971, 2.79900882, 4.23732578, 3.24278665, 3.3444655, 3.39404781, 2.45909313, 2.56716094, 4.34671119, 3.21475309, 3.76203588, 2.00475311, 3.13548093, 1.87153318, 3.19884861];
data_train = [0.00578225235, 0.137673426, 0.540058387, 0.745631208, 0.862694068, 0.770894469, 0.674216722, 0.260544239, 0.115671681, 0.863948784, 0.684229886;0.503495618, 0.0895350073, 0.661491936, 0.993042656, 0.595366674, 0.471684286, 0.168200015, 0.123245661, 0.352004049, 0.655159128, 0.539017359;0.537615948, 0.139573314, 0.030142644, 0.229629704, 0.951338943, 0.965778727, 0.0417576771, 0.561097126, 0.00351635234, 0.920606292, 0.613499723;0.46479492, 0.15507536, 0.931309644, 0.111796084, 0.913749448, 0.156725679, 0.910166384, 0.36401679, 0.766202914, 0.790361077, 0.296253419;0.8569265, 0.43918101, 0.921810562, 0.835617565, 0.36713935, 0.774310278, 0.636909704, 0.395835804, 0.259087048, 0.422246735, 0.684611368;0.285247748, 0.0378519406, 0.847832486, 0.182961292, 0.195659934, 0.752297421, 0.114232259, 0.824860804, 0.347431628, 0.32558655, 0.227375405;0.092141873, 0.049431421, 0.103286433, 0.615231393, 0.678243878, 0.895792842, 0.243856949, 0.766849343, 0.505617275, 0.30206984, 0.841881869;0.164978602, 0.401531596, 0.197806065, 0.737041684, 0.265389726, 0.52785462, 0.204153007, 0.903753853, 0.199291224, 0.797201755, 0.516419376;0.451112966, 0.444579969, 0.113663258, 0.932535955, 0.543618007, 0.519760752, 0.12009628, 0.230647891, 0.421303961, 0.368471454, 0.224367516;0.710282648, 0.879308733, 0.762532669, 0.398291152, 0.842536426, 0.032446128, 0.0574032121, 0.993493282, 0.89742388, 0.886265004, 0.319600328;0.0309812934, 0.180893173, 0.161647409, 0.771332184, 0.707526475, 0.775771186, 0.225405985, 0.874828126, 0.156887755, 0.690489936, 0.621484641];
feature_class = 'simple';
data_test = [0.171865675, 0.641425057, 0.0705731634, 0.0338511069, 0.149140138, 0.749160083, 0.733009377, 0.676684479, 0.80810868, 0.203685281, 0.417611292, 0.660320193, 0.0207840267, 0.726091062, 0.137990582, 0.768451447, 0.287321882;0.506470198, 0.224411277, 0.71209941, 0.478706341, 0.979042643, 0.635513708, 0.287329164, 0.912057381, 0.872927858, 0.12287943, 0.0457055772, 0.82718485, 0.803653553, 0.589057639, 0.35987935, 0.763835303, 0.0797286449;0.630619593, 0.622269411, 0.289086724, 0.302579646, 0.278116438, 0.26181934, 0.760390357, 0.283568529, 0.585709632, 0.332391861, 0.937654796, 0.373040469, 0.479326479, 0.478331426, 0.706230533, 0.66719421, 0.992809442;0.445758409, 0.340145557, 0.0752593871, 0.830930339, 0.025521495, 0.586512865, 0.0828444724, 0.997484515, 0.329633781, 0.1437432, 0.83360169, 0.570331135, 0.00827698484, 0.964858331, 0.643057785, 0.617959806, 0.350187554;0.476976203, 0.79600822, 0.143174135, 0.691311899, 0.30620251, 0.277302739, 0.23202724, 0.503510296, 0.789703558, 0.738298151, 0.417755805, 0.965059122, 0.263540692, 0.285875355, 0.576503249, 0.698881957, 0.548124938;0.243657003, 0.848543686, 0.260710864, 0.0880246031, 0.236656959, 0.1997833, 0.969305677, 0.52324032, 0.261976973, 0.203032653, 0.424377317, 0.869101752, 0.862690207, 0.319293343, 0.695699529, 0.403314426, 0.433896637;0.514993038, 0.511013975, 0.11525795, 0.723201796, 0.122879845, 0.0934949788, 0.280102489, 0.973331192, 0.0499350167, 0.927304832, 0.634517946, 0.560406309, 0.771486555, 0.810845371, 0.556876123, 0.708833969, 0.960938215;0.218490982, 0.229829925, 0.668761592, 0.832492986, 0.354641223, 0.290948764, 0.780142573, 0.346005617, 0.940981616, 0.517609617, 0.171841908, 0.437881741, 0.320575313, 0.770614875, 0.0162030953, 0.263160767, 0.234886917;0.379756753, 0.943758943, 0.409579079, 0.61871534, 0.948931198, 0.594255302, 0.522124849, 0.870649704, 0.48385057, 0.728263729, 0.813099748, 0.854907689, 0.74676302, 0.330997568, 0.0444069238, 0.574747985, 0.822779708;0.660425641, 0.735596653, 0.572911778, 0.389951721, 0.843012554, 0.253701128, 0.0084744958, 0.51245519, 0.259989221, 0.702797891, 0.900782942, 0.768304777, 0.742378934, 0.328593767, 0.0388367074, 0.365702799, 0.383474416;0.448459855, 0.632195388, 0.787496709, 0.424266848, 0.761133685, 0.0266095829, 0.566686549, 0.257150664, 0.886321017, 0.436360827, 0.0819208801, 0.64819166, 0.765489825, 0.839053641, 0.769674595, 0.835578385, 0.11795935];
data_class = 'rand';
feature_type = 'Real';