
# line 1 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
require 'gherkin/lexer/i18n_lexer'

module Gherkin
  module RbLexer
    class Hr #:nodoc:
      
# line 123 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"

 
      def initialize(listener)
        @listener = listener
        
# line 16 "lib/gherkin/rb_lexer/hr.rb"
class << self
	attr_accessor :_lexer_actions
	private :_lexer_actions, :_lexer_actions=
end
self._lexer_actions = [
	0, 1, 0, 1, 1, 1, 2, 1, 
	3, 1, 4, 1, 5, 1, 6, 1, 
	7, 1, 8, 1, 9, 1, 10, 1, 
	11, 1, 12, 1, 13, 1, 16, 1, 
	17, 1, 18, 1, 19, 1, 20, 1, 
	21, 1, 22, 1, 23, 2, 2, 18, 
	2, 3, 4, 2, 13, 0, 2, 14, 
	15, 2, 17, 0, 2, 17, 1, 2, 
	17, 16, 2, 17, 19, 2, 18, 6, 
	2, 18, 7, 2, 18, 8, 2, 18, 
	9, 2, 18, 10, 2, 18, 16, 2, 
	20, 21, 2, 22, 0, 2, 22, 1, 
	2, 22, 16, 2, 22, 19, 3, 4, 
	14, 15, 3, 5, 14, 15, 3, 11, 
	14, 15, 3, 12, 14, 15, 3, 13, 
	14, 15, 3, 14, 15, 18, 3, 17, 
	0, 11, 3, 17, 14, 15, 4, 2, 
	14, 15, 18, 4, 3, 4, 14, 15, 
	4, 17, 0, 14, 15, 5, 17, 0, 
	11, 14, 15
]

class << self
	attr_accessor :_lexer_key_offsets
	private :_lexer_key_offsets, :_lexer_key_offsets=
end
self._lexer_key_offsets = [
	0, 0, 19, 20, 21, 39, 40, 41, 
	43, 45, 50, 55, 60, 65, 69, 73, 
	75, 76, 77, 78, 79, 80, 81, 82, 
	83, 84, 85, 86, 87, 88, 89, 90, 
	91, 93, 95, 100, 107, 112, 113, 114, 
	116, 117, 119, 120, 121, 122, 123, 124, 
	125, 126, 127, 142, 144, 146, 148, 150, 
	152, 154, 156, 158, 160, 162, 164, 166, 
	168, 170, 172, 190, 191, 192, 193, 195, 
	196, 197, 198, 199, 200, 201, 202, 203, 
	215, 217, 219, 221, 223, 225, 227, 229, 
	231, 233, 235, 237, 239, 241, 243, 245, 
	247, 249, 251, 253, 255, 257, 259, 261, 
	263, 266, 268, 270, 272, 274, 276, 278, 
	280, 282, 284, 286, 289, 291, 293, 295, 
	297, 299, 301, 303, 305, 307, 310, 312, 
	314, 316, 318, 320, 322, 325, 327, 329, 
	331, 332, 333, 334, 335, 336, 337, 338, 
	340, 341, 342, 343, 344, 345, 346, 347, 
	348, 349, 364, 366, 368, 370, 372, 374, 
	376, 378, 380, 382, 384, 386, 388, 390, 
	392, 394, 396, 398, 401, 403, 406, 408, 
	410, 412, 414, 416, 418, 420, 422, 424, 
	427, 429, 431, 433, 435, 438, 440, 442, 
	444, 446, 448, 450, 452, 455, 457, 459, 
	461, 463, 465, 467, 469, 471, 473, 475, 
	477, 479, 483, 484, 485, 486, 487, 488, 
	489, 490, 491, 492, 500, 502, 504, 506, 
	509, 511, 513, 515, 517, 519, 521, 523, 
	525, 527, 529, 531, 533, 535, 536, 537, 
	538, 539, 540, 541, 543, 544, 545, 561, 
	563, 565, 567, 569, 571, 573, 575, 577, 
	579, 581, 583, 585, 587, 589, 591, 593, 
	595, 598, 600, 603, 605, 607, 609, 611, 
	613, 615, 617, 619, 621, 624, 626, 628, 
	630, 632, 635, 637, 639, 641, 643, 645, 
	647, 649, 651, 653, 655, 657, 660, 662, 
	664, 666, 668, 670, 672, 674, 676, 678, 
	680, 682, 684, 688, 689, 690, 691, 692, 
	693, 694, 695, 698, 702, 708, 711, 713, 
	719, 737, 739, 741, 743, 745, 748, 750, 
	752, 754, 757, 759, 761, 763, 765, 767, 
	769, 772, 774, 776, 778, 780, 782, 784, 
	786, 788, 790, 792, 794, 796, 798, 800, 
	802, 804, 806, 808, 812
]

