.class final Laei;
.super Labq;
.source "FieldWriterStringField.java"


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
.method constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;)V
    .locals 11

    .line 17
    const-class v7, Ljava/lang/String;

    const-class v8, Ljava/lang/String;

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v9, p7

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

    .line 58
    invoke-virtual {p0, p2}, Laei;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-nez p2, :cond_0

    .line 60
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 64
    :cond_0
    iget-boolean v0, p0, Laei;->u:Z

    if-eqz v0, :cond_1

    .line 65
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 68
    :cond_1
    iget-boolean v0, p0, Laei;->v:Z

    if-eqz v0, :cond_2

    .line 69
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    :goto_0
    return-void
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

    .line 22
    invoke-virtual {p0, p2}, Laei;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const/4 v0, 0x1

    if-nez p2, :cond_2

    .line 25
    iget-wide v1, p0, Laei;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v3

    or-long/2addr v1, v3

    .line 26
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v5, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v3, v5

    sget-object v5, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v3, v5

    and-long/2addr v3, v1

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->NotWriteDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v3, v1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    goto :goto_0

    .line 31
    :cond_0
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v7, Lcom/alibaba/fastjson2/ab$b;->WriteNullStringAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v3, v7

    and-long/2addr v1, v3

    cmp-long v1, v1, v5

    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {p0, p1}, Laei;->a(Lcom/alibaba/fastjson2/ab;)V

    const-string p2, ""

    .line 33
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return v0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    .line 38
    :cond_2
    iget-boolean v1, p0, Laei;->u:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_3

    .line 39
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    .line 42
    :cond_3
    invoke-virtual {p0, p1}, Laei;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 44
    iget-boolean v1, p0, Laei;->t:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v1, :cond_4

    .line 45
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 47
    :cond_4
    iget-boolean v1, p0, Laei;->v:Z

    if-eqz v1, :cond_5

    .line 48
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 50
    :cond_5
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    :goto_1
    return v0
.end method
