.class abstract Laed;
.super Laea;
.source "FieldWriterObjectFinal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laea<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final G:Ljava/lang/reflect/Type;

.field final H:Ljava/lang/Class;

.field volatile I:Laem;

.field final J:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 29
    invoke-direct/range {p0 .. p10}, Laea;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 30
    iput-object p7, p0, Laed;->G:Ljava/lang/reflect/Type;

    .line 31
    iput-object p8, p0, Laed;->H:Ljava/lang/Class;

    .line 32
    invoke-static {p8}, Lahq;->d(Ljava/lang/Class;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Laed;->J:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;
    .locals 1

    .line 37
    iget-object v0, p0, Laed;->H:Ljava/lang/Class;

    if-eq v0, p2, :cond_0

    .line 38
    invoke-super {p0, p1, p2}, Laea;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;

    move-result-object p1

    return-object p1

    .line 41
    :cond_0
    iget-object v0, p0, Laed;->I:Laem;

    if-eqz v0, :cond_1

    .line 42
    iget-object p1, p0, Laed;->I:Laem;

    return-object p1

    .line 44
    :cond_1
    invoke-super {p0, p1, p2}, Laea;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;

    move-result-object p1

    iput-object p1, p0, Laed;->I:Laem;

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)V"
        }
    .end annotation

    .line 91
    invoke-virtual {p0, p2}, Laed;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_0

    .line 94
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 98
    :cond_0
    iget-boolean v0, p0, Laed;->J:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    move v8, v1

    goto :goto_0

    :cond_1
    move v8, v2

    :goto_0
    if-eqz v8, :cond_3

    if-ne v7, p2, :cond_2

    const-string p2, ".."

    .line 102
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_2
    iget-object p2, p0, Laed;->a:Ljava/lang/String;

    invoke-virtual {p1, p2, v7}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 108
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    return-void

    .line 114
    :cond_3
    iget-object p2, p0, Laed;->H:Ljava/lang/Class;

    invoke-virtual {p0, p1, p2}, Laed;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;

    move-result-object v0

    .line 116
    iget-wide v3, p0, Laed;->d:J

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/ab;->c(J)J

    move-result-wide v3

    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->BeanToArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p2, v3, v5

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    .line 117
    :goto_1
    iget-boolean p2, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz p2, :cond_6

    if-eqz v1, :cond_5

    .line 119
    iget-object v3, p0, Laed;->a:Ljava/lang/String;

    iget-object v4, p0, Laed;->G:Ljava/lang/reflect/Type;

    iget-wide v5, p0, Laed;->d:J

    move-object v1, p1

    move-object v2, v7

    invoke-interface/range {v0 .. v6}, Laem;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_2

    .line 121
    :cond_5
    iget-object v3, p0, Laed;->a:Ljava/lang/String;

    iget-object v4, p0, Laed;->G:Ljava/lang/reflect/Type;

    iget-wide v5, p0, Laed;->d:J

    move-object v1, p1

    move-object v2, v7

    invoke-interface/range {v0 .. v6}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    .line 125
    iget-object v3, p0, Laed;->a:Ljava/lang/String;

    iget-object v4, p0, Laed;->G:Ljava/lang/reflect/Type;

    iget-wide v5, p0, Laed;->d:J

    move-object v1, p1

    move-object v2, v7

    invoke-interface/range {v0 .. v6}, Laem;->c(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_2

    .line 127
    :cond_7
    iget-object v3, p0, Laed;->a:Ljava/lang/String;

    iget-object v4, p0, Laed;->G:Ljava/lang/reflect/Type;

    iget-wide v5, p0, Laed;->d:J

    move-object v1, p1

    move-object v2, v7

    invoke-interface/range {v0 .. v6}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_2
    if-eqz v8, :cond_8

    .line 132
    invoke-virtual {p1, v7}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    .line 52
    :try_start_0
    invoke-virtual {p0, p2}, Laed;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    if-nez v3, :cond_4

    .line 61
    iget-wide v1, p0, Laed;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v3

    or-long/2addr v1, v3

    .line 62
    sget-object v3, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    .line 63
    invoke-virtual {p0, p1}, Laed;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 65
    iget-object v0, p0, Laed;->H:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    goto :goto_1

    .line 67
    :cond_0
    iget-object v0, p0, Laed;->H:Ljava/lang/Class;

    const-class v1, Ljava/lang/StringBuffer;

    if-eq v0, v1, :cond_2

    const-class v1, Ljava/lang/StringBuilder;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_1

    .line 68
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->r()V

    :goto_1
    return p2

    :cond_3
    return v0

    .line 78
    :cond_4
    iget-object v0, p0, Laed;->H:Ljava/lang/Class;

    invoke-virtual {p0, p1, v0}, Laed;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;

    move-result-object v1

    .line 79
    invoke-virtual {p0, p1}, Laed;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 80
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v0, :cond_5

    .line 81
    iget-object v4, p0, Laed;->a:Ljava/lang/String;

    iget-object v5, p0, Laed;->G:Ljava/lang/reflect/Type;

    iget-wide v6, p0, Laed;->d:J

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    goto :goto_2

    .line 83
    :cond_5
    iget-object v4, p0, Laed;->a:Ljava/lang/String;

    iget-object v5, p0, Laed;->G:Ljava/lang/reflect/Type;

    iget-wide v6, p0, Laed;->d:J

    move-object v2, p1

    invoke-interface/range {v1 .. v7}, Laem;->write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    :goto_2
    return p2

    :catch_0
    move-exception p2

    .line 54
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->h()Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    .line 57
    :cond_6
    throw p2
.end method
