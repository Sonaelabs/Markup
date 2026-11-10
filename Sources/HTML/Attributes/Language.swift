//
// Copyright © 2026 Sonae Labs.
// Released under the MIT License.
//

/// Represents all languages supported by the HTML `lang` attribute based on BCP 47.
public enum Language: String, Sendable {

	// MARK: A
	case afrikaans             = "af"
	case albanian              = "sq"
	case amharic               = "am"
	case arabic                = "ar"
	case arabicAE              = "ar-AE"
	case arabicEG              = "ar-EG"
	case arabicMA              = "ar-MA"
	case arabicSA              = "ar-SA"
	case aragonese             = "an"
	case armenian              = "hy"
	case assamese              = "as"
	case avaric                = "av"
	case avestan               = "ae"
	case aymara                = "ay"
	case azerbaijani           = "az"
	case azerbaijaniCyrillic   = "az-Cyrl"
	case azerbaijaniLatin      = "az-Latn"

	// MARK: B
	case bambara               = "bm"
	case bashkir               = "ba"
	case basque                = "eu"
	case belarusian            = "be"
	case bengali               = "bn"
	case bihari                = "bh"
	case bislama               = "bi"
	case bosnian               = "bs"
	case bosnianCyrillic       = "bs-Cyrl"
	case bosnianLatin          = "bs-Latn"
	case breton                = "br"
	case bulgarian             = "bg"
	case burmese               = "my"

	// MARK: C
	case catalan               = "ca"
	case chamorro              = "ch"
	case chechen               = "ce"
	case chichewa              = "ny"
	case chinese               = "zh"
	case chineseCN             = "zh-CN"
	case chineseHK             = "zh-HK"
	case chineseSG             = "zh-SG"
	case chineseTW             = "zh-TW"
	case chineseSimplified     = "zh-Hans"
	case chineseTraditional    = "zh-Hant"
	case chuvash               = "cv"
	case cornish               = "kw"
	case corsican              = "co"
	case cree                  = "cr"
	case croatian              = "hr"
	case czech                 = "cs"

	// MARK: D
	case danish                = "da"
	case divehi                = "dv"
	case dutch                 = "nl"
	case dutchBE               = "nl-BE"
	case dutchNL               = "nl-NL"
	case dzongkha              = "dz"

	// MARK: E
	case english               = "en"
	case englishAU             = "en-AU"
	case englishCA             = "en-CA"
	case englishGB             = "en-GB"
	case englishNZ             = "en-NZ"
	case englishUS             = "en-US"
	case esperanto             = "eo"
	case estonian              = "et"
	case ewe                   = "ee"

	// MARK: F
	case faroese               = "fo"
	case fijian                = "fj"
	case finnish               = "fi"
	case french                = "fr"
	case frenchBE              = "fr-BE"
	case frenchCA              = "fr-CA"
	case frenchCH              = "fr-CH"
	case frenchFR              = "fr-FR"
	case fula                  = "ff"

	// MARK: G
	case galician              = "gl"
	case georgian              = "ka"
	case german                = "de"
	case germanAT              = "de-AT"
	case germanCH              = "de-CH"
	case germanDE              = "de-DE"
	case greek                 = "el"
	case guarani               = "gn"
	case gujarati              = "gu"

	// MARK: H
	case haitian               = "ht"
	case hausa                 = "ha"
	case hebrew                = "he"
	case herero                = "hz"
	case hindi                 = "hi"
	case hiriMotu              = "ho"
	case hungarian             = "hu"

	// MARK: I
	case icelandic             = "is"
	case ido                   = "io"
	case igbo                  = "ig"
	case indonesian            = "id"
	case interlingua           = "ia"
	case interlingue           = "ie"
	case inuktitut             = "iu"
	case inupiaq               = "ik"
	case irish                 = "ga"
	case italian               = "it"
	case italianCH             = "it-CH"
	case italianIT             = "it-IT"

	// MARK: J
	case japanese              = "ja"
	case javanese              = "jv"

