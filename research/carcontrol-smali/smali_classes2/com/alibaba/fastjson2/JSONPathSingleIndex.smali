.class final Lcom/alibaba/fastjson2/JSONPathSingleIndex;
.super Lcom/alibaba/fastjson2/JSONPathSingle;
.source "JSONPathSingleIndex.java"


# instance fields
.field final index:I

.field final segment:Lcom/alibaba/fastjson2/JSONPathSegmentIndex;


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegmentIndex;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V
    .locals 0

    .line 11
    invoke-direct {p0, p2, p1, p3}, Lcom/alibaba/fastjson2/JSONPathSingle;-><init>(Lcom/alibaba/fastjson2/JSONPathSegment;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    .line 12
    iput-object p2, p0, Lcom/alibaba/fastjson2/JSONPathSingleIndex;->segment:Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    .line 13
    iget p1, p2, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    iput p1, p0, Lcom/alibaba/fastjson2/JSONPathSingleIndex;->index:I

    return-void
.end method


# virtual methods
.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 22
    :cond_0
    instance-of v1, p1, Ljava/util/List;

    if-eqz v1, :cond_2

    .line 24
    check-cast p1, Ljava/util/List;

    .line 25
    iget v1, p0, Lcom/alibaba/fastjson2/JSONPathSingleIndex;->index:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 26
    iget v0, p0, Lcom/alibaba/fastjson2/JSONPathSingleIndex;->index:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0

    .line 31
    :cond_2
    new-instance v0, Lcom/alibaba/fastjson2/JSONPath$Context;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathSingleIndex;->segment:Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 32
    iput-object p1, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 33
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSingleIndex;->segment:Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 34
    iget-object p1, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 4

    .line 39
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result v0

    .line 44
    iget-boolean v2, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/alibaba/fastjson2/JSONPathSingleIndex;->index:I

    if-lt v2, v0, :cond_1

    return-object v1

    .line 48
    :cond_1
    iget-boolean v2, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-nez v2, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    const/4 v2, 0x0

    .line 52
    :goto_0
    iget v3, p0, Lcom/alibaba/fastjson2/JSONPathSingleIndex;->index:I

    if-ge v2, v3, :cond_4

    if-ge v2, v0, :cond_4

    .line 53
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    .line 54
    iget-boolean v3, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-nez v3, :cond_3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
