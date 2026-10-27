.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser;
.super Ljava/lang/Object;
.source "DefaultJSONParser.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    }
.end annotation


# static fields
.field public static final NONE:I = 0x0

.field public static final NeedToResolve:I = 0x1

.field public static final TypeNameRedirect:I = 0x2

.field private static final primitiveClasses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private autoTypeAccept:[Ljava/lang/String;

.field private autoTypeEnable:Z

.field protected config:Lcom/alibaba/fastjson/parser/ParserConfig;

.field protected context:Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

.field private contextArrayIndex:I

.field private dateFormat:Ljava/text/DateFormat;

.field private dateFormatPattern:Ljava/lang/String;

.field private extraProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation
.end field

.field private extraTypeProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation
.end field

.field protected fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

.field public final input:Ljava/lang/Object;

.field protected transient lastBeanContext:Lcom/alibaba/fastjson/serializer/BeanContext;

.field public final lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

.field private objectKeyLevel:I

.field public resolveStatus:I

.field private resolveTaskList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation
.end field

.field public final symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 46
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    .line 78
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x3

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x6

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Boolean;

    const/4 v3, 0x7

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Byte;

    const/16 v3, 0x8

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Short;

    const/16 v3, 0x9

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Integer;

    const/16 v3, 0xa

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Long;

    const/16 v3, 0xb

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Float;

    const/16 v3, 0xc

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/Double;

    const/16 v3, 0xd

    aput-object v1, v0, v3

    const-class v1, Ljava/math/BigInteger;

    const/16 v3, 0xe

    aput-object v1, v0, v3

    const-class v1, Ljava/math/BigDecimal;

    const/16 v3, 0xf

    aput-object v1, v0, v3

    const-class v1, Ljava/lang/String;

    const/16 v3, 0x10

    aput-object v1, v0, v3

    .line 100
    .local v0, "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v1, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 101
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v4, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->primitiveClasses:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 100
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    .end local v0    # "classes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;)V
    .locals 1
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 143
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 1
    .param p1, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 148
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 3
    .param p1, "input"    # Ljava/lang/Object;
    .param p2, "lexer"    # Lcom/alibaba/fastjson/parser/JSONLexer;
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 64
    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 67
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 68
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 70
    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->objectKeyLevel:I

    .line 73
    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->autoTypeAccept:[Ljava/lang/String;

    .line 151
    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 152
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    .line 153
    iput-object p3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 154
    iget-object v0, p3, Lcom/alibaba/fastjson/parser/ParserConfig;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    .line 156
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    .line 157
    .local v0, "ch":I
    const/16 v1, 0x7b

    if-ne v0, v1, :cond_0

    .line 158
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 159
    move-object v1, p2

    check-cast v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    const/16 v2, 0xc

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 160
    :cond_0
    const/16 v1, 0x5b

    if-ne v0, v1, :cond_1

    .line 161
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 162
    move-object v1, p2

    check-cast v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;

    const/16 v2, 0xe

    iput v2, v1, Lcom/alibaba/fastjson/parser/JSONLexerBase;->token:I

    goto :goto_0

    .line 164
    :cond_1
    invoke-interface {p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 166
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;

    .line 127
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V

    .line 128
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 131
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    sget v1, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {v0, p1, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p3, "features"    # I

    .line 135
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, p1, p3}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 136
    return-void
.end method

.method public constructor <init>([CILcom/alibaba/fastjson/parser/ParserConfig;I)V
    .locals 1
    .param p1, "input"    # [C
    .param p2, "length"    # I
    .param p3, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .param p4, "features"    # I

    .line 139
    new-instance v0, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v0, p1, p2, p4}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>([CII)V

    invoke-direct {p0, p1, v0, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;-><init>(Ljava/lang/Object;Lcom/alibaba/fastjson/parser/JSONLexer;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 140
    return-void
.end method

.method private addContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 6
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1354
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1355
    .local v0, "i":I
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    if-nez v1, :cond_0

    .line 1356
    const/16 v1, 0x8

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    goto :goto_0

    .line 1357
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 1358
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x2

    .line 1359
    .local v1, "newLen":I
    new-array v2, v1, [Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1360
    .local v2, "newArray":[Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v4, v4

    const/4 v5, 0x0

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1361
    iput-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1363
    .end local v1    # "newLen":I
    .end local v2    # "newArray":[Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aput-object p1, v1, v0

    .line 1364
    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 4
    .param p1, "token"    # I

    .line 1498
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1499
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1500
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1505
    return-void

    .line 1502
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1503
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final accept(II)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "nextExpectToken"    # I

    .line 1508
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1509
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 1510
    invoke-interface {v0, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 1512
    :cond_0
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->throwException(I)V

    .line 1514
    :goto_0
    return-void
.end method

.method public acceptType(Ljava/lang/String;)V
    .locals 3
    .param p1, "typeName"    # Ljava/lang/String;

    .line 1064
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1066
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1068
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 1072
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1073
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1074
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x10

    if-ne v1, v2, :cond_0

    .line 1075
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1080
    :cond_0
    return-void

    .line 1078
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "type not match error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1069
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "type not match error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V
    .locals 2
    .param p1, "task"    # Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .line 1280
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1281
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    .line 1283
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1284
    return-void
.end method

.method public checkListResolve(Ljava/util/Collection;)V
    .locals 5
    .param p1, "array"    # Ljava/util/Collection;

    .line 1102
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1103
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1104
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .line 1105
    .local v0, "index":I
    move-object v1, p1

    check-cast v1, Ljava/util/List;

    .line 1106
    .local v1, "list":Ljava/util/List;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v3

    .line 1107
    .local v3, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    new-instance v4, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;

    invoke-direct {v4, p0, v1, v0}, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;-><init>(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/util/List;I)V

    iput-object v4, v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1108
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v4, v3, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1109
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 1110
    .end local v0    # "index":I
    .end local v1    # "list":Ljava/util/List;
    .end local v3    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    goto :goto_0

    .line 1111
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v0

    .line 1112
    .local v0, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    new-instance v1, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;

    invoke-direct {v1, p1}, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1113
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v1, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1114
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 1117
    .end local v0    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    :cond_1
    :goto_0
    return-void
.end method

.method public checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V
    .locals 3
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .line 1121
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1122
    new-instance v0, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;-><init>(Ljava/util/Map;Ljava/lang/Object;)V

    .line 1123
    .local v0, "fieldResolver":Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    move-result-object v1

    .line 1124
    .local v1, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    iput-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1125
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v2, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1126
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 1128
    .end local v0    # "fieldResolver":Lcom/alibaba/fastjson/parser/deserializer/ResolveFieldDeserializer;
    .end local v1    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    :cond_0
    return-void
.end method

.method public close()V
    .locals 4

    .line 1522
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1525
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    :try_start_0
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->AutoCloseSource:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1526
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x14

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1527
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not close json text, token : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1531
    :cond_1
    :goto_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    .line 1532
    nop

    .line 1533
    return-void

    .line 1531
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->close()V

    throw v1
.end method

.method public config(Lcom/alibaba/fastjson/parser/Feature;Z)V
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;
    .param p2, "state"    # Z

    .line 1486
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, p1, p2}, Lcom/alibaba/fastjson/parser/JSONLexer;->config(Lcom/alibaba/fastjson/parser/Feature;Z)V

    .line 1487
    return-void
.end method

.method public getConfig()Lcom/alibaba/fastjson/parser/ParserConfig;
    .locals 1

    .line 640
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    return-object v0
.end method

.method public getContext()Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 1

    .line 1269
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    return-object v0
.end method

.method public getDateFomartPattern()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    return-object v0
.end method

.method public getDateFormat()Ljava/text/DateFormat;
    .locals 3

    .line 110
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 112
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    return-object v0
.end method

.method public getExtraProcessors()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;",
            ">;"
        }
    .end annotation

    .line 1291
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1292
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    .line 1294
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getExtraTypeProviders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;",
            ">;"
        }
    .end annotation

    .line 1298
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1299
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    .line 1301
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    return-object v0
.end method

.method public getFieldTypeResolver()Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;
    .locals 1

    .line 1305
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    return-object v0
.end method

.method public getInput()Ljava/lang/String;
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    instance-of v0, v0, [C

    if-eqz v0, :cond_0

    .line 174
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    check-cast v1, [C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->input:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastResolveTask()Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    .locals 2

    .line 1287
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    return-object v0
.end method

.method public getLexer()Lcom/alibaba/fastjson/parser/JSONLexer;
    .locals 1

    .line 1494
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    return-object v0
.end method

.method public getObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .line 1091
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-ge v0, v1, :cond_1

    .line 1092
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/ParseContext;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1093
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    return-object v1

    .line 1091
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1097
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getResolveStatus()I
    .locals 1

    .line 1083
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    return v0
.end method

.method public getResolveTaskList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;",
            ">;"
        }
    .end annotation

    .line 1273
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1274
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    .line 1276
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    return-object v0
.end method

.method public getSymbolTable()Lcom/alibaba/fastjson/parser/SymbolTable;
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    return-object v0
.end method

.method public handleResovleTask(Ljava/lang/Object;)V
    .locals 10
    .param p1, "value"    # Ljava/lang/Object;

    .line 1549
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1550
    return-void

    .line 1553
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_7

    .line 1554
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveTaskList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    .line 1555
    .local v2, "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    iget-object v3, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->referenceValue:Ljava/lang/String;

    .line 1557
    .local v3, "ref":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1558
    .local v4, "object":Ljava/lang/Object;
    iget-object v5, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v5, :cond_1

    .line 1559
    iget-object v5, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->ownerContext:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v4, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1564
    :cond_1
    const-string v5, "$"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1565
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    .line 1566
    .local v5, "refValue":Ljava/lang/Object;
    if-nez v5, :cond_4

    .line 1568
    :try_start_0
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v6

    .line 1569
    .local v6, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v6}, Lcom/alibaba/fastjson/JSONPath;->isRef()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1570
    invoke-virtual {v6, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONPathException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v7

    .line 1574
    .end local v6    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    :cond_2
    :goto_1
    goto :goto_2

    .line 1572
    :catch_0
    move-exception v6

    goto :goto_1

    .line 1577
    .end local v5    # "refValue":Ljava/lang/Object;
    :cond_3
    iget-object v5, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v5, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1580
    .restart local v5    # "refValue":Ljava/lang/Object;
    :cond_4
    :goto_2
    iget-object v6, v2, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->fieldDeserializer:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    .line 1582
    .local v6, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v6, :cond_6

    .line 1583
    if-eqz v5, :cond_5

    .line 1584
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    const-class v8, Lcom/alibaba/fastjson/JSONObject;

    if-ne v7, v8, :cond_5

    iget-object v7, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    if-eqz v7, :cond_5

    const-class v7, Ljava/util/Map;

    iget-object v8, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 1586
    invoke-virtual {v7, v8}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 1587
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget-object v7, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 1588
    .local v7, "root":Ljava/lang/Object;
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v8

    .line 1589
    .local v8, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v8}, Lcom/alibaba/fastjson/JSONPath;->isRef()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1590
    invoke-virtual {v8, v7}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1594
    .end local v7    # "root":Ljava/lang/Object;
    .end local v8    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    :cond_5
    invoke-virtual {v6, v4, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1553
    .end local v2    # "task":Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
    .end local v3    # "ref":Ljava/lang/String;
    .end local v4    # "object":Ljava/lang/Object;
    .end local v5    # "refValue":Ljava/lang/Object;
    .end local v6    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1597
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_7
    return-void
.end method

.method public isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z
    .locals 1
    .param p1, "feature"    # Lcom/alibaba/fastjson/parser/Feature;

    .line 1490
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0, p1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    return v0
.end method

.method public parse()Ljava/lang/Object;
    .locals 1

    .line 1367
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parse(Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "object"    # Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .line 1644
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_2

    .line 1645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect {, actual "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1646
    .local v0, "msg":Ljava/lang/String;
    instance-of v2, p2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1647
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", fieldName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1648
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1650
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1651
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1653
    new-instance v2, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v2}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1654
    .local v2, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0, v2, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1656
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    .line 1657
    invoke-virtual {v2, v1}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 1658
    .local v1, "first":Ljava/lang/Object;
    instance-of v3, v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v3, :cond_1

    .line 1659
    move-object v3, v1

    check-cast v3, Lcom/alibaba/fastjson/JSONObject;

    return-object v3

    .line 1663
    .end local v1    # "first":Ljava/lang/Object;
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    invoke-direct {v1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1666
    .end local v0    # "msg":Ljava/lang/String;
    .end local v2    # "array":Lcom/alibaba/fastjson/JSONArray;
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1668
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    nop

    .line 1669
    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1670
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v2

    .line 1671
    .local v2, "ch":C
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v4, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1672
    :goto_1
    const/16 v3, 0x2c

    if-ne v2, v3, :cond_3

    .line 1673
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1674
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1675
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    move v2, v3

    goto :goto_1

    .line 1680
    :cond_3
    const/16 v3, 0x3a

    const/16 v4, 0x22

    const/16 v5, 0x10

    if-ne v2, v4, :cond_5

    .line 1681
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v6, v7, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v6

    .line 1682
    .local v6, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1683
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v7

    move v2, v7

    .line 1684
    if-ne v2, v3, :cond_4

    goto/16 :goto_2

    .line 1685
    :cond_4
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expect \':\' at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1687
    .end local v6    # "key":Ljava/lang/String;
    :cond_5
    const/16 v6, 0x7d

    if-ne v2, v6, :cond_6

    .line 1688
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1689
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 1690
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1691
    nop

    .line 1781
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1691
    return-object p1

    .line 1692
    :cond_6
    const/16 v6, 0x27

    if-ne v2, v6, :cond_9

    .line 1693
    :try_start_1
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 1697
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v7, v8, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v6

    .line 1698
    .restart local v6    # "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1699
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v7

    move v2, v7

    .line 1700
    if-ne v2, v3, :cond_7

    goto :goto_2

    .line 1701
    :cond_7
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expect \':\' at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1694
    .end local v6    # "key":Ljava/lang/String;
    :cond_8
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "syntax error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1704
    :cond_9
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 1708
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v6

    .line 1709
    .restart local v6    # "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1710
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v7

    move v2, v7

    .line 1711
    if-ne v2, v3, :cond_12

    .line 1716
    :goto_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 1717
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 1718
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v3

    move v2, v3

    .line 1720
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 1722
    sget-object v3, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    const/16 v7, 0xd

    if-ne v6, v3, :cond_c

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v3, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 1723
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v3, v8, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v3

    .line 1725
    .local v3, "typeName":Ljava/lang/String;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v9

    invoke-virtual {v4, v3, v8, v9}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v4

    .line 1727
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v8, Ljava/util/Map;

    invoke-virtual {v8, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 1728
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1729
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v7, :cond_10

    .line 1730
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1731
    nop

    .line 1781
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1731
    return-object p1

    .line 1736
    :cond_a
    :try_start_2
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v7, v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v7

    .line 1738
    .local v7, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v8, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1740
    const/4 v5, 0x2

    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 1742
    if-eqz v0, :cond_b

    instance-of v5, p2, Ljava/lang/Integer;

    if-nez v5, :cond_b

    .line 1743
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    .line 1746
    :cond_b
    invoke-interface {v7, p0, v4, p2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1781
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1746
    return-object v5

    .line 1750
    .end local v3    # "typeName":Ljava/lang/String;
    .end local v4    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :cond_c
    :try_start_3
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1752
    if-eqz v1, :cond_d

    .line 1753
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1756
    :cond_d
    invoke-interface {p1, v6}, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;->getType(Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v3

    .line 1758
    .local v3, "valueType":Ljava/lang/reflect/Type;
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_e

    .line 1759
    const/4 v4, 0x0

    .line 1760
    .local v4, "value":Ljava/lang/Object;
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    goto :goto_3

    .line 1762
    .end local v4    # "value":Ljava/lang/Object;
    :cond_e
    invoke-virtual {p0, v3, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 1765
    .restart local v4    # "value":Ljava/lang/Object;
    :goto_3
    invoke-interface {p1, v6, v4}, Lcom/alibaba/fastjson/parser/deserializer/PropertyProcessable;->apply(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1767
    invoke-virtual {p0, v0, v4, v6}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1768
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1770
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    .line 1771
    .local v5, "tok":I
    const/16 v8, 0x14

    if-eq v5, v8, :cond_11

    const/16 v8, 0xf

    if-ne v5, v8, :cond_f

    goto :goto_4

    .line 1775
    :cond_f
    if-ne v5, v7, :cond_10

    .line 1776
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1777
    nop

    .line 1781
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1777
    return-object p1

    .line 1668
    .end local v2    # "ch":C
    .end local v3    # "valueType":Ljava/lang/reflect/Type;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "tok":I
    .end local v6    # "key":Ljava/lang/String;
    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 1772
    .restart local v2    # "ch":C
    .restart local v3    # "valueType":Ljava/lang/reflect/Type;
    .restart local v4    # "value":Ljava/lang/Object;
    .restart local v5    # "tok":I
    .restart local v6    # "key":Ljava/lang/String;
    :cond_11
    :goto_4
    nop

    .line 1781
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1772
    return-object p1

    .line 1712
    .end local v3    # "valueType":Ljava/lang/reflect/Type;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "tok":I
    :cond_12
    :try_start_4
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "expect \':\' at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", actual "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1705
    .end local v6    # "key":Ljava/lang/String;
    :cond_13
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "syntax error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1781
    .end local v1    # "i":I
    .end local v2    # "ch":C
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v1
.end method

.method public parse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/Object;

    .line 1380
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1381
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    .line 1481
    :pswitch_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1469
    :pswitch_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v1

    .line 1470
    .local v1, "bytes":[B
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1471
    return-object v1

    .line 1440
    .end local v1    # "bytes":[B
    :pswitch_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1441
    return-object v2

    .line 1388
    :pswitch_3
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1389
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 1390
    .local v1, "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1391
    return-object v1

    .line 1383
    .end local v1    # "treeSet":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/lang/Object;>;"
    :pswitch_4
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1384
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1385
    .local v1, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1386
    return-object v1

    .line 1464
    .end local v1    # "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Object;>;"
    :pswitch_5
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isBlankInput()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1465
    return-object v2

    .line 1467
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unterminated json string, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1473
    :pswitch_6
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 1474
    .local v1, "identifier":Ljava/lang/String;
    const-string v3, "NaN"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1475
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1476
    return-object v2

    .line 1478
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1393
    .end local v1    # "identifier":Ljava/lang/String;
    :pswitch_7
    new-instance v1, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1394
    .local v1, "array":Lcom/alibaba/fastjson/JSONArray;
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1395
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1396
    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1398
    :cond_2
    return-object v1

    .line 1400
    .end local v1    # "array":Lcom/alibaba/fastjson/JSONArray;
    :pswitch_8
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 1401
    .local v1, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v1, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1449
    .end local v1    # "object":Lcom/alibaba/fastjson/JSONObject;
    :pswitch_9
    const/16 v1, 0x12

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1451
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    if-ne v2, v1, :cond_3

    .line 1454
    const/16 v1, 0xa

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1456
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1457
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    .line 1458
    .local v1, "time":J
    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1460
    const/16 v3, 0xb

    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->accept(I)V

    .line 1462
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v3

    .line 1452
    .end local v1    # "time":J
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "syntax error"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1437
    :pswitch_a
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1438
    return-object v2

    .line 1446
    :pswitch_b
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1447
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v1

    .line 1443
    :pswitch_c
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1444
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v1

    .line 1421
    :pswitch_d
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 1422
    .local v1, "stringLiteral":Ljava/lang/String;
    const/16 v2, 0x10

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1424
    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1425
    new-instance v2, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v2, v1}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 1427
    .local v2, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :try_start_0
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1428
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1428
    return-object v3

    .line 1431
    :cond_4
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1432
    goto :goto_0

    .line 1431
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v3

    .line 1435
    .end local v2    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_5
    :goto_0
    return-object v1

    .line 1417
    .end local v1    # "stringLiteral":Ljava/lang/String;
    :pswitch_e
    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v1

    .line 1418
    .local v1, "value":Ljava/lang/Object;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1419
    return-object v1

    .line 1413
    .end local v1    # "value":Ljava/lang/Object;
    :pswitch_f
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v1

    .line 1414
    .local v1, "intValue":Ljava/lang/Number;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1415
    return-object v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public parseArray(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 698
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 699
    .local v0, "array":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 700
    return-object v0
.end method

.method public parseArray(Ljava/lang/Class;Ljava/util/Collection;)V
    .locals 0
    .param p2, "array"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Collection;",
            ")V"
        }
    .end annotation

    .line 704
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 705
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;

    .line 709
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V

    .line 710
    return-void
.end method

.method public parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "array"    # Ljava/util/Collection;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .line 714
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    .line 715
    .local v0, "token":I
    const/16 v1, 0x15

    if-eq v0, v1, :cond_0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_1

    .line 716
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 717
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    .line 720
    :cond_1
    const/16 v1, 0xe

    if-ne v0, v1, :cond_c

    .line 724
    const/4 v1, 0x0

    .line 725
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x4

    if-ne v2, p1, :cond_2

    .line 726
    sget-object v1, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    .line 727
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v4, 0x2

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 728
    :cond_2
    const-class v2, Ljava/lang/String;

    if-ne v2, p1, :cond_3

    .line 729
    sget-object v1, Lcom/alibaba/fastjson/serializer/StringCodec;->instance:Lcom/alibaba/fastjson/serializer/StringCodec;

    .line 730
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_0

    .line 732
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 733
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 736
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 737
    .local v2, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 739
    const/4 v4, 0x0

    .line 740
    .local v4, "i":I
    :goto_1
    :try_start_0
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v6, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    const/16 v6, 0x10

    if-eqz v5, :cond_4

    .line 741
    :goto_2
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 742
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 743
    goto :goto_2

    .line 747
    :cond_4
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v7, 0xf

    if-ne v5, v7, :cond_5

    .line 748
    nop

    .line 787
    .end local v4    # "i":I
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 788
    nop

    .line 790
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 791
    return-void

    .line 751
    .restart local v4    # "i":I
    :cond_5
    :try_start_1
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne v5, p1, :cond_6

    .line 752
    sget-object v5, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    const/4 v7, 0x0

    invoke-virtual {v5, p0, v7, v7}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 753
    .local v5, "val":Ljava/lang/Object;
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 754
    .end local v5    # "val":Ljava/lang/Object;
    goto :goto_5

    :cond_6
    const-class v5, Ljava/lang/String;

    if-ne v5, p1, :cond_9

    .line 756
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v3, :cond_7

    .line 757
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 758
    .local v5, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 764
    move-object v7, v5

    goto :goto_3

    .line 760
    .end local v5    # "value":Ljava/lang/String;
    :cond_7
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v5

    .line 761
    .local v5, "obj":Ljava/lang/Object;
    if-nez v5, :cond_8

    .line 762
    const/4 v7, 0x0

    .local v7, "value":Ljava/lang/String;
    goto :goto_3

    .line 764
    .end local v7    # "value":Ljava/lang/String;
    :cond_8
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .end local v5    # "obj":Ljava/lang/Object;
    .restart local v7    # "value":Ljava/lang/String;
    :goto_3
    move-object v5, v7

    .line 768
    .end local v7    # "value":Ljava/lang/String;
    .local v5, "value":Ljava/lang/String;
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 769
    .end local v5    # "value":Ljava/lang/String;
    goto :goto_5

    .line 771
    :cond_9
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v7, 0x8

    if-ne v5, v7, :cond_a

    .line 772
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 773
    const/4 v5, 0x0

    .local v5, "val":Ljava/lang/Object;
    goto :goto_4

    .line 775
    .end local v5    # "val":Ljava/lang/Object;
    :cond_a
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v1, p0, p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 777
    .restart local v5    # "val":Ljava/lang/Object;
    :goto_4
    invoke-interface {p2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 778
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 781
    .end local v5    # "val":Ljava/lang/Object;
    :goto_5
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v6, :cond_b

    .line 782
    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 739
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 787
    .end local v4    # "i":I
    :catchall_0
    move-exception v3

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v3

    .line 721
    .end local v1    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v2    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_c
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "expect \'[\', but "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final parseArray(Ljava/util/Collection;)V
    .locals 1
    .param p1, "array"    # Ljava/util/Collection;

    .line 1152
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1153
    return-void
.end method

.method public final parseArray(Ljava/util/Collection;Ljava/lang/Object;)V
    .locals 9
    .param p1, "array"    # Ljava/util/Collection;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .line 1157
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1159
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x15

    if-eq v1, v2, :cond_0

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0x16

    if-ne v1, v2, :cond_1

    .line 1160
    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1163
    :cond_1
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_a

    .line 1168
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1170
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget v2, v2, Lcom/alibaba/fastjson/parser/ParseContext;->level:I

    const/16 v3, 0x200

    if-gt v2, v3, :cond_2

    goto :goto_0

    .line 1171
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v2, "array level > 512"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1174
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1175
    .local v2, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {p0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1177
    const/4 v3, 0x0

    move v4, v3

    .line 1178
    .local v4, "i":I
    :goto_1
    :try_start_0
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    const/16 v6, 0x10

    if-eqz v5, :cond_4

    .line 1179
    :goto_2
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    if-ne v5, v6, :cond_4

    .line 1180
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 1181
    goto :goto_2

    .line 1186
    :cond_4
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 1251
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v5

    goto/16 :goto_6

    .line 1242
    :sswitch_0
    const/4 v5, 0x0

    .line 1243
    .local v5, "value":Ljava/lang/Object;
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1244
    goto/16 :goto_6

    .line 1249
    .end local v5    # "value":Ljava/lang/Object;
    :sswitch_1
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "unclosed jsonArray"

    invoke-direct {v1, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1246
    :sswitch_2
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1264
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1247
    return-void

    .line 1229
    :sswitch_3
    :try_start_1
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 1230
    .local v5, "items":Ljava/util/Collection;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 1231
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1232
    invoke-interface {v5}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .local v7, "value":Ljava/lang/Object;
    goto :goto_3

    .line 1234
    .end local v7    # "value":Ljava/lang/Object;
    :cond_5
    move-object v7, v5

    .line 1236
    .restart local v7    # "value":Ljava/lang/Object;
    goto/16 :goto_6

    .line 1225
    .end local v5    # "items":Ljava/util/Collection;
    .end local v7    # "value":Ljava/lang/Object;
    :sswitch_4
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    invoke-direct {v5, v7}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 1226
    .local v5, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p0, v5, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1227
    .restart local v7    # "value":Ljava/lang/Object;
    nop

    .line 1251
    .end local v7    # "value":Ljava/lang/Object;
    .local v5, "value":Ljava/lang/Object;
    :goto_3
    move-object v5, v7

    goto :goto_6

    .line 1238
    .end local v5    # "value":Ljava/lang/Object;
    :sswitch_5
    const/4 v5, 0x0

    .line 1239
    .restart local v5    # "value":Ljava/lang/Object;
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1240
    goto :goto_6

    .line 1221
    .end local v5    # "value":Ljava/lang/Object;
    :sswitch_6
    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1222
    .restart local v5    # "value":Ljava/lang/Object;
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1223
    goto :goto_6

    .line 1217
    .end local v5    # "value":Ljava/lang/Object;
    :sswitch_7
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1218
    .restart local v5    # "value":Ljava/lang/Object;
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1219
    goto :goto_6

    .line 1200
    .end local v5    # "value":Ljava/lang/Object;
    :sswitch_8
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v5

    .line 1201
    .local v5, "stringLiteral":Ljava/lang/String;
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1203
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 1204
    new-instance v7, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v7, v5}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 1205
    .local v7, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1206
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v8

    .local v8, "value":Ljava/lang/Object;
    goto :goto_4

    .line 1208
    .end local v8    # "value":Ljava/lang/Object;
    :cond_6
    move-object v8, v5

    .line 1210
    .restart local v8    # "value":Ljava/lang/Object;
    :goto_4
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 1211
    .end local v7    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    nop

    .line 1251
    move-object v5, v8

    goto :goto_6

    .line 1212
    .end local v8    # "value":Ljava/lang/Object;
    :cond_7
    move-object v7, v5

    .line 1215
    .local v7, "value":Ljava/lang/Object;
    goto :goto_6

    .line 1192
    .end local v5    # "stringLiteral":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/Object;
    :sswitch_9
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1193
    const/4 v5, 0x1

    invoke-interface {v0, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v5

    .local v5, "value":Ljava/lang/Object;
    goto :goto_5

    .line 1195
    .end local v5    # "value":Ljava/lang/Object;
    :cond_8
    invoke-interface {v0, v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v5

    .line 1197
    .restart local v5    # "value":Ljava/lang/Object;
    :goto_5
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1198
    goto :goto_6

    .line 1188
    .end local v5    # "value":Ljava/lang/Object;
    :sswitch_a
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v5

    .line 1189
    .restart local v5    # "value":Ljava/lang/Object;
    invoke-interface {v0, v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1190
    nop

    .line 1251
    :goto_6
    nop

    .line 1255
    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1256
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkListResolve(Ljava/util/Collection;)V

    .line 1258
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v6, :cond_9

    .line 1259
    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1260
    nop

    .line 1177
    .end local v5    # "value":Ljava/lang/Object;
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 1264
    .end local v4    # "i":I
    :catchall_0
    move-exception v1

    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v1

    .line 1164
    .end local v2    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_a
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syntax error, expect [, actual "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    invoke-static {v3}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", pos "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1165
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", fieldName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_a
        0x3 -> :sswitch_9
        0x4 -> :sswitch_8
        0x6 -> :sswitch_7
        0x7 -> :sswitch_6
        0x8 -> :sswitch_5
        0xc -> :sswitch_4
        0xe -> :sswitch_3
        0xf -> :sswitch_2
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
    .end sparse-switch
.end method

.method public parseArray([Ljava/lang/reflect/Type;)[Ljava/lang/Object;
    .locals 17
    .param p1, "types"    # [Ljava/lang/reflect/Type;

    move-object/from16 v0, p0

    .line 794
    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x8

    const/16 v5, 0x10

    if-ne v2, v4, :cond_0

    .line 795
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 796
    return-object v3

    .line 799
    :cond_0
    iget-object v2, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v6, 0xe

    if-ne v2, v6, :cond_15

    .line 803
    array-length v2, v1

    new-array v2, v2, [Ljava/lang/Object;

    .line 804
    .local v2, "list":[Ljava/lang/Object;
    array-length v7, v1

    const/4 v8, 0x0

    const/16 v9, 0xf

    if-nez v7, :cond_2

    .line 805
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 807
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v9, :cond_1

    .line 811
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 812
    new-array v3, v8, [Ljava/lang/Object;

    return-object v3

    .line 808
    :cond_1
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "syntax error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 815
    :cond_2
    iget-object v7, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v10, 0x2

    invoke-interface {v7, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 817
    nop

    .local v8, "i":I
    :goto_0
    move v7, v8

    .end local v8    # "i":I
    .local v7, "i":I
    array-length v8, v1

    if-ge v7, v8, :cond_13

    .line 820
    iget-object v8, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v8

    if-ne v8, v4, :cond_3

    .line 821
    const/4 v8, 0x0

    .line 822
    .local v8, "value":Ljava/lang/Object;
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 881
    .end local v8    # "value":Ljava/lang/Object;
    .local v3, "value":Ljava/lang/Object;
    :goto_1
    move-object v3, v8

    goto/16 :goto_6

    .line 824
    .end local v3    # "value":Ljava/lang/Object;
    :cond_3
    aget-object v8, v1, v7

    .line 825
    .local v8, "type":Ljava/lang/reflect/Type;
    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v8, v11, :cond_e

    const-class v11, Ljava/lang/Integer;

    if-ne v8, v11, :cond_4

    goto/16 :goto_5

    .line 833
    :cond_4
    const-class v11, Ljava/lang/String;

    const/4 v12, 0x4

    if-ne v8, v11, :cond_6

    .line 834
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v11

    if-ne v11, v12, :cond_5

    .line 835
    iget-object v11, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v11}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v11

    .line 836
    .local v11, "value":Ljava/lang/Object;
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v12, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 881
    .end local v8    # "type":Ljava/lang/reflect/Type;
    .end local v11    # "value":Ljava/lang/Object;
    .restart local v3    # "value":Ljava/lang/Object;
    :goto_2
    move-object v3, v11

    goto/16 :goto_6

    .line 838
    .end local v3    # "value":Ljava/lang/Object;
    .restart local v8    # "type":Ljava/lang/reflect/Type;
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v11

    .line 839
    .restart local v11    # "value":Ljava/lang/Object;
    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v11, v8, v12}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v11

    goto :goto_2

    .line 842
    .end local v11    # "value":Ljava/lang/Object;
    :cond_6
    const/4 v11, 0x0

    .line 843
    .local v11, "isArray":Z
    const/4 v13, 0x0

    .line 844
    .local v13, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v14, v1

    add-int/lit8 v14, v14, -0x1

    if-ne v7, v14, :cond_9

    .line 845
    instance-of v14, v8, Ljava/lang/Class;

    if-eqz v14, :cond_9

    .line 846
    move-object v14, v8

    check-cast v14, Ljava/lang/Class;

    .line 849
    .local v14, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v15, [B

    if-eq v14, v15, :cond_7

    const-class v15, [C

    if-ne v14, v15, :cond_8

    :cond_7
    iget-object v15, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    if-eq v15, v12, :cond_9

    .line 850
    :cond_8
    invoke-virtual {v14}, Ljava/lang/Class;->isArray()Z

    move-result v11

    .line 851
    invoke-virtual {v14}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v13

    .line 857
    .end local v14    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_9
    if-eqz v11, :cond_d

    iget-object v12, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v12

    if-eq v12, v6, :cond_d

    .line 858
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 860
    .local v12, "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iget-object v14, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v14, v13}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v14

    .line 861
    .local v14, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v14}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v15

    .line 863
    .local v15, "fastMatch":I
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    if-eq v4, v9, :cond_c

    .line 865
    :goto_3
    invoke-interface {v14, v0, v8, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 866
    .local v4, "item":Ljava/lang/Object;
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 868
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v5, :cond_a

    .line 869
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 875
    .end local v4    # "item":Ljava/lang/Object;
    nop

    .line 865
    const/4 v3, 0x0

    goto :goto_3

    .line 870
    .restart local v4    # "item":Ljava/lang/Object;
    :cond_a
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v9, :cond_b

    .line 871
    goto :goto_4

    .line 873
    :cond_b
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syntax error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 878
    .end local v4    # "item":Ljava/lang/Object;
    :cond_c
    :goto_4
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v12, v8, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    .line 879
    .end local v12    # "varList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v14    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v15    # "fastMatch":I
    .restart local v3    # "value":Ljava/lang/Object;
    goto :goto_6

    .line 880
    .end local v3    # "value":Ljava/lang/Object;
    :cond_d
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v3, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 881
    .local v3, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v0, v8, v4}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v3    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v8    # "type":Ljava/lang/reflect/Type;
    .end local v11    # "isArray":Z
    .end local v13    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    goto/16 :goto_1

    .line 826
    .restart local v8    # "type":Ljava/lang/reflect/Type;
    :cond_e
    :goto_5
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v10, :cond_f

    .line 827
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->intValue()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 828
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_6

    .line 830
    .end local v3    # "value":Ljava/lang/Object;
    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v3

    .line 831
    .restart local v3    # "value":Ljava/lang/Object;
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v3, v8, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    .line 881
    .end local v8    # "type":Ljava/lang/reflect/Type;
    :goto_6
    nop

    .line 885
    aput-object v3, v2, v7

    .line 887
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    if-ne v4, v9, :cond_10

    .line 888
    goto :goto_8

    .line 891
    :cond_10
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v4

    if-ne v4, v5, :cond_12

    .line 895
    array-length v4, v1

    add-int/lit8 v4, v4, -0x1

    if-ne v7, v4, :cond_11

    .line 896
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    goto :goto_7

    .line 898
    :cond_11
    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 817
    .end local v3    # "value":Ljava/lang/Object;
    :goto_7
    add-int/lit8 v8, v7, 0x1

    .end local v7    # "i":I
    .local v8, "i":I
    const/4 v3, 0x0

    const/16 v4, 0x8

    goto/16 :goto_0

    .line 892
    .end local v8    # "i":I
    .restart local v3    # "value":Ljava/lang/Object;
    .restart local v7    # "i":I
    :cond_12
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syntax error :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    invoke-static {v6}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 902
    .end local v3    # "value":Ljava/lang/Object;
    .end local v7    # "i":I
    :cond_13
    :goto_8
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v9, :cond_14

    .line 906
    iget-object v3, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 908
    return-object v2

    .line 903
    :cond_14
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "syntax error"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 800
    .end local v2    # "list":[Ljava/lang/Object;
    :cond_15
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public parseArrayWithType(Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 7
    .param p1, "collectionType"    # Ljava/lang/reflect/Type;

    .line 993
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 994
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 995
    const/4 v0, 0x0

    return-object v0

    .line 998
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1000
    .local v0, "actualTypes":[Ljava/lang/reflect/Type;
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 1004
    const/4 v1, 0x0

    aget-object v3, v0, v1

    .line 1006
    .local v3, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v4, v3, Ljava/lang/Class;

    if-eqz v4, :cond_1

    .line 1007
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1008
    .local v1, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v2, v3

    check-cast v2, Ljava/lang/Class;

    invoke-virtual {p0, v2, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 1009
    return-object v1

    .line 1012
    .end local v1    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    instance-of v4, v3, Ljava/lang/reflect/WildcardType;

    if-eqz v4, :cond_4

    .line 1013
    move-object v2, v3

    check-cast v2, Ljava/lang/reflect/WildcardType;

    .line 1016
    .local v2, "wildcardType":Ljava/lang/reflect/WildcardType;
    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v1, v4, v1

    .line 1019
    .local v1, "upperBoundType":Ljava/lang/reflect/Type;
    const-class v4, Ljava/lang/Object;

    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1020
    invoke-interface {v2}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v4

    array-length v4, v4

    if-nez v4, :cond_2

    .line 1022
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 1024
    :cond_2
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support type : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1028
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1029
    .local v4, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v5, v1

    check-cast v5, Ljava/lang/Class;

    invoke-virtual {p0, v5, v4}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 1030
    return-object v4

    .line 1036
    .end local v1    # "upperBoundType":Ljava/lang/reflect/Type;
    .end local v2    # "wildcardType":Ljava/lang/reflect/WildcardType;
    .end local v4    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_4
    instance-of v4, v3, Ljava/lang/reflect/TypeVariable;

    if-eqz v4, :cond_6

    .line 1037
    move-object v4, v3

    check-cast v4, Ljava/lang/reflect/TypeVariable;

    .line 1038
    .local v4, "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v4}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 1040
    .local v5, "bounds":[Ljava/lang/reflect/Type;
    array-length v6, v5

    if-ne v6, v2, :cond_5

    .line 1044
    aget-object v1, v5, v1

    .line 1045
    .local v1, "boundType":Ljava/lang/reflect/Type;
    instance-of v2, v1, Ljava/lang/Class;

    if-eqz v2, :cond_6

    .line 1046
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1047
    .local v2, "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v6, v1

    check-cast v6, Ljava/lang/Class;

    invoke-virtual {p0, v6, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/Class;Ljava/util/Collection;)V

    .line 1048
    return-object v2

    .line 1041
    .end local v1    # "boundType":Ljava/lang/reflect/Type;
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_5
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not support : "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1052
    .end local v4    # "typeVariable":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v5    # "bounds":[Ljava/lang/reflect/Type;
    :cond_6
    instance-of v1, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_7

    .line 1053
    move-object v1, v3

    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 1055
    .local v1, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1056
    .restart local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual {p0, v1, v2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/lang/reflect/Type;Ljava/util/Collection;)V

    .line 1057
    return-object v2

    .line 1060
    .end local v1    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local v2    # "array":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_7
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "TODO : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1001
    .end local v3    # "actualTypeArgument":Ljava/lang/reflect/Type;
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public parseExtra(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "key"    # Ljava/lang/String;

    .line 1613
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1614
    .local v0, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 1615
    const/4 v1, 0x0

    .line 1617
    .local v1, "type":Ljava/lang/reflect/Type;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 1618
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraTypeProviders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;

    .line 1619
    .local v3, "extraProvider":Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;
    invoke-interface {v3, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;->getExtraType(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 1620
    .end local v3    # "extraProvider":Lcom/alibaba/fastjson/parser/deserializer/ExtraTypeProvider;
    goto :goto_0

    .line 1622
    :cond_0
    if-nez v1, :cond_1

    .line 1623
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v2

    goto :goto_1

    .line 1624
    :cond_1
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v2

    .line 1626
    .local v2, "value":Ljava/lang/Object;
    :goto_1
    instance-of v3, p1, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    if-eqz v3, :cond_2

    .line 1627
    move-object v3, p1

    check-cast v3, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;

    .line 1628
    .local v3, "extraProcessable":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;
    invoke-interface {v3, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;->processExtra(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1629
    return-void

    .line 1632
    .end local v3    # "extraProcessable":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessable;
    :cond_2
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    if-eqz v3, :cond_3

    .line 1633
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->extraProcessors:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;

    .line 1634
    .local v4, "process":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;
    invoke-interface {v4, p1, p2, v2}, Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;->processExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1635
    .end local v4    # "process":Lcom/alibaba/fastjson/parser/deserializer/ExtraProcessor;
    goto :goto_2

    .line 1638
    :cond_3
    iget v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 1639
    const/4 v3, 0x0

    iput v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 1641
    :cond_4
    return-void
.end method

.method public parseKey()Ljava/lang/Object;
    .locals 3

    .line 1371
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v1, 0x12

    if-ne v0, v1, :cond_0

    .line 1372
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 1373
    .local v0, "value":Ljava/lang/String;
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/16 v2, 0x10

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 1374
    return-object v0

    .line 1376
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject()Lcom/alibaba/fastjson/JSONObject;
    .locals 4

    .line 1136
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v2, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v1, v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 1137
    .local v0, "object":Lcom/alibaba/fastjson/JSONObject;
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v1

    .line 1139
    .local v1, "parsedObject":Ljava/lang/Object;
    instance-of v2, v1, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v2, :cond_0

    .line 1140
    move-object v2, v1

    check-cast v2, Lcom/alibaba/fastjson/JSONObject;

    return-object v2

    .line 1143
    :cond_0
    if-nez v1, :cond_1

    .line 1144
    const/4 v2, 0x0

    return-object v2

    .line 1147
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson/JSONObject;

    move-object v3, v1

    check-cast v3, Ljava/util/Map;

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    return-object v2
.end method

.method public parseObject(Ljava/lang/Class;)Ljava/lang/Object;
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

    .line 650
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;)Ljava/lang/Object;
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

    .line 654
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public parseObject(Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldName"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    .line 660
    .local v0, "token":I
    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 661
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 662
    const/4 v1, 0x0

    return-object v1

    .line 665
    :cond_0
    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 666
    const-class v1, [B

    if-ne p1, v1, :cond_1

    .line 667
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->bytesValue()[B

    move-result-object v1

    .line 668
    .local v1, "bytes":[B
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 669
    return-object v1

    .line 672
    .end local v1    # "bytes":[B
    :cond_1
    const-class v1, [C

    if-ne p1, v1, :cond_2

    .line 673
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v1

    .line 674
    .local v1, "strVal":Ljava/lang/String;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 675
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    return-object v2

    .line 679
    .end local v1    # "strVal":Ljava/lang/String;
    :cond_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 682
    .local v1, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-ne v2, v3, :cond_5

    .line 683
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_4

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    const/16 v3, 0xe

    if-ne v2, v3, :cond_3

    goto :goto_0

    .line 684
    :cond_3
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syntax error,except start with { or [,but actually start with "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 686
    :cond_4
    :goto_0
    move-object v2, v1

    check-cast v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    const/4 v3, 0x0

    invoke-virtual {v2, p0, p1, p2, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 688
    :cond_5
    invoke-interface {v1, p0, p1, p2}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Lcom/alibaba/fastjson/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 692
    :catch_0
    move-exception v2

    .line 693
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 690
    .end local v2    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v2

    .line 691
    .local v2, "e":Lcom/alibaba/fastjson/JSONException;
    throw v2
.end method

.method public parseObject(Ljava/util/Map;)Ljava/lang/Object;
    .locals 1
    .param p1, "object"    # Ljava/util/Map;

    .line 1132
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 23
    .param p1, "object"    # Ljava/util/Map;
    .param p2, "fieldName"    # Ljava/lang/Object;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 181
    move-object/from16 v3, p2

    iget-object v4, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 183
    .local v4, "lexer":Lcom/alibaba/fastjson/parser/JSONLexer;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-ne v0, v6, :cond_0

    .line 184
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 185
    return-object v5

    .line 188
    :cond_0
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v6, 0xd

    if-ne v0, v6, :cond_1

    .line 189
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 190
    return-object v2

    .line 193
    :cond_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v7, 0x4

    if-ne v0, v7, :cond_2

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 194
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 195
    return-object v2

    .line 198
    :cond_2
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/16 v8, 0xc

    const/16 v9, 0x10

    if-eq v0, v8, :cond_4

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    if-ne v0, v9, :cond_3

    goto :goto_0

    .line 199
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syntax error, expect {, actual "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_4
    :goto_0
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object v8, v0

    .line 204
    .local v8, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :try_start_0
    instance-of v0, v2, Lcom/alibaba/fastjson/JSONObject;

    move v10, v0

    .line 205
    .local v10, "isJsonObjectMap":Z
    if-eqz v10, :cond_5

    move-object v0, v2

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONObject;->getInnerMap()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto :goto_1

    :cond_5
    move-object v0, v2

    :goto_1
    move-object v11, v0

    .line 207
    .local v11, "map":Ljava/util/Map;
    move-object v12, v8

    const/4 v8, 0x0

    .line 209
    .local v8, "setContextFlag":Z
    .local v12, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_2
    :try_start_1
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 210
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v13

    .line 211
    .local v13, "ch":C
    sget-object v14, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v14}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v14

    const/16 v15, 0x2c

    if-eqz v14, :cond_6

    .line 212
    :goto_3
    if-ne v13, v15, :cond_6

    .line 213
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 214
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 215
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v14

    move v13, v14

    goto :goto_3

    .line 219
    :cond_6
    const/4 v14, 0x0

    .line 221
    .local v14, "isObjectKey":Z
    const/16 v0, 0x7d

    const/16 v5, 0x30

    const/16 v6, 0x3a

    const/16 v7, 0x22

    if-ne v13, v7, :cond_8

    .line 222
    iget-object v9, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v4, v9, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v9

    .line 223
    .local v9, "key":Ljava/lang/Object;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 224
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v17

    move/from16 v13, v17

    .line 225
    if-ne v13, v6, :cond_7

    goto/16 :goto_7

    .line 226
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expect \':\' at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 228
    .end local v9    # "key":Ljava/lang/Object;
    :cond_8
    if-ne v13, v0, :cond_c

    .line 229
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 230
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 231
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 233
    if-nez v8, :cond_b

    .line 234
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->fieldName:Ljava/lang/Object;

    if-ne v3, v0, :cond_9

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-ne v2, v0, :cond_9

    .line 235
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object v12, v0

    goto :goto_4

    .line 237
    :cond_9
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    .local v0, "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez v12, :cond_a

    .line 239
    move-object v5, v0

    .line 241
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v5, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    move-object v12, v5

    .end local v5    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_a
    const/4 v8, 0x1

    .line 245
    .end local v0    # "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_b
    :goto_4
    nop

    .line 634
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 245
    return-object v2

    .line 246
    :cond_c
    const/16 v9, 0x27

    if-ne v13, v9, :cond_f

    .line 247
    :try_start_2
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowSingleQuotes:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 251
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v4, v0, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 252
    .restart local v9    # "key":Ljava/lang/Object;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 253
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    move v13, v0

    .line 254
    if-ne v13, v6, :cond_d

    goto/16 :goto_7

    .line 255
    :cond_d
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expect \':\' at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 248
    .end local v9    # "key":Ljava/lang/Object;
    :cond_e
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "syntax error"

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_f
    const/16 v0, 0x1a

    if-eq v13, v0, :cond_63

    .line 259
    if-eq v13, v15, :cond_62

    .line 261
    if-lt v13, v5, :cond_10

    const/16 v0, 0x39

    if-le v13, v0, :cond_11

    :cond_10
    const/16 v0, 0x2d

    if-ne v13, v0, :cond_16

    .line 262
    :cond_11
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 263
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 265
    :try_start_3
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v9, 0x2

    if-ne v0, v9, :cond_12

    .line 266
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v0

    .local v0, "key":Ljava/lang/Object;
    goto :goto_5

    .line 268
    .end local v0    # "key":Ljava/lang/Object;
    :cond_12
    const/4 v0, 0x1

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v9

    move-object v0, v9

    .line 270
    .restart local v0    # "key":Ljava/lang/Object;
    :goto_5
    sget-object v9, Lcom/alibaba/fastjson/parser/Feature;->NonStringKeyAsString:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v9}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v9

    if-nez v9, :cond_13

    if-eqz v10, :cond_14

    .line 271
    :cond_13
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v9

    .line 275
    :cond_14
    nop

    .line 274
    move-object v9, v0

    .line 276
    .end local v0    # "key":Ljava/lang/Object;
    .restart local v9    # "key":Ljava/lang/Object;
    :try_start_4
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    move v13, v0

    .line 277
    if-ne v13, v6, :cond_15

    goto/16 :goto_7

    .line 278
    :cond_15
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "parse number key error"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 273
    .end local v9    # "key":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 274
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse number key error"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 280
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_16
    const/16 v0, 0x7b

    if-eq v13, v0, :cond_1a

    const/16 v0, 0x5b

    if-ne v13, v0, :cond_17

    goto :goto_6

    .line 288
    :cond_17
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->AllowUnQuotedFieldNames:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 292
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbolUnQuoted(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 293
    .restart local v9    # "key":Ljava/lang/Object;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 294
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    move v13, v0

    .line 295
    if-ne v13, v6, :cond_18

    goto :goto_7

    .line 296
    :cond_18
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expect \':\' at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", actual "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    .end local v9    # "key":Ljava/lang/Object;
    :cond_19
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "syntax error"

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 281
    :cond_1a
    :goto_6
    iget v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->objectKeyLevel:I

    add-int/lit8 v6, v0, 0x1

    iput v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->objectKeyLevel:I

    const/16 v6, 0x200

    if-gt v0, v6, :cond_61

    .line 284
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    .line 286
    .restart local v9    # "key":Ljava/lang/Object;
    const/4 v14, 0x1

    .line 300
    :goto_7
    if-nez v14, :cond_1b

    .line 301
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 302
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 305
    :cond_1b
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    move v6, v0

    .line 307
    .end local v13    # "ch":C
    .local v6, "ch":C
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 309
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    if-ne v9, v0, :cond_2d

    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 310
    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-nez v0, :cond_2d

    .line 311
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v4, v0, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;C)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    .line 313
    .local v7, "typeName":Ljava/lang/String;
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->IgnoreAutoType:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 314
    nop

    .line 207
    const/4 v5, 0x0

    .end local v6    # "ch":C
    .end local v7    # "typeName":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/Object;
    .end local v14    # "isObjectKey":Z
    :goto_8
    const/4 v13, 0x4

    goto/16 :goto_f

    .line 317
    .restart local v6    # "ch":C
    .restart local v7    # "typeName":Ljava/lang/String;
    .restart local v9    # "key":Ljava/lang/Object;
    .restart local v14    # "isObjectKey":Z
    :cond_1c
    const/4 v0, 0x0

    .line 318
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v2, :cond_1d

    .line 319
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 320
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    move-object v0, v5

    .line 337
    const/4 v15, 0x0

    goto :goto_c

    .line 323
    :cond_1d
    const/4 v13, 0x1

    .line 324
    .local v13, "allDigits":Z
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v15, v5, :cond_20

    .line 325
    invoke-virtual {v7, v15}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 326
    .local v5, "c":C
    move-object/from16 v18, v0

    const/16 v0, 0x30

    if-lt v5, v0, :cond_1f

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v18, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0x39

    if-le v5, v0, :cond_1e

    goto :goto_a

    .line 324
    .end local v5    # "c":C
    :cond_1e
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, v18

    const/16 v5, 0x30

    goto :goto_9

    .line 327
    .restart local v5    # "c":C
    :cond_1f
    :goto_a
    const/4 v13, 0x0

    .line 328
    goto :goto_b

    .line 332
    .end local v5    # "c":C
    .end local v15    # "i":I
    .end local v18    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_20
    move-object/from16 v18, v0

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_b
    if-nez v13, :cond_21

    .line 333
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v5

    const/4 v15, 0x0

    invoke-virtual {v0, v7, v15, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->checkAutoType(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object v0

    .line 337
    .end local v13    # "allDigits":Z
    .end local v18    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v5, v0

    goto :goto_c

    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v18    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_21
    const/4 v15, 0x0

    move-object/from16 v5, v18

    .end local v18    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v5, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_c
    if-nez v5, :cond_22

    .line 338
    sget-object v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {v11, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    nop

    .line 207
    move-object v5, v15

    goto :goto_8

    .line 342
    :cond_22
    const/16 v0, 0x10

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 343
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/16 v15, 0xd

    if-ne v13, v15, :cond_28

    .line 344
    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "instance":Ljava/lang/Object;
    :try_start_5
    iget-object v13, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v13, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v13

    .line 348
    .local v13, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v15, v13, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v15, :cond_23

    .line 349
    iget-object v15, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v2, v5, v15}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    .line 352
    :cond_23
    if-nez v0, :cond_27

    .line 353
    const-class v15, Ljava/lang/Cloneable;

    if-ne v5, v15, :cond_24

    .line 354
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    move-object v0, v15

    goto :goto_d

    .line 355
    :cond_24
    const-string v15, "java.util.Collections$EmptyMap"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_25

    .line 356
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v15

    move-object v0, v15

    goto :goto_d

    .line 357
    :cond_25
    const-string v15, "java.util.Collections$UnmodifiableMap"

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_26

    .line 358
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    invoke-static {v15}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v15

    move-object v0, v15

    goto :goto_d

    .line 360
    :cond_26
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v15
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object v0, v15

    .line 364
    :cond_27
    :goto_d
    nop

    .line 634
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 364
    return-object v0

    .line 365
    .end local v0    # "instance":Ljava/lang/Object;
    .end local v13    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    :catch_1
    move-exception v0

    .line 366
    .local v0, "e":Ljava/lang/Exception;
    :try_start_6
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string v15, "create instance error"

    invoke-direct {v13, v15, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v13

    .line 370
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_28
    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 372
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v0, :cond_29

    if-eqz v3, :cond_29

    instance-of v0, v3, Ljava/lang/Integer;

    if-nez v0, :cond_29

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->fieldName:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Integer;

    if-nez v0, :cond_29

    .line 376
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    .line 379
    :cond_29
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 380
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {v2, v5, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    .line 381
    .local v0, "newObj":Ljava/lang/Object;
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 382
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 383
    nop

    .line 634
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 383
    return-object v0

    .line 386
    .end local v0    # "newObj":Ljava/lang/Object;
    :cond_2a
    :try_start_7
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v0

    .line 387
    .local v0, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    .line 388
    .local v13, "deserClass":Ljava/lang/Class;
    const-class v15, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    invoke-virtual {v15, v13}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v15

    if-eqz v15, :cond_2b

    const-class v15, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eq v13, v15, :cond_2b

    const-class v15, Lcom/alibaba/fastjson/parser/deserializer/ThrowableDeserializer;

    if-eq v13, v15, :cond_2b

    .line 391
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_e

    .line 392
    :cond_2b
    instance-of v15, v0, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    if-eqz v15, :cond_2c

    .line 393
    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 395
    :cond_2c
    :goto_e
    invoke-interface {v0, v1, v5, v3}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 396
    .local v15, "obj":Ljava/lang/Object;
    nop

    .line 634
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 396
    return-object v15

    .line 399
    .end local v0    # "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v5    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "typeName":Ljava/lang/String;
    .end local v13    # "deserClass":Ljava/lang/Class;
    .end local v15    # "obj":Ljava/lang/Object;
    :cond_2d
    const/4 v0, 0x0

    const/4 v5, 0x0

    :try_start_8
    const-string v13, "$ref"

    if-ne v9, v13, :cond_3c

    if-eqz v12, :cond_3c

    if-eqz v2, :cond_2e

    .line 401
    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v13

    if-nez v13, :cond_3c

    :cond_2e
    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->DisableSpecialKeyDetect:Lcom/alibaba/fastjson/parser/Feature;

    .line 402
    invoke-interface {v4, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v13

    if-nez v13, :cond_3c

    .line 403
    const/4 v13, 0x4

    invoke-interface {v4, v13}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 404
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v13, :cond_3b

    .line 405
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, "ref":Ljava/lang/String;
    const/16 v15, 0xd

    invoke-interface {v4, v15}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 408
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v15

    const/16 v0, 0x10

    if-ne v15, v0, :cond_2f

    .line 409
    invoke-interface {v11, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    nop

    .line 207
    .end local v6    # "ch":C
    .end local v7    # "ref":Ljava/lang/String;
    .end local v9    # "key":Ljava/lang/Object;
    .end local v14    # "isObjectKey":Z
    :goto_f
    move v7, v13

    const/16 v6, 0xd

    const/16 v9, 0x10

    goto/16 :goto_2

    .line 413
    .restart local v6    # "ch":C
    .restart local v7    # "ref":Ljava/lang/String;
    .restart local v9    # "key":Ljava/lang/Object;
    .restart local v14    # "isObjectKey":Z
    :cond_2f
    const/4 v0, 0x0

    .line 414
    .local v0, "refValue":Ljava/lang/Object;
    const-string v5, "@"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 415
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v5, :cond_39

    .line 416
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 417
    .local v5, "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    iget-object v13, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 418
    .local v13, "thisObj":Ljava/lang/Object;
    instance-of v15, v13, [Ljava/lang/Object;

    if-nez v15, :cond_31

    instance-of v15, v13, Ljava/util/Collection;

    if-eqz v15, :cond_30

    goto :goto_10

    .line 420
    :cond_30
    iget-object v15, v5, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v15, :cond_32

    .line 421
    iget-object v15, v5, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v15, v15, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v0, v15

    .end local v5    # "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v13    # "thisObj":Ljava/lang/Object;
    goto :goto_11

    .line 419
    .restart local v5    # "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v13    # "thisObj":Ljava/lang/Object;
    :cond_31
    :goto_10
    move-object v0, v13

    .line 423
    .end local v5    # "thisContext":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v13    # "thisObj":Ljava/lang/Object;
    :cond_32
    :goto_11
    goto :goto_14

    .line 424
    :cond_33
    const-string v5, ".."

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 425
    iget-object v5, v12, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v5, :cond_34

    .line 426
    iget-object v5, v12, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v0, v5

    goto :goto_14

    .line 428
    :cond_34
    new-instance v5, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v5, v12, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 429
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    goto :goto_14

    .line 431
    :cond_35
    const-string v5, "$"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 432
    move-object v5, v12

    .line 433
    .local v5, "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_12
    iget-object v13, v5, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v13, :cond_36

    .line 434
    iget-object v13, v5, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    move-object v5, v13

    goto :goto_12

    .line 437
    :cond_36
    iget-object v13, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-eqz v13, :cond_37

    .line 438
    iget-object v13, v5, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    move-object v0, v13

    goto :goto_13

    .line 440
    :cond_37
    new-instance v13, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v13, v5, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 441
    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 443
    .end local v5    # "rootContext":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_13
    goto :goto_14

    .line 444
    :cond_38
    new-instance v5, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;

    invoke-direct {v5, v12, v7}, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addResolveTask(Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;)V

    .line 445
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setResolveStatus(I)V

    .line 448
    :cond_39
    :goto_14
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v5

    const/16 v13, 0xd

    if-ne v5, v13, :cond_3a

    .line 451
    const/16 v5, 0x10

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 453
    nop

    .line 634
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 453
    return-object v0

    .line 449
    :cond_3a
    :try_start_9
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "syntax error, "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->info()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v5, v13}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 455
    .end local v0    # "refValue":Ljava/lang/Object;
    .end local v7    # "ref":Ljava/lang/String;
    :cond_3b
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "illegal ref, "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    invoke-static {v7}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_3c
    const/4 v0, 0x1

    const/4 v13, 0x4

    if-nez v8, :cond_3f

    .line 460
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    if-eqz v0, :cond_3d

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->fieldName:Ljava/lang/Object;

    if-ne v3, v0, :cond_3d

    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    if-ne v2, v0, :cond_3d

    .line 461
    iget-object v0, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 471
    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v0, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    move-object v12, v0

    goto :goto_15

    .line 463
    .end local v0    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_3d
    invoke-virtual/range {p0 .. p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    .line 464
    .local v0, "contextR":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez v12, :cond_3e

    .line 465
    move-object v12, v0

    .line 467
    :cond_3e
    const/4 v0, 0x1

    .line 471
    .end local v8    # "setContextFlag":Z
    .local v0, "setContextFlag":Z
    move v8, v0

    .end local v0    # "setContextFlag":Z
    .restart local v8    # "setContextFlag":Z
    :cond_3f
    :goto_15
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v5, Lcom/alibaba/fastjson/JSONObject;

    if-ne v0, v5, :cond_40

    .line 472
    if-nez v9, :cond_40

    .line 473
    const-string v0, "null"

    move-object v9, v0

    .line 478
    :cond_40
    if-ne v6, v7, :cond_43

    .line 479
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanString()V

    .line 480
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->stringVal()Ljava/lang/String;

    move-result-object v0

    .line 481
    .local v0, "strValue":Ljava/lang/String;
    move-object v5, v0

    .line 483
    .local v5, "value":Ljava/lang/Object;
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->AllowISO8601DateFormat:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-eqz v7, :cond_42

    .line 484
    new-instance v7, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v7, v0}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 485
    .local v7, "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch()Z

    move-result v16

    if-eqz v16, :cond_41

    .line 486
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v13

    move-object v5, v13

    .line 488
    :cond_41
    invoke-virtual {v7}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 491
    .end local v7    # "iso8601Lexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    :cond_42
    invoke-interface {v11, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    .end local v0    # "strValue":Ljava/lang/String;
    goto :goto_17

    .end local v5    # "value":Ljava/lang/Object;
    :cond_43
    const/16 v0, 0x30

    if-lt v6, v0, :cond_44

    const/16 v0, 0x39

    if-le v6, v0, :cond_45

    :cond_44
    const/16 v0, 0x2d

    if-ne v6, v0, :cond_49

    .line 493
    :cond_45
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanNumber()V

    .line 494
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_46

    .line 495
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->integerValue()Ljava/lang/Number;

    move-result-object v0

    .local v0, "value":Ljava/lang/Object;
    goto :goto_16

    .line 497
    .end local v0    # "value":Ljava/lang/Object;
    :cond_46
    sget-object v0, Lcom/alibaba/fastjson/parser/Feature;->UseBigDecimal:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    invoke-interface {v4, v0}, Lcom/alibaba/fastjson/parser/JSONLexer;->decimalValue(Z)Ljava/lang/Number;

    move-result-object v0

    .restart local v0    # "value":Ljava/lang/Object;
    :goto_16
    move-object v5, v0

    .line 500
    .end local v0    # "value":Ljava/lang/Object;
    .restart local v5    # "value":Ljava/lang/Object;
    invoke-interface {v11, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    :goto_17
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->skipWhitespace()V

    .line 615
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getCurrent()C

    move-result v0

    .line 616
    .end local v6    # "ch":C
    .local v0, "ch":C
    if-ne v0, v15, :cond_47

    .line 617
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 618
    nop

    .line 207
    .end local v0    # "ch":C
    .end local v5    # "value":Ljava/lang/Object;
    .end local v9    # "key":Ljava/lang/Object;
    .end local v14    # "isObjectKey":Z
    :goto_18
    const/16 v5, 0xd

    const/16 v6, 0x10

    goto/16 :goto_20

    .line 619
    .restart local v0    # "ch":C
    .restart local v5    # "value":Ljava/lang/Object;
    .restart local v9    # "key":Ljava/lang/Object;
    .restart local v14    # "isObjectKey":Z
    :cond_47
    const/16 v6, 0x7d

    if-ne v0, v6, :cond_48

    .line 620
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->next()C

    .line 621
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->resetStringPosition()V

    .line 622
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 625
    invoke-virtual {v1, v5, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 627
    nop

    .line 634
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 627
    return-object v2

    .line 629
    :cond_48
    :try_start_a
    new-instance v6, Lcom/alibaba/fastjson/JSONException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "syntax error, position at "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v13

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, ", name "

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 501
    .end local v0    # "ch":C
    .end local v5    # "value":Ljava/lang/Object;
    .restart local v6    # "ch":C
    :cond_49
    const/16 v0, 0x5b

    if-ne v6, v0, :cond_4f

    .line 502
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 504
    new-instance v0, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 506
    .local v0, "list":Lcom/alibaba/fastjson/JSONArray;
    if-eqz v3, :cond_4a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v7, Ljava/lang/Integer;

    if-ne v5, v7, :cond_4a

    const/16 v19, 0x1

    goto :goto_19

    :cond_4a
    const/16 v19, 0x0

    :goto_19
    move/from16 v5, v19

    .line 510
    .local v5, "parentIsArray":Z
    if-nez v3, :cond_4b

    .line 511
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 514
    :cond_4b
    invoke-virtual {v1, v0, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseArray(Ljava/util/Collection;Ljava/lang/Object;)V

    .line 516
    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->UseObjectArray:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-eqz v7, :cond_4c

    .line 517
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->toArray()[Ljava/lang/Object;

    move-result-object v7

    .local v7, "value":Ljava/lang/Object;
    goto :goto_1a

    .line 519
    .end local v7    # "value":Ljava/lang/Object;
    :cond_4c
    move-object v7, v0

    .line 521
    .restart local v7    # "value":Ljava/lang/Object;
    :goto_1a
    invoke-interface {v11, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/16 v15, 0xd

    if-ne v13, v15, :cond_4d

    .line 524
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 525
    nop

    .line 634
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 525
    return-object v2

    .line 526
    :cond_4d
    :try_start_b
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v13

    const/16 v15, 0x10

    if-ne v13, v15, :cond_4e

    .line 527
    goto/16 :goto_18

    .line 529
    :cond_4e
    new-instance v13, Lcom/alibaba/fastjson/JSONException;

    const-string v15, "syntax error"

    invoke-direct {v13, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 531
    .end local v0    # "list":Lcom/alibaba/fastjson/JSONArray;
    .end local v5    # "parentIsArray":Z
    .end local v7    # "value":Ljava/lang/Object;
    :cond_4f
    const/16 v0, 0x7b

    if-ne v6, v0, :cond_5e

    .line 532
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 534
    if-eqz v3, :cond_50

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v5, Ljava/lang/Integer;

    if-ne v0, v5, :cond_50

    const/16 v19, 0x1

    goto :goto_1b

    :cond_50
    const/16 v19, 0x0

    :goto_1b
    move/from16 v0, v19

    .line 537
    .local v0, "parentIsArray":Z
    sget-object v5, Lcom/alibaba/fastjson/parser/Feature;->CustomMapDeserializer:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 538
    iget-object v5, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    const-class v7, Ljava/util/Map;

    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;

    .line 541
    .local v5, "mapDeserializer":Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v7

    sget-object v13, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    iget v13, v13, Lcom/alibaba/fastjson/parser/Feature;->mask:I

    and-int/2addr v7, v13

    if-eqz v7, :cond_51

    const-class v7, Ljava/util/Map;

    .line 542
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->getFeatures()I

    move-result v13

    invoke-virtual {v5, v7, v13}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;I)Ljava/util/Map;

    move-result-object v7

    goto :goto_1c

    :cond_51
    const-class v7, Ljava/util/Map;

    .line 543
    invoke-virtual {v5, v7}, Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;->createMap(Ljava/lang/reflect/Type;)Ljava/util/Map;

    move-result-object v7

    .end local v5    # "mapDeserializer":Lcom/alibaba/fastjson/parser/deserializer/MapDeserializer;
    :goto_1c
    move-object v5, v7

    .line 544
    .local v5, "input":Ljava/util/Map;
    goto :goto_1d

    .line 545
    .end local v5    # "input":Ljava/util/Map;
    :cond_52
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->OrderedField:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v4, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    invoke-direct {v5, v7}, Lcom/alibaba/fastjson/JSONObject;-><init>(Z)V

    .line 547
    .restart local v5    # "input":Ljava/util/Map;
    :goto_1d
    const/4 v7, 0x0

    .line 549
    .local v7, "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    if-nez v0, :cond_53

    .line 550
    invoke-virtual {v1, v12, v5, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v13

    move-object v7, v13

    .line 553
    :cond_53
    const/4 v13, 0x0

    .line 554
    .local v13, "obj":Ljava/lang/Object;
    const/4 v15, 0x0

    .line 555
    .local v15, "objParsed":Z
    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    if-eqz v3, :cond_55

    .line 556
    if-eqz v9, :cond_54

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1e

    :cond_54
    const/4 v3, 0x0

    .line 557
    .local v3, "resolveFieldName":Ljava/lang/String;
    :goto_1e
    move/from16 v20, v6

    iget-object v6, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .end local v6    # "ch":C
    .local v20, "ch":C
    invoke-interface {v6, v2, v3}, Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;->resolve(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Type;

    move-result-object v6

    .line 558
    .local v6, "fieldType":Ljava/lang/reflect/Type;
    if-eqz v6, :cond_56

    .line 559
    move-object/from16 v21, v3

    iget-object v3, v1, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .end local v3    # "resolveFieldName":Ljava/lang/String;
    .local v21, "resolveFieldName":Ljava/lang/String;
    invoke-virtual {v3, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v3

    .line 560
    .local v3, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    invoke-interface {v3, v1, v6, v9}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v13, v16

    .line 561
    const/4 v15, 0x1

    .end local v3    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    .end local v6    # "fieldType":Ljava/lang/reflect/Type;
    .end local v21    # "resolveFieldName":Ljava/lang/String;
    goto :goto_1f

    .line 564
    .end local v20    # "ch":C
    .local v6, "ch":C
    :cond_55
    move/from16 v20, v6

    .end local v6    # "ch":C
    .restart local v20    # "ch":C
    :cond_56
    :goto_1f
    if-nez v15, :cond_57

    .line 565
    invoke-virtual {v1, v5, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parseObject(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v13, v3

    .line 568
    :cond_57
    if-eqz v7, :cond_58

    if-eq v5, v13, :cond_58

    .line 569
    iput-object v2, v7, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    .line 572
    :cond_58
    if-eqz v9, :cond_59

    .line 573
    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->checkMapResolve(Ljava/util/Map;Ljava/lang/Object;)V

    .line 576
    :cond_59
    invoke-interface {v11, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    if-eqz v0, :cond_5a

    .line 580
    invoke-virtual {v1, v13, v9}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    .line 583
    :cond_5a
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v6, 0xd

    if-ne v3, v6, :cond_5b

    .line 584
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 586
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 587
    nop

    .line 634
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 587
    return-object v2

    .line 588
    :cond_5b
    :try_start_c
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v6, 0x10

    if-ne v3, v6, :cond_5d

    .line 589
    if-eqz v0, :cond_5c

    .line 590
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->popContext()V

    goto/16 :goto_18

    .line 592
    :cond_5c
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 594
    goto/16 :goto_18

    .line 596
    :cond_5d
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v0

    const-string v0, "syntax error, "

    .end local v0    # "parentIsArray":Z
    .local v22, "parentIsArray":Z
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 599
    .end local v5    # "input":Ljava/util/Map;
    .end local v7    # "ctxLocal":Lcom/alibaba/fastjson/parser/ParseContext;
    .end local v13    # "obj":Ljava/lang/Object;
    .end local v15    # "objParsed":Z
    .end local v20    # "ch":C
    .end local v22    # "parentIsArray":Z
    .restart local v6    # "ch":C
    :cond_5e
    move/from16 v20, v6

    .end local v6    # "ch":C
    .restart local v20    # "ch":C
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    move-result-object v0

    .line 602
    .local v0, "value":Ljava/lang/Object;
    invoke-interface {v11, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v5, 0xd

    if-ne v3, v5, :cond_5f

    .line 605
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 606
    nop

    .line 634
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 606
    return-object v2

    .line 607
    :cond_5f
    :try_start_d
    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v6, 0x10

    if-ne v3, v6, :cond_60

    .line 608
    nop

    .line 207
    .end local v0    # "value":Ljava/lang/Object;
    .end local v9    # "key":Ljava/lang/Object;
    .end local v14    # "isObjectKey":Z
    .end local v20    # "ch":C
    :goto_20
    move v9, v6

    move-object/from16 v3, p2

    const/4 v7, 0x4

    move v6, v5

    const/4 v5, 0x0

    goto/16 :goto_2

    .line 610
    .restart local v0    # "value":Ljava/lang/Object;
    .restart local v9    # "key":Ljava/lang/Object;
    .restart local v14    # "isObjectKey":Z
    .restart local v20    # "ch":C
    :cond_60
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "syntax error, position at "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->pos()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 282
    .end local v0    # "value":Ljava/lang/Object;
    .end local v9    # "key":Ljava/lang/Object;
    .end local v20    # "ch":C
    .local v13, "ch":C
    :cond_61
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "object key level > 512"

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_62
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "syntax error"

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 258
    :cond_63
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "syntax error"

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 634
    .end local v8    # "setContextFlag":Z
    .end local v10    # "isJsonObjectMap":Z
    .end local v11    # "map":Ljava/util/Map;
    .end local v13    # "ch":C
    .end local v14    # "isObjectKey":Z
    :catchall_0
    move-exception v0

    goto :goto_21

    .end local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .local v8, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :catchall_1
    move-exception v0

    move-object v12, v8

    .end local v8    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    .restart local v12    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :goto_21
    invoke-virtual {v1, v12}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    throw v0
.end method

.method public parseObject(Ljava/lang/Object;)V
    .locals 13
    .param p1, "object"    # Ljava/lang/Object;

    .line 912
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 913
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 914
    .local v1, "beanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v2

    .line 915
    .local v2, "deserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v3, v2, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v3, :cond_0

    .line 916
    move-object v1, v2

    check-cast v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 919
    :cond_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    const/16 v4, 0xc

    const/16 v5, 0x10

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v3}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v3

    if-ne v3, v5, :cond_1

    goto :goto_0

    .line 920
    :cond_1
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "syntax error, expect {, actual "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->tokenName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 925
    :cond_2
    :goto_0
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->symbolTable:Lcom/alibaba/fastjson/parser/SymbolTable;

    invoke-interface {v3, v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->scanSymbol(Lcom/alibaba/fastjson/parser/SymbolTable;)Ljava/lang/String;

    move-result-object v3

    .line 927
    .local v3, "key":Ljava/lang/String;
    const/16 v4, 0xd

    if-nez v3, :cond_4

    .line 928
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 929
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 930
    nop

    .line 990
    .end local v3    # "key":Ljava/lang/String;
    return-void

    .line 932
    .restart local v3    # "key":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v6}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v6

    if-ne v6, v5, :cond_4

    .line 933
    iget-object v6, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v7, Lcom/alibaba/fastjson/parser/Feature;->AllowArbitraryCommas:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v6, v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 934
    goto :goto_0

    .line 939
    :cond_4
    const/4 v6, 0x0

    .line 940
    .local v6, "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-eqz v1, :cond_5

    .line 941
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v6

    .line 944
    :cond_5
    if-nez v6, :cond_7

    .line 945
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v8, Lcom/alibaba/fastjson/parser/Feature;->IgnoreNotMatch:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v7, v8}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 949
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon()V

    .line 950
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->parse()Ljava/lang/Object;

    .line 952
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v4, :cond_2

    .line 953
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken()V

    .line 954
    return-void

    .line 946
    :cond_6
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setter not found, class "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", property "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 959
    :cond_7
    iget-object v7, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v7, v7, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 960
    .local v7, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v8, v6, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->fieldInfo:Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v8, v8, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 962
    .local v8, "fieldType":Ljava/lang/reflect/Type;
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    const/4 v11, 0x0

    if-ne v7, v9, :cond_8

    .line 963
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 964
    sget-object v9, Lcom/alibaba/fastjson/serializer/IntegerCodec;->instance:Lcom/alibaba/fastjson/serializer/IntegerCodec;

    invoke-virtual {v9, p0, v8, v11}, Lcom/alibaba/fastjson/serializer/IntegerCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .local v9, "fieldValue":Ljava/lang/Object;
    :goto_1
    goto :goto_2

    .line 965
    .end local v9    # "fieldValue":Ljava/lang/Object;
    :cond_8
    const-class v9, Ljava/lang/String;

    if-ne v7, v9, :cond_9

    .line 966
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    const/4 v10, 0x4

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 967
    invoke-static {p0}, Lcom/alibaba/fastjson/serializer/StringCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_1

    .line 968
    :cond_9
    sget-object v9, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne v7, v9, :cond_a

    .line 969
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9, v10}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 970
    sget-object v9, Lcom/alibaba/fastjson/serializer/LongCodec;->instance:Lcom/alibaba/fastjson/serializer/LongCodec;

    invoke-virtual {v9, p0, v8, v11}, Lcom/alibaba/fastjson/serializer/LongCodec;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto :goto_1

    .line 972
    :cond_a
    iget-object v9, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {v9, v7, v8}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/Class;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v9

    .line 974
    .local v9, "fieldValueDeserializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    iget-object v10, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v9}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->getFastMatchToken()I

    move-result v12

    invoke-interface {v10, v12}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextTokenWithColon(I)V

    .line 975
    invoke-interface {v9, p0, v8, v11}, Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;->deserialze(Lcom/alibaba/fastjson/parser/DefaultJSONParser;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 978
    .local v9, "fieldValue":Ljava/lang/Object;
    :goto_2
    invoke-virtual {v6, p1, v9}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 981
    .end local v7    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v8    # "fieldType":Ljava/lang/reflect/Type;
    .end local v9    # "fieldValue":Ljava/lang/Object;
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v5, :cond_b

    .line 982
    goto/16 :goto_0

    .line 985
    :cond_b
    iget-object v7, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v7}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v7

    if-ne v7, v4, :cond_c

    .line 986
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    invoke-interface {v4, v5}, Lcom/alibaba/fastjson/parser/JSONLexer;->nextToken(I)V

    .line 987
    return-void

    .line 989
    .end local v3    # "key":Ljava/lang/String;
    .end local v6    # "fieldDeser":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_c
    goto/16 :goto_0
.end method

.method public popContext()V
    .locals 3

    .line 1320
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1321
    return-void

    .line 1324
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    iget-object v0, v0, Lcom/alibaba/fastjson/parser/ParseContext;->parent:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1326
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-gtz v0, :cond_1

    .line 1327
    return-void

    .line 1330
    :cond_1
    iget v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    .line 1331
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    iget v1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 1332
    return-void
.end method

.method public resolveReference(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "ref"    # Ljava/lang/String;

    .line 1536
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1537
    return-object v1

    .line 1539
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    iget v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArrayIndex:I

    if-ge v0, v2, :cond_2

    .line 1540
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->contextArray:[Lcom/alibaba/fastjson/parser/ParseContext;

    aget-object v2, v2, v0

    .line 1541
    .local v2, "context":Lcom/alibaba/fastjson/parser/ParseContext;
    invoke-virtual {v2}, Lcom/alibaba/fastjson/parser/ParseContext;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1542
    iget-object v1, v2, Lcom/alibaba/fastjson/parser/ParseContext;->object:Ljava/lang/Object;

    return-object v1

    .line 1539
    .end local v2    # "context":Lcom/alibaba/fastjson/parser/ParseContext;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1545
    .end local v0    # "i":I
    :cond_2
    return-object v1
.end method

.method public setConfig(Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 0
    .param p1, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 644
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->config:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 645
    return-void
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 2
    .param p1, "parent"    # Lcom/alibaba/fastjson/parser/ParseContext;
    .param p2, "object"    # Ljava/lang/Object;
    .param p3, "fieldName"    # Ljava/lang/Object;

    .line 1343
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1344
    const/4 v0, 0x0

    return-object v0

    .line 1347
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParseContext;-><init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1348
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->addContext(Lcom/alibaba/fastjson/parser/ParseContext;)V

    .line 1350
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    return-object v0
.end method

.method public setContext(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "fieldName"    # Ljava/lang/Object;

    .line 1335
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1336
    const/4 v0, 0x0

    return-object v0

    .line 1339
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    invoke-virtual {p0, v0, p1, p2}, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->setContext(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson/parser/ParseContext;

    move-result-object v0

    return-object v0
.end method

.method public setContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 2
    .param p1, "context"    # Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1313
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    sget-object v1, Lcom/alibaba/fastjson/parser/Feature;->DisableCircularReferenceDetect:Lcom/alibaba/fastjson/parser/Feature;

    invoke-interface {v0, v1}, Lcom/alibaba/fastjson/parser/JSONLexer;->isEnabled(Lcom/alibaba/fastjson/parser/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1314
    return-void

    .line 1316
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->context:Lcom/alibaba/fastjson/parser/ParseContext;

    .line 1317
    return-void
.end method

.method public setDateFomrat(Ljava/text/DateFormat;)V
    .locals 0
    .param p1, "dateFormat"    # Ljava/text/DateFormat;

    .line 123
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 124
    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 1
    .param p1, "dateFormat"    # Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormatPattern:Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->dateFormat:Ljava/text/DateFormat;

    .line 120
    return-void
.end method

.method public setFieldTypeResolver(Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;)V
    .locals 0
    .param p1, "fieldTypeResolver"    # Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 1309
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->fieldTypeResolver:Lcom/alibaba/fastjson/parser/deserializer/FieldTypeResolver;

    .line 1310
    return-void
.end method

.method public setResolveStatus(I)V
    .locals 0
    .param p1, "resolveStatus"    # I

    .line 1087
    iput p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->resolveStatus:I

    .line 1088
    return-void
.end method

.method public throwException(I)V
    .locals 3
    .param p1, "token"    # I

    .line 1517
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syntax error, expect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", actual "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser;->lexer:Lcom/alibaba/fastjson/parser/JSONLexer;

    .line 1518
    invoke-interface {v2}, Lcom/alibaba/fastjson/parser/JSONLexer;->token()I

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson/parser/JSONToken;->name(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
