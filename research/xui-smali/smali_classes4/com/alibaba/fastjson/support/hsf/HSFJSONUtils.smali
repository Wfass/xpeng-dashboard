.class public Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;
.super Ljava/lang/Object;
.source "HSFJSONUtils.java"


# static fields
.field static final fieldName_argsObjs:[C

.field static final fieldName_argsTypes:[C

.field static final fieldName_type:[C

.field static final typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 15
    new-instance v0, Lcom/alibaba/fastjson/parser/SymbolTable;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/parser/SymbolTable;-><init>(I)V

    sput-object v0, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 16
    const-string v0, "\"argsTypes\""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsTypes:[C

    .line 17
    const-string v0, "\"argsObjs\""

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsObjs:[C

    .line 19
    const-string v0, "\"@type\":"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_type:[C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static parseInvocationArguments(Ljava/lang/String;Lcom/alibaba/fastjson/support/hsf/MethodLocator;)[Ljava/lang/Object;
    .locals 13
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "methodLocator"    # Lcom/alibaba/fastjson/support/hsf/MethodLocator;

    .line 22
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;)V

    .line 24
    .local v0, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    .line 26
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONLexerBase;
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v3

    .line 29
    .local v3, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token()I

    move-result v4

    .line 30
    .local v4, "token":I
    const/16 v5, 0x2c

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/16 v8, 0xc

    if-ne v4, v8, :cond_6

    .line 31
    sget-object v8, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsTypes:[C

    sget-object v9, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v1, v8, v7, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;

    move-result-object v8

    .line 32
    .local v8, "typeNames":[Ljava/lang/String;
    if-nez v8, :cond_0

    iget v9, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchStat:I

    const/4 v10, -0x2

    if-ne v9, v10, :cond_0

    .line 33
    sget-object v9, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_type:[C

    invoke-virtual {v1, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldString([C)Ljava/lang/String;

    move-result-object v9

    .line 34
    .local v9, "type":Ljava/lang/String;
    const-string v10, "com.alibaba.fastjson.JSONObject"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 35
    sget-object v10, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsTypes:[C

    sget-object v11, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v1, v10, v7, v11}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;

    move-result-object v8

    .line 38
    .end local v9    # "type":Ljava/lang/String;
    :cond_0
    invoke-interface {p1, v8}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 40
    .local v7, "method":Ljava/lang/reflect/Method;
    if-nez v7, :cond_3

    .line 41
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 43
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 44
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-string v5, "argsTypes"

    const-class v9, [Ljava/lang/String;

    invoke-virtual {v2, v5, v9}, Lcom/alibaba/fastjson/JSONObject;->getObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    .line 45
    .end local v8    # "typeNames":[Ljava/lang/String;
    .local v5, "typeNames":[Ljava/lang/String;
    invoke-interface {p1, v5}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 47
    const-string v8, "argsObjs"

    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v8

    .line 48
    .local v8, "argsObjs":Lcom/alibaba/fastjson/JSONArray;
    if-nez v8, :cond_1

    .line 49
    const/4 v6, 0x0

    .local v6, "values":[Ljava/lang/Object;
    goto :goto_1

    .line 51
    .end local v6    # "values":[Ljava/lang/Object;
    :cond_1
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v9

    .line 52
    .local v9, "argTypes":[Ljava/lang/reflect/Type;
    array-length v10, v9

    new-array v10, v10, [Ljava/lang/Object;

    .line 53
    .local v10, "values":[Ljava/lang/Object;
    nop

    .local v6, "i":I
    :goto_0
    array-length v11, v9

    if-ge v6, v11, :cond_2

    .line 54
    aget-object v11, v9, v6

    .line 55
    .local v11, "type":Ljava/lang/reflect/Type;
    invoke-virtual {v8, v6, v11}, Lcom/alibaba/fastjson/JSONArray;->getObject(ILjava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v10, v6

    .line 53
    .end local v11    # "type":Ljava/lang/reflect/Type;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 58
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    .end local v6    # "i":I
    .end local v8    # "argsObjs":Lcom/alibaba/fastjson/JSONArray;
    .end local v9    # "argTypes":[Ljava/lang/reflect/Type;
    :cond_2
    move-object v6, v10

    .line 82
    .end local v10    # "values":[Ljava/lang/Object;
    .local v6, "values":[Ljava/lang/Object;
    :goto_1
    move-object v2, v6

    goto :goto_2

    .line 59
    .end local v5    # "typeNames":[Ljava/lang/String;
    .end local v6    # "values":[Ljava/lang/Object;
    .local v8, "typeNames":[Ljava/lang/String;
    :cond_3
    invoke-virtual {v7}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v6

    .line 61
    .local v6, "argTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 62
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v9

    if-ne v9, v5, :cond_4

    .line 63
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 66
    :cond_4
    sget-object v5, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->fieldName_argsObjs:[C

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->matchField2([C)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 67
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken()V

    .line 69
    const-string v5, "argsObjs"

    invoke-virtual {v0, v3, v2, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v5

    .line 70
    .local v5, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v9

    .line 71
    .local v9, "values":[Ljava/lang/Object;
    iput-object v9, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 73
    const/16 v10, 0xd

    invoke-virtual {v0, v10}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 75
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 76
    .end local v5    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    nop

    .line 77
    move-object v2, v9

    nop

    .line 80
    .end local v9    # "values":[Ljava/lang/Object;
    .local v2, "values":[Ljava/lang/Object;
    :cond_5
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 82
    .end local v6    # "argTypes":[Ljava/lang/reflect/Type;
    .end local v7    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "typeNames":[Ljava/lang/String;
    :goto_2
    goto :goto_5

    .end local v2    # "values":[Ljava/lang/Object;
    :cond_6
    const/16 v8, 0xe

    if-ne v4, v8, :cond_b

    .line 83
    sget-object v9, Lcom/alibaba/fastjson/support/hsf/HSFJSONUtils;->typeSymbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-virtual {v1, v2, v7, v9}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->scanFieldStringArray([CILcom/alibaba/fastjson/parser/SymbolTable;)[Ljava/lang/String;

    move-result-object v7

    .line 85
    .local v7, "typeNames":[Ljava/lang/String;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 87
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->getCurrent()C

    move-result v9

    .line 89
    .local v9, "ch":C
    const/16 v10, 0x5d

    if-ne v9, v10, :cond_9

    .line 90
    invoke-interface {p1, v2}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 91
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 92
    .local v5, "argTypes":[Ljava/lang/reflect/Type;
    array-length v8, v7

    new-array v8, v8, [Ljava/lang/Object;

    .line 93
    .local v8, "values":[Ljava/lang/Object;
    nop

    .local v6, "i":I
    :goto_3
    array-length v10, v7

    if-ge v6, v10, :cond_8

    .line 94
    aget-object v10, v5, v6

    .line 95
    .local v10, "argType":Ljava/lang/reflect/Type;
    aget-object v11, v7, v6

    .line 96
    .local v11, "typeName":Ljava/lang/String;
    const-class v12, Ljava/lang/String;

    if-eq v10, v12, :cond_7

    .line 97
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v12

    invoke-static {v11, v10, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v8, v6

    goto :goto_4

    .line 99
    :cond_7
    aput-object v11, v8, v6

    .line 93
    .end local v10    # "argType":Ljava/lang/reflect/Type;
    .end local v11    # "typeName":Ljava/lang/String;
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 102
    .end local v6    # "i":I
    :cond_8
    return-object v8

    .line 104
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "argTypes":[Ljava/lang/reflect/Type;
    .end local v8    # "values":[Ljava/lang/Object;
    :cond_9
    if-ne v9, v5, :cond_a

    .line 105
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->next()C

    .line 106
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->skipWhitespace()V

    .line 108
    :cond_a
    invoke-virtual {v1, v8}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->nextToken(I)V

    .line 110
    invoke-interface {p1, v7}, Lcom/alibaba/fastjson/support/hsf/MethodLocator;->findMethod([Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 111
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 112
    .restart local v5    # "argTypes":[Ljava/lang/reflect/Type;
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v6

    .line 113
    .local v6, "values":[Ljava/lang/Object;
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONLexerBase;->close()V

    .line 114
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v5    # "argTypes":[Ljava/lang/reflect/Type;
    .end local v7    # "typeNames":[Ljava/lang/String;
    .end local v9    # "ch":C
    nop

    .line 115
    move-object v2, v6

    nop

    .line 118
    .end local v6    # "values":[Ljava/lang/Object;
    .local v2, "values":[Ljava/lang/Object;
    :cond_b
    :goto_5
    return-object v2
.end method
