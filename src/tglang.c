#include "tglang.h"

#include <dlfcn.h>

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <tensorflow/c/c_api.h>

void NoOpDeallocator(void* data, size_t a, void* b) {}

const char* saved_model_dir = "../resources/model/"; // Path of the model

const char* tensorflow_so_path = "../resources/lib/libtensorflow.so.2.5.0";

const int TG_LANG_COUNT = 100;

const char* TG_LANG_NAMES[100] = {
  "TGLANG_LANGUAGE_OTHER",
  "TGLANG_LANGUAGE_1S_ENTERPRISE",
  "TGLANG_LANGUAGE_ABAP",
  "TGLANG_LANGUAGE_ACTIONSCRIPT",
  "TGLANG_LANGUAGE_ADA",
  "TGLANG_LANGUAGE_APACHE_GROOVY",
  "TGLANG_LANGUAGE_APEX",
  "TGLANG_LANGUAGE_APPLESCRIPT",
  "TGLANG_LANGUAGE_ASP",
  "TGLANG_LANGUAGE_ASSEMBLY",
  "TGLANG_LANGUAGE_AUTOHOTKEY",
  "TGLANG_LANGUAGE_AWK",
  "TGLANG_LANGUAGE_BASIC",
  "TGLANG_LANGUAGE_BATCH",
  "TGLANG_LANGUAGE_BISON",
  "TGLANG_LANGUAGE_C",
  "TGLANG_LANGUAGE_CLOJURE",
  "TGLANG_LANGUAGE_CMAKE",
  "TGLANG_LANGUAGE_COBOL",
  "TGLANG_LANGUAGE_COFFESCRIPT",
  "TGLANG_LANGUAGE_COMMON_LISP",
  "TGLANG_LANGUAGE_CPLUSPLUS",
  "TGLANG_LANGUAGE_CRYSTAL",
  "TGLANG_LANGUAGE_CSHARP",
  "TGLANG_LANGUAGE_CSS",
  "TGLANG_LANGUAGE_CSV",
  "TGLANG_LANGUAGE_D",
  "TGLANG_LANGUAGE_DART",
  "TGLANG_LANGUAGE_DELPHI",
  "TGLANG_LANGUAGE_DOCKER",
  "TGLANG_LANGUAGE_ELIXIR",
  "TGLANG_LANGUAGE_ELM",
  "TGLANG_LANGUAGE_ERLANG",
  "TGLANG_LANGUAGE_FIFT",
  "TGLANG_LANGUAGE_FORTH",
  "TGLANG_LANGUAGE_FORTRAN",
  "TGLANG_LANGUAGE_FSHARP",
  "TGLANG_LANGUAGE_FUNC",
  "TGLANG_LANGUAGE_GAMS",
  "TGLANG_LANGUAGE_GO",
  "TGLANG_LANGUAGE_GRADLE",
  "TGLANG_LANGUAGE_GRAPHQL",
  "TGLANG_LANGUAGE_HACK",
  "TGLANG_LANGUAGE_HASKELL",
  "TGLANG_LANGUAGE_HTML",
  "TGLANG_LANGUAGE_ICON",
  "TGLANG_LANGUAGE_IDL",
  "TGLANG_LANGUAGE_INI",
  "TGLANG_LANGUAGE_JAVA",
  "TGLANG_LANGUAGE_JAVASCRIPT",
  "TGLANG_LANGUAGE_JSON",
  "TGLANG_LANGUAGE_JULIA",
  "TGLANG_LANGUAGE_KEYMAN",
  "TGLANG_LANGUAGE_KOTLIN",
  "TGLANG_LANGUAGE_LATEX",
  "TGLANG_LANGUAGE_LISP",
  "TGLANG_LANGUAGE_LOGO",
  "TGLANG_LANGUAGE_LUA",
  "TGLANG_LANGUAGE_MAKEFILE",
  "TGLANG_LANGUAGE_MARKDOWN",
  "TGLANG_LANGUAGE_MATLAB",
  "TGLANG_LANGUAGE_NGINX",
  "TGLANG_LANGUAGE_NIM",
  "TGLANG_LANGUAGE_OBJECTIVE_C",
  "TGLANG_LANGUAGE_OCAML",
  "TGLANG_LANGUAGE_OPENEDGE_ABL",
  "TGLANG_LANGUAGE_PASCAL",
  "TGLANG_LANGUAGE_PERL",
  "TGLANG_LANGUAGE_PHP",
  "TGLANG_LANGUAGE_PL_SQL",
  "TGLANG_LANGUAGE_POWERSHELL",
  "TGLANG_LANGUAGE_PROLOG",
  "TGLANG_LANGUAGE_PROTOBUF",
  "TGLANG_LANGUAGE_PYTHON",
  "TGLANG_LANGUAGE_QML",
  "TGLANG_LANGUAGE_R",
  "TGLANG_LANGUAGE_RAKU",
  "TGLANG_LANGUAGE_REGEX",
  "TGLANG_LANGUAGE_RUBY",
  "TGLANG_LANGUAGE_RUST",
  "TGLANG_LANGUAGE_SAS",
  "TGLANG_LANGUAGE_SCALA",
  "TGLANG_LANGUAGE_SCHEME",
  "TGLANG_LANGUAGE_SHELL",
  "TGLANG_LANGUAGE_SMALLTALK",
  "TGLANG_LANGUAGE_SOLIDITY",
  "TGLANG_LANGUAGE_SQL",
  "TGLANG_LANGUAGE_SWIFT",
  "TGLANG_LANGUAGE_TCL",
  "TGLANG_LANGUAGE_TEXTILE",
  "TGLANG_LANGUAGE_TL",
  "TGLANG_LANGUAGE_TYPESCRIPT",
  "TGLANG_LANGUAGE_UNREALSCRIPT",
  "TGLANG_LANGUAGE_VALA",
  "TGLANG_LANGUAGE_VBSCRIPT",
  "TGLANG_LANGUAGE_VERILOG",
  "TGLANG_LANGUAGE_VISUAL_BASIC",
  "TGLANG_LANGUAGE_WOLFRAM",
  "TGLANG_LANGUAGE_XML",
  "TGLANG_LANGUAGE_YAML"
};