	// MARK: K
	case kalaallisut           = "kl"
	case kannada               = "kn"
	case kanuri                = "kr"
	case kashmiri              = "ks"
	case kazakh                = "kk"
	case khmer                 = "km"
	case kikuyu                = "ki"
	case kinyarwanda           = "rw"
	case kirghiz               = "ky"
	case kirundi               = "rn"
	case komi                  = "kv"
	case kongo                 = "kg"
	case korean                = "ko"
	case kurdish               = "ku"
	case kwanyama              = "kj"

	// MARK: L
	case lao                   = "lo"
	case latin                 = "la"
	case latvian               = "lv"
	case limburgish            = "li"
	case lingala               = "ln"
	case lithuanian            = "lt"
	case lubaKatanga           = "lu"
	case luganda               = "lg"
	case luxembourgish         = "lb"

	// MARK: M
	case macedonian            = "mk"
	case malagasy              = "mg"
	case malay                 = "ms"
	case malayalam             = "ml"
	case maltese               = "mt"
	case manx                  = "gv"
	case maori                 = "mi"
	case marathi               = "mr"
	case marshallese           = "mh"
	case mongolian             = "mn"
	case mongolianCyrillic     = "mn-Cyrl"
	case mongolianTraditional  = "mn-Mong"

	// MARK: N
	case nauru                 = "na"
	case navajo                = "nv"
	case ndonga                = "ng"
	case nepali                = "ne"
	case northernSami          = "se"
	case northNdebele          = "nd"
	case norwegianBokmal       = "nb"
	case norwegianNynorsk      = "nn"
	case norwegian             = "no"
	case nuosu                 = "ii"

	// MARK: O
	case occitan               = "oc"
	case ojibwe                = "oj"
	case oldChurchSlavonic     = "cu"
	case oromo                 = "om"
	case oriya                 = "or"
	case ossetian              = "os"

	// MARK: P
	case pali                  = "pi"
	case pashto                = "ps"
	case persian               = "fa"
	case polish                = "pl"
	case portuguese            = "pt"
	case portugueseBR          = "pt-BR"
	case portuguesePT          = "pt-PT"
	case punjabi               = "pa"

	// MARK: Q
	case quechua               = "qu"

	// MARK: R
	case romansh               = "rm"
	case romanian              = "ro"
	case russian               = "ru"

	// MARK: S
	case samoan                = "sm"
	case sango                 = "sg"
	case sanskrit              = "sa"
	case sardinian             = "sc"
	case scottishGaelic        = "gd"
	case serbian               = "sr"
	case serbianCyrillic       = "sr-Cyrl"
	case serbianLatin          = "sr-Latn"
	case shona                 = "sn"
	case sindhi                = "sd"
	case sinhala               = "si"
	case slovak                = "sk"
	case slovenian             = "sl"
	case somali                = "so"
	case southernSotho         = "st"
	case southNdebele          = "nr"
	case spanish               = "es"
	case spanishES             = "es-ES"
	case spanishMX             = "es-MX"
	case spanishLatinAmerica   = "es-419"
	case sundanese             = "su"
	case swahili               = "sw"
	case swati                 = "ss"
	case swedish               = "sv"

	// MARK: T
	case tagalog               = "tl"
	case tahitian              = "ty"
	case tajik                 = "tg"
	case tamil                 = "ta"
	case tatar                 = "tt"
	case telugu                = "te"
	case thai                  = "th"
	case tigrinya              = "ti"
	case tibetan               = "bo"
	case tonga                 = "to"
	case tsonga                = "ts"
	case tswana                = "tn"
	case turkish               = "tr"
	case turkmen               = "tk"
	case twi                   = "tw"

	// MARK: U
	case uighur                = "ug"
	case ukrainian             = "uk"
	case urdu                  = "ur"
	case uzbek                 = "uz"
	case uzbekCyrillic         = "uz-Cyrl"
	case uzbekLatin            = "uz-Latn"

	// MARK: V
	case venda                 = "ve"
	case vietnamese            = "vi"
	case volapuk               = "vo"

	// MARK: W
	case walloon               = "wa"
	case welsh                 = "cy"
	case westernFrisian        = "fy"
	case wolof                 = "wo"

	// MARK: X
	case xhosa                 = "xh"

	// MARK: Y
	case yiddish               = "yi"
	case yoruba                = "yo"

	// MARK: Z
	case zhuang                = "za"
	case zulu                  = "zu"
}