class << self
	attr_accessor :_lexer_trans_keys
	private :_lexer_trans_keys, :_lexer_trans_keys=
end
self._lexer_trans_keys = [
	-17, 10, 32, 34, 35, 37, 42, 64, 
	65, 73, 75, 77, 79, 80, 83, 90, 
	124, 9, 13, -69, -65, 10, 32, 34, 
	35, 37, 42, 64, 65, 73, 75, 77, 
	79, 80, 83, 90, 124, 9, 13, 34, 
	34, 10, 13, 10, 13, 10, 32, 34, 
	9, 13, 10, 32, 34, 9, 13, 10, 
	32, 34, 9, 13, 10, 32, 34, 9, 
	13, 10, 32, 9, 13, 10, 32, 9, 
	13, 10, 13, 10, 95, 70, 69, 65, 
	84, 85, 82, 69, 95, 69, 78, 68, 
	95, 37, 32, 10, 13, 10, 13, 13, 
	32, 64, 9, 10, 9, 10, 13, 32, 
	64, 11, 12, 10, 32, 64, 9, 13, 
	108, 105, 97, 111, 100, 32, 97, 110, 
	99, 101, 112, 116, 58, 10, 10, 10, 
	32, 35, 37, 42, 64, 65, 73, 75, 
	77, 79, 83, 90, 9, 13, 10, 95, 
	10, 70, 10, 69, 10, 65, 10, 84, 
	10, 85, 10, 82, 10, 69, 10, 95, 
	10, 69, 10, 78, 10, 68, 10, 95, 
	10, 37, 10, 32, 10, 32, 34, 35, 
	37, 42, 64, 65, 73, 75, 77, 79, 
	80, 83, 90, 124, 9, 13, 111, 103, 
	117, -60, 99, -121, 110, 111, 115, 116, 
	58, 10, 10, 10, 32, 35, 37, 64, 
	75, 77, 79, 80, 83, 9, 13, 10, 
	95, 10, 70, 10, 69, 10, 65, 10, 
	84, 10, 85, 10, 82, 10, 69, 10, 
	95, 10, 69, 10, 78, 10, 68, 10, 
	95, 10, 37, 10, 111, 10, 110, 10, 
	99, 10, 101, 10, 112, 10, 116, 10, 
	58, 10, 111, 10, 103, 10, 117, -60, 
	10, 99, -121, 10, 10, 110, 10, 111, 
	10, 115, 10, 115, 10, 111, 10, 98, 
	10, 105, 10, 110, 10, 97, 10, 111, 
	114, 10, 122, 10, 97, 10, 100, 10, 
	105, 10, 109, 10, 106, 10, 101, 10, 
	114, 10, 105, 10, 99, 107, 10, 101, 
	10, 110, 10, 97, 10, 114, 10, 105, 
	10, 106, 10, 58, 105, 10, 105, 10, 
	99, 110, 115, 100, 97, 111, 98, 105, 
	110, 97, 111, 114, 122, 97, 100, 105, 
	110, 97, 58, 10, 10, 10, 32, 35, 
	37, 42, 64, 65, 73, 75, 77, 79, 
	83, 90, 9, 13, 10, 95, 10, 70, 
	10, 69, 10, 65, 10, 84, 10, 85, 
	10, 82, 10, 69, 10, 95, 10, 69, 
	10, 78, 10, 68, 10, 95, 10, 37, 
	10, 32, 10, 108, 10, 105, 10, 97, 
	111, 10, 100, 10, 32, 97, 10, 110, 
	10, 99, 10, 101, 10, 112, 10, 116, 
	10, 58, 10, 111, 10, 103, 10, 117, 
	-60, 10, 99, -121, 10, 10, 110, 10, 
	111, 10, 115, 10, 110, 115, 10, 100, 
	10, 97, 10, 111, 10, 98, 10, 105, 
	10, 110, 10, 97, 10, 99, 107, 10, 
	101, 10, 110, 10, 97, 10, 114, 10, 
	105, 10, 106, 10, 105, 10, 99, 10, 
	97, 10, 100, 10, 97, 10, 110, 10, 
	32, 105, 111, 105, 109, 106, 101, 114, 
	105, 58, 10, 10, 10, 32, 35, 77, 
	79, 124, 9, 13, 10, 111, 10, 103, 
	10, 117, -60, 10, 99, -121, 10, 10, 
	110, 10, 111, 10, 115, 10, 116, 10, 
	58, 10, 115, 10, 111, 10, 98, 10, 
	105, 10, 110, 10, 97, 99, 107, 101, 
	110, 97, 114, 105, 106, 58, 105, 10, 
	10, 10, 32, 35, 37, 42, 64, 65, 
	73, 75, 77, 79, 80, 83, 90, 9, 
	13, 10, 95, 10, 70, 10, 69, 10, 
	65, 10, 84, 10, 85, 10, 82, 10, 
	69, 10, 95, 10, 69, 10, 78, 10, 
	68, 10, 95, 10, 37, 10, 32, 10, 
	108, 10, 105, 10, 97, 111, 10, 100, 
	10, 32, 97, 10, 110, 10, 99, 10, 
	101, 10, 112, 10, 116, 10, 58, 10, 
	111, 10, 103, 10, 117, -60, 10, 99, 
	-121, 10, 10, 110, 10, 111, 10, 115, 
	10, 110, 115, 10, 100, 10, 97, 10, 
	111, 10, 98, 10, 105, 10, 110, 10, 
	97, 10, 111, 10, 122, 10, 97, 10, 
	100, 10, 99, 107, 10, 101, 10, 110, 
	10, 97, 10, 114, 10, 105, 10, 106, 
	10, 105, 10, 99, 10, 97, 10, 100, 
	10, 97, 10, 110, 10, 32, 105, 111, 
	105, 99, 97, 97, 100, 97, 110, 32, 
	105, 111, 32, 124, 9, 13, 10, 32, 
	92, 124, 9, 13, 10, 92, 124, 10, 
	92, 10, 32, 92, 124, 9, 13, 10, 
	32, 34, 35, 37, 42, 64, 65, 73, 
	75, 77, 79, 80, 83, 90, 124, 9, 
	13, 10, 108, 10, 105, 10, 97, 10, 
	100, 10, 32, 97, 10, 111, 10, 103, 
	10, 117, -60, 10, 99, -121, 10, 10, 
	110, 10, 111, 10, 115, 10, 116, 10, 
	58, 10, 110, 115, 10, 100, 10, 97, 
	10, 111, 10, 98, 10, 105, 10, 110, 
	10, 97, 10, 99, 10, 101, 10, 110, 
	10, 97, 10, 114, 10, 105, 10, 106, 
	10, 97, 10, 100, 10, 97, 10, 110, 
	10, 32, 105, 111, 0
]

