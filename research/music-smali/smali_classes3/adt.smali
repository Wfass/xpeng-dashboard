.class final Ladt;
.super Ladr;
.source "FieldWriterListFunc.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ladr<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final F:Ljava/util/function/Function;
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
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;Ljava/lang/reflect/Type;Ljava/lang/Class;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IJ",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Type;",
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

    move-object/from16 v2, p7

    move v3, p2

    move-wide v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p11

    move-object/from16 v9, p12

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 30
    invoke-direct/range {v0 .. v11}, Ladr;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    move-object/from16 v1, p10

    .line 31
    iput-object v1, v0, Ladt;->F:Ljava/util/function/Function;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)V"
        }
    .end annotation

    .line 84
    iget-object v0, p0, Ladt;->F:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    .line 86
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 93
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 94
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 95
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->c(I)V

    move-object v3, v2

    :goto_0
    if-ge v1, v0, :cond_3

    .line 98
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 100
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_2

    .line 103
    :cond_1
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v2, :cond_2

    goto :goto_1

    .line 108
    :cond_2
    invoke-virtual {p0, p1, v5}, Ladt;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/reflect/Type;)Laem;

    move-result-object v3

    move-object v2, v5

    .line 113
    :goto_1
    invoke-interface {v3, p1, v4}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 118
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->m()V

    move-object v0, v2

    .line 119
    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_8

    if-eqz v1, :cond_5

    .line 121
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 124
    :cond_5
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_6

    .line 126
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_5

    .line 129
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v4, v2, :cond_7

    goto :goto_4

    .line 134
    :cond_7
    invoke-virtual {p0, p1, v4}, Ladt;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/reflect/Type;)Laem;

    move-result-object v0

    move-object v2, v4

    .line 139
    :goto_4
    invoke-interface {v0, p1, v3}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 141
    :cond_8
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

    .line 36
    iget-object v0, p0, Ladt;->F:Ljava/util/function/Function;

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

    .line 43
    :try_start_0
    iget-object v1, p0, Ladt;->F:Ljava/util/function/Function;

    invoke-interface {v1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_1

    .line 52
    iget-wide v4, p0, Ladt;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v6

    or-long/2addr v4, v6

    .line 53
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v6, v8

    and-long/2addr v4, v6

    cmp-long p2, v4, v1

    if-nez p2, :cond_0

    return v0

    .line 56
    :cond_0
    invoke-virtual {p0, p1}, Ladt;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 57
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return v3

    .line 61
    :cond_1
    iget-wide v4, p0, Ladt;->d:J

    sget-object v6, Lcom/alibaba/fastjson2/ab$b;->NotWriteEmptyArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, v6, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v4, v6

    cmp-long v1, v4, v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 65
    :cond_2
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson2/ab;->a(Labq;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 67
    invoke-virtual {p0, p1}, Ladt;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 68
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    return v3

    .line 73
    :cond_3
    iget-object v0, p0, Ladt;->A:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_4

    .line 74
    invoke-virtual {p0, p1, v3, p2}, Ladt;->a(Lcom/alibaba/fastjson2/ab;ZLjava/util/List;)V

    goto :goto_0

    .line 76
    :cond_4
    invoke-virtual {p0, p1, p2}, Ladt;->c(Lcom/alibaba/fastjson2/ab;Ljava/util/List;)V

    .line 78
    :goto_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    return v3

    :catch_0
    move-exception p2

    .line 45
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->h()Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    .line 48
    :cond_5
    throw p2
.end method

.method public h()Ljava/util/function/Function;
    .locals 1

    .line 146
    iget-object v0, p0, Ladt;->F:Ljava/util/function/Function;

    return-object v0
.end method
