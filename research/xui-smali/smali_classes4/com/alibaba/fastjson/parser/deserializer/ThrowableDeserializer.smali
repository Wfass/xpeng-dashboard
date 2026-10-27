.class public Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;
.super Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
.source "ThrowableDeserializer.java"


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;)V
    .locals 0
    .param p1, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 19
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;-><init>(Lcom/alibaba/fastjson/parser/ParserConfig;Ljava/lang/Class;Ljava/lang/reflect/Type;)V

    .line 20
    return-void
.end method

.method private createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;
    .locals 13
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 159
    .local p3, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 160
    .local v0, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v1, 0x0

    .line 161
    .local v1, "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v2, 0x0

    .line 162
    .local v2, "causeConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Class;->getConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move-object v6, v1

    move-object v1, v0

    move v0, v5

    .end local v0    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v1, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local v6, "messageConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :goto_0
    const/4 v7, 0x2

    const/4 v8, 0x1

    if-ge v0, v4, :cond_3

    aget-object v9, v3, v0

    .line 163
    .local v9, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v9}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v10

    .line 164
    .local v10, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v11, v10

    if-nez v11, :cond_0

    .line 165
    move-object v1, v9

    .line 166
    goto :goto_1

    .line 169
    :cond_0
    array-length v11, v10

    if-ne v11, v8, :cond_1

    aget-object v11, v10, v5

    const-class v12, Ljava/lang/String;

    if-ne v11, v12, :cond_1

    .line 170
    move-object v6, v9

    .line 171
    goto :goto_1

    .line 174
    :cond_1
    array-length v11, v10

    if-ne v11, v7, :cond_2

    aget-object v7, v10, v5

    const-class v11, Ljava/lang/String;

    if-ne v7, v11, :cond_2

    aget-object v7, v10, v8

    const-class v8, Ljava/lang/Throwable;

    if-ne v7, v8, :cond_2

    .line 175
    move-object v2, v9

    .line 176
    nop

    .line 162
    .end local v9    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v10    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_3
    if-eqz v2, :cond_4

    .line 181
    new-array v0, v7, [Ljava/lang/Object;

    aput-object p1, v0, v5

    aput-object p2, v0, v8

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 184
    :cond_4
    if-eqz v6, :cond_5

    .line 185
    new-array v0, v8, [Ljava/lang/Object;

    aput-object p1, v0, v5

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 188
    :cond_5
    if-eqz v1, :cond_6

    .line 189
    new-array v0, v5, [Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0

    .line 192
    :cond_6
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    .line 24
    iget-object v4, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 26
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v5, 0x8

    const/4 v6, 0x0

    if-ne v0, v5, :cond_0

    .line 27
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 28
    return-object v6

    .line 31
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getResolveStatus()I

    move-result v0

    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    .line 32
    const/4 v0, 0x0

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_0

    .line 34
    :cond_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v7, 0xc

    if-ne v0, v7, :cond_16

    .line 39
    :goto_0
    const/4 v0, 0x0

    .line 40
    .local v0, "cause":Ljava/lang/Throwable;
    const/4 v7, 0x0

    .line 42
    .local v7, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_2

    instance-of v8, v3, Ljava/lang/Class;

    if-eqz v8, :cond_2

    .line 43
    move-object v8, v3

    check-cast v8, Ljava/lang/Class;

    .line 44
    .local v8, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v9, Ljava/lang/Throwable;

    invoke-virtual {v9, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 45
    move-object v7, v8

    .line 49
    .end local v8    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    const/4 v8, 0x0

    .line 50
    .local v8, "message":Ljava/lang/String;
    const/4 v9, 0x0

    .line 51
    .local v9, "stackTrace":[Ljava/lang/StackTraceElement;
    move-object v10, v9

    move-object v9, v8

    move-object v8, v0

    move-object v0, v6

    .line 56
    .local v0, "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local v8, "cause":Ljava/lang/Throwable;
    .local v9, "message":Ljava/lang/String;
    .local v10, "stackTrace":[Ljava/lang/StackTraceElement;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;

    move-result-object v11

    invoke-interface {v4, v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v11

    .line 58
    .local v11, "key":Ljava/lang/String;
    const/16 v12, 0xd

    const/16 v13, 0x10

    if-nez v11, :cond_4

    .line 59
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    if-ne v14, v12, :cond_3

    .line 60
    invoke-interface {v4, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 61
    nop

    .line 106
    .end local v0    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "key":Ljava/lang/String;
    .local v5, "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_2
    move-object v5, v0

    goto/16 :goto_7

    .line 63
    .end local v5    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v0    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v11    # "key":Ljava/lang/String;
    :cond_3
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v14

    if-ne v14, v13, :cond_4

    .line 64
    sget-object v14, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 65
    goto :goto_1

    .line 70
    :cond_4
    const/4 v14, 0x4

    invoke-interface {v4, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 72
    sget-object v15, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 73
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    if-ne v15, v14, :cond_5

    .line 74
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v14

    .line 75
    .local v14, "exClassName":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v15

    const-class v12, Ljava/lang/Throwable;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v6

    invoke-virtual {v15, v14, v12, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v6

    .line 76
    .end local v7    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v14    # "exClassName":Ljava/lang/String;
    .local v6, "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 79
    invoke-interface {v4, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 100
    move-object v7, v6

    .end local v6    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v7    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    const/4 v12, 0x0

    goto/16 :goto_6

    .line 77
    :cond_5
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 80
    :cond_6
    const-string v6, "message"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 81
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v5, :cond_7

    .line 82
    const/4 v6, 0x0

    .end local v9    # "message":Ljava/lang/String;
    .local v6, "message":Ljava/lang/String;
    :goto_4
    goto :goto_5

    .line 83
    .end local v6    # "message":Ljava/lang/String;
    .restart local v9    # "message":Ljava/lang/String;
    :cond_7
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v14, :cond_8

    .line 84
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 88
    .end local v9    # "message":Ljava/lang/String;
    .restart local v6    # "message":Ljava/lang/String;
    :goto_5
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 100
    move-object v9, v6

    goto :goto_3

    .line 86
    .end local v6    # "message":Ljava/lang/String;
    .restart local v9    # "message":Ljava/lang/String;
    :cond_8
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "syntax error"

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 89
    :cond_9
    const-string v6, "cause"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 90
    const-string v6, "cause"

    const/4 v12, 0x0

    invoke-virtual {v1, v2, v12, v6}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Throwable;

    .line 100
    .end local v8    # "cause":Ljava/lang/Throwable;
    .local v6, "cause":Ljava/lang/Throwable;
    move-object v8, v6

    goto :goto_6

    .line 91
    .end local v6    # "cause":Ljava/lang/Throwable;
    .restart local v8    # "cause":Ljava/lang/Throwable;
    :cond_a
    const/4 v12, 0x0

    const-string v6, "stackTrace"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 92
    const-class v6, [Ljava/lang/StackTraceElement;

    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/StackTraceElement;

    .line 100
    .end local v10    # "stackTrace":[Ljava/lang/StackTraceElement;
    .local v6, "stackTrace":[Ljava/lang/StackTraceElement;
    move-object v10, v6

    goto :goto_6

    .line 94
    .end local v6    # "stackTrace":[Ljava/lang/StackTraceElement;
    .restart local v10    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_b
    if-nez v0, :cond_c

    .line 95
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    move-object v0, v6

    .line 97
    :cond_c
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v11, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    :goto_6
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    const/16 v14, 0xd

    if-ne v6, v14, :cond_15

    .line 101
    invoke-interface {v4, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 102
    goto/16 :goto_2

    .line 106
    .end local v0    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v11    # "key":Ljava/lang/String;
    .restart local v5    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_7
    const/4 v6, 0x0

    .line 107
    .local v6, "ex":Ljava/lang/Throwable;
    if-nez v7, :cond_d

    .line 108
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v9, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v6    # "ex":Ljava/lang/Throwable;
    .local v0, "ex":Ljava/lang/Throwable;
    goto :goto_8

    .line 110
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "ex":Ljava/lang/Throwable;
    :cond_d
    const-class v0, Ljava/lang/Throwable;

    invoke-virtual {v0, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 115
    :try_start_0
    invoke-direct {v1, v9, v8, v7}, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->createException(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/Throwable;

    move-result-object v0

    move-object v6, v0

    .line 116
    if-nez v6, :cond_e

    .line 117
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v9, v8}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "ex":Ljava/lang/Throwable;
    goto :goto_8

    .line 121
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v6    # "ex":Ljava/lang/Throwable;
    :cond_e
    move-object v0, v6

    .line 124
    .end local v6    # "ex":Ljava/lang/Throwable;
    .restart local v0    # "ex":Ljava/lang/Throwable;
    :goto_8
    if-eqz v10, :cond_f

    .line 125
    invoke-virtual {v0, v10}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    .line 128
    :cond_f
    if-eqz v5, :cond_13

    .line 129
    const/4 v6, 0x0

    .line 131
    .local v6, "exBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    if-eqz v7, :cond_11

    .line 132
    iget-object v11, v1, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;->clazz:Ljava/lang/Class;

    if-ne v7, v11, :cond_10

    .line 133
    move-object v6, v1

    goto :goto_9

    .line 135
    :cond_10
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v11

    invoke-virtual {v11, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v11

    .line 136
    .local v11, "exDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v12, v11, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v12, :cond_11

    .line 137
    move-object v6, v11

    check-cast v6, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 142
    .end local v11    # "exDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_11
    :goto_9
    if-eqz v6, :cond_13

    .line 143
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_a
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 144
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 145
    .local v13, "key":Ljava/lang/String;
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v14

    .line 147
    .local v14, "value":Ljava/lang/Object;
    invoke-virtual {v6, v13}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v15

    .line 148
    .local v15, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v15, :cond_12

    .line 149
    invoke-virtual {v15, v0, v14}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 151
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "value":Ljava/lang/Object;
    .end local v15    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_12
    goto :goto_a

    .line 155
    .end local v6    # "exBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    :cond_13
    return-object v0

    .line 119
    .end local v0    # "ex":Ljava/lang/Throwable;
    .local v6, "ex":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 120
    .local v0, "e":Ljava/lang/Exception;
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "create instance error"

    invoke-direct {v11, v12, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 111
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_14
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "type not match, not Throwable. "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 104
    .end local v5    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6    # "ex":Ljava/lang/Throwable;
    .local v0, "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_15
    nop

    .line 51
    move-object v6, v12

    goto/16 :goto_1

    .line 35
    .end local v0    # "otherValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7    # "exClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "cause":Ljava/lang/Throwable;
    .end local v9    # "message":Ljava/lang/String;
    .end local v10    # "stackTrace":[Ljava/lang/StackTraceElement;
    :cond_16
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "syntax error"

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 196
    const/16 v0, 0xc

    return v0
.end method
