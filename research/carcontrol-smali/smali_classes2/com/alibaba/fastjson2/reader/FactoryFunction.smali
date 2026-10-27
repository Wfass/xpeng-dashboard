.class final Lcom/alibaba/fastjson2/reader/FactoryFunction;
.super Ljava/lang/Object;
.source "FactoryFunction.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "Ljava/lang/Object;",
        ">;TT;>;"
    }
.end annotation


# instance fields
.field final biFunction:Ljava/util/function/BiFunction;

.field final factoryMethod:Ljava/lang/reflect/Method;

.field final function:Ljava/util/function/Function;

.field final hashCodes:[J

.field final paramNames:[Ljava/lang/String;


# direct methods
.method varargs constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/String;)V
    .locals 7

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->factoryMethod:Ljava/lang/reflect/Method;

    .line 24
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameters()[Ljava/lang/reflect/Parameter;

    move-result-object v0

    .line 25
    array-length v1, v0

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->paramNames:[Ljava/lang/String;

    .line 26
    array-length v1, v0

    new-array v1, v1, [J

    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->hashCodes:[J

    const/4 v1, 0x0

    .line 27
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 29
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 30
    aget-object v2, p2, v1

    goto :goto_1

    .line 32
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/reflect/Parameter;->getName()Ljava/lang/String;

    move-result-object v2

    .line 34
    :goto_1
    aput-object v2, p2, v1

    .line 35
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->hashCodes:[J

    invoke-static {v2}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 40
    :cond_1
    sget-boolean p2, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;->JIT:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 41
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterCount()I

    move-result p2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 43
    invoke-static {p1}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p1

    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    goto :goto_2

    :cond_2
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 45
    invoke-static {p1}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createBiFunction(Ljava/lang/reflect/Method;)Ljava/util/function/BiFunction;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 48
    :goto_2
    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->function:Ljava/util/function/Function;

    .line 49
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->biFunction:Ljava/util/function/BiFunction;

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/reader/FactoryFunction;->apply(Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/util/Map;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;)TT;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->function:Ljava/util/function/Function;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->hashCodes:[J

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->function:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->biFunction:Ljava/util/function/BiFunction;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->hashCodes:[J

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->hashCodes:[J

    const/4 v2, 0x1

    aget-wide v1, v1, v2

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 62
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->biFunction:Ljava/util/function/BiFunction;

    invoke-interface {v1, v0, p1}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->hashCodes:[J

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/Object;

    :goto_0
    if-ge v1, v0, :cond_2

    .line 67
    iget-object v3, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->hashCodes:[J

    aget-wide v3, v3, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 70
    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/FactoryFunction;->factoryMethod:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    .line 72
    :goto_1
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    const-string v1, "invoke factoryMethod error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
