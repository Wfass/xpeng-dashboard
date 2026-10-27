.class Lcom/alibaba/fastjson2/JSONPathTwoSegment;
.super Lcom/alibaba/fastjson2/JSONPath;
.source "JSONPathTwoSegment.java"


# instance fields
.field final extractSupport:Z

.field final first:Lcom/alibaba/fastjson2/JSONPathSegment;

.field final ref:Z

.field final second:Lcom/alibaba/fastjson2/JSONPathSegment;


# direct methods
.method varargs constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V
    .locals 2

    .line 18
    invoke-direct {p0, p1, p4}, Lcom/alibaba/fastjson2/JSONPath;-><init>(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    .line 19
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    .line 20
    iput-object p3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    .line 21
    instance-of p1, p2, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    instance-of v1, p2, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    if-eqz v1, :cond_1

    :cond_0
    instance-of v1, p3, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    if-nez v1, :cond_2

    instance-of v1, p3, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1

    :cond_2
    :goto_0
    move v1, p4

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->ref:Z

    .line 25
    instance-of v1, p2, Lcom/alibaba/fastjson2/JSONPathSegment$EvalSegment;

    if-eqz v1, :cond_3

    :goto_2
    move p4, v0

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_4

    .line 27
    move-object p1, p2

    check-cast p1, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    iget p1, p1, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    if-gez p1, :cond_4

    goto :goto_2

    .line 29
    :cond_4
    instance-of p1, p3, Lcom/alibaba/fastjson2/JSONPathSegment$EvalSegment;

    if-eqz p1, :cond_5

    goto :goto_2

    .line 31
    :cond_5
    instance-of p1, p3, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    if-eqz p1, :cond_6

    move-object p1, p3

    check-cast p1, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    iget p1, p1, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    if-gez p1, :cond_6

    goto :goto_2

    .line 34
    :cond_6
    :goto_3
    iput-boolean p4, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->extractSupport:Z

    .line 36
    instance-of p1, p2, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    if-eqz p1, :cond_7

    check-cast p2, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->shouldRecursive()Z

    move-result p1

    if-eqz p1, :cond_7

    instance-of p1, p3, Lcom/alibaba/fastjson2/JSONPathFilter$NameFilter;

    if-eqz p1, :cond_7

    .line 38
    check-cast p3, Lcom/alibaba/fastjson2/JSONPathFilter$NameFilter;

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONPathFilter$NameFilter;->excludeArray()V

    :cond_7
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 8

    .line 67
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 68
    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 69
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 70
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 74
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 75
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONPathSegment;->contains(Lcom/alibaba/fastjson2/JSONPath$Context;)Z

    move-result p1

    return p1
.end method

.method public endsWithFilter()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    instance-of v0, v0, Lcom/alibaba/fastjson2/JSONPathFilter;

    return v0
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 85
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 86
    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 88
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 92
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 93
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONPathSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 94
    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 95
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONPath$Feature;->AlwaysReturnList:Lcom/alibaba/fastjson2/JSONPath$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONPath$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    .line 97
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_0

    .line 98
    :cond_1
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_2

    .line 99
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 9

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 216
    :cond_0
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->extractSupport:Z

    if-nez v0, :cond_1

    .line 217
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p1

    .line 218
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 221
    :cond_1
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 222
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 224
    new-instance v8, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v4, 0x0

    move-object v0, v8

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 226
    iget-boolean v0, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    if-eqz v0, :cond_2

    .line 227
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v8}, Lcom/alibaba/fastjson2/JSONPathSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    goto :goto_0

    .line 229
    :cond_2
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v0, p1, v8}, Lcom/alibaba/fastjson2/JSONPathSegment;->accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 232
    :goto_0
    iget-object p1, v8, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 234
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->features:J

    sget-object v2, Lcom/alibaba/fastjson2/JSONPath$Feature;->AlwaysReturnList:Lcom/alibaba/fastjson2/JSONPath$Feature;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONPath$Feature;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    if-nez p1, :cond_3

    .line 236
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_1

    .line 237
    :cond_3
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_4

    .line 238
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    .line 242
    :cond_4
    :goto_1
    instance-of v0, p1, Lcom/alibaba/fastjson2/JSONPath$Sequence;

    if-eqz v0, :cond_5

    .line 243
    check-cast p1, Lcom/alibaba/fastjson2/JSONPath$Sequence;

    iget-object p1, p1, Lcom/alibaba/fastjson2/JSONPath$Sequence;->values:Ljava/util/List;

    :cond_5
    return-object p1
