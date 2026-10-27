.class Lcom/alibaba/fastjson2/JSONPathSingle;
.super Lcom/alibaba/fastjson2/JSONPath;
.source "JSONPathSingle.java"


# instance fields
.field final extractSupport:Z

.field final ref:Z

.field final segment:Lcom/alibaba/fastjson2/JSONPathSegment;


# direct methods
.method varargs constructor <init>(Lcom/alibaba/fastjson2/JSONPathSegment;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V
    .locals 2

    .line 12
    invoke-direct {p0, p2, p3}, Lcom/alibaba/fastjson2/JSONPath;-><init>(Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    .line 13
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    .line 14
    instance-of p2, p1, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_1

    instance-of v1, p1, Lcom/alibaba/fastjson2/JSONPathSegmentName;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, p3

    :goto_1
    iput-boolean v1, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->ref:Z

    .line 17
    instance-of v1, p1, Lcom/alibaba/fastjson2/JSONPathSegment$EvalSegment;

    if-eqz v1, :cond_2

    :goto_2
    move p3, v0

    goto :goto_3

    :cond_2
    if-eqz p2, :cond_3

    .line 19
    move-object p2, p1

    check-cast p2, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;

    iget p2, p2, Lcom/alibaba/fastjson2/JSONPathSegmentIndex;->index:I

    if-gez p2, :cond_3

    goto :goto_2

    .line 21
    :cond_3
    instance-of p2, p1, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->shouldRecursive()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 24
    :cond_4
    :goto_3
    iput-boolean p3, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->extractSupport:Z

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 8

    .line 36
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 37
    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 38
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->contains(Lcom/alibaba/fastjson2/JSONPath$Context;)Z

    move-result p1

    return p1
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 48
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 49
    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 50
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 51
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 8

    .line 91
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 92
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->extractSupport:Z

    if-nez v0, :cond_0

    .line 93
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 94
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V

    goto :goto_0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 98
    :goto_0
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    return-object p1
.end method

.method public extractScalar(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;
    .locals 8

    .line 103
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 104
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {v0, p1, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 105
    iget-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    invoke-static {p1}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getParent()Lcom/alibaba/fastjson2/JSONPath;
    .locals 1

    .line 110
    sget-object v0, Lcom/alibaba/fastjson2/JSONPath$RootPath;->INSTANCE:Lcom/alibaba/fastjson2/JSONPath$RootPath;

    return-object v0
.end method

.method public isRef()Z
    .locals 1

    .line 43
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->ref:Z

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 8

    .line 29
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 30
    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 31
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/JSONPathSegment;->remove(Lcom/alibaba/fastjson2/JSONPath$Context;)Z

    move-result p1

    return p1
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 56
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 57
    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 58
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v7, p2}, Lcom/alibaba/fastjson2/JSONPathSegment;->set(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/lang/Object;)V

    return-void
.end method

.method public varargs set(Ljava/lang/Object;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 7

    .line 63
    new-instance p3, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p3

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 64
    iput-object p1, p3, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 65
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, p3, p2}, Lcom/alibaba/fastjson2/JSONPathSegment;->set(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/lang/Object;)V

    return-void
.end method

.method public setCallback(Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 8

    .line 70
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 71
    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 72
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v7, p2}, Lcom/alibaba/fastjson2/JSONPathSegment;->setCallback(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/function/BiFunction;)V

    return-void
.end method

.method public setInt(Ljava/lang/Object;I)V
    .locals 8

    .line 77
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 78
    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 79
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v7, p2}, Lcom/alibaba/fastjson2/JSONPathSegment;->setInt(Lcom/alibaba/fastjson2/JSONPath$Context;I)V

    return-void
.end method

.method public setLong(Ljava/lang/Object;J)V
    .locals 8

    .line 84
    new-instance v7, Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v3, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson2/JSONPath$Context;-><init>(Lcom/alibaba/fastjson2/JSONPath;Lcom/alibaba/fastjson2/JSONPath$Context;Lcom/alibaba/fastjson2/JSONPathSegment;Lcom/alibaba/fastjson2/JSONPathSegment;J)V

    .line 85
    iput-object p1, v7, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    .line 86
    iget-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSingle;->segment:Lcom/alibaba/fastjson2/JSONPathSegment;

    invoke-virtual {p1, v7, p2, p3}, Lcom/alibaba/fastjson2/JSONPathSegment;->setLong(Lcom/alibaba/fastjson2/JSONPath$Context;J)V

    return-void
.end method
