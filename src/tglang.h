#ifndef TGLANG_H
#define TGLANG_H

/**
 * Library for determining programming or markup language of a code snippet.
 */
 
#include <stddef.h>

#ifdef __cplusplus
extern "C" {
#endif

#if defined(_MSC_VER)
#  ifdef tglang_EXPORTS
#    define TGLANG_EXPORT __declspec(dllexport)
#  else
#    define TGLANG_EXPORT __declspec(dllimport)
#  endif
#else
#  define TGLANG_EXPORT __attribute__((visibility("default")))
#endif

const int TG_LANG_COUNT;

const char* TG_LANG_NAMES[100];

/**
 * List of supported languages.
 */
enum TglangLanguage {
  TGLANG_LANGUAGE_OTHER,
  TGLANG_LANGUAGE_1S_ENTERPRISE,
  TGLANG_LANGUAGE_ABAP,
  TGLANG_LANGUAGE_ACTIONSCRIPT,
  TGLANG_LANGUAGE_ADA,
  TGLANG_LANGUAGE_APACHE_GROOVY, //gues
  TGLANG_LANGUAGE_APEX,
  TGLANG_LANGUAGE_APPLESCRIPT,
  TGLANG_LANGUAGE_ASP,
  TGLANG_LANGUAGE_ASSEMBLY, //gues
  TGLANG_LANGUAGE_AUTOHOTKEY,
  TGLANG_LANGUAGE_AWK,
  TGLANG_LANGUAGE_BASIC,
  TGLANG_LANGUAGE_BATCH,
  TGLANG_LANGUAGE_BISON,
  TGLANG_LANGUAGE_C, //gues
  TGLANG_LANGUAGE_CLOJURE, //gues
  TGLANG_LANGUAGE_CMAKE, //gues
  TGLANG_LANGUAGE_COBOL, //gues
  TGLANG_LANGUAGE_COFFESCRIPT, //gues
  TGLANG_LANGUAGE_COMMON_LISP,
  TGLANG_LANGUAGE_CPLUSPLUS, //gues
  TGLANG_LANGUAGE_CRYSTAL,
  TGLANG_LANGUAGE_CSHARP, //gues
  TGLANG_LANGUAGE_CSS, //gues
  TGLANG_LANGUAGE_CSV, //gues
  TGLANG_LANGUAGE_D,
  TGLANG_LANGUAGE_DART, //gues
  TGLANG_LANGUAGE_DELPHI,
  TGLANG_LANGUAGE_DOCKER, //gues
  TGLANG_LANGUAGE_ELIXIR, //gues
  TGLANG_LANGUAGE_ELM,
  TGLANG_LANGUAGE_ERLANG, //gues
  TGLANG_LANGUAGE_FIFT,
  TGLANG_LANGUAGE_FORTH,
  TGLANG_LANGUAGE_FORTRAN, //gues
  TGLANG_LANGUAGE_FSHARP,
  TGLANG_LANGUAGE_FUNC,
  TGLANG_LANGUAGE_GAMS,
  TGLANG_LANGUAGE_GO, //gues
  TGLANG_LANGUAGE_GRADLE,
  TGLANG_LANGUAGE_GRAPHQL,
  TGLANG_LANGUAGE_HACK,
  TGLANG_LANGUAGE_HASKELL, //gues
  TGLANG_LANGUAGE_HTML, //gues
  TGLANG_LANGUAGE_ICON,
  TGLANG_LANGUAGE_IDL,
  TGLANG_LANGUAGE_INI, //gues
  TGLANG_LANGUAGE_JAVA, //gues
  TGLANG_LANGUAGE_JAVASCRIPT, //gues
  TGLANG_LANGUAGE_JSON, //gues
  TGLANG_LANGUAGE_JULIA, ///gues
  TGLANG_LANGUAGE_KEYMAN,
  TGLANG_LANGUAGE_KOTLIN, //gues
  TGLANG_LANGUAGE_LATEX,
  TGLANG_LANGUAGE_LISP, //gues
  TGLANG_LANGUAGE_LOGO,
  TGLANG_LANGUAGE_LUA, //gues
  TGLANG_LANGUAGE_MAKEFILE, //gues
  TGLANG_LANGUAGE_MARKDOWN, //gues
  TGLANG_LANGUAGE_MATLAB, ///gues
  TGLANG_LANGUAGE_NGINX,
  TGLANG_LANGUAGE_NIM,
  TGLANG_LANGUAGE_OBJECTIVE_C, //gues
  TGLANG_LANGUAGE_OCAML, //gues
  TGLANG_LANGUAGE_OPENEDGE_ABL,
  TGLANG_LANGUAGE_PASCAL, //gues
  TGLANG_LANGUAGE_PERL, //gues
  TGLANG_LANGUAGE_PHP, //gues
  TGLANG_LANGUAGE_PL_SQL,
  TGLANG_LANGUAGE_POWERSHELL, //gues
  TGLANG_LANGUAGE_PROLOG, //gues
  TGLANG_LANGUAGE_PROTOBUF,
  TGLANG_LANGUAGE_PYTHON, //gues
  TGLANG_LANGUAGE_QML,
  TGLANG_LANGUAGE_R, //gues
  TGLANG_LANGUAGE_RAKU,
  TGLANG_LANGUAGE_REGEX,
  TGLANG_LANGUAGE_RUBY, //gues
  TGLANG_LANGUAGE_RUST, //gues
  TGLANG_LANGUAGE_SAS,
  TGLANG_LANGUAGE_SCALA, //gues
  TGLANG_LANGUAGE_SCHEME,
  TGLANG_LANGUAGE_SHELL, //gues
  TGLANG_LANGUAGE_SMALLTALK,
  TGLANG_LANGUAGE_SOLIDITY,
  TGLANG_LANGUAGE_SQL, //gues
  TGLANG_LANGUAGE_SWIFT,
  TGLANG_LANGUAGE_TCL,
  TGLANG_LANGUAGE_TEXTILE,
  TGLANG_LANGUAGE_TL,
  TGLANG_LANGUAGE_TYPESCRIPT, //gues
  TGLANG_LANGUAGE_UNREALSCRIPT,
  TGLANG_LANGUAGE_VALA,
  TGLANG_LANGUAGE_VBSCRIPT,
  TGLANG_LANGUAGE_VERILOG, //gues
  TGLANG_LANGUAGE_VISUAL_BASIC, //gues
  TGLANG_LANGUAGE_WOLFRAM,
  TGLANG_LANGUAGE_XML, //gues
  TGLANG_LANGUAGE_YAML //gues
};

enum GuesLanguage {
  GUES_ASM, 
  GUES_BAT, 
  GUES_C, 
  GUES_CS, 
  GUES_CPP, 
  GUES_CLJ, 
  GUES_CMAKE, 
  GUES_CBL,
  GUES_COFFEE, 
  GUES_CSS, 
  GUES_CSV, 
  GUES_DART, 
  GUES_DM, 
  GUES_DOCKERFILE, 
  GUES_EX,
  GUES_ERL, 
  GUES_F90, 
  GUES_GO, 
  GUES_GROOVY, 
  GUES_HS, 
  GUES_HTML, 
  GUES_INI,
  GUES_JAVA, 
  GUES_JS, 
  GUES_JSON, 
  GUES_JL, 
  GUES_KT, 
  GUES_LISP, 
  GUES_LUA,
  GUES_MAKEFILE, 
  GUES_MD, 
  GUES_MATLAB, 
  GUES_MM, 
  GUES_ML, 
  GUES_PAS, 
  GUES_PM,
  GUES_PHP, 
  GUES_PS1, 
  GUES_PROLOG, 
  GUES_PY, 
  GUES_R, 
  GUES_RB, 
  GUES_RS, 
  GUES_SCALA,
  GUES_SH, 
  GUES_SQL, 
  GUES_SWIFT, 
  GUES_TEX, 
  GUES_TOML, 
  GUES_TS, 
  GUES_V, 
  GUES_VBA,
  GUES_XML, 
  GUES_YAML
};

const int GUES_LANG_COUNT;

const char *GUES_LANG_NAMES[54];

typedef struct {
    enum GuesLanguage gues_lang_code;
    float gues_probability;
} GuesProbLang;

TGLANG_EXPORT GuesProbLang gues_detect_programming_language(const char *text);

/**
 * Detects programming language of a code snippet.
 * \param[in] text Text of a code snippet. A null-terminated string in UTF-8 encoding.
 * \return detected programming language.
 */
TGLANG_EXPORT enum TglangLanguage tglang_detect_programming_language(const char *text);

TGLANG_EXPORT enum TglangLanguage from_gues_to_tg(enum GuesLanguage gues_lang_code);


#ifdef __cplusplus
}
#endif

#endif
