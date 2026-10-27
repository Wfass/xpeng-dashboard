.class public Lafh;
.super Laez;
.source "ObjectWriterException.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Laez<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;JLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "J",
            "Ljava/util/List<",
            "Labq;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p2

    move-object v6, p4

    .line 11
    invoke-direct/range {v0 .. v6}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lafh;->b(Lcom/alibaba/fastjson2/ab;)V

    .line 18
    iget-object p3, p0, Lafh;->s:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    .line 19
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->k()V

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_0

    .line 21
    iget-object p5, p0, Lafh;->s:Ljava/util/List;

    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Labq;

    .line 22
    invoke-virtual {p5, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->l()V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 2

    .line 29
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual/range {p0 .. p6}, Lafh;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 34
    :cond_0
    invoke-virtual {p0, p1}, Lafh;->a(Lcom/alibaba/fastjson2/ab;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 35
    invoke-virtual {p0, p1, p2}, Lafh;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V

    return-void

    .line 39
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->k()V

    .line 41
    invoke-virtual {p1, p5, p6}, Lcom/alibaba/fastjson2/ab;->c(J)J

    move-result-wide p3

    sget-object p5, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide p5, p5, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteThrowableClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr p5, v0

    and-long/2addr p3, p5

    const-wide/16 p5, 0x0

    cmp-long p3, p3, p5

    if-eqz p3, :cond_2

    .line 44
    invoke-virtual {p0, p1}, Lafh;->c(Lcom/alibaba/fastjson2/ab;)Z

    .line 47
    :cond_2
    iget-object p3, p0, Lafh;->s:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Labq;

    .line 48
    invoke-virtual {p4, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->l()V

    return-void
.end method
