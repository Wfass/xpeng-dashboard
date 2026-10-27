.class public Laet;
.super Laez;
.source "ObjectWriter4.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Laez<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Labq;

.field public final b:Labq;

.field public final c:Labq;

.field public final d:Labq;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List<",
            "Labq;",
            ">;)V"
        }
    .end annotation

    .line 25
    invoke-direct/range {p0 .. p6}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    const/4 p1, 0x0

    .line 26
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laet;->a:Labq;

    const/4 p1, 0x1

    .line 27
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laet;->b:Labq;

    const/4 p1, 0x2

    .line 28
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laet;->c:Labq;

    const/4 p1, 0x3

    .line 29
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laet;->d:Labq;

    return-void
.end method


# virtual methods
.method public final a_(J)Labq;
    .locals 2

    .line 85
    iget-object v0, p0, Laet;->a:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 86
    iget-object p1, p0, Laet;->a:Labq;

    return-object p1

    .line 89
    :cond_0
    iget-object v0, p0, Laet;->b:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 90
    iget-object p1, p0, Laet;->b:Labq;

    return-object p1

    .line 93
    :cond_1
    iget-object v0, p0, Laet;->c:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 94
    iget-object p1, p0, Laet;->c:Labq;

    return-object p1

    .line 97
    :cond_2
    iget-object v0, p0, Laet;->d:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    .line 98
    iget-object p1, p0, Laet;->d:Labq;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    move-object v7, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    .line 34
    iget-wide v5, v7, Laet;->C:J

    or-long/2addr v5, v3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v8

    or-long/2addr v5, v8

    .line 35
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->BeanToArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v8, v5

    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 37
    :goto_0
    iget-boolean v8, v1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v8, :cond_2

    if-eqz v0, :cond_1

    .line 39
    invoke-virtual/range {p0 .. p6}, Laet;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 43
    :cond_1
    invoke-virtual/range {p0 .. p6}, Laet;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 48
    iget-wide v5, v7, Laet;->C:J

    or-long/2addr v5, v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Laet;->c(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 52
    :cond_3
    iget-boolean v0, v7, Laet;->G:Z

    if-nez v0, :cond_5

    .line 53
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v8, v5

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4

    .line 54
    invoke-virtual {p0}, Laet;->b()V

    return-void

    .line 58
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-eqz v0, :cond_5

    .line 59
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 64
    :cond_5
    invoke-virtual {p0, p1}, Laet;->a(Lcom/alibaba/fastjson2/ab;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    .line 65
    invoke-virtual/range {v0 .. v6}, Laet;->d(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 69
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->k()V

    .line 71
    iget-wide v5, v7, Laet;->C:J

    or-long/2addr v5, v3

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-nez v0, :cond_7

    invoke-virtual {p1, p2, v3, v4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 72
    :cond_7
    invoke-virtual {p0, p1}, Laet;->c(Lcom/alibaba/fastjson2/ab;)Z

    .line 75
    :cond_8
    iget-object v0, v7, Laet;->a:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 76
    iget-object v0, v7, Laet;->b:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 77
    iget-object v0, v7, Laet;->c:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 78
    iget-object v0, v7, Laet;->d:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->l()V

    return-void
.end method