.end method

.method public extractScalar(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;
    .locals 9

    .line 251
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 252
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 254
    new-instance v8, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v4, 0x0

    move-object v0, v8

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 255
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v0, p1, v8}, Lcom/alibaba/fastjson2/JSONPathSegment;->accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 257
    iget-object p1, v8, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getParent()Lcom/alibaba/fastjson2/JSONPath;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONPathSingle;->of(Lcom/alibaba/fastjson2/JSONPathSegment;)Lcom/alibaba/fastjson2/JSONPathSingle;

    move-result-object v0

    return-object v0
.end method

.method public isRef()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->ref:Z

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 8

    .line 54
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 55
    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 56
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 57
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 61
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 62
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/JSONPathSegment;->remove(Lcom/alibaba/fastjson2/JSONPath$Context;)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 107
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 108
    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 109
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v0, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 110
    iget-object v0, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    if-nez v0, :cond_6

    .line 112
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    instance-of v1, v0, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    if-eqz v1, :cond_1

    .line 113
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->arraySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 116
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_0

    .line 118
    :cond_1
    instance-of v0, v0, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    if-eqz v0, :cond_5

    .line 119
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Ljava/util/function/Supplier;

    if-eqz v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONReader$Context;->objectSupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 122
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONObject;-><init>()V

    .line 128
    :goto_0
    iput-object v0, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 129
    instance-of v1, p1, Ljava/util/Map;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    instance-of v2, v1, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    if-eqz v2, :cond_3

    .line 130
    check-cast p1, Ljava/util/Map;

    check-cast v1, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 131
    :cond_3
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    instance-of v2, v1, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    if-eqz v2, :cond_4

    .line 132
    check-cast p1, Ljava/util/List;

    check-cast v1, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    iget v1, v1, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    invoke-interface {p1, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_6

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->getReaderContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    .line 136
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 137
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    instance-of v3, v2, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    if-eqz v3, :cond_6

    .line 138
    check-cast v2, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/JSONPathSegmentName;->nameHashCode:J

    invoke-interface {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 140
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->getObjectReader(Lcom/alibaba/fastjson2/JSONReader$Context;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    .line 141
    invoke-interface {v1}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance()Ljava/lang/Object;

    move-result-object v1

    .line 142
    invoke-virtual {v0, p1, v1}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
    iput-object v1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    goto :goto_1

    :cond_5
    return-void

    .line 149
    :cond_6
    :goto_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 150
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathSegment;->set(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs set(Ljava/lang/Object;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 11

    .line 156
    array-length v0, p3

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p3, v3

    .line 157
    iget-wide v4, v4, Lcom/alibaba/fastjson2/JSONReader$Feature;->mask:J

    or-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 160
    :cond_0
    new-instance p3, Lcom/alibaba/fastjson2/JSONPath$Context;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    iget-object v8, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    move-object v4, p3

    move-object v5, p0

    move-wide v9, v1

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 161
    iput-object p1, p3, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 162
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONPathSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 163
    iget-object p1, p3, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    if-nez p1, :cond_1

    return-void

    .line 167
    :cond_1
    new-instance p1, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v7, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v8, 0x0

    move-object v4, p1

    move-object v5, p0

    move-object v6, p3

    move-wide v9, v1

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 168
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p3, p1, p2}, Lcom/alibaba/fastjson2/JSONPathSegment;->set(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/lang/Object;)V

    return-void
.end method

.method public setCallback(Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 8

    .line 173
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 174
    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 175
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 176
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    .line 180
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 181
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathSegment;->setCallback(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public setInt(Ljava/lang/Object;I)V
    .locals 8

    .line 186
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 187
    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 188
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 189
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    .line 193
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 194
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathSegment;->setInt(Lcom/alibaba/fastjson2/JSONPath$Context;I)V

    return-void
.end method

.method public setLong(Ljava/lang/Object;J)V
    .locals 8

    .line 199
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 200
    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 201
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->first:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 202
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    if-nez p1, :cond_0

    return-void

    .line 206
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, v7

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 207
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathTwoSegment;->second:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONPathSegment;->setLong(Lcom/alibaba/fastjson2/JSONPath$Context;J)V

    return-void
.end method
