.class final Laek;
.super Labq;
.source "FieldWriterStringMethod.java"


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
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;JLjava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 11

    .line 21
    const-class v7, Ljava/lang/String;

    const-class v8, Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide/from16 v3, p5

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Labq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

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

    .line 35
    invoke-virtual {p0, p2}, Laek;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 37
    iget-boolean v0, p0, Laek;->u:Z

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 38
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 41
    :cond_0
    iget-boolean v0, p0, Laek;->t:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v0, :cond_1

    .line 42
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    :cond_1
    iget-boolean v0, p0, Laek;->v:Z

    if-eqz v0, :cond_2

    .line 45
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 27
    :try_start_0
    iget-object v0, p0, Laek;->j:Ljava/lang/reflect/Method;

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

    .line 29
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invoke getter method error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Laek;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
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

    .line 56
    :try_start_0
    invoke-virtual {p0, p2}, Laek;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;
    :try_end_0
    .catch Lcom/alibaba/fastjson2/c; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    .line 65
    iget-wide v3, p0, Laek;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v5

    or-long/2addr v3, v5

    .line 66
    sget-object v5, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v7, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v5, v7

    sget-object v7, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v5, v7

    and-long/2addr v3, v5

    cmp-long v1, v3, v1

    if-nez v1, :cond_0

    return v0

    .line 71
    :cond_0
    iget-boolean v0, p0, Laek;->u:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 72
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 75
    :cond_1
    invoke-virtual {p0, p1, p2}, Laek;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p2

    .line 58
    iget-wide v3, p0, Laek;->d:J

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/ab;->c(J)J

    move-result-wide v3

    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->IgnoreNonFieldGetter:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, p1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-eqz p1, :cond_2

    return v0

    .line 61
    :cond_2
    throw p2
.end method
