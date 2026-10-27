.class Lcom/alibaba/fastjson2/JSONPathTypedMulti;
.super Lcom/alibaba/fastjson2/JSONPath;
.source "JSONPathTypedMulti.java"


# instance fields
.field final formats:[Ljava/lang/String;

.field final pathFeatures:[J

.field final paths:[Lcom/alibaba/fastjson2/JSONPath;

.field final types:[Ljava/lang/reflect/Type;

.field final zoneId:Ljava/time/ZoneId;


# direct methods
.method protected constructor <init>([Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V
    .locals 1

    .line 27
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p6, p7}, Lcom/alibaba/fastjson2/JSONPath;-><init>(Ljava/lang/String;J)V

    .line 28
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->types:[Ljava/lang/reflect/Type;

    .line 29
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    .line 30
    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->formats:[Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->pathFeatures:[J

    .line 32
    iput-object p5, p0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->zoneId:Ljava/time/ZoneId;

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 5

    .line 52
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 53
    invoke-virtual {v4, p1}, Lcom/alibaba/fastjson2/JSONPath;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method protected createContext()Lcom/alibaba/fastjson2/JSONReader$Context;
    .locals 3

    .line 84
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->features:J

    invoke-static {v0, v1}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext(J)Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->zoneId:Ljava/time/ZoneId;

    if-eqz v1, :cond_0

    sget-object v2, Lcom/alibaba/fastjson2/util/DateUtils;->DEFAULT_ZONE_ID:Ljava/time/ZoneId;

    if-eq v1, v2, :cond_0

    .line 86
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->zoneId:Ljava/time/ZoneId;

    iput-object v1, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->zoneId:Ljava/time/ZoneId;

    :cond_0
    return-object v0
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 68
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 69
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 70
    aget-object v2, v2, v1

    .line 71
    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson2/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 73
    :try_start_0
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->types:[Ljava/lang/reflect/Type;

    aget-object v4, v4, v1

    invoke-static {v3, v4}, Lcom/alibaba/fastjson2/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 75
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->ignoreError(I)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "jsonpath eval path, path : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v3}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    return-object v0
.end method

.method public extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 0

    .line 93
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public extractScalar(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;
    .locals 0

    .line 99
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p1

    .line 100
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getParent()Lcom/alibaba/fastjson2/JSONPath;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final ignoreError(I)Z
    .locals 4

    .line 61
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->pathFeatures:[J

    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-wide v0, v0, p1

    sget-object p1, Lcom/alibaba/fastjson2/JSONPath$Feature;->NullOnError:Lcom/alibaba/fastjson2/JSONPath$Feature;

    iget-wide v2, p1, Lcom/alibaba/fastjson2/JSONPath$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isRef()Z
    .locals 5

    .line 42
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTypedMulti;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 43
    invoke-virtual {v4}, Lcom/alibaba/fastjson2/JSONPath;->isRef()Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 130
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo v0, "unsupported operation"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 105
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "unsupported operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public varargs set(Ljava/lang/Object;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 0

    .line 110
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "unsupported operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setCallback(Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 0

    .line 115
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "unsupported operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setInt(Ljava/lang/Object;I)V
    .locals 0

    .line 120
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "unsupported operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setLong(Ljava/lang/Object;J)V
    .locals 0

    .line 125
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p2, "unsupported operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