const int GUES_LANG_COUNT = 54;

const char *GUES_LANG_NAMES[54] = {
  "Assembly",
  "Batchfile",
  "C",
  "C#",
  "C++",
  "Clojure",
  "CMake",
  "COBOL",
  "CoffeeScript",
  "CSS",
  "CSV",
  "Dart",
  "DM",
  "Dockerfile",
  "Elixir",
  "Erlang",
  "Fortran",
  "Go",
  "Groovy",
  "Haskell",
  "HTML",
  "INI",
  "Java",
  "JavaScript",
  "JSON",
  "Julia",
  "Kotlin",
  "Lisp",
  "Lua",
  "Makefile",
  "Markdown",
  "Matlab",
  "Objective-C",
  "OCaml",
  "Pascal",
  "Perl",
  "PHP",
  "PowerShell",
  "Prolog",
  "Python",
  "R",
  "Ruby",
  "Rust",
  "Scala",
  "Shell",
  "SQL",
  "Swift",
  "TeX",
  "TOML",
  "TypeScript",
  "Verilog",
  "Visual Basic",
  "XML",
  "YAML"
};

// -------------------Initialazation-------------------
void* handle = NULL;
TF_Graph* (*TF_NewGraph_dlsys)();
TF_Status* (*TF_NewStatus_dlsys)();
TF_SessionOptions* (*TF_NewSessionOptions_dlsys)();
TF_Session* (*TF_LoadSessionFromSavedModel_dlsys)(
    const TF_SessionOptions* session_options, const TF_Buffer* run_options,
    const char* export_dir, const char* const* tags, int tags_len,
    TF_Graph* graph, TF_Buffer* meta_graph_def, TF_Status* status
);
TF_Code (*TF_GetCode_dlsys)(const TF_Status* s);
const char* (*TF_Message_dlsys)(const TF_Status* s);
TF_Operation* (*TF_GraphOperationByName_dlsys)(TF_Graph* graph, const char* oper_name);
void (*TF_StringInit_dlsys)(TF_TString *t);
void (*TF_StringCopy_dlsys)(TF_TString *dst, const char *src, size_t size);
TF_Tensor* (*TF_NewTensor_dlsys)(
    TF_DataType, const int64_t* dims, int num_dims, void* data, size_t len,
    void (*deallocator)(void* data, size_t len, void* arg),
    void* deallocator_arg
);
void (*TF_SessionRun_dlsys)(
    TF_Session* session,
    // RunOptions
    const TF_Buffer* run_options,
    // Input tensors
    const TF_Output* inputs, TF_Tensor* const* input_values, int ninputs,
    // Output tensors
    const TF_Output* outputs, TF_Tensor** output_values, int noutputs,
    // Target operations
    const TF_Operation* const* target_opers, int ntargets,
    // RunMetadata
    TF_Buffer* run_metadata,
    // Output status
    TF_Status*
);   
void (*TF_DeleteGraph_dlsys)(TF_Graph*);
void (*TF_DeleteSession_dlsys)(TF_Session*, TF_Status* status);
void (*TF_DeleteSessionOptions_dlsys)(TF_SessionOptions*);
void (*TF_DeleteStatus_dlsys)(TF_Status*);
void* (*TF_TensorData_dlsys)(const TF_Tensor*);
TF_Session* Session;
TF_Output* Input;
TF_Tensor** InputValues;
int NumInputs = 1;
TF_Output* Output;
TF_Tensor** OutputValues;
int NumOutputs = 1;
TF_Status* Status;
TF_Graph* Graph;
TF_SessionOptions* SessionOpts;
TF_Output t0;
TF_Buffer* RunOpts;