class << self
	attr_accessor :_lexer_single_lengths
	private :_lexer_single_lengths, :_lexer_single_lengths=
end
self._lexer_single_lengths = [
	0, 17, 1, 1, 16, 1, 1, 2, 
	2, 3, 3, 3, 3, 2, 2, 2, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	2, 2, 3, 5, 3, 1, 1, 2, 
	1, 2, 1, 1, 1, 1, 1, 1, 
	1, 1, 13, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 16, 1, 1, 1, 2, 1, 
	1, 1, 1, 1, 1, 1, 1, 10, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	1, 1, 1, 1, 1, 1, 1, 2, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 13, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 3, 2, 3, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 3, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 4, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 6, 2, 2, 2, 3, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 1, 1, 1, 
	1, 1, 1, 2, 1, 1, 14, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	3, 2, 3, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 3, 2, 2, 2, 
	2, 3, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 3, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 4, 1, 1, 1, 1, 1, 
	1, 1, 3, 2, 4, 3, 2, 4, 
	16, 2, 2, 2, 2, 3, 2, 2, 
	2, 3, 2, 2, 2, 2, 2, 2, 
	3, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 2, 2, 2, 2, 2, 
	2, 2, 2, 4, 0
]

class << self
	attr_accessor :_lexer_range_lengths
	private :_lexer_range_lengths, :_lexer_range_lengths=
