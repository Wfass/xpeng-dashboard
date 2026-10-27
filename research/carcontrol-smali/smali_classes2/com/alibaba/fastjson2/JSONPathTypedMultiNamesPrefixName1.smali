.class public Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName1;
.super Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;
.source "JSONPathTypedMultiNamesPrefixName1.java"


# instance fields
.field final prefixName:Lcom/alibaba/fastjson2/JSONPathSingleName;

.field final prefixNameHash:J


# direct methods
.method constructor <init>([Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath;[Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V
    .locals 0

    .line 20
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;-><init>([Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath;[Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V

    .line 21
    check-cast p2, Lcom/alibaba/fastjson2/JSONPathSingleName;

    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName1;->prefixName:Lcom/alibaba/fastjson2/JSONPathSingleName;

    .line 22
    iget-wide p1, p2, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName1;->prefixNameHash:J

    return-void
.end method


# virtual methods
.method public bridge synthetic contains(Ljava/lang/Object;)Z
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 6

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName1;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    .line 31
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    const-string v1, "illegal input, expect \'[\', but "

    if-eqz v0, :cond_7

    .line 36
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 37
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName1;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    .line 40
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v0

    if-nez v0, :cond_6

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v2

    .line 45
    iget-wide v4, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName1;->prefixNameHash:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    .line 47
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_0

    .line 54
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 55
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName1;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    .line 58
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 62
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName1;->objectReader:Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->readObject(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 59
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_6
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_7
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic extractScalar(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->extractScalar(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getParent()Lcom/alibaba/fastjson2/JSONPath;
    .locals 1

    .line 6
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->getParent()Lcom/alibaba/fastjson2/JSONPath;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isRef()Z
    .locals 1

    .line 6
    invoke-super {p0}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->isRef()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Z
    .locals 0

    .line 6
    invoke-super {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->set(Ljava/lang/Object;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V

    return-void
.end method

.method public bridge synthetic setCallback(Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->setCallback(Ljava/lang/Object;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public bridge synthetic setInt(Ljava/lang/Object;I)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->setInt(Ljava/lang/Object;I)V

    return-void
.end method

.method public bridge synthetic setLong(Ljava/lang/Object;J)V
    .locals 0

    .line 6
    invoke-super {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;->setLong(Ljava/lang/Object;J)V

    return-void
.end method
