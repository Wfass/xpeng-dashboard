.class abstract Lacx;
.super Labq;
.source "FieldWriterInt16.java"


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


# direct methods
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 11

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    .line 20
    invoke-direct/range {v0 .. v10}, Labq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;
    .locals 0

    .line 73
    sget-object p1, Lagh;->a:Lagh;

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)V"
        }
    .end annotation

    .line 63
    invoke-virtual {p0, p2}, Lacx;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;

    if-nez p2, :cond_0

    .line 65
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return-void

    .line 68
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(I)V

    return-void
.end method

.method protected final a(Lcom/alibaba/fastjson2/ab;S)V
    .locals 4

    .line 24
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v0

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v2, v2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0, p1}, Lacx;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 27
    invoke-static {p2}, Ljava/lang/Short;->toString(S)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void

    .line 31
    :cond_1
    invoke-virtual {p0, p1}, Lacx;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 32
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(S)V

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 39
    :try_start_0
    invoke-virtual {p0, p2}, Lacx;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Short;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 48
    iget-wide v2, p0, Lacx;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 49
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-nez p2, :cond_0

    return v0

    .line 52
    :cond_0
    invoke-virtual {p0, p1}, Lacx;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 53
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return v1

    .line 57
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Short;->shortValue()S

    move-result p2

    invoke-virtual {p0, p1, p2}, Lacx;->a(Lcom/alibaba/fastjson2/ab;S)V

    return v1

    :catch_0
    move-exception p2

    .line 41
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 44
    :cond_2
    throw p2
.end method