end
self._lexer_range_lengths = [
	0, 1, 0, 0, 1, 0, 0, 0, 
	0, 1, 1, 1, 1, 1, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 1, 1, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 1, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 1, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 1, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 1, 1, 0, 0, 1, 
	1, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_index_offsets
	private :_lexer_index_offsets, :_lexer_index_offsets=
end
self._lexer_index_offsets = [
	0, 0, 19, 21, 23, 41, 43, 45, 
	48, 51, 56, 61, 66, 71, 75, 79, 
	82, 84, 86, 88, 90, 92, 94, 96, 
	98, 100, 102, 104, 106, 108, 110, 112, 
	114, 117, 120, 125, 132, 137, 139, 141, 
	144, 146, 149, 151, 153, 155, 157, 159, 
	161, 163, 165, 180, 183, 186, 189, 192, 
	195, 198, 201, 204, 207, 210, 213, 216, 
	219, 222, 225, 243, 245, 247, 249, 252, 
	254, 256, 258, 260, 262, 264, 266, 268, 
	280, 283, 286, 289, 292, 295, 298, 301, 
	304, 307, 310, 313, 316, 319, 322, 325, 
	328, 331, 334, 337, 340, 343, 346, 349, 
	352, 356, 359, 362, 365, 368, 371, 374, 
	377, 380, 383, 386, 390, 393, 396, 399, 
	402, 405, 408, 411, 414, 417, 421, 424, 
	427, 430, 433, 436, 439, 443, 446, 449, 
	452, 454, 456, 458, 460, 462, 464, 466, 
	469, 471, 473, 475, 477, 479, 481, 483, 
	485, 487, 502, 505, 508, 511, 514, 517, 
	520, 523, 526, 529, 532, 535, 538, 541, 
	544, 547, 550, 553, 557, 560, 564, 567, 
	570, 573, 576, 579, 582, 585, 588, 591, 
	595, 598, 601, 604, 607, 611, 614, 617, 
	620, 623, 626, 629, 632, 636, 639, 642, 
	645, 648, 651, 654, 657, 660, 663, 666, 
	669, 672, 677, 679, 681, 683, 685, 687, 
	689, 691, 693, 695, 703, 706, 709, 712, 
	716, 719, 722, 725, 728, 731, 734, 737, 
	740, 743, 746, 749, 752, 755, 757, 759, 
	761, 763, 765, 767, 770, 772, 774, 790, 
	793, 796, 799, 802, 805, 808, 811, 814, 
	817, 820, 823, 826, 829, 832, 835, 838, 
	841, 845, 848, 852, 855, 858, 861, 864, 
	867, 870, 873, 876, 879, 883, 886, 889, 
	892, 895, 899, 902, 905, 908, 911, 914, 
	917, 920, 923, 926, 929, 932, 936, 939, 
	942, 945, 948, 951, 954, 957, 960, 963, 
	966, 969, 972, 977, 979, 981, 983, 985, 
	987, 989, 991, 995, 999, 1005, 1009, 1012, 
	1018, 1036, 1039, 1042, 1045, 1048, 1052, 1055, 
	1058, 1061, 1065, 1068, 1071, 1074, 1077, 1080, 
	1083, 1087, 1090, 1093, 1096, 1099, 1102, 1105, 
	1108, 1111, 1114, 1117, 1120, 1123, 1126, 1129, 
	1132, 1135, 1138, 1141, 1146
]

class << self
	attr_accessor :_lexer_indicies
	private :_lexer_indicies, :_lexer_indicies=
end
self._lexer_indicies = [
	1, 3, 2, 4, 5, 6, 7, 8, 
	9, 7, 10, 11, 12, 13, 14, 15, 
	16, 2, 0, 17, 0, 2, 0, 3, 
	2, 4, 5, 6, 7, 8, 9, 7, 
	10, 11, 12, 13, 14, 15, 16, 2, 
	0, 18, 0, 19, 0, 21, 22, 20, 
	24, 25, 23, 28, 27, 29, 27, 26, 
	32, 31, 33, 31, 30, 32, 31, 34, 
	31, 30, 32, 31, 35, 31, 30, 37, 
	36, 36, 0, 3, 38, 38, 0, 40, 
	41, 39, 3, 0, 42, 0, 43, 0, 
	44, 0, 45, 0, 46, 0, 47, 0, 
	48, 0, 49, 0, 50, 0, 51, 0, 
	52, 0, 53, 0, 54, 0, 55, 0, 
	56, 0, 58, 59, 57, 61, 62, 60, 
	0, 0, 0, 0, 63, 64, 65, 64, 
	64, 67, 66, 63, 3, 68, 8, 68, 
	0, 69, 0, 70, 0, 71, 72, 0, 
	73, 0, 56, 70, 0, 74, 0, 75, 
	0, 76, 0, 77, 0, 78, 0, 79, 
	0, 81, 80, 83, 82, 83, 84, 85, 
	86, 87, 85, 88, 87, 89, 90, 91, 
	92, 93, 84, 82, 83, 94, 82, 83, 
	95, 82, 83, 96, 82, 83, 97, 82, 
	83, 98, 82, 83, 99, 82, 83, 100, 
	82, 83, 101, 82, 83, 102, 82, 83, 
	103, 82, 83, 104, 82, 83, 105, 82, 
	83, 106, 82, 83, 107, 82, 83, 108, 
	82, 110, 109, 111, 112, 113, 114, 115, 
	116, 114, 117, 118, 119, 120, 121, 122, 
	123, 109, 0, 124, 0, 125, 0, 126, 
	0, 127, 128, 0, 128, 0, 129, 0, 
	130, 0, 131, 0, 132, 0, 133, 0, 
	135, 134, 137, 136, 137, 138, 139, 140, 
	139, 141, 142, 143, 144, 145, 138, 136, 
	137, 146, 136, 137, 147, 136, 137, 148, 
	136, 137, 149, 136, 137, 150, 136, 137, 
	151, 136, 137, 152, 136, 137, 153, 136, 
	137, 154, 136, 137, 155, 136, 137, 156, 
	136, 137, 157, 136, 137, 158, 136, 137, 
	159, 136, 137, 160, 136, 137, 161, 136, 
	137, 162, 136, 137, 163, 136, 137, 164, 
	136, 137, 165, 136, 137, 166, 136, 137, 
	167, 136, 137, 168, 136, 137, 169, 136, 
	170, 137, 171, 136, 171, 137, 136, 137, 
	172, 136, 137, 173, 136, 137, 164, 136, 
	137, 174, 136, 137, 175, 136, 137, 176, 
	136, 137, 177, 136, 137, 178, 136, 137, 
	165, 136, 137, 179, 180, 136, 137, 181, 
	136, 137, 182, 136, 137, 176, 136, 137, 
	183, 136, 137, 184, 136, 137, 185, 136, 
	137, 186, 136, 137, 187, 136, 137, 165, 
	136, 137, 188, 189, 136, 137, 190, 136, 
	137, 191, 136, 137, 192, 136, 137, 193, 
	136, 137, 194, 136, 137, 195, 136, 137, 
	166, 165, 136, 137, 196, 136, 137, 178, 
	136, 197, 198, 0, 199, 0, 70, 0, 
	200, 0, 201, 0, 202, 0, 203, 0, 
	132, 0, 204, 205, 0, 206, 0, 207, 
	0, 208, 0, 209, 0, 210, 0, 211, 
	0, 212, 0, 214, 213, 216, 215, 216, 
	217, 218, 219, 220, 218, 221, 220, 222, 
	223, 224, 225, 226, 217, 215, 216, 227, 
	215, 216, 228, 215, 216, 229, 215, 216, 
	230, 215, 216, 231, 215, 216, 232, 215, 
	216, 233, 215, 216, 234, 215, 216, 235, 
	215, 216, 236, 215, 216, 237, 215, 216, 
	238, 215, 216, 239, 215, 216, 240, 215, 
	216, 241, 215, 216, 242, 215, 216, 243, 
	215, 216, 244, 245, 215, 216, 246, 215, 
	216, 241, 243, 215, 216, 247, 215, 216, 
	248, 215, 216, 249, 215, 216, 250, 215, 
	216, 251, 215, 216, 241, 215, 216, 252, 
	215, 216, 253, 215, 216, 254, 215, 255, 
	216, 256, 215, 256, 216, 215, 216, 257, 
	215, 216, 258, 215, 216, 250, 215, 216, 
	259, 260, 215, 216, 261, 215, 216, 243, 
	215, 216, 262, 215, 216, 263, 215, 216, 
	264, 215, 216, 265, 215, 216, 251, 215, 
	216, 266, 267, 215, 216, 268, 215, 216, 
	269, 215, 216, 270, 215, 216, 271, 215, 
	216, 272, 215, 216, 251, 215, 216, 273, 
	215, 216, 265, 215, 216, 274, 215, 216, 
	275, 215, 216, 276, 215, 216, 277, 215, 
	216, 241, 243, 243, 215, 278, 0, 279, 
	0, 280, 0, 281, 0, 282, 0, 283, 
	0, 284, 0, 286, 285, 288, 287, 288, 
	289, 290, 291, 292, 290, 289, 287, 288, 
	293, 287, 288, 294, 287, 288, 295, 287, 
	296, 288, 297, 287, 297, 288, 287, 288, 
	298, 287, 288, 299, 287, 288, 300, 287, 
	288, 301, 287, 288, 302, 287, 288, 303, 
	287, 288, 304, 287, 288, 305, 287, 288, 
	306, 287, 288, 307, 287, 288, 301, 287, 
	308, 309, 0, 310, 0, 311, 0, 312, 
	0, 313, 0, 314, 0, 315, 0, 316, 
	283, 0, 318, 317, 320, 319, 320, 321, 
	322, 323, 324, 322, 325, 324, 326, 327, 
	328, 329, 330, 331, 321, 319, 320, 332, 
	319, 320, 333, 319, 320, 334, 319, 320, 
	335, 319, 320, 336, 319, 320, 337, 319, 
	320, 338, 319, 320, 339, 319, 320, 340, 
	319, 320, 341, 319, 320, 342, 319, 320, 
	343, 319, 320, 344, 319, 320, 345, 319, 
	320, 346, 319, 320, 347, 319, 320, 348, 
	319, 320, 349, 350, 319, 320, 351, 319, 
	320, 346, 348, 319, 320, 352, 319, 320, 
	353, 319, 320, 354, 319, 320, 355, 319, 
	320, 356, 319, 320, 346, 319, 320, 357, 
	319, 320, 358, 319, 320, 359, 319, 360, 
	320, 361, 319, 361, 320, 319, 320, 362, 
	319, 320, 363, 319, 320, 355, 319, 320, 
	364, 365, 319, 320, 366, 319, 320, 348, 
	319, 320, 367, 319, 320, 368, 319, 320, 
	369, 319, 320, 370, 319, 320, 356, 319, 
	320, 371, 319, 320, 372, 319, 320, 373, 
	319, 320, 368, 319, 320, 374, 375, 319, 
	320, 376, 319, 320, 377, 319, 320, 378, 
	319, 320, 379, 319, 320, 380, 319, 320, 
	356, 319, 320, 381, 319, 320, 370, 319, 
	320, 382, 319, 320, 383, 319, 320, 384, 
	319, 320, 385, 319, 320, 346, 348, 348, 
	319, 386, 0, 387, 0, 78, 0, 388, 
	0, 389, 0, 390, 0, 391, 0, 56, 
	70, 70, 0, 392, 393, 392, 0, 396, 
	395, 397, 398, 395, 394, 0, 400, 401, 
	399, 0, 400, 399, 396, 402, 400, 401, 
	402, 399, 396, 403, 404, 405, 406, 407, 
	408, 409, 407, 410, 411, 412, 413, 414, 
	415, 416, 403, 0, 83, 417, 82, 83, 
	418, 82, 83, 419, 82, 83, 420, 82, 
	83, 108, 418, 82, 83, 421, 82, 83, 
	422, 82, 83, 423, 82, 424, 83, 425, 
	82, 425, 83, 82, 83, 426, 82, 83, 
	427, 82, 83, 428, 82, 83, 429, 82, 
	83, 108, 82, 83, 430, 431, 82, 83, 
	432, 82, 83, 418, 82, 83, 433, 82, 
	83, 434, 82, 83, 435, 82, 83, 436, 
	82, 83, 429, 82, 83, 437, 82, 83, 
	438, 82, 83, 439, 82, 83, 440, 82, 
	83, 441, 82, 83, 442, 82, 83, 429, 
	82, 83, 443, 82, 83, 444, 82, 83, 
	445, 82, 83, 446, 82, 83, 108, 418, 
	418, 82, 447, 0
]

class << self
	attr_accessor :_lexer_trans_targs
	private :_lexer_trans_targs, :_lexer_trans_targs=
end
self._lexer_trans_targs = [
	0, 2, 4, 4, 5, 15, 17, 31, 
	34, 37, 39, 67, 135, 143, 236, 310, 
	315, 3, 6, 7, 8, 9, 8, 8, 
	9, 8, 10, 10, 10, 11, 10, 10, 
	10, 11, 12, 13, 14, 4, 14, 15, 
	4, 16, 18, 19, 20, 21, 22, 23, 
	24, 25, 26, 27, 28, 29, 30, 356, 
	32, 33, 4, 16, 33, 4, 16, 35, 
	36, 4, 35, 34, 36, 38, 31, 40, 
	42, 41, 43, 44, 45, 46, 47, 48, 
	49, 50, 49, 50, 50, 4, 51, 65, 
	321, 323, 326, 336, 344, 351, 52, 53, 
	54, 55, 56, 57, 58, 59, 60, 61, 
	62, 63, 64, 4, 66, 4, 4, 5, 
	15, 17, 31, 34, 37, 39, 67, 135, 
	143, 236, 310, 315, 68, 69, 70, 71, 
	72, 73, 74, 75, 76, 77, 78, 79, 
	78, 79, 79, 4, 80, 94, 101, 109, 
	115, 125, 81, 82, 83, 84, 85, 86, 
	87, 88, 89, 90, 91, 92, 93, 4, 
	95, 96, 97, 98, 99, 100, 66, 102, 
	103, 104, 105, 106, 107, 108, 110, 111, 
	112, 113, 114, 116, 119, 117, 118, 120, 
	121, 122, 123, 124, 126, 133, 127, 128, 
	129, 130, 131, 132, 134, 136, 138, 137, 
	139, 140, 141, 142, 144, 210, 145, 146, 
	147, 148, 149, 150, 151, 152, 153, 152, 
	153, 153, 4, 154, 168, 169, 171, 180, 
	188, 196, 205, 155, 156, 157, 158, 159, 
	160, 161, 162, 163, 164, 165, 166, 167, 
	4, 66, 170, 168, 172, 174, 173, 175, 
	176, 177, 178, 179, 181, 182, 183, 184, 
	185, 186, 187, 189, 191, 190, 192, 193, 
	194, 195, 197, 203, 198, 199, 200, 201, 
	202, 204, 206, 207, 208, 209, 211, 212, 
	213, 214, 215, 216, 217, 218, 219, 218, 
	219, 219, 4, 220, 230, 221, 222, 223, 
	224, 225, 226, 227, 228, 229, 66, 231, 
	232, 233, 234, 235, 237, 307, 238, 239, 
	240, 241, 242, 243, 244, 245, 246, 245, 
	246, 246, 4, 247, 261, 262, 264, 273, 
	281, 289, 293, 302, 248, 249, 250, 251, 
	252, 253, 254, 255, 256, 257, 258, 259, 
	260, 4, 66, 263, 261, 265, 267, 266, 
	268, 269, 270, 271, 272, 274, 275, 276, 
	277, 278, 279, 280, 282, 284, 283, 285, 
	286, 287, 288, 290, 291, 292, 294, 300, 
	295, 296, 297, 298, 299, 301, 303, 304, 
	305, 306, 308, 309, 311, 312, 313, 314, 
	315, 316, 317, 319, 320, 318, 316, 317, 
	318, 316, 319, 320, 5, 15, 17, 31, 
	34, 37, 39, 67, 135, 143, 236, 310, 
	315, 322, 65, 324, 325, 327, 328, 329, 
	330, 331, 332, 333, 334, 335, 337, 339, 
	338, 340, 341, 342, 343, 345, 346, 347, 
	348, 349, 350, 352, 353, 354, 355, 0
]

class << self
	attr_accessor :_lexer_trans_actions
	private :_lexer_trans_actions, :_lexer_trans_actions=
end
self._lexer_trans_actions = [
	43, 0, 0, 54, 3, 1, 0, 29, 
	1, 29, 29, 29, 29, 29, 29, 29, 
	35, 0, 0, 0, 7, 139, 48, 0, 
	102, 9, 5, 45, 134, 45, 0, 33, 
	122, 33, 33, 0, 11, 106, 0, 0, 
	114, 25, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 57, 149, 126, 0, 110, 23, 0, 
	27, 118, 27, 51, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	57, 144, 0, 54, 0, 78, 33, 84, 
	84, 84, 84, 84, 84, 84, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 19, 19, 31, 130, 60, 
	57, 31, 63, 57, 63, 63, 63, 63, 
	63, 63, 63, 66, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 57, 144, 
	0, 54, 0, 69, 33, 84, 84, 84, 
	84, 84, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 13, 
	0, 0, 0, 0, 0, 0, 13, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 57, 144, 0, 
	54, 0, 72, 33, 84, 84, 84, 84, 
	84, 84, 84, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	15, 15, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 57, 144, 0, 
	54, 0, 81, 84, 84, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 21, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 57, 144, 0, 
	54, 0, 75, 33, 84, 84, 84, 84, 
	84, 84, 84, 84, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 17, 17, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 37, 37, 54, 37, 87, 0, 
	0, 39, 0, 0, 93, 90, 41, 96, 
	90, 96, 96, 96, 96, 96, 96, 96, 
	99, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_lexer_eof_actions
	private :_lexer_eof_actions, :_lexer_eof_actions=
end
self._lexer_eof_actions = [
	0, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43, 43, 43, 43, 
	43, 43, 43, 43, 43
]

class << self
	attr_accessor :lexer_start
end
self.lexer_start = 1;
class << self
	attr_accessor :lexer_first_final
end
self.lexer_first_final = 356;
class << self
	attr_accessor :lexer_error
end
self.lexer_error = 0;

class << self
	attr_accessor :lexer_en_main
end
self.lexer_en_main = 1;


# line 128 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
      end
 
      def scan(data)
        data = (data + "\n%_FEATURE_END_%").unpack("c*") # Explicit EOF simplifies things considerably
        eof = pe = data.length
 
        @line_number = 1
        @last_newline = 0
 
        
# line 720 "lib/gherkin/rb_lexer/hr.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = lexer_start
end

# line 138 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
        
# line 729 "lib/gherkin/rb_lexer/hr.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	_goto_level = 0
	_resume = 10
	_eof_trans = 15
	_again = 20
	_test_eof = 30
	_out = 40
	while true
	_trigger_goto = false
	if _goto_level <= 0
	if p == pe
		_goto_level = _test_eof
		next
	end
	if cs == 0
		_goto_level = _out
		next
	end
	end
	if _goto_level <= _resume
	_keys = _lexer_key_offsets[cs]
	_trans = _lexer_index_offsets[cs]
	_klen = _lexer_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p] < _lexer_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p] > _lexer_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _lexer_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p] < _lexer_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p] > _lexer_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _lexer_indicies[_trans]
	cs = _lexer_trans_targs[_trans]
	if _lexer_trans_actions[_trans] != 0
		_acts = _lexer_trans_actions[_trans]
		_nacts = _lexer_actions[_acts]
		_acts += 1
		while _nacts > 0
			_nacts -= 1
			_acts += 1
			case _lexer_actions[_acts - 1]
