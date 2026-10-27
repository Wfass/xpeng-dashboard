.class final Ladv;
.super Labq;
.source "FieldWriterListStrFunc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Labq<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final A:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/List;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;Ljava/lang/reflect/Type;Ljava/lang/Class;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/reflect/Method;",
            "Ljava/util/function/Function<",
            "TT;",
            "Ljava/util/List;",
            ">;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Class;",
            ")V"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p10

    move-object/from16 v8, p11

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 29
    invoke-direct/range {v0 .. v10}, Labq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    move-object/from16 v1, p9

    .line 30
    iput-object v1, v0, Ladv;->A:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)V"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Ladv;->A:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    .line 104
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 108
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 109
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 110
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->c(I)V

    :goto_0
    if-ge v1, v0, :cond_2

    .line 113
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_1

    .line 115
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 118
    :cond_1
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 123
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->m()V

    .line 124
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    if-eqz v1, :cond_4

    .line 126
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 129
    :cond_4
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_5

    .line 131
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_3

    .line 134
    :cond_5
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 136
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Ladv;->A:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 42
    :try_start_0
    iget-object v1, p0, Ladv;->A:Ljava/util/function/Function;

    invoke-interface {v1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    iget-wide v1, p0, Ladv;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v3

    or-long/2addr v1, v3

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-nez p2, :cond_1

    .line 52
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    and-long/2addr v1, v6

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 53
    invoke-virtual {p0, p1}, Ladv;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 54
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return v5

    :cond_0
    return v0

    .line 61
    :cond_1
    sget-object v6, Lcom/alibaba/fastjson2/ab$b;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v1, v6

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 65
    :cond_2
    invoke-virtual {p0, p1}, Ladv;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 67
    iget-boolean v1, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v1, :cond_5

    .line 68
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 69
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/ab;->c(I)V

    :goto_0
    if-ge v0, v1, :cond_4

    .line 72
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_3

    .line 74
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v5

    .line 82
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->m()V

    .line 83
    :goto_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_8

    if-eqz v0, :cond_6

    .line 85
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 88
    :cond_6
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_7

    .line 90
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_3

    .line 93
    :cond_7
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 95
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return v5

    :catch_0
    move-exception p2

    .line 44
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->h()Z

    move-result p1

    if-eqz p1, :cond_9

    return v0

    .line 47
    :cond_9
    throw p2
.end method