void initialize_variables() {
  handle = dlopen(tensorflow_so_path, RTLD_NOW);
  
  *(void **) (&TF_NewGraph_dlsys) = dlsym(handle, "TF_NewGraph");
  *(void **) (&TF_NewStatus_dlsys) = dlsym(handle, "TF_NewStatus");
  *(void **) (&TF_NewSessionOptions_dlsys) = dlsym(handle, "TF_NewSessionOptions");  
  *(void **) (&TF_LoadSessionFromSavedModel_dlsys) = dlsym(handle, "TF_LoadSessionFromSavedModel");
  *(void **) (&TF_GetCode_dlsys) = dlsym(handle, "TF_GetCode");    
  *(void **) (&TF_Message_dlsys) = dlsym(handle, "TF_Message");
  *(void **) (&TF_GraphOperationByName_dlsys) = dlsym(handle, "TF_GraphOperationByName");
  *(void **) (&TF_StringInit_dlsys) = dlsym(handle, "TF_StringInit");
  *(void **) (&TF_StringCopy_dlsys) = dlsym(handle, "TF_StringCopy");    
  *(void **) (&TF_NewTensor_dlsys) = dlsym(handle, "TF_NewTensor");    
  *(void **) (&TF_SessionRun_dlsys) = dlsym(handle, "TF_SessionRun");
  *(void **) (&TF_DeleteGraph_dlsys) = dlsym(handle, "TF_DeleteGraph");
  *(void **) (&TF_DeleteSession_dlsys) = dlsym(handle, "TF_DeleteSession");
  *(void **) (&TF_DeleteSessionOptions_dlsys) = dlsym(handle, "TF_DeleteSessionOptions");    
  *(void **) (&TF_DeleteStatus_dlsys) = dlsym(handle, "TF_DeleteStatus");
  *(void **) (&TF_TensorData_dlsys) = dlsym(handle, "TF_TensorData");    
  //dlclose(handle);

  Graph = (*TF_NewGraph_dlsys)();    
  Status = (*TF_NewStatus_dlsys)();   
  SessionOpts = (*TF_NewSessionOptions_dlsys)();    
  
  RunOpts = NULL;

  const char* tags = "serve"; // default model serving tag; can change in future
  int ntags = 1;

  Session = (*TF_LoadSessionFromSavedModel_dlsys)(SessionOpts, RunOpts, saved_model_dir, &tags, ntags, Graph, NULL, Status);

  if((*TF_GetCode_dlsys)(Status) == TF_OK) {
    printf("TF_LoadSessionFromSavedModel OK\n");
  } else {
    printf("%s",TF_Message_dlsys(Status));
  }

  //****** Get input tensor
  Input = malloc(sizeof(TF_Output) * NumInputs);

  TF_Output t0 = {(*TF_GraphOperationByName_dlsys)(Graph, "Placeholder"), 0};

  if(t0.oper == NULL)
      printf("ERROR: Failed TF_GraphOperationByName Placeholder\n");
  else
    printf("TF_GraphOperationByName Placeholder is OK\n");
  
  Input[0] = t0;
  
  //********* Get Output tensor
  Output = malloc(sizeof(TF_Output) * NumOutputs);

  TF_Output t2 = {(*TF_GraphOperationByName_dlsys)(Graph, "head/predictions/probabilities"), 0};

  if(t2.oper == NULL)
      printf("ERROR: Failed TF_GraphOperationByName head/predictions/probabilities\n");
  else	
    printf("TF_GraphOperationByName head/predictions/probabilities is OK\n");
  
  Output[0] = t2;

  //********* Allocate data for inputs & outputs
  InputValues = (TF_Tensor**)malloc(sizeof(TF_Tensor*)*NumInputs);
  OutputValues = malloc(sizeof(TF_Tensor*)*NumOutputs);
}