when 0 then
# line 9 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @content_start = p
          @current_line = @line_number
          @start_col = p - @last_newline - "#{@keyword}:".length
        		end
when 1 then
# line 15 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @current_line = @line_number
          @start_col = p - @last_newline
        		end
when 2 then
# line 20 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @content_start = p
        		end
when 3 then
# line 24 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @docstring_content_type_start = p
        		end
when 4 then
# line 27 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @docstring_content_type_end = p
        		end
when 5 then
# line 31 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          con = unindent(@start_col, utf8_pack(data[@content_start...@next_keyword_start-1]).sub(/(\r?\n)?([\t ])*\Z/, '').gsub(/\\"\\"\\"/, '"""'))
          con_type = utf8_pack(data[@docstring_content_type_start...@docstring_content_type_end]).strip
          @listener.doc_string(con_type, con, @current_line) 
        		end
when 6 then
# line 36 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          p = store_keyword_content(:feature, data, p, eof)
        		end
when 7 then
# line 40 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          p = store_keyword_content(:background, data, p, eof)
        		end
when 8 then
# line 44 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          p = store_keyword_content(:scenario, data, p, eof)
        		end
when 9 then
# line 48 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          p = store_keyword_content(:scenario_outline, data, p, eof)
        		end
when 10 then
# line 52 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          p = store_keyword_content(:examples, data, p, eof)
        		end
