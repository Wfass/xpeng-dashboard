.class public Laeo;
.super Laez;
.source "ObjectWriter10.java"


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

.field public final i:Labq;

.field public final j:Labq;


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

    .line 31
    invoke-direct/range {p0 .. p6}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    const/4 p1, 0x0

    .line 32
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeo;->a:Labq;

    const/4 p1, 0x1

    .line 33
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeo;->b:Labq;

    const/4 p1, 0x2

    .line 34
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeo;->c:Labq;

    const/4 p1, 0x3

    .line 35
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeo;->d:Labq;

    const/4 p1, 0x4

    .line 36
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeo;->e:Labq;

    const/4 p1, 0x5

    .line 37
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeo;->f:Labq;

    const/4 p1, 0x6

    .line 38
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeo;->g:Labq;

    const/4 p1, 0x7

    .line 39
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeo;->h:Labq;

    const/16 p1, 0x8

    .line 40
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeo;->i:Labq;

    const/16 p1, 0x9

    .line 41
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeo;->j:Labq;

    return-void
.end method


# virtual methods
.method public final a_(J)Labq;
    .locals 2

    .line 103
    iget-object v0, p0, Laeo;->a:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 104
    iget-object p1, p0, Laeo;->a:Labq;

    return-object p1

    .line 107
    :cond_0
    iget-object v0, p0, Laeo;->b:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 108
    iget-object p1, p0, Laeo;->b:Labq;

    return-object p1

    .line 111
    :cond_1
    iget-object v0, p0, Laeo;->c:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 112
    iget-object p1, p0, Laeo;->c:Labq;

    return-object p1

    .line 115
    :cond_2
    iget-object v0, p0, Laeo;->d:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 116
    iget-object p1, p0, Laeo;->d:Labq;

    return-object p1

    .line 119
    :cond_3
    iget-object v0, p0, Laeo;->e:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 120
    iget-object p1, p0, Laeo;->e:Labq;

    return-object p1

    .line 123
    :cond_4
    iget-object v0, p0, Laeo;->f:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 124
    iget-object p1, p0, Laeo;->f:Labq;

    return-object p1

    .line 127
    :cond_5
    iget-object v0, p0, Laeo;->g:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 128
    iget-object p1, p0, Laeo;->g:Labq;

    return-object p1

    .line 131
    :cond_6
    iget-object v0, p0, Laeo;->h:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 132
    iget-object p1, p0, Laeo;->h:Labq;

    return-object p1

    .line 135
    :cond_7
    iget-object v0, p0, Laeo;->i:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 136
    iget-object p1, p0, Laeo;->i:Labq;

    return-object p1

    .line 139
    :cond_8
    iget-object v0, p0, Laeo;->j:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_9

    .line 140
    iget-object p1, p0, Laeo;->j:Labq;

    return-object p1

    :cond_9
    const/4 p1, 0x0

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    move-object v7, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    .line 46
    iget-wide v5, v7, Laeo;->C:J

    or-long/2addr v5, v3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v8

    or-long/2addr v5, v8

    .line 47
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

    .line 49
    :goto_0
    iget-boolean v8, v1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v8, :cond_2

    if-eqz v0, :cond_1

    .line 51
    invoke-virtual/range {p0 .. p6}, Laeo;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 55
    :cond_1
    invoke-virtual/range {p0 .. p6}, Laeo;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 60
    iget-wide v5, v7, Laeo;->C:J

    or-long/2addr v5, v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Laeo;->c(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 64
    :cond_3
    iget-boolean v0, v7, Laeo;->G:Z

    if-nez v0, :cond_5

    .line 65
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v8, v5

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4

    .line 66
    invoke-virtual {p0}, Laeo;->b()V

    return-void

    .line 70
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-eqz v0, :cond_5

    .line 71
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 76
    :cond_5
    invoke-virtual {p0, p1}, Laeo;->a(Lcom/alibaba/fastjson2/ab;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    .line 77
    invoke-virtual/range {v0 .. v6}, Laeo;->d(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 81
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->k()V

    .line 83
    iget-wide v5, v7, Laeo;->C:J

    or-long/2addr v5, v3

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-nez v0, :cond_7

    invoke-virtual {p1, p2, v3, v4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 84
    :cond_7
    invoke-virtual {p0, p1}, Laeo;->c(Lcom/alibaba/fastjson2/ab;)Z

    .line 87
    :cond_8
    iget-object v0, v7, Laeo;->a:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 88
    iget-object v0, v7, Laeo;->b:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 89
    iget-object v0, v7, Laeo;->c:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 90
    iget-object v0, v7, Laeo;->d:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 91
    iget-object v0, v7, Laeo;->e:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 92
    iget-object v0, v7, Laeo;->f:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 93
    iget-object v0, v7, Laeo;->g:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 94
    iget-object v0, v7, Laeo;->h:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 95
    iget-object v0, v7, Laeo;->i:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 96
    iget-object v0, v7, Laeo;->j:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 98
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->l()V

    return-void
.end method
