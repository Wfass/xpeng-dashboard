.class final Laej;
.super Labq;
.source "FieldWriterStringFunc.java"


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
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final B:Z

.field final C:Z

.field final D:Z


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/util/function/Function;)V
    .locals 13
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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    move-object v11, p0

    move-object/from16 v12, p5

    .line 27
    const-class v7, Ljava/lang/String;

    const-class v8, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Labq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    move-object/from16 v0, p9

    .line 28
    iput-object v0, v11, Laej;->A:Ljava/util/function/Function;

    const-string v0, "symbol"

    .line 29
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v11, Laej;->B:Z

    const-string v0, "trim"

    .line 30
    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, v11, Laej;->C:Z

    const-wide/high16 v0, 0x4000000000000L

    and-long v0, p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    iput-boolean v0, v11, Laej;->D:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)V"
        }
    .end annotation

    .line 82
    iget-object v0, p0, Laej;->A:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 84
    iget-boolean v0, p0, Laej;->C:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 88
    :cond_0
    iget-boolean v0, p0, Laej;->B:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 91
    :cond_1
    iget-boolean v0, p0, Laej;->D:Z

    if-eqz v0, :cond_2

    .line 92
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    :goto_0
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
    iget-object v0, p0, Laej;->A:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 43
    :try_start_0
    iget-object v3, p0, Laej;->A:Ljava/util/function/Function;

    invoke-interface {v3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    .line 52
    iget-wide v3, p0, Laej;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v5

    or-long/2addr v3, v5

    .line 53
    sget-object v5, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v7, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v5, v7

    and-long/2addr v3, v5

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    return v0

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Laej;->a(Lcom/alibaba/fastjson2/ab;)V

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 59
    iget-wide v3, p0, Laej;->d:J

    sget-object v5, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v7, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v5, v7

    and-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-eqz v1, :cond_1

    const-string p2, ""

    .line 60
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return v0

    .line 64
    :cond_1
    iget-boolean v1, p0, Laej;->C:Z

    if-eqz v1, :cond_2

    if-eqz p2, :cond_2

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 68
    :cond_2
    iget-boolean v1, p0, Laej;->B:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v1, :cond_3

    .line 69
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_3
    iget-boolean v1, p0, Laej;->D:Z

    if-eqz v1, :cond_4

    .line 72
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 74
    :cond_4
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    :goto_0
    return v0

    :catch_0
    move-exception p2

    .line 45
    iget-wide v3, p0, Laej;->d:J

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/ab;->c(J)J

    move-result-wide v3

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, p1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_5

    return v0

    .line 48
    :cond_5
    throw p2
.end method

.method public h()Ljava/util/function/Function;
    .locals 1

    .line 101
    iget-object v0, p0, Laej;->A:Ljava/util/function/Function;

    return-object v0
.end method