when 11 then
# line 56 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.step(@keyword, con, @current_line)
        		end
when 12 then
# line 61 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.comment(con, @line_number)
          @keyword_start = nil
        		end
when 13 then
# line 67 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          @listener.tag(con, @current_line)
          @keyword_start = nil
        		end
when 14 then
# line 73 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @line_number += 1
        		end
when 15 then
# line 77 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @last_newline = p + 1
        		end
when 16 then
# line 81 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @keyword_start ||= p
        		end
when 17 then
# line 85 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @keyword = utf8_pack(data[@keyword_start...p]).sub(/:$/,'')
          @keyword_start = nil
        		end
when 18 then
# line 90 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @next_keyword_start = p
        		end
when 19 then
# line 94 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          p = p - 1
          current_row = []
          @current_line = @line_number
        		end
when 20 then
# line 100 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @content_start = p
        		end
when 21 then
# line 104 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          con = utf8_pack(data[@content_start...p]).strip
          current_row << con.gsub(/\\\|/, "|").gsub(/\\n/, "\n").gsub(/\\\\/, "\\")
        		end
when 22 then
# line 109 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          @listener.row(current_row, @current_line)
        		end
when 23 then
# line 113 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/cucumber/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 973 "lib/gherkin/rb_lexer/hr.rb"
			end # action switch
		end
	end
	if _trigger_goto
		next
	end
	end
	if _goto_level <= _again
	if cs == 0
		_goto_level = _out
		next
	end
	p += 1
	if p != pe
		_goto_level = _resume
		next
	end
	end
	if _goto_level <= _test_eof
	if p == eof
	__acts = _lexer_eof_actions[cs]
	__nacts =  _lexer_actions[__acts]
	__acts += 1
	while __nacts > 0
		__nacts -= 1
		__acts += 1
		case _lexer_actions[__acts - 1]
