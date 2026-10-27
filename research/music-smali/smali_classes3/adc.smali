.class abstract Ladc;
.super Labq;
.source "FieldWriterInt32.java"


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
.field final A:Z


# direct methods
.method protected constructor <init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 0

    .line 26
    invoke-direct/range {p0 .. p10}, Labq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 27
    sget-object p1, Lcom/alibaba/fastjson2/ab$b;->WriteNonStringValueAsString:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p1, p1, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr p1, p3

    const-wide/16 p3, 0x0

    cmp-long p1, p1, p3

    if-nez p1, :cond_1

    const-string p1, "string"

    .line 28
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Ladc;->A:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Class;)Laem;
    .locals 1

    .line 86
    iget-object v0, p0, Ladc;->c:Ljava/lang/Class;

    if-ne p2, v0, :cond_0

    .line 87
    sget-object p1, Lagj;->a:Lagj;

    return-object p1

    .line 90
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Class;)Laem;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/alibaba/fastjson2/ab;I)V
    .locals 1

    .line 33
    iget-boolean v0, p0, Ladc;->A:Z

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {p0, p1}, Ladc;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 35
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void

    .line 38
    :cond_0
    invoke-virtual {p0, p1}, Ladc;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 39
    iget-object v0, p0, Ladc;->f:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Ladc;->f:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/ab;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(I)V

    :goto_0
    return-void
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

    .line 74
    invoke-virtual {p0, p2}, Ladc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-nez p2, :cond_0

    .line 77
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return-void

    .line 81
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Integer;)V

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

    .line 50
    :try_start_0
    invoke-virtual {p0, p2}, Ladc;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    if-nez p2, :cond_1

    .line 59
    iget-wide v2, p0, Ladc;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v4

    or-long/2addr v2, v4

    .line 60
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v4, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v4, v6

    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNullNumberAsZero:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v6, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v4, v6

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long p2, v2, v4

    if-nez p2, :cond_0

    return v0

    .line 63
    :cond_0
    invoke-virtual {p0, p1}, Ladc;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 64
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->t()V

    return v1

    .line 68
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Ladc;->a(Lcom/alibaba/fastjson2/ab;I)V

    return v1

    :catch_0
    move-exception p2

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->h()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 55
    :cond_2
    throw p2
.end method
