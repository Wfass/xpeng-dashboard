.class public Laen;
.super Laez;
.source "ObjectWriter1.java"


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

    .line 22
    invoke-direct/range {p0 .. p6}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    const/4 p1, 0x0

    .line 23
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laen;->a:Labq;

    return-void
.end method


# virtual methods
.method public final a_(J)Labq;
    .locals 2

    .line 75
    iget-object v0, p0, Laen;->a:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_0

    .line 76
    iget-object p1, p0, Laen;->a:Labq;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    move-object v7, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    .line 28
    iget-wide v5, v7, Laen;->C:J

    or-long/2addr v5, v3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v8

    or-long/2addr v5, v8

    .line 30
    iget-boolean v0, v1, Lcom/alibaba/fastjson2/ab;->f:Z

    const-wide/16 v8, 0x0

    if-eqz v0, :cond_1

    .line 31
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->BeanToArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v10

    cmp-long v0, v5, v8

    if-eqz v0, :cond_0

    .line 32
    invoke-virtual/range {p0 .. p6}, Laen;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 36
    :cond_0
    invoke-virtual/range {p0 .. p6}, Laen;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 40
    :cond_1
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->BeanToArray:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v10, v5

    cmp-long v0, v10, v8

    if-eqz v0, :cond_2

    .line 41
    invoke-virtual/range {p0 .. p6}, Laen;->c(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 45
    :cond_2
    iget-boolean v0, v7, Laen;->G:Z

    if-nez v0, :cond_4

    .line 46
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v10, v5

    cmp-long v0, v10, v8

    if-eqz v0, :cond_3

    .line 47
    invoke-virtual {p0}, Laen;->b()V

    return-void

    .line 51
    :cond_3
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v10

    cmp-long v0, v5, v8

    if-eqz v0, :cond_4

    .line 52
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 57
    :cond_4
    invoke-virtual {p0, p1}, Laen;->a(Lcom/alibaba/fastjson2/ab;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    .line 58
    invoke-virtual/range {v0 .. v6}, Laen;->d(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 62
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->k()V

    .line 64
    iget-wide v5, v7, Laen;->C:J

    or-long/2addr v5, v3

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v10, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v10

    cmp-long v0, v5, v8

    if-nez v0, :cond_6

    invoke-virtual {p1, p2, v3, v4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 65
    :cond_6
    invoke-virtual {p0, p1}, Laen;->c(Lcom/alibaba/fastjson2/ab;)Z

    .line 68
    :cond_7
    iget-object v0, v7, Laen;->a:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->l()V

    return-void
.end method
