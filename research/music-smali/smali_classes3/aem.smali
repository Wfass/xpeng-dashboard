.class public interface abstract Laem;
.super Ljava/lang/Object;
.source "ObjectWriter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 126
    invoke-interface/range {v0 .. v6}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 41
    invoke-interface/range {p0 .. p6}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public a(Lqo;)V
    .locals 1

    .line 158
    instance-of v0, p1, Lqt;

    if-eqz v0, :cond_0

    .line 159
    move-object v0, p1

    check-cast v0, Lqt;

    invoke-interface {p0, v0}, Laem;->a(Lqt;)V

    .line 162
    :cond_0
    instance-of v0, p1, Lqw;

    if-eqz v0, :cond_1

    .line 163
    move-object v0, p1

    check-cast v0, Lqw;

    invoke-interface {p0, v0}, Laem;->a(Lqw;)V

    .line 166
    :cond_1
    instance-of v0, p1, Lqr;

    if-eqz v0, :cond_2

    .line 167
    move-object v0, p1

    check-cast v0, Lqr;

    invoke-interface {p0, v0}, Laem;->a(Lqr;)V

    .line 169
    :cond_2
    instance-of v0, p1, Lqu;

    if-eqz v0, :cond_3

    .line 170
    check-cast p1, Lqu;

    invoke-interface {p0, p1}, Laem;->a(Lqu;)V

    :cond_3
    return-void
.end method

.method public a(Lqr;)V
    .locals 0

    return-void
.end method

.method public a(Lqt;)V
    .locals 0

    return-void
.end method

.method public a(Lqu;)V
    .locals 0

    return-void
.end method

.method public a(Lqw;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/alibaba/fastjson2/ab;)Z
    .locals 2

    .line 122
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/ab;->a(J)Z

    move-result p1

    return p1
.end method

.method public a_(J)Labq;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a_(Ljava/lang/String;)Labq;
    .locals 5

    .line 25
    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    .line 26
    invoke-interface {p0, v0, v1}, Laem;->a_(J)Labq;

    move-result-object v2

    if-nez v2, :cond_0

    .line 28
    invoke-static {p1}, Labc;->a(Ljava/lang/String;)J

    move-result-wide v3

    cmp-long p1, v3, v0

    if-eqz p1, :cond_0

    .line 30
    invoke-interface {p0, v3, v4}, Laem;->a_(J)Labq;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 138
    invoke-interface/range {v0 .. v6}, Laem;->d(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 49
    invoke-interface {p0}, Laem;->e_()Ljava/util/List;

    move-result-object p3

    .line 50
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    .line 51
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/ab;->c(I)V

    const/4 p5, 0x0

    :goto_0
    if-ge p5, p4, :cond_0

    .line 53
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Labq;

    .line 54
    invoke-virtual {p6, p1, p2}, Labq;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 5

    .line 59
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v0, :cond_0

    .line 60
    invoke-interface/range {p0 .. p6}, Laem;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 64
    :cond_0
    invoke-interface {p0}, Laem;->e_()Ljava/util/List;

    move-result-object p3

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->m()V

    .line 66
    invoke-interface {p0, p1}, Laem;->a(Lcom/alibaba/fastjson2/ab;)Z

    move-result p4

    const/4 p5, 0x0

    if-nez p4, :cond_2

    .line 68
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p4

    :goto_0
    if-ge p5, p4, :cond_9

    if-eqz p5, :cond_1

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 72
    :cond_1
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Labq;

    .line 73
    invoke-virtual {p6, p1, p2}, Labq;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V

    add-int/lit8 p5, p5, 0x1

    goto :goto_0

    .line 76
    :cond_2
    iget-object p4, p1, Lcom/alibaba/fastjson2/ab;->c:Lcom/alibaba/fastjson2/ab$a;

    .line 77
    invoke-virtual {p4}, Lcom/alibaba/fastjson2/ab$a;->k()Lqu;

    move-result-object p6

    .line 78
    invoke-virtual {p4}, Lcom/alibaba/fastjson2/ab$a;->m()Lqw;

    move-result-object v0

    .line 79
    invoke-virtual {p4}, Lcom/alibaba/fastjson2/ab$a;->p()Lqt;

    move-result-object p4

    .line 81
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    :goto_1
    if-ge p5, v1, :cond_9

    if-eqz p5, :cond_3

    .line 83
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 85
    :cond_3
    invoke-interface {p3, p5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Labq;

    if-eqz p6, :cond_4

    .line 86
    iget-object v3, v2, Labq;->a:Ljava/lang/String;

    invoke-interface {p6, p1, p2, v3}, Lqu;->process(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 87
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_2

    .line 91
    :cond_4
    invoke-virtual {v2, p2}, Labq;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz p4, :cond_5

    .line 92
    iget-object v4, v2, Labq;->a:Ljava/lang/String;

    invoke-interface {p4, p2, v4, v3}, Lqt;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 93
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_7

    .line 98
    iget-object v4, v2, Labq;->a:Ljava/lang/String;

    invoke-interface {v0, p2, v4, v3}, Lqw;->apply(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    .line 100
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_2

    .line 104
    :cond_6
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Labq;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;

    move-result-object v2

    .line 105
    invoke-interface {v2, p1, v3}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    if-nez v3, :cond_8

    .line 108
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_2

    .line 112
    :cond_8
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, p1, v4}, Labq;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;

    move-result-object v2

    .line 113
    invoke-interface {v2, p1, v3}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    .line 118
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method

.method public d(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 142
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e_()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Labq;",
            ">;"
        }
    .end annotation

    .line 17
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public abstract write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
.end method