//-----------------------------------------------------

GuesProbLang gues_detect_programming_language(const char *str) {
    if (handle == NULL) {
      initialize_variables();
    }

    TF_TString* s0 = malloc(sizeof(TF_TString) * strlen(str));
    (*TF_StringInit_dlsys)(s0);    
    
    (*TF_StringCopy_dlsys)(s0, str, strlen(str));

    int ndims = 1;
    int64_t dims[] = {1};    
    int ndata = sizeof(TF_TString) * strlen(str);

    TF_Tensor* str_tensor = (*TF_NewTensor_dlsys)(TF_STRING, dims, ndims, s0, ndata, &NoOpDeallocator, 0);

    InputValues[0] = str_tensor;
    
    // //Run the Session
    (*TF_SessionRun_dlsys)(Session, NULL, Input, InputValues, NumInputs, Output, OutputValues, NumOutputs, NULL, 0, NULL , Status);

    if((*TF_GetCode_dlsys)(Status) == TF_OK) {
      printf("Session is OK\n");
    } else {
      printf("%s", (*TF_Message_dlsys)(Status));
    }

    // (*TF_DeleteGraph_dlsys)(Graph);
    // (*TF_DeleteSession_dlsys)(Session, Status);
    // (*TF_DeleteSessionOptions_dlsys)(SessionOpts);
    // (*TF_DeleteStatus_dlsys)(Status);

    void* buff = (*TF_TensorData_dlsys)(OutputValues[0]);    

    //dlclose(handle);

    float* offsets = buff;
    
    float max_prob = -1.0;
    int max_index = 0;
    //printf("Probs:\n");
    for (int i = 0; i < GUES_LANG_COUNT; i++) {
        float prob = offsets[i];
        //printf("%f\n", prob);
        if (prob > max_prob) {          
          max_prob = prob;
          max_index = i;
        }
    }
    //printf("Max probability: %f; Max index: %u\n", max_prob, max_index);
    
    GuesProbLang output; 
    output.gues_lang_code = max_index;
    output.gues_probability = max_prob;
    
    return output;
}

