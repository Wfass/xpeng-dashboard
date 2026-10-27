.class final Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;
.super Ljava/lang/Object;
.source "ObjectArrayReaderMultiType.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# instance fields
.field final readers:[Lcom/alibaba/fastjson2/reader/ObjectReader;

.field final types:[Ljava/lang/reflect/Type;


# direct methods
.method constructor <init>(Lcom/alibaba/fastjson2/util/MultiType;)V
    .locals 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/util/MultiType;->size()I

    move-result v0

    new-array v1, v0, [Ljava/lang/reflect/Type;

    const/4 v2, 0x0

    .line 16
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/util/MultiType;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 17
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/util/MultiType;->getType(I)Ljava/lang/reflect/Type;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 19
    :cond_0
    iput-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->types:[Ljava/lang/reflect/Type;

    .line 20
    new-array p1, v0, [Lcom/alibaba/fastjson2/reader/ObjectReader;

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->readers:[Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-void
.end method


# virtual methods
.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    .line 107
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->types:[Ljava/lang/reflect/Type;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1
.end method

.method getObjectReader(Lcom/alibaba/fastjson2/JSONReader;I)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->readers:[Lcom/alibaba/fastjson2/reader/ObjectReader;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 26
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->types:[Ljava/lang/reflect/Type;

    aget-object v0, v0, p2

    .line 27
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 28
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->readers:[Lcom/alibaba/fastjson2/reader/ObjectReader;

    aput-object v0, p1, p2

    :cond_0
    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9

    .line 78
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result p2

    const/4 p3, 0x0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    return-object p3

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->types:[Ljava/lang/reflect/Type;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_3

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".."

    .line 89
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v2, v0

    goto :goto_1

    .line 93
    :cond_1
    invoke-static {v2}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask([Ljava/lang/Object;ILcom/alibaba/fastjson2/JSONPath;)V

    move-object v2, p3

    goto :goto_1

    .line 96
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader;I)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v3

    .line 97
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->types:[Ljava/lang/reflect/Type;

    aget-object v5, v2, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object v4, p1

    move-wide v7, p4

    invoke-interface/range {v3 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 100
    :goto_1
    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 8

    .line 35
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 36
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNullOrEmptyString()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    return-object p3

    .line 43
    :cond_1
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->types:[Ljava/lang/reflect/Type;

    array-length p2, p2

    new-array p2, p2, [Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayStart()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 68
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object p2

    .line 52
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isReference()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 53
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readReference()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".."

    .line 54
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, p2

    goto :goto_1

    .line 58
    :cond_3
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSONPath;->of(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/alibaba/fastjson2/JSONReader;->addResolveTask([Ljava/lang/Object;ILcom/alibaba/fastjson2/JSONPath;)V

    move-object v1, p3

    goto :goto_1

    .line 61
    :cond_4
    invoke-virtual {p0, p1, v0}, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader;I)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 62
    iget-object v1, p0, Lcom/alibaba/fastjson2/reader/ObjectArrayReaderMultiType;->types:[Ljava/lang/reflect/Type;

    aget-object v4, v1, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v3, p1

    move-wide v6, p4

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 64
    :goto_1
    aput-object v1, p2, v0

    .line 66
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string p3, "TODO"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
