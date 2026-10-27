.class public Laex;
.super Laez;
.source "ObjectWriter8.java"


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

.field public final e:Labq;

.field public final f:Labq;

.field public final g:Labq;

.field public final h:Labq;


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

    .line 29
    invoke-direct/range {p0 .. p6}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    const/4 p1, 0x0

    .line 30
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laex;->a:Labq;

    const/4 p1, 0x1

    .line 31
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laex;->b:Labq;

    const/4 p1, 0x2

    .line 32
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laex;->c:Labq;

    const/4 p1, 0x3

    .line 33
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laex;->d:Labq;

    const/4 p1, 0x4

    .line 34
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laex;->e:Labq;

    const/4 p1, 0x5

    .line 35
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laex;->f:Labq;

    const/4 p1, 0x6

    .line 36
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laex;->g:Labq;

    const/4 p1, 0x7

    .line 37
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laex;->h:Labq;

    return-void
.end method


# virtual methods
.method public final a_(J)Labq;
    .locals 2

    .line 97
    iget-object v0, p0, Laex;->a:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 98
    iget-object p1, p0, Laex;->a:Labq;

    return-object p1

    .line 101
    :cond_0
    iget-object v0, p0, Laex;->b:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 102
    iget-object p1, p0, Laex;->b:Labq;

    return-object p1

    .line 105
    :cond_1
    iget-object v0, p0, Laex;->c:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 106
    iget-object p1, p0, Laex;->c:Labq;

    return-object p1

    .line 109
    :cond_2
    iget-object v0, p0, Laex;->d:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 110
    iget-object p1, p0, Laex;->d:Labq;

    return-object p1

    .line 113
    :cond_3
    iget-object v0, p0, Laex;->e:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 114
    iget-object p1, p0, Laex;->e:Labq;

    return-object p1

    .line 117
    :cond_4
    iget-object v0, p0, Laex;->f:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 118
    iget-object p1, p0, Laex;->f:Labq;

    return-object p1

    .line 121
    :cond_5
    iget-object v0, p0, Laex;->g:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 122
    iget-object p1, p0, Laex;->g:Labq;

    return-object p1

    .line 125
    :cond_6
    iget-object v0, p0, Laex;->h:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_7

    .line 126
    iget-object p1, p0, Laex;->h:Labq;

    return-object p1

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    move-object v7, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    .line 42
    iget-wide v5, v7, Laex;->C:J

    or-long/2addr v5, v3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v8

    or-long/2addr v5, v8

    .line 43
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

    .line 45
    :goto_0
    iget-boolean v8, v1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v8, :cond_2

    if-eqz v0, :cond_1

    .line 47
    invoke-virtual/range {p0 .. p6}, Laex;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 51
    :cond_1
    invoke-virtual/range {p0 .. p6}, Laex;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 56
    iget-wide v5, v7, Laex;->C:J

    or-long/2addr v5, v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Laex;->c(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 60
    :cond_3
    iget-boolean v0, v7, Laex;->G:Z

    if-nez v0, :cond_5

    .line 61
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v8, v5

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4

    .line 62
    invoke-virtual {p0}, Laex;->b()V

    return-void

    .line 66
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-eqz v0, :cond_5

    .line 67
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 72
    :cond_5
    invoke-virtual {p0, p1}, Laex;->a(Lcom/alibaba/fastjson2/ab;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    .line 73
    invoke-virtual/range {v0 .. v6}, Laex;->d(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 77
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->k()V

    .line 79
    iget-wide v5, v7, Laex;->C:J

    or-long/2addr v5, v3

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-nez v0, :cond_7

    invoke-virtual {p1, p2, v3, v4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 80
    :cond_7
    invoke-virtual {p0, p1}, Laex;->c(Lcom/alibaba/fastjson2/ab;)Z

    .line 83
    :cond_8
    iget-object v0, v7, Laex;->a:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 84
    iget-object v0, v7, Laex;->b:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 85
    iget-object v0, v7, Laex;->c:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 86
    iget-object v0, v7, Laex;->d:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 87
    iget-object v0, v7, Laex;->e:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 88
    iget-object v0, v7, Laex;->f:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 89
    iget-object v0, v7, Laex;->g:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 90
    iget-object v0, v7, Laex;->h:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->l()V

    return-void
.end method
