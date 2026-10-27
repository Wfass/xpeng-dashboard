.class public Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;
.super Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;
.source "JSONPathTypedMultiNamesPrefixName2.java"


# instance fields
.field final prefixName0:Ljava/lang/String;

.field final prefixName1:Ljava/lang/String;

.field final prefixNameHash0:J

.field final prefixNameHash1:J


# direct methods
.method constructor <init>([Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath;[Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V
    .locals 0

    .line 23
    invoke-direct/range {p0 .. p9}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNames;-><init>([Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath;[Lcom/alibaba/fastjson2/JSONPath;[Ljava/lang/reflect/Type;[Ljava/lang/String;[JLjava/time/ZoneId;J)V

    .line 25
    check-cast p2, Lcom/alibaba/fastjson2/JSONPathTwoSegment;

    .line 26
    iget-object p1, p2, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    check-cast p1, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->prefixName0:Ljava/lang/String;

    .line 27
    iget-object p1, p2, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    check-cast p1, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    iget-wide p3, p1, Lcom/alibaba/fastjson2/JSONPathSegmentName;->nameHashCode:J

    iput-wide p3, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->prefixNameHash0:J

    .line 29
    iget-object p1, p2, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    check-cast p1, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->prefixName1:Ljava/lang/String;

    .line 30
    iget-object p1, p2, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    check-cast p1, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    iget-wide p1, p1, Lcom/alibaba/fastjson2/JSONPathSegmentName;->nameHashCode:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->prefixNameHash1:J

    return-void
.end method

.method private static error(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/JSONException;
    .locals 3

    .line 95
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "illegal input, expect \'[\', but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    return-object v0
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
    .locals 7

    .line 35
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 44
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    .line 48
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v0

    if-nez v0, :cond_b

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->prefixNameHash0:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    if-nez v0, :cond_3

    .line 54
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 62
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    .line 65
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 70
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 71
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    .line 74
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result v0

    if-nez v0, :cond_9

    .line 78
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->prefixNameHash1:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_6

    move v0, v1

    goto :goto_3

    :cond_6
    move v0, v2

    :goto_3
    if-nez v0, :cond_7

    .line 80
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_2

    .line 87
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 88
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->paths:[Lcom/alibaba/fastjson2/JSONPath;

    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    return-object p1

    .line 91
    :cond_8
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->objectReader:Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/reader/ObjectReaderAdapter;->readObject(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 75
    :cond_9
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->error(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p1

    throw p1

    .line 66
    :cond_a
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->error(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p1

    throw p1

    .line 49
    :cond_b
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->error(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p1

    throw p1

    .line 40
    :cond_c
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONPathTypedMultiNamesPrefixName2;->error(Lcom/alibaba/fastjson2/JSONReader;)Lcom/alibaba/fastjson2/JSONException;

    move-result-object p1

    throw p1
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
