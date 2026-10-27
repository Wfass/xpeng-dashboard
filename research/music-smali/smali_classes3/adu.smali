.class final Ladu;
.super Ladr;
.source "FieldWriterListMethod.java"


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


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;Ljava/lang/reflect/Type;Ljava/lang/Class;)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    .line 28
    invoke-direct/range {v0 .. v11}, Ladr;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)V"
        }
    .end annotation

    .line 86
    invoke-virtual {p0, p2}, Ladu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 93
    :cond_0
    invoke-virtual {p0, p1, p2}, Ladu;->a(Lcom/alibaba/fastjson2/ab;Ljava/util/List;)V

    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 34
    :try_start_0
    iget-object v0, p0, Ladu;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 36
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoke getter method error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ladu;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
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

    .line 44
    :try_start_0
    invoke-virtual {p0, p2}, Ladu;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    iget-wide v1, p0, Ladu;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v3

    or-long/2addr v1, v3

    const-wide/16 v3, 0x0

    const/4 v5, 0x1

    if-nez p2, :cond_1

    .line 54
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

    .line 55
    invoke-virtual {p0, p1}, Ladu;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 56
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return v5

    :cond_0
    return v0

    .line 63
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

    .line 67
    :cond_2
    invoke-virtual {p1, p0, p2}, Lcom/alibaba/fastjson2/ab;->a(Labq;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {p0, p1}, Ladu;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 70
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    return v5

    .line 75
    :cond_3
    iget-object v0, p0, Ladu;->A:Ljava/lang/reflect/Type;

    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_4

    .line 76
    invoke-virtual {p0, p1, v5, p2}, Ladu;->a(Lcom/alibaba/fastjson2/ab;ZLjava/util/List;)V

    goto :goto_0

    .line 78
    :cond_4
    invoke-virtual {p0, p1, p2}, Ladu;->c(Lcom/alibaba/fastjson2/ab;Ljava/util/List;)V

    .line 80
    :goto_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    return v5

    :catch_0
    move-exception p2

    .line 46
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->h()Z

    move-result p1

    if-eqz p1, :cond_5

    return v0

    .line 49
    :cond_5
    throw p2
.end method
