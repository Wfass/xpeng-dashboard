.class public Lcom/alibaba/fastjson/serializer/MiscCodec;
.super Ljava/lang/Object;
.source "MiscCodec.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;
.implements Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;


# static fields
.field private static FILE_RELATIVE_PATH_SUPPORT:Z

.field public static final instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

.field private static method_paths_get:Ljava/lang/reflect/Method;

.field private static method_paths_get_error:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->FILE_RELATIVE_PATH_SUPPORT:Z

    .line 58
    new-instance v1, Lcom/alibaba/fastjson/serializer/MiscCodec;

    invoke-direct {v1}, Lcom/alibaba/fastjson/serializer/MiscCodec;-><init>()V

    sput-object v1, Lcom/alibaba/fastjson/serializer/MiscCodec;->instance:Lcom/alibaba/fastjson/serializer/MiscCodec;

    .line 60
    sput-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    .line 63
    const-string v0, "true"

    const-string v1, "fastjson.deserializer.fileRelativePathSupport"

    invoke-static {v1}, Lcom/alibaba/fastjson/util/IOUtils;->getStringProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/alibaba/fastjson/serializer/MiscCodec;->FILE_RELATIVE_PATH_SUPPORT:Z

    .line 64
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static toString(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 5
    .param p0, "node"    # Lorg/w3c/dom/Node;

    .line 171
    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 172
    .local v0, "transFactory":Ljavax/xml/transform/TransformerFactory;
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 173
    .local v1, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 175
    .local v2, "domSource":Ljavax/xml/transform/dom/DOMSource;
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 176
    .local v3, "out":Ljava/io/StringWriter;
    new-instance v4, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v4, v3}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {v1, v2, v4}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 177
    invoke-virtual {v3}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 178
    .end local v0    # "transFactory":Ljavax/xml/transform/TransformerFactory;
    .end local v1    # "transformer":Ljavax/xml/transform/Transformer;
    .end local v2    # "domSource":Ljavax/xml/transform/dom/DOMSource;
    .end local v3    # "out":Ljava/io/StringWriter;
    :catch_0
    move-exception v0

    .line 179
    .local v0, "e":Ljavax/xml/transform/TransformerException;
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "xml node to string error"

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .param p1, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
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

    .line 200
    iget-object v0, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 202
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    const-class v1, Ljava/net/InetSocketAddress;

    const/16 v2, 0xd

    const/16 v3, 0x10

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/16 v6, 0x11

    const/4 v7, 0x0

    if-ne p2, v1, :cond_5

    .line 203
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v8, 0x8

    if-ne v1, v8, :cond_0

    .line 204
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 205
    return-object v4

    .line 208
    :cond_0
    const/16 v1, 0xc

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 210
    const/4 v1, 0x0

    .line 211
    .local v1, "address":Ljava/net/InetAddress;
    nop

    .local v7, "port":I
    :goto_0
    move v4, v7

    .line 213
    .end local v7    # "port":I
    .local v4, "port":I
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    .line 214
    .local v7, "key":Ljava/lang/String;
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 216
    const-string v8, "address"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 217
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 218
    const-class v8, Ljava/net/InetAddress;

    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object v1, v8

    check-cast v1, Ljava/net/InetAddress;

    goto :goto_1

    .line 219
    :cond_1
    const-string v8, "port"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 220
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 221
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v5, :cond_2

    .line 224
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v4

    .line 225
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_1

    .line 222
    :cond_2
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "port is not int"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 227
    :cond_3
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 228
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 231
    :goto_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v3, :cond_4

    .line 232
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 233
    nop

    .line 211
    move v7, v4

    goto :goto_0

    .line 239
    .end local v7    # "key":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 241
    new-instance v2, Ljava/net/InetSocketAddress;

    invoke-direct {v2, v1, v4}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    return-object v2

    .line 246
    .end local v1    # "address":Ljava/net/InetAddress;
    .end local v4    # "port":I
    :cond_5
    iget v1, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    if-ne v1, v5, :cond_8

    .line 247
    iput v7, p1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 248
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 250
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v3, 0x4

    if-ne v1, v3, :cond_7

    .line 251
    const-string v1, "val"

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 254
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 259
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 261
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 263
    .local v1, "objVal":Ljava/lang/Object;
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    goto :goto_2

    .line 252
    .end local v1    # "objVal":Ljava/lang/Object;
    :cond_6
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 256
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 265
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 270
    .restart local v1    # "objVal":Ljava/lang/Object;
    :goto_2
    if-nez v1, :cond_9

    .line 271
    const/4 v2, 0x0

    .local v2, "strVal":Ljava/lang/String;
    :goto_3
    goto :goto_4

    .line 272
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_9
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_21

    .line 273
    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    goto :goto_3

    .line 296
    .restart local v2    # "strVal":Ljava/lang/String;
    :goto_4
    nop

    .line 299
    if-eqz v2, :cond_20

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_a

    goto/16 :goto_7

    .line 303
    :cond_a
    const-class v3, Ljava/util/UUID;

    if-ne p2, v3, :cond_b

    .line 304
    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    return-object v3

    .line 307
    :cond_b
    const-class v3, Ljava/net/URI;

    if-ne p2, v3, :cond_c

    .line 308
    invoke-static {v2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    return-object v3

    .line 311
    :cond_c
    const-class v3, Ljava/net/URL;

    if-ne p2, v3, :cond_d

    .line 313
    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 314
    :catch_0
    move-exception v3

    .line 315
    .local v3, "e":Ljava/net/MalformedURLException;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "create url error"

    invoke-direct {v4, v5, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 319
    .end local v3    # "e":Ljava/net/MalformedURLException;
    :cond_d
    const-class v3, Ljava/util/regex/Pattern;

    if-ne p2, v3, :cond_e

    .line 320
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    return-object v3

    .line 323
    :cond_e
    const-class v3, Ljava/util/Locale;

    if-ne p2, v3, :cond_f

    .line 324
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->toLocale(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v3

    return-object v3

    .line 327
    :cond_f
    const-class v3, Ljava/text/SimpleDateFormat;

    if-ne p2, v3, :cond_10

    .line 328
    new-instance v3, Ljava/text/SimpleDateFormat;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 329
    .local v3, "dateFormat":Ljava/text/SimpleDateFormat;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 330
    return-object v3

    .line 333
    .end local v3    # "dateFormat":Ljava/text/SimpleDateFormat;
    :cond_10
    const-class v3, Ljava/net/InetAddress;

    if-eq p2, v3, :cond_1f

    const-class v3, Ljava/net/Inet4Address;

    if-eq p2, v3, :cond_1f

    const-class v3, Ljava/net/Inet6Address;

    if-ne p2, v3, :cond_11

    goto/16 :goto_6

    .line 341
    :cond_11
    const-class v3, Ljava/io/File;

    if-ne p2, v3, :cond_14

    .line 342
    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_13

    sget-boolean v3, Lcom/alibaba/fastjson/serializer/MiscCodec;->FILE_RELATIVE_PATH_SUPPORT:Z

    if-eqz v3, :cond_12

    goto :goto_5

    .line 343
    :cond_12
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "file relative path not support."

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 346
    :cond_13
    :goto_5
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 349
    :cond_14
    const-class v3, Ljava/util/TimeZone;

    if-ne p2, v3, :cond_15

    .line 350
    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    return-object v3

    .line 353
    :cond_15
    instance-of v3, p2, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_16

    .line 354
    move-object v3, p2

    check-cast v3, Ljava/lang/reflect/ParameterizedType;

    .line 355
    .local v3, "parmeterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v3}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 358
    .end local v3    # "parmeterizedType":Ljava/lang/reflect/ParameterizedType;
    :cond_16
    const-class v3, Ljava/lang/Class;

    if-ne p2, v3, :cond_17

    .line 359
    invoke-virtual {p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDefaultClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v2, v3, v7}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Class;

    move-result-object v3

    return-object v3

    .line 362
    :cond_17
    const-class v3, Ljava/nio/charset/Charset;

    if-ne p2, v3, :cond_18

    .line 363
    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v3

    return-object v3

    .line 366
    :cond_18
    const-class v3, Ljava/util/Currency;

    if-ne p2, v3, :cond_19

    .line 367
    invoke-static {v2}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v3

    return-object v3

    .line 370
    :cond_19
    const-class v3, Lcom/alibaba/fastjson/JSONPath;

    if-ne p2, v3, :cond_1a

    .line 371
    new-instance v3, Lcom/alibaba/fastjson/JSONPath;

    invoke-direct {v3, v2}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    return-object v3

    .line 376
    :cond_1a
    instance-of v3, p2, Ljava/lang/Class;

    if-eqz v3, :cond_1e

    .line 377
    move-object v3, p2

    check-cast v3, Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    .line 379
    .local v3, "className":Ljava/lang/String;
    const-string v6, "java.nio.file.Path"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 381
    const/4 v6, 0x1

    :try_start_1
    sget-object v8, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    if-nez v8, :cond_1b

    sget-boolean v8, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    if-nez v8, :cond_1b

    .line 382
    const-string v8, "java.nio.file.Paths"

    invoke-static {v8}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 383
    .local v8, "paths":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v9, "get"

    new-array v10, v5, [Ljava/lang/Class;

    const-class v11, Ljava/lang/String;

    aput-object v11, v10, v7

    const-class v11, [Ljava/lang/String;

    aput-object v11, v10, v6

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    sput-object v9, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    .line 385
    .end local v8    # "paths":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1b
    sget-object v8, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    if-eqz v8, :cond_1c

    .line 386
    sget-object v8, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get:Ljava/lang/reflect/Method;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    new-array v7, v7, [Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-virtual {v8, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 389
    :cond_1c
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "Path deserialize erorr"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    .line 394
    :catch_1
    move-exception v4

    .line 395
    .local v4, "ex":Ljava/lang/reflect/InvocationTargetException;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "Path deserialize erorr"

    invoke-direct {v5, v6, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 392
    .end local v4    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v4

    .line 393
    .local v4, "ex":Ljava/lang/IllegalAccessException;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "Path deserialize erorr"

    invoke-direct {v5, v6, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 390
    .end local v4    # "ex":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v4

    .line 391
    .local v4, "ex":Ljava/lang/NoSuchMethodException;
    sput-boolean v6, Lcom/alibaba/fastjson/serializer/MiscCodec;->method_paths_get_error:Z

    .line 396
    .end local v4    # "ex":Ljava/lang/NoSuchMethodException;
    nop

    .line 399
    :cond_1d
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MiscCodec not support "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 402
    .end local v3    # "className":Ljava/lang/String;
    :cond_1e
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MiscCodec not support "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 335
    :cond_1f
    :goto_6
    :try_start_2
    invoke-static {v2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v3
    :try_end_2
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_4

    return-object v3

    .line 336
    :catch_4
    move-exception v3

    .line 337
    .local v3, "e":Ljava/net/UnknownHostException;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "deserialize inet adress error"

    invoke-direct {v4, v5, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 300
    .end local v3    # "e":Ljava/net/UnknownHostException;
    :cond_20
    :goto_7
    return-object v4

    .line 275
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_21
    instance-of v2, v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_25

    .line 276
    move-object v2, v1

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    .line 278
    .local v2, "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    const-class v3, Ljava/util/Currency;

    if-ne p2, v3, :cond_23

    .line 279
    const-string v3, "currency"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 280
    .local v3, "currency":Ljava/lang/String;
    if-eqz v3, :cond_22

    .line 281
    invoke-static {v3}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v4

    return-object v4

    .line 284
    :cond_22
    const-string v4, "currencyCode"

    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 285
    .local v4, "symbol":Ljava/lang/String;
    if-eqz v4, :cond_23

    .line 286
    invoke-static {v4}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object v5

    return-object v5

    .line 290
    .end local v3    # "currency":Ljava/lang/String;
    .end local v4    # "symbol":Ljava/lang/String;
    :cond_23
    const-class v3, Ljava/util/Map$Entry;

    if-ne p2, v3, :cond_24

    .line 291
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 294
    :cond_24
    invoke-virtual {v2, p2}, Lcom/alibaba/fastjson/JSONObject;->toJavaObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 296
    .end local v2    # "jsonObject":Lcom/alibaba/fastjson/JSONObject;
    :cond_25
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "expect string"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getFastMatchToken()I
    .locals 1

    .line 406
    const/4 v0, 0x4

    return v0
.end method

.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 9
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    .line 70
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 71
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 72
    return-void

    .line 75
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 78
    .local v1, "objClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/text/SimpleDateFormat;

    const/16 v3, 0x2c

    const/16 v4, 0x7d

    const/16 v5, 0x7b

    if-ne v1, v2, :cond_2

    .line 79
    move-object v2, p2

    check-cast v2, Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v2

    .line 81
    .local v2, "pattern":Ljava/lang/String;
    sget-object v6, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v0, v6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 82
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    if-eq v6, p4, :cond_1

    .line 83
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 84
    sget-object v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 86
    const-string v5, "val"

    invoke-virtual {v0, v3, v5, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValue(CLjava/lang/String;Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 88
    return-void

    .line 92
    :cond_1
    nop

    .line 93
    .local v2, "strVal":Ljava/lang/String;
    goto/16 :goto_3

    .end local v2    # "strVal":Ljava/lang/String;
    :cond_2
    const-class v2, Ljava/lang/Class;

    if-ne v1, v2, :cond_3

    .line 94
    move-object v2, p2

    check-cast v2, Ljava/lang/Class;

    .line 95
    .local v2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 96
    .local v2, "strVal":Ljava/lang/String;
    goto/16 :goto_3

    .end local v2    # "strVal":Ljava/lang/String;
    :cond_3
    const-class v2, Ljava/net/InetSocketAddress;

    if-ne v1, v2, :cond_5

    .line 97
    move-object v2, p2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 99
    .local v2, "address":Ljava/net/InetSocketAddress;
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v6

    .line 101
    .local v6, "inetAddress":Ljava/net/InetAddress;
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 102
    if-eqz v6, :cond_4

    .line 103
    const-string v5, "address"

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 105
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 107
    :cond_4
    const-string v3, "port"

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeInt(I)V

    .line 109
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 110
    return-void

    .line 111
    .end local v2    # "address":Ljava/net/InetSocketAddress;
    .end local v6    # "inetAddress":Ljava/net/InetAddress;
    :cond_5
    instance-of v2, p2, Ljava/io/File;

    if-eqz v2, :cond_6

    .line 112
    move-object v2, p2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .local v2, "strVal":Ljava/lang/String;
    :goto_0
    goto/16 :goto_3

    .line 113
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_6
    instance-of v2, p2, Ljava/net/InetAddress;

    if-eqz v2, :cond_7

    .line 114
    move-object v2, p2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 115
    :cond_7
    instance-of v2, p2, Ljava/util/TimeZone;

    if-eqz v2, :cond_8

    .line 116
    move-object v2, p2

    check-cast v2, Ljava/util/TimeZone;

    .line 117
    .local v2, "timeZone":Ljava/util/TimeZone;
    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    .line 118
    .local v2, "strVal":Ljava/lang/String;
    goto/16 :goto_3

    .end local v2    # "strVal":Ljava/lang/String;
    :cond_8
    instance-of v2, p2, Ljava/util/Currency;

    if-eqz v2, :cond_9

    .line 119
    move-object v2, p2

    check-cast v2, Ljava/util/Currency;

    .line 120
    .local v2, "currency":Ljava/util/Currency;
    invoke-virtual {v2}, Ljava/util/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v2

    .line 121
    .local v2, "strVal":Ljava/lang/String;
    goto/16 :goto_3

    .end local v2    # "strVal":Ljava/lang/String;
    :cond_9
    instance-of v2, p2, Lcom/alibaba/fastjson/JSONStreamAware;

    if-eqz v2, :cond_a

    .line 122
    move-object v2, p2

    check-cast v2, Lcom/alibaba/fastjson/JSONStreamAware;

    .line 123
    .local v2, "aware":Lcom/alibaba/fastjson/JSONStreamAware;
    invoke-interface {v2, v0}, Lcom/alibaba/fastjson/JSONStreamAware;->writeJSONString(Ljava/lang/Appendable;)V

    .line 124
    return-void

    .line 125
    .end local v2    # "aware":Lcom/alibaba/fastjson/JSONStreamAware;
    :cond_a
    instance-of v2, p2, Ljava/util/Iterator;

    if-eqz v2, :cond_b

    .line 126
    move-object v2, p2

    check-cast v2, Ljava/util/Iterator;

    .line 127
    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p0, p1, v0, v2}, Lcom/alibaba/fastjson/serializer/MiscCodec;->writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V

    .line 128
    return-void

    .line 129
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_b
    instance-of v2, p2, Ljava/lang/Iterable;

    if-eqz v2, :cond_c

    .line 130
    move-object v2, p2

    check-cast v2, Ljava/lang/Iterable;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 131
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-virtual {p0, p1, v0, v2}, Lcom/alibaba/fastjson/serializer/MiscCodec;->writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V

    .line 132
    return-void

    .line 133
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_c
    instance-of v2, p2, Ljava/util/Map$Entry;

    if-eqz v2, :cond_f

    .line 134
    move-object v2, p2

    check-cast v2, Ljava/util/Map$Entry;

    .line 135
    .local v2, "entry":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 136
    .local v3, "objKey":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    .line 138
    .local v6, "objVal":Ljava/lang/Object;
    instance-of v7, v3, Ljava/lang/String;

    if-eqz v7, :cond_e

    .line 139
    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    .line 141
    .local v7, "key":Ljava/lang/String;
    instance-of v8, v6, Ljava/lang/String;

    if-eqz v8, :cond_d

    .line 142
    move-object v8, v6

    check-cast v8, Ljava/lang/String;

    .line 143
    .local v8, "value":Ljava/lang/String;
    invoke-virtual {v0, v5, v7, v8}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldValueStringWithDoubleQuoteCheck(CLjava/lang/String;Ljava/lang/String;)V

    .line 144
    .end local v8    # "value":Ljava/lang/String;
    goto :goto_1

    .line 145
    :cond_d
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 146
    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 149
    .end local v7    # "key":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 150
    :cond_e
    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 151
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 152
    const/16 v5, 0x3a

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 153
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 155
    :goto_2
    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 156
    return-void

    .line 157
    .end local v2    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "objKey":Ljava/lang/Object;
    .end local v6    # "objVal":Ljava/lang/Object;
    :cond_f
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "net.sf.json.JSONNull"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 158
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 159
    return-void

    .line 160
    :cond_10
    instance-of v2, p2, Lorg/w3c/dom/Node;

    if-eqz v2, :cond_11

    .line 161
    move-object v2, p2

    check-cast v2, Lorg/w3c/dom/Node;

    invoke-static {v2}, Lcom/alibaba/fastjson/serializer/MiscCodec;->toString(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    .line 163
    .local v2, "strVal":Ljava/lang/String;
    :goto_3
    nop

    .line 166
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 167
    return-void

    .line 163
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_11
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "not support class : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method protected writeIterator(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/SerializeWriter;Ljava/util/Iterator;)V
    .locals 2
    .param p1, "serializer"    # Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .param p2, "out"    # Lcom/alibaba/fastjson/serializer/SerializeWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/serializer/JSONSerializer;",
            "Lcom/alibaba/fastjson/serializer/SerializeWriter;",
            "Ljava/util/Iterator<",
            "*>;)V"
        }
    .end annotation

    .line 184
    .local p3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v0, 0x0

    .line 185
    .local v0, "i":I
    const/16 v1, 0x5b

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 186
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    if-eqz v0, :cond_0

    .line 188
    const/16 v1, 0x2c

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 190
    :cond_0
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 191
    .local v1, "item":Ljava/lang/Object;
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    .line 193
    .end local v1    # "item":Ljava/lang/Object;
    goto :goto_0

    .line 194
    :cond_1
    const/16 v1, 0x5d

    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 195
    return-void
.end method