enum TglangLanguage from_gues_to_tg(enum GuesLanguage gues_lang_code) {
  if (gues_lang_code == GUES_ASM) {
    return TGLANG_LANGUAGE_ASSEMBLY;
  } else if (gues_lang_code == GUES_BAT) {
    return TGLANG_LANGUAGE_OTHER; //Highlight 
  } else if (gues_lang_code == GUES_C) {
    return TGLANG_LANGUAGE_C;
  } else if (gues_lang_code == GUES_CS) {
    return TGLANG_LANGUAGE_CSHARP;
  } else if (gues_lang_code == GUES_CPP) {
    return TGLANG_LANGUAGE_CPLUSPLUS;
  } else if (gues_lang_code == GUES_CLJ) {
    return TGLANG_LANGUAGE_CLOJURE;
  } else if (gues_lang_code == GUES_CMAKE) {
    return TGLANG_LANGUAGE_CMAKE;
  } else if (gues_lang_code == GUES_CBL) {
    return TGLANG_LANGUAGE_COBOL;
  } else if (gues_lang_code == GUES_COFFEE) {
    return TGLANG_LANGUAGE_COFFESCRIPT;
  } else if (gues_lang_code == GUES_CSS) {
    return TGLANG_LANGUAGE_CSS;
  } else if (gues_lang_code == GUES_CSV) { 
    return TGLANG_LANGUAGE_CSV;
  } else if (gues_lang_code == GUES_DART) { 
    return TGLANG_LANGUAGE_DART;
  } else if (gues_lang_code == GUES_DM) { 
    return TGLANG_LANGUAGE_OTHER; //Highlight 
  } else if (gues_lang_code == GUES_DOCKERFILE) { 
    return TGLANG_LANGUAGE_DOCKER;
  } else if (gues_lang_code == GUES_EX) { 
    return TGLANG_LANGUAGE_ELIXIR;
  } else if (gues_lang_code == GUES_ERL) { 
    return TGLANG_LANGUAGE_ERLANG;
  } else if (gues_lang_code == GUES_F90) { 
    return TGLANG_LANGUAGE_FORTRAN;
  } else if (gues_lang_code == GUES_GO) {
    return TGLANG_LANGUAGE_GO;
  } else if (gues_lang_code == GUES_GROOVY) { 
    return TGLANG_LANGUAGE_APACHE_GROOVY;
  } else if (gues_lang_code == GUES_HS) { 
    return TGLANG_LANGUAGE_HASKELL;
  } else if (gues_lang_code == GUES_HTML) {
    return TGLANG_LANGUAGE_HTML;
  } else if (gues_lang_code == GUES_INI) {
    return TGLANG_LANGUAGE_INI;
  } else if (gues_lang_code == GUES_JAVA) {
    return TGLANG_LANGUAGE_JAVA;
  } else if (gues_lang_code == GUES_JS) {
    return TGLANG_LANGUAGE_JAVASCRIPT;
  } else if (gues_lang_code == GUES_JSON) {
    return TGLANG_LANGUAGE_JSON;
  } else if (gues_lang_code == GUES_JL) {
    return TGLANG_LANGUAGE_JULIA;
  } else if (gues_lang_code == GUES_KT) {
    return TGLANG_LANGUAGE_KOTLIN;
  } else if (gues_lang_code == GUES_LISP) {
    return TGLANG_LANGUAGE_LISP;
  } else if (gues_lang_code == GUES_LUA) {
    return TGLANG_LANGUAGE_LUA;
  } else if (gues_lang_code == GUES_MAKEFILE) {
    return TGLANG_LANGUAGE_MAKEFILE;
  } else if (gues_lang_code == GUES_MD) {
    return TGLANG_LANGUAGE_MARKDOWN;
  } else if (gues_lang_code == GUES_MATLAB) {
    return TGLANG_LANGUAGE_MATLAB;
  } else if (gues_lang_code == GUES_MM) {
    return TGLANG_LANGUAGE_OBJECTIVE_C;
  } else if (gues_lang_code == GUES_ML) {
    return TGLANG_LANGUAGE_OCAML;
  } else if (gues_lang_code == GUES_PAS) {
    return TGLANG_LANGUAGE_PASCAL;
  } else if (gues_lang_code == GUES_PM) {
    return TGLANG_LANGUAGE_PERL;
  } else if (gues_lang_code == GUES_PHP) {
    return TGLANG_LANGUAGE_PHP;
  } else if (gues_lang_code == GUES_PS1) {
    return TGLANG_LANGUAGE_POWERSHELL;
  } else if (gues_lang_code == GUES_PROLOG) {
    return TGLANG_LANGUAGE_PROLOG;
  } else if (gues_lang_code == GUES_PY) {
    return TGLANG_LANGUAGE_PYTHON;
  } else if (gues_lang_code == GUES_R) {
    return TGLANG_LANGUAGE_R;
  } else if (gues_lang_code == GUES_RB) {
    return TGLANG_LANGUAGE_RUBY;
  } else if (gues_lang_code == GUES_RS) {
    return TGLANG_LANGUAGE_RUST;
  } else if (gues_lang_code == GUES_SCALA) {
    return TGLANG_LANGUAGE_SCALA;
  } else if (gues_lang_code == GUES_SH) {
    return TGLANG_LANGUAGE_SHELL;
  } else if (gues_lang_code == GUES_SQL) {
    return TGLANG_LANGUAGE_SQL;
  } else if (gues_lang_code == GUES_SWIFT) {
    return TGLANG_LANGUAGE_SWIFT;
  } else if (gues_lang_code == GUES_TEX) {
    return TGLANG_LANGUAGE_OTHER; //Highlight 
  } else if (gues_lang_code == GUES_TOML) {
    return TGLANG_LANGUAGE_OTHER; //Highlight 
  } else if (gues_lang_code == GUES_TS) {
    return TGLANG_LANGUAGE_TYPESCRIPT;
  } else if (gues_lang_code == GUES_V) {
    return TGLANG_LANGUAGE_VERILOG;
  } else if (gues_lang_code == GUES_VBA) {
    return TGLANG_LANGUAGE_VISUAL_BASIC;
  } else if (gues_lang_code == GUES_XML) {
    return TGLANG_LANGUAGE_XML;
  } else if (gues_lang_code == GUES_YAML) {
    return TGLANG_LANGUAGE_YAML;
  }
            
  return TGLANG_LANGUAGE_OTHER;
}

enum TglangLanguage tglang_detect_programming_language(const char *text) {
  const GuesProbLang output = gues_detect_programming_language(text);
  const enum TglangLanguage tg_lang_code = from_gues_to_tg(output.gues_lang_code);

  const char* tg_lang_name = TG_LANG_NAMES[tg_lang_code];
  //printf("TgLang. Code: %u; Name: %s\n", tg_lang_code, tg_lang_name);

  return tg_lang_code;
}


