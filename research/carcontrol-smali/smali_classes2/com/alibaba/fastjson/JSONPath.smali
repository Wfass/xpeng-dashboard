.class public Lcom/alibaba/fastjson/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"


# instance fields
.field private final path:Lcom/alibaba/fastjson2/JSONPath;


# direct methods
.method private constructor <init>(Lcom/alibaba/fastjson2/JSONPath;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Lcom/alibaba/fastjson2/JSONPath;

    return-void
.end method

.method public static varargs arrayAdd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 67
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 68
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson2/JSONPath;->arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;
    .locals 1

    if-eqz p0, :cond_0

    .line 22
    new-instance v0, Lcom/alibaba/fastjson/JSONPath;

    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONPath;-><init>(Lcom/alibaba/fastjson2/JSONPath;)V

    return-object v0

    .line 19
    :cond_0
    new-instance p0, Lcom/alibaba/fastjson/JSONException;

    const-string v0, "jsonpath can not be null"

    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    .line 84
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 85
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONPath;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 51
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 52
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static extract(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 72
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 73
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    .line 74
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONPath;->extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static paths(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 63
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONPath;->paths(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-static {p0, p1}, Lcom/alibaba/fastjson2/JSONPath;->extract(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            ")TT;"
        }
    .end annotation

    .line 45
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 46
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONPath;->extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p0

    .line 47
    sget-object p1, Lcom/alibaba/fastjson/parser/ParserConfig;->global:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-static {p0, p2, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .line 39
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 40
    invoke-static {p0}, Lcom/alibaba/fastjson2/JSONReader;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONReader;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONPath;->extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p0

    .line 41
    invoke-static {p0, p2, p3}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    .line 79
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 80
    invoke-virtual {p1, p0}, Lcom/alibaba/fastjson2/JSONPath;->remove(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .line 56
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object p1

    .line 57
    sget v0, Lcom/alibaba/fastjson/JSON;->DEFAULT_PARSER_FEATURE:I

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->createReadContext(I[Lcom/alibaba/fastjson/parser/Feature;)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONPath;->setReaderContext(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/JSONPath;

    .line 58
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson2/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONPath;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Lcom/alibaba/fastjson2/JSONPath;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method
