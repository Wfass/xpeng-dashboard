.class public abstract Lcom/alibaba/fastjson/JSON;
.super Ljava/lang/Object;
.source "JSON.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONStreamAware;
.implements Lcom/alibaba/fastjson/JSONAware;


# static fields
.field public static DEFAULT_GENERATE_FEATURE:I = 0x0

.field public static DEFAULT_PARSER_FEATURE:I = 0x0

.field public static DEFAULT_TYPE_KEY:Ljava/lang/String; = null

.field public static DEFFAULT_DATE_FORMAT:Ljava/lang/String; = null

.field public static final VERSION:Ljava/lang/String; = "1.2.70"

.field private static final bytesLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[B>;"
        }
    .end annotation
.end field

.field private static final charsLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "[C>;"
        }
    .end annotation
.end field

.field public static defaultLocale:Ljava/util/Locale;

.field public static defaultTimeZone:Ljava/util/TimeZone;

.field static final emptyFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

.field private static final mixInsMapper:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 68
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    .line 69
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    .line 70
    const-string v0, "@type"

    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 71
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    sput-object v0, Lcom/alibaba/fastjson/JSON;->emptyFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    .line 72
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    sput-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/alibaba/fastjson/JSON;->mixInsMapper:Ljava/util/concurrent/ConcurrentHashMap;

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "features":I
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 81
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->InternFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 82
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 83
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 84
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 85
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 86
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->SortFeidFastMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 87
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 88
    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 92
    .end local v0    # "features":I
    const/4 v0, 0x0

    .line 93
    .restart local v0    # "features":I
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->QuoteFieldNames:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 94
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SkipTransientField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 95
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteEnumUsingName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 96
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->SortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    .line 98
    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    .line 100
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->DEFAULT_PROPERTIES:Ljava/util/Properties;

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->config(Ljava/util/Properties;)V

    .line 1150
    .end local v0    # "features":I
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSON;->bytesLocal:Ljava/lang/ThreadLocal;

    .line 1168
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/JSON;->charsLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMixInAnnotations(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/reflect/Type;
    .param p1, "mixinSource"    # Ljava/lang/reflect/Type;

    .line 1287
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1288
    sget-object v0, Lcom/alibaba/fastjson/JSON;->mixInsMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    :cond_0
    return-void
.end method

.method private static allocateBytes(I)[B
    .locals 2
    .param p0, "length"    # I

    .line 1152
    sget-object v0, Lcom/alibaba/fastjson/JSON;->bytesLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 1154
    .local v0, "chars":[B
    if-nez v0, :cond_1

    .line 1155
    const/high16 v1, 0x10000

    if-gt p0, v1, :cond_0

    .line 1156
    new-array v0, v1, [B

    .line 1157
    sget-object v1, Lcom/alibaba/fastjson/JSON;->bytesLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1159
    :cond_0
    new-array v0, p0, [B

    goto :goto_0

    .line 1161
    :cond_1
    array-length v1, v0

    if-ge v1, p0, :cond_2

    .line 1162
    new-array v0, p0, [B

    .line 1165
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static allocateChars(I)[C
    .locals 2
    .param p0, "length"    # I

    .line 1170
    sget-object v0, Lcom/alibaba/fastjson/JSON;->charsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [C

    .line 1172
    .local v0, "chars":[C
    if-nez v0, :cond_1

    .line 1173
    const/high16 v1, 0x10000

    if-gt p0, v1, :cond_0

    .line 1174
    new-array v0, v1, [C

    .line 1175
    sget-object v1, Lcom/alibaba/fastjson/JSON;->charsLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1177
    :cond_0
    new-array v0, p0, [C

    goto :goto_0

    .line 1179
    :cond_1
    array-length v1, v0

    if-ge v1, p0, :cond_2

    .line 1180
    new-array v0, p0, [C

    .line 1183
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static clearMixInAnnotations()V
    .locals 1

    .line 1299
    sget-object v0, Lcom/alibaba/fastjson/JSON;->mixInsMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 1300
    return-void
.end method

.method private static config(Ljava/util/Properties;)V
    .locals 4
    .param p0, "properties"    # Ljava/util/Properties;

    .line 105
    const-string v0, "fastjson.serializerFeatures.MapSortField"

    invoke-virtual {p0, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 106
    .local v0, "featuresProperty":Ljava/lang/String;
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializerFeature;->MapSortField:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->getMask()I

    move-result v1

    .line 107
    .local v1, "mask":I
    const-string v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 108
    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    or-int/2addr v2, v1

    sput v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    goto :goto_0

    .line 109
    :cond_0
    const-string v2, "false"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    not-int v3, v1

    and-int/2addr v2, v3

    sput v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    .line 115
    .end local v0    # "featuresProperty":Ljava/lang/String;
    .end local v1    # "mask":I
    :cond_1
    :goto_0
    const-string v0, "true"

    const-string v1, "parser.features.NonStringKeyAsString"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 121
    :cond_2
    const-string v0, "true"

    const-string v1, "parser.features.ErrorOnEnumNotMatch"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "true"

    const-string v1, "fastjson.parser.features.ErrorOnEnumNotMatch"

    .line 122
    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 124
    :cond_3
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->ErrorOnEnumNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/Feature;->getMask()I

    move-result v1

    or-int/2addr v0, v1

    sput v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 129
    :cond_4
    const-string v0, "false"

    const-string v1, "fastjson.asmEnable"

    invoke-virtual {p0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 130
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->setAsmEnable(Z)V

    .line 131
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->setAsmEnable(Z)V

    .line 134
    :cond_5
    return-void
.end method

.method public static getMixInAnnotations(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "target"    # Ljava/lang/reflect/Type;

    .line 1303
    if-eqz p0, :cond_0

    .line 1304
    sget-object v0, Lcom/alibaba/fastjson/JSON;->mixInsMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    return-object v0

    .line 1306
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static handleResovleTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/Object;)V
    .locals 0
    .param p0, "parser"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser;",
            "TT;)V"
        }
    .end annotation

    .line 1283
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 1284
    return-void
.end method

.method public static isValid(Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 1190
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 1194
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, p0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 1196
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 1198
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1199
    .local v2, "token":I
    const/16 v3, 0xc

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const/16 v3, 0xe

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    .line 1219
    nop

    .line 1226
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1219
    return v0

    .line 1216
    :pswitch_0
    :try_start_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 1217
    goto :goto_0

    .line 1207
    :cond_1
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    .line 1208
    goto :goto_0

    .line 1201
    :cond_2
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v5, 0x1a

    if-ne v3, v5, :cond_3

    .line 1202
    nop

    .line 1226
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1202
    return v0

    .line 1204
    :cond_3
    :try_start_2
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    .line 1205
    nop

    .line 1222
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v3
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 v5, 0x14

    if-ne v3, v5, :cond_4

    .line 1226
    move v0, v4

    goto :goto_1

    .line 1222
    :cond_4
    nop

    .line 1226
    :goto_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1222
    return v0

    .line 1226
    .end local v2    # "token":I
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 1223
    :catch_0
    move-exception v2

    .line 1224
    .local v2, "ex":Ljava/lang/Exception;
    nop

    .line 1226
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1224
    return v0

    .line 1191
    .end local v1    # "lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_5
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isValidArray(Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 1262
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1266
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, p0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 1268
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 1269
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v2

    .line 1270
    .local v2, "token":I
    const/16 v3, 0xe

    if-ne v2, v3, :cond_2

    .line 1271
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipArray(Z)V

    .line 1272
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x14

    if-ne v4, v5, :cond_1

    .line 1278
    move v0, v3

    goto :goto_0

    .line 1272
    :cond_1
    nop

    .line 1278
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1272
    return v0

    .line 1274
    :cond_2
    nop

    .line 1278
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1274
    return v0

    .line 1278
    .end local v2    # "token":I
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 1275
    :catch_0
    move-exception v2

    .line 1276
    .local v2, "ex":Ljava/lang/Exception;
    nop

    .line 1278
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1276
    return v0

    .line 1263
    .end local v1    # "lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_3
    :goto_1
    return v0
.end method

.method public static isValidObject(Ljava/lang/String;)Z
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    .line 1234
    const/4 v0, 0x0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 1238
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, p0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 1241
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->nextToken()V

    .line 1242
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v2

    .line 1243
    .local v2, "token":I
    const/16 v3, 0xc

    if-ne v2, v3, :cond_3

    .line 1244
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCurrent()C

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_1

    .line 1245
    nop

    .line 1254
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1245
    return v0

    .line 1247
    :cond_1
    const/4 v3, 0x1

    :try_start_1
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->skipObject(Z)V

    .line 1248
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->token()I

    move-result v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v5, 0x14

    if-ne v4, v5, :cond_2

    .line 1254
    move v0, v3

    goto :goto_0

    .line 1248
    :cond_2
    nop

    .line 1254
    :goto_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1248
    return v0

    .line 1250
    :cond_3
    nop

    .line 1254
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1250
    return v0

    .line 1254
    .end local v2    # "token":I
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v0

    .line 1251
    :catch_0
    move-exception v2

    .line 1252
    .local v2, "ex":Ljava/lang/Exception;
    nop

    .line 1254
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1252
    return v0

    .line 1235
    .end local v1    # "lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_4
    :goto_1
    return v0
.end method

.method public static parse(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;

    .line 149
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;I)Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "features"    # I

    .line 193
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 157
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;
    .locals 2
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "features"    # I

    .line 178
    if-nez p0, :cond_0

    .line 179
    const/4 v0, 0x0

    return-object v0

    .line 182
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v0, p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 183
    .local v0, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v1

    .line 185
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 187
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 189
    return-object v1
.end method

.method public static varargs parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .line 165
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 166
    .local v0, "featureValues":I
    array-length v1, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p2, v2

    .line 167
    .local v3, "feature":Lcom/alibaba/fastjson/parser/Feature;
    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    .line 166
    .end local v3    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 170
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static varargs parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .line 241
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 242
    .local v0, "featureValues":I
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 243
    .local v3, "feature":Lcom/alibaba/fastjson/parser/Feature;
    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    .line 242
    .end local v3    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 246
    :cond_0
    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;
    .locals 7
    .param p0, "input"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "charsetDecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p4, "features"    # I

    .line 219
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 221
    int-to-double v0, p2

    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 222
    .local v0, "scaleLength":I
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->allocateChars(I)[C

    move-result-object v1

    .line 224
    .local v1, "chars":[C
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 225
    .local v2, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 226
    .local v3, "charBuf":Ljava/nio/CharBuffer;
    invoke-static {p3, v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 228
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    .line 230
    .local v4, "position":I
    new-instance v5, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v6

    invoke-direct {v5, v1, v4, v6, p4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 231
    .local v5, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v6

    .line 233
    .local v6, "value":Ljava/lang/Object;
    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 235
    invoke-virtual {v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 237
    return-object v6
.end method

.method public static varargs parse([BIILjava/nio/charset/CharsetDecoder;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .param p0, "input"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "charsetDecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p4, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .line 206
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 210
    :cond_0
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 211
    .local v0, "featureValues":I
    array-length v1, p4

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p4, v2

    .line 212
    .local v3, "feature":Lcom/alibaba/fastjson/parser/Feature;
    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    .line 211
    .end local v3    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 215
    :cond_1
    invoke-static {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/JSON;->parse([BIILjava/nio/charset/CharsetDecoder;I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 207
    .end local v0    # "featureValues":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static varargs parse([B[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .param p0, "input"    # [B
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .line 197
    array-length v0, p0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->allocateChars(I)[C

    move-result-object v0

    .line 198
    .local v0, "chars":[C
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeUTF8([BII[C)I

    move-result v1

    .line 199
    .local v1, "len":I
    if-gez v1, :cond_0

    .line 200
    const/4 v2, 0x0

    return-object v2

    .line 202
    :cond_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v2, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-static {v3, p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .line 577
    if-nez p0, :cond_0

    .line 578
    const/4 v0, 0x0

    return-object v0

    .line 581
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 585
    .local v0, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 586
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 587
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 588
    const/4 v2, 0x0

    .local v2, "array":Lcom/alibaba/fastjson/JSONArray;
    :goto_0
    goto :goto_1

    .line 589
    .end local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_1
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    .line 590
    const/4 v2, 0x0

    goto :goto_0

    .line 592
    :cond_2
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 593
    .restart local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;)V

    .line 595
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 598
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 600
    return-object v2
.end method

.method public static parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 604
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    .line 605
    const/4 v0, 0x0

    return-object v0

    .line 610
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 611
    .local v0, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    iget-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 612
    .local v1, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    .line 613
    .local v2, "token":I
    const/16 v3, 0x8

    if-ne v2, v3, :cond_1

    .line 614
    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 615
    const/4 v3, 0x0

    .local v3, "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :goto_0
    goto :goto_1

    .line 616
    .end local v3    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    :cond_1
    const/16 v3, 0x14

    if-ne v2, v3, :cond_2

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 617
    const/4 v3, 0x0

    goto :goto_0

    .line 619
    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .restart local v3    # "list":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {v0, p1, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 622
    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 625
    :goto_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 627
    return-object v3
.end method

.method public static parseArray(Ljava/lang/String;[Ljava/lang/reflect/Type;)Ljava/util/List;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "types"    # [Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 631
    if-nez p0, :cond_0

    .line 632
    const/4 v0, 0x0

    return-object v0

    .line 637
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 638
    .local v0, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;

    move-result-object v1

    .line 639
    .local v1, "objectArray":[Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 640
    const/4 v2, 0x0

    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    goto :goto_0

    .line 642
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 645
    .restart local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :goto_0
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 647
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 649
    return-object v2
.end method

.method public static parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 4
    .param p0, "text"    # Ljava/lang/String;

    .line 254
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 255
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v1, :cond_0

    .line 256
    move-object v1, v0

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    return-object v1

    .line 260
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 261
    :catch_0
    move-exception v1

    .line 262
    .local v1, "e":Ljava/lang/RuntimeException;
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "can not cast to JSONObject."

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static varargs parseObject(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .param p1, "features"    # [Lcom/alibaba/fastjson/parser/Feature;

    .line 250
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 513
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 13
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p4, "processor"    # Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    .param p5, "featureValues"    # I
    .param p6, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 550
    if-nez p1, :cond_0

    .line 551
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    .end local p1    # "charset":Ljava/nio/charset/Charset;
    .local v0, "charset":Ljava/nio/charset/Charset;
    goto :goto_0

    .line 554
    .end local v0    # "charset":Ljava/nio/charset/Charset;
    .restart local p1    # "charset":Ljava/nio/charset/Charset;
    :cond_0
    move-object v0, p1

    .end local p1    # "charset":Ljava/nio/charset/Charset;
    .restart local v0    # "charset":Ljava/nio/charset/Charset;
    :goto_0
    const/high16 v1, 0x10000

    invoke-static {v1}, Lcom/alibaba/fastjson/JSON;->allocateBytes(I)[B

    move-result-object v1

    .line 555
    .local v1, "bytes":[B
    const/4 v2, 0x0

    move-object v10, v1

    move v1, v2

    .local v1, "offset":I
    .local v10, "bytes":[B
    :goto_1
    move v11, v1

    .line 557
    .end local v1    # "offset":I
    .local v11, "offset":I
    array-length v1, v10

    sub-int/2addr v1, v11

    move-object v12, p0

    invoke-virtual {v12, v10, v11, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 558
    .local v1, "readCount":I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    .line 559
    nop

    .line 569
    .end local v1    # "readCount":I
    const/4 v2, 0x0

    move-object v1, v10

    move v3, v11

    move-object v4, v0

    move-object v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move-object/from16 v9, p6

    invoke-static/range {v1 .. v9}, Lcom/alibaba/fastjson/JSON;->parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 561
    .restart local v1    # "readCount":I
    :cond_1
    add-int v3, v11, v1

    .line 562
    .end local v11    # "offset":I
    .local v3, "offset":I
    array-length v4, v10

    if-ne v3, v4, :cond_2

    .line 563
    array-length v4, v10

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v4, v4, [B

    .line 564
    .local v4, "newBytes":[B
    array-length v5, v10

    invoke-static {v10, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 565
    move-object v10, v4

    .line 567
    .end local v1    # "readCount":I
    .end local v4    # "newBytes":[B
    :cond_2
    nop

    .line 555
    move v1, v3

    goto :goto_1
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 7
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p4, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 536
    sget v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/io/InputStream;",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 524
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {p0, p1, p2, v0, p3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/io/InputStream;Ljava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 3
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/TypeReference<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 278
    .local p1, "type":Lcom/alibaba/fastjson/TypeReference;, "Lcom/alibaba/fastjson/TypeReference<TT;>;"
    iget-object v0, p1, Lcom/alibaba/fastjson/TypeReference;->type:Ljava/lang/reflect/Type;

    sget-object v1, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, v0, v1, v2, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 573
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "text"    # Ljava/lang/String;
    .param p2, "processor"    # Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 305
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/Class;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "json"    # Ljava/lang/String;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 300
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 4
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "featureValues"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 337
    if-nez p0, :cond_0

    .line 338
    const/4 v0, 0x0

    return-object v0

    .line 341
    :cond_0
    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p3, v1

    .line 342
    .local v2, "feature":Lcom/alibaba/fastjson/parser/Feature;
    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result p2

    .line 341
    .end local v2    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {v0, p0, v1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 346
    .local v0, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v1

    .line 348
    .local v1, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 350
    invoke-virtual {v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 352
    return-object v1
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "featureValues"    # I
    .param p4, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 364
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "processor"    # Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    .param p4, "featureValues"    # I
    .param p5, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 370
    const/4 v0, 0x0

    if-eqz p0, :cond_5

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 374
    :cond_0
    if-eqz p5, :cond_1

    .line 375
    array-length v1, p5

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p5, v2

    .line 376
    .local v3, "feature":Lcom/alibaba/fastjson/parser/Feature;
    iget v4, v3, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    or-int/2addr p4, v4

    .line 375
    .end local v3    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 380
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-direct {v1, p0, p2, p4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 382
    .local v1, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    if-eqz p3, :cond_4

    .line 383
    instance-of v2, p3, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    if-eqz v2, :cond_2

    .line 384
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getExtraTypeProviders()Ljava/util/List;

    move-result-object v2

    move-object v3, p3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 387
    :cond_2
    instance-of v2, p3, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    if-eqz v2, :cond_3

    .line 388
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getExtraProcessors()Ljava/util/List;

    move-result-object v2

    move-object v3, p3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 391
    :cond_3
    instance-of v2, p3, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    if-eqz v2, :cond_4

    .line 392
    move-object v2, p3

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setFieldTypeResolver(Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;)V

    .line 396
    :cond_4
    invoke-virtual {v1, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 398
    .local v0, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 400
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 402
    return-object v0

    .line 371
    .end local v0    # "value":Ljava/lang/Object;, "TT;"
    .end local v1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    :cond_5
    :goto_1
    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 359
    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "processor"    # Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 332
    sget-object v2, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 2
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 327
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 7
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "clazz"    # Ljava/lang/reflect/Type;
    .param p5, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p6, "processor"    # Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    .param p7, "featureValues"    # I
    .param p8, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 443
    if-nez p3, :cond_0

    .line 444
    sget-object p3, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    .line 448
    :cond_0
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    if-ne p3, v0, :cond_2

    .line 449
    array-length v0, p0

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->allocateChars(I)[C

    move-result-object v0

    .line 450
    .local v0, "chars":[C
    invoke-static {p0, p1, p2, v0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeUTF8([BII[C)I

    move-result v2

    .line 451
    .local v2, "chars_len":I
    if-gez v2, :cond_1

    .line 452
    return-object v1

    .line 454
    :cond_1
    new-instance v1, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    .end local v0    # "chars":[C
    .end local v2    # "chars_len":I
    move-object v0, v1

    .line 455
    .local v0, "strVal":Ljava/lang/String;
    goto :goto_0

    .line 456
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_2
    if-gez p2, :cond_3

    .line 457
    return-object v1

    .line 459
    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0, p1, p2, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    move-object v1, v0

    .line 461
    .local v1, "strVal":Ljava/lang/String;
    :goto_0
    move-object v2, p4

    move-object v3, p5

    move-object v4, p6

    move v5, p7

    move-object v6, p8

    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 9
    .param p0, "bytes"    # [B
    .param p1, "offset"    # I
    .param p2, "len"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;
    .param p4, "clazz"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 415
    sget-object v5, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    sget v7, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v8, p5

    invoke-static/range {v0 .. v8}, Lcom/alibaba/fastjson/JSON;->parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject([BIILjava/nio/charset/CharsetDecoder;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "input"    # [B
    .param p1, "off"    # I
    .param p2, "len"    # I
    .param p3, "charsetDecoder"    # Ljava/nio/charset/CharsetDecoder;
    .param p4, "clazz"    # Ljava/lang/reflect/Type;
    .param p5, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([BII",
            "Ljava/nio/charset/CharsetDecoder;",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 471
    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 473
    int-to-double v0, p2

    invoke-virtual {p3}, Ljava/nio/charset/CharsetDecoder;->maxCharsPerByte()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    .line 474
    .local v0, "scaleLength":I
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->allocateChars(I)[C

    move-result-object v1

    .line 476
    .local v1, "chars":[C
    invoke-static {p0, p1, p2}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 477
    .local v2, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static {v1}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v3

    .line 478
    .local v3, "charByte":Ljava/nio/CharBuffer;
    invoke-static {p3, v2, v3}, Lcom/alibaba/fastjson/util/IOUtils;->decode(Ljava/nio/charset/CharsetDecoder;Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;)V

    .line 480
    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v4

    .line 482
    .local v4, "position":I
    invoke-static {v1, v4, p4, p5}, Lcom/alibaba/fastjson/JSON;->parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v5

    return-object v5
.end method

.method public static varargs parseObject([BLjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 6
    .param p0, "bytes"    # [B
    .param p1, "clazz"    # Ljava/lang/reflect/Type;
    .param p2, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 407
    array-length v2, p0

    sget-object v3, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    const/4 v1, 0x0

    move-object v0, p0

    move-object v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject([BLjava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 9
    .param p0, "bytes"    # [B
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p4, "processor"    # Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;
    .param p5, "featureValues"    # I
    .param p6, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([B",
            "Ljava/nio/charset/Charset;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            "Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;",
            "I[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 429
    array-length v2, p0

    const/4 v1, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-object v8, p6

    invoke-static/range {v0 .. v8}, Lcom/alibaba/fastjson/JSON;->parseObject([BIILjava/nio/charset/Charset;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;Lcom/alibaba/fastjson/parser/deserializer/ParseProcess;I[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static varargs parseObject([CILjava/lang/reflect/Type;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;
    .locals 5
    .param p0, "input"    # [C
    .param p1, "length"    # I
    .param p2, "clazz"    # Ljava/lang/reflect/Type;
    .param p3, "features"    # [Lcom/alibaba/fastjson/parser/Feature;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([CI",
            "Ljava/lang/reflect/Type;",
            "[",
            "Lcom/alibaba/fastjson/parser/Feature;",
            ")TT;"
        }
    .end annotation

    .line 487
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 491
    :cond_0
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    .line 492
    .local v0, "featureValues":I
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p3, v2

    .line 493
    .local v3, "feature":Lcom/alibaba/fastjson/parser/Feature;
    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lcom/alibaba/fastjson/parser/Feature;->config(ILcom/alibaba/fastjson/parser/Feature;Z)I

    move-result v0

    .line 492
    .end local v3    # "feature":Lcom/alibaba/fastjson/parser/Feature;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v2

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 497
    .local v1, "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 499
    .local v2, "value":Ljava/lang/Object;, "TT;"
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->handleResovleTask(Ljava/lang/Object;)V

    .line 501
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->close()V

    .line 503
    return-object v2

    .line 488
    .end local v0    # "featureValues":I
    .end local v1    # "parser":Lcom/alibaba/fastjson/parser/DefaultJSONParser;
    .end local v2    # "value":Ljava/lang/Object;, "TT;"
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static removeMixInAnnotations(Ljava/lang/reflect/Type;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/reflect/Type;

    .line 1293
    if-eqz p0, :cond_0

    .line 1294
    sget-object v0, Lcom/alibaba/fastjson/JSON;->mixInsMapper:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1296
    :cond_0
    return-void
.end method

.method public static setDefaultTypeKey(Ljava/lang/String;)V
    .locals 7
    .param p0, "typeKey"    # Ljava/lang/String;

    .line 141
    sput-object p0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 142
    sget-object v0, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    iget-object v1, v0, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 144
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    .line 145
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 142
    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v2, p0

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson/parser/SymbolTable;->addSymbol(Ljava/lang/String;IIIZ)Ljava/lang/String;

    .line 146
    return-void
.end method

.method public static toJSON(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;

    .line 1012
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "parserConfig"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 1019
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;
    .locals 9
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 1024
    if-nez p0, :cond_0

    .line 1025
    const/4 v0, 0x0

    return-object v0

    .line 1028
    :cond_0
    instance-of v0, p0, Lcom/alibaba/fastjson/JSON;

    if-eqz v0, :cond_1

    .line 1029
    return-object p0

    .line 1032
    :cond_1
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 1033
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    .line 1035
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    .line 1038
    .local v1, "size":I
    instance-of v2, v0, Ljava/util/LinkedHashMap;

    if-eqz v2, :cond_2

    .line 1039
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .local v2, "innerMap":Ljava/util/Map;
    :goto_0
    goto :goto_1

    .line 1040
    .end local v2    # "innerMap":Ljava/util/Map;
    :cond_2
    instance-of v2, v0, Ljava/util/TreeMap;

    if-eqz v2, :cond_3

    .line 1041
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    goto :goto_0

    .line 1043
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 1046
    .restart local v2    # "innerMap":Ljava/util/Map;
    :goto_1
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3, v2}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .line 1048
    .local v3, "json":Lcom/alibaba/fastjson/JSONObject;
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 1049
    .local v5, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    .line 1050
    .local v6, "key":Ljava/lang/Object;
    invoke-static {v6}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1051
    .local v7, "jsonKey":Ljava/lang/String;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;

    move-result-object v8

    .line 1052
    .local v8, "jsonValue":Ljava/lang/Object;
    invoke-virtual {v3, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1053
    .end local v5    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v6    # "key":Ljava/lang/Object;
    .end local v7    # "jsonKey":Ljava/lang/String;
    .end local v8    # "jsonValue":Ljava/lang/Object;
    goto :goto_2

    .line 1055
    :cond_4
    return-object v3

    .line 1058
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v1    # "size":I
    .end local v2    # "innerMap":Ljava/util/Map;
    .end local v3    # "json":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_7

    .line 1059
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    .line 1061
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 1063
    .local v1, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 1064
    .local v3, "item":Ljava/lang/Object;
    invoke-static {v3, p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;

    move-result-object v4

    .line 1065
    .local v4, "jsonValue":Ljava/lang/Object;
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1066
    .end local v3    # "item":Ljava/lang/Object;
    .end local v4    # "jsonValue":Ljava/lang/Object;
    goto :goto_3

    .line 1068
    :cond_6
    return-object v1

    .line 1071
    .end local v0    # "collection":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    .end local v1    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_7
    instance-of v0, p0, Lcom/alibaba/fastjson/serializer/JSONSerializable;

    if-eqz v0, :cond_8

    .line 1072
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1073
    .local v0, "json":Ljava/lang/String;
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 1076
    .end local v0    # "json":Ljava/lang/String;
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1078
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1079
    move-object v1, p0

    check-cast v1, Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1082
    :cond_9
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1083
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    .line 1085
    .local v1, "len":I
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 1087
    .local v2, "array":Lcom/alibaba/fastjson/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v1, :cond_a

    .line 1088
    invoke-static {p0, v3}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v4

    .line 1089
    .local v4, "item":Ljava/lang/Object;
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1090
    .local v5, "jsonValue":Ljava/lang/Object;
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONArray;->add(Ljava/lang/Object;)Z

    .line 1087
    .end local v4    # "item":Ljava/lang/Object;
    .end local v5    # "jsonValue":Ljava/lang/Object;
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1093
    .end local v3    # "i":I
    :cond_a
    return-object v2

    .line 1096
    .end local v1    # "len":I
    .end local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_b
    invoke-static {v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive2(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1097
    return-object p0

    .line 1100
    :cond_c
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 1101
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v2, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v2, :cond_e

    .line 1102
    move-object v2, v1

    check-cast v2, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 1104
    .local v2, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 1106
    .local v3, "json":Lcom/alibaba/fastjson/JSONObject;
    :try_start_0
    invoke-virtual {v2, p0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v4

    .line 1107
    .local v4, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 1108
    .local v6, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v8, p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1109
    .end local v6    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    goto :goto_5

    .line 1112
    .end local v4    # "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_d
    nop

    .line 1113
    return-object v3

    .line 1110
    :catch_0
    move-exception v4

    .line 1111
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    const-string v6, "toJSON error"

    invoke-direct {v5, v6, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 1116
    .end local v2    # "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .end local v3    # "json":Lcom/alibaba/fastjson/JSONObject;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_e
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 1117
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    return-object v3
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "defaultFeatures"    # I
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 711
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0, p1, p2}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "defaultFeatures"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 784
    sget-object v0, Lcom/alibaba/fastjson/JSON;->emptyFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    invoke-static {p0, p1, v0, p2, p3}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 795
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, v1, p3}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p3, "defaultFeatures"    # I
    .param p4, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 802
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 7
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p3, "dateFormat"    # Ljava/lang/String;
    .param p4, "defaultFeatures"    # I
    .param p5, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 809
    sget-object v0, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 777
    sget-object v0, Lcom/alibaba/fastjson/JSON;->emptyFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, v1, p2}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 704
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    sget v2, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, v1, v2, p2}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 791
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1, v1, p2}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONBytes(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 700
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONBytes(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONBytes(Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)[B
    .locals 5
    .param p0, "charset"    # Ljava/nio/charset/Charset;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p3, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p4, "dateFormat"    # Ljava/lang/String;
    .param p5, "defaultFeatures"    # I
    .param p6, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 822
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p5, p6}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 825
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 827
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    if-eqz p4, :cond_0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 828
    invoke-virtual {v1, p4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setDateFormat(Ljava/lang/String;)V

    .line 829
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 832
    :cond_0
    if-eqz p3, :cond_1

    .line 833
    array-length v2, p3

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p3, v3

    .line 834
    .local v4, "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 833
    .end local v4    # "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 838
    :cond_1
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 839
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 841
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 839
    return-object v2

    .line 841
    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v1
.end method

.method public static toJSONString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .line 661
    sget-object v0, Lcom/alibaba/fastjson/JSON;->emptyFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "defaultFeatures"    # I
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 672
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    check-cast v1, Ljava/io/Writer;

    invoke-direct {v0, v1, p1, p2}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 675
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 676
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 677
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 679
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 677
    return-object v2

    .line 679
    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v1
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 7
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 722
    const/4 v0, 0x1

    new-array v3, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v0, 0x0

    aput-object p2, v3, v0

    sget v5, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p3, "dateFormat"    # Ljava/lang/String;
    .param p4, "defaultFeatures"    # I
    .param p5, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 742
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p4, p5}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 745
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 747
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 748
    invoke-virtual {v1, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setDateFormat(Ljava/lang/String;)V

    .line 749
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 752
    :cond_0
    if-eqz p2, :cond_1

    .line 753
    array-length v2, p2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p2, v3

    .line 754
    .local v4, "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 753
    .end local v4    # "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 758
    :cond_1
    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 760
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 762
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 760
    return-object v2

    .line 762
    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v1
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 729
    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 715
    const/4 v0, 0x0

    check-cast v0, Lcom/alibaba/fastjson/serializer/SerializeFilter;

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "filter"    # Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 692
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v0, 0x1

    new-array v2, v0, [Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v0, 0x0

    aput-object p1, v2, v0

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJSONString(Ljava/lang/Object;Z)Ljava/lang/String;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "prettyFormat"    # Z

    .line 846
    if-nez p1, :cond_0

    .line 847
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 850
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v1, 0x0

    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    aput-object v2, v0, v1

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializeFilter;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 696
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONString(Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 1
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 665
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, v0, p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONStringWithDateFormat(Ljava/lang/Object;Ljava/lang/String;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "dateFormat"    # Ljava/lang/String;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 688
    sget-object v1, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v4, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static varargs toJSONStringZ(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 6
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "mapping"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 770
    sget-object v2, Lcom/alibaba/fastjson/JSON;->emptyFilters:[Lcom/alibaba/fastjson/serializer/SerializeFilter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toJavaObject(Lcom/alibaba/fastjson/JSON;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "json"    # Lcom/alibaba/fastjson/JSON;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/JSON;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1121
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 8
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "defaultFeatures"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 907
    sget-object v1, Lcom/alibaba/fastjson/util/IOUtils;->UTF8:Ljava/nio/charset/Charset;

    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move v6, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    return v0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 1
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 897
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    return v0
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 5
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p4, "filters"    # [Lcom/alibaba/fastjson/serializer/SerializeFilter;
    .param p5, "dateFormat"    # Ljava/lang/String;
    .param p6, "defaultFeatures"    # I
    .param p7, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 939
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p6, p7}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 942
    .local v0, "writer":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0, p3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 944
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    if-eqz p5, :cond_0

    invoke-virtual {p5}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 945
    invoke-virtual {v1, p5}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setDateFormat(Ljava/lang/String;)V

    .line 946
    sget-object v2, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteDateUseDateFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config(Lcom/alibaba/fastjson/serializer/SerializerFeature;Z)V

    .line 949
    :cond_0
    if-eqz p4, :cond_1

    .line 950
    array-length v2, p4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p4, v3

    .line 951
    .local v4, "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->addFilter(Lcom/alibaba/fastjson/serializer/SerializeFilter;)V

    .line 950
    .end local v4    # "filter":Lcom/alibaba/fastjson/serializer/SerializeFilter;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 955
    :cond_1
    invoke-virtual {v1, p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 957
    invoke-virtual {v0, p0, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeToEx(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 958
    .local v2, "len":I
    nop

    .line 960
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 958
    return v2

    .line 960
    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    .end local v2    # "len":I
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v1
.end method

.method public static final varargs writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I
    .locals 8
    .param p0, "os"    # Ljava/io/OutputStream;
    .param p1, "charset"    # Ljava/nio/charset/Charset;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 921
    sget-object v3, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    sget v6, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v7, p3

    invoke-static/range {v0 .. v7}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/OutputStream;Ljava/nio/charset/Charset;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;[Lcom/alibaba/fastjson/serializer/SerializeFilter;Ljava/lang/String;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v0

    return v0
.end method

.method public static varargs writeJSONString(Ljava/io/Writer;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 2
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "defaultFeatures"    # I
    .param p3, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 876
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0, p0, p2, p3}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 879
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    .line 880
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 882
    .end local v1    # "serializer":Lcom/alibaba/fastjson/serializer/JSONSerializer;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 883
    nop

    .line 884
    return-void

    .line 882
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v1
.end method

.method public static varargs writeJSONString(Ljava/io/Writer;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 1
    .param p0, "writer"    # Ljava/io/Writer;
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 869
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    invoke-static {p0, p1, v0, p2}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/Writer;Ljava/lang/Object;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 870
    return-void
.end method

.method public static varargs writeJSONStringTo(Ljava/lang/Object;Ljava/io/Writer;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V
    .locals 0
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 857
    invoke-static {p1, p0, p2}, Lcom/alibaba/fastjson/JSON;->writeJSONString(Ljava/io/Writer;Ljava/lang/Object;[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 858
    return-void
.end method


# virtual methods
.method public toJSONString()Ljava/lang/String;
    .locals 2

    .line 971
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 973
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 974
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 976
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 974
    return-object v1

    .line 976
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v1
.end method

.method public toJavaObject(Lcom/alibaba/fastjson/TypeReference;)Ljava/lang/Object;
    .locals 2
    .param p1, "typeReference"    # Lcom/alibaba/fastjson/TypeReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/TypeReference;",
            ")TT;"
        }
    .end annotation

    .line 1146
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/fastjson/TypeReference;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1147
    .local v0, "type":Ljava/lang/reflect/Type;
    :goto_0
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public toJavaObject(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1128
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v0, Lcom/alibaba/fastjson/JSONArray;

    if-eq p1, v0, :cond_1

    const-class v0, Lcom/alibaba/fastjson/JSON;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/util/Collection;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/util/List;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1132
    :cond_0
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1129
    :cond_1
    :goto_0
    return-object p0
.end method

.method public toJavaObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 1139
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 967
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs toString([Lcom/alibaba/fastjson/serializer/SerializerFeature;)Ljava/lang/String;
    .locals 3
    .param p1, "features"    # [Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 984
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_GENERATE_FEATURE:I

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1, p1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>(Ljava/io/Writer;I[Lcom/alibaba/fastjson/serializer/SerializerFeature;)V

    .line 987
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 988
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 990
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 988
    return-object v1

    .line 990
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v1
.end method

.method public writeJSONString(Ljava/lang/Appendable;)V
    .locals 4
    .param p1, "appendable"    # Ljava/lang/Appendable;

    .line 995
    new-instance v0, Lcom/alibaba/fastjson/serializer/SerializeWriter;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;-><init>()V

    .line 997
    .local v0, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    :try_start_0
    new-instance v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;-><init>(Lcom/alibaba/fastjson/serializer/SerializeWriter;)V

    invoke-virtual {v1, p0}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    .line 998
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    .line 1003
    nop

    .line 1004
    return-void

    .line 1002
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 999
    :catch_0
    move-exception v1

    .line 1000
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1002
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-virtual {v0}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->close()V

    throw v1
.end method