when 23 then
# line 113 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
		begin

          if cs < lexer_first_final
            content = current_line_content(data, p)
            raise Gherkin::Lexer::LexingError.new("Lexing error on line %d: '%s'. See http://wiki.github.com/cucumber/gherkin/lexingerror for more information." % [@line_number, content])
          else
            @listener.eof
          end
        		end
# line 1012 "lib/gherkin/rb_lexer/hr.rb"
		end # eof action switch
	end
	if _trigger_goto
		next
	end
end
	end
	if _goto_level <= _out
		break
	end
	end
	end

# line 139 "/Users/ahellesoy/github/gherkin/tasks/../ragel/i18n/hr.rb.rl"
      end

      def unindent(startcol, text)
        text.gsub(/^[\t ]{0,#{startcol}}/, "")
      end

      def store_keyword_content(event, data, p, eof)
        end_point = (!@next_keyword_start or (p == eof)) ? p : @next_keyword_start
        content = unindent(@start_col + 2, utf8_pack(data[@content_start...end_point])).rstrip
        content_lines = content.split("\n")
        name = content_lines.shift || ""
        name.strip!
        description = content_lines.join("\n")
        @listener.__send__(event, @keyword, name, description, @current_line)
        @next_keyword_start ? @next_keyword_start - 1 : p
      ensure
        @next_keyword_start = nil
      end
      
      def current_line_content(data, p)
        rest = data[@last_newline..-1]
        utf8_pack(rest[0..rest.index(10)||-1]).strip # 10 is \n
      end

      if (RUBY_VERSION =~ /^1\.9/)
        def utf8_pack(array)
          array.pack("c*").force_encoding("UTF-8")
        end
      else
        def utf8_pack(array)
          array.pack("c*")
        end
      end
    end
  end
end
