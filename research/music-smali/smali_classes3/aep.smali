.class public Laep;
.super Laez;
.source "ObjectWriter11.java"


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

.field public final k:Labq;


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

    .line 32
    invoke-direct/range {p0 .. p6}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    const/4 p1, 0x0

    .line 33
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laep;->a:Labq;

    const/4 p1, 0x1

    .line 34
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laep;->b:Labq;

    const/4 p1, 0x2

    .line 35
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laep;->c:Labq;

    const/4 p1, 0x3

    .line 36
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laep;->d:Labq;

    const/4 p1, 0x4

    .line 37
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laep;->e:Labq;

    const/4 p1, 0x5

    .line 38
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laep;->f:Labq;

    const/4 p1, 0x6

    .line 39
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laep;->g:Labq;

    const/4 p1, 0x7

    .line 40
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laep;->h:Labq;

    const/16 p1, 0x8

    .line 41
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laep;->i:Labq;

    const/16 p1, 0x9

    .line 42
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laep;->j:Labq;

    const/16 p1, 0xa

    .line 43
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laep;->k:Labq;

    return-void
.end method


# virtual methods
.method public final a_(J)Labq;
    .locals 2

    .line 106
    iget-object v0, p0, Laep;->a:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 107
    iget-object p1, p0, Laep;->a:Labq;

    return-object p1

    .line 110
    :cond_0
    iget-object v0, p0, Laep;->b:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 111
    iget-object p1, p0, Laep;->b:Labq;

    return-object p1

    .line 114
    :cond_1
    iget-object v0, p0, Laep;->c:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 115
    iget-object p1, p0, Laep;->c:Labq;

    return-object p1

    .line 118
    :cond_2
    iget-object v0, p0, Laep;->d:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 119
    iget-object p1, p0, Laep;->d:Labq;

    return-object p1

    .line 122
    :cond_3
    iget-object v0, p0, Laep;->e:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 123
    iget-object p1, p0, Laep;->e:Labq;

    return-object p1

    .line 126
    :cond_4
    iget-object v0, p0, Laep;->f:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 127
    iget-object p1, p0, Laep;->f:Labq;

    return-object p1

    .line 130
    :cond_5
    iget-object v0, p0, Laep;->g:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 131
    iget-object p1, p0, Laep;->g:Labq;

    return-object p1

    .line 134
    :cond_6
    iget-object v0, p0, Laep;->h:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 135
    iget-object p1, p0, Laep;->h:Labq;

    return-object p1

    .line 138
    :cond_7
    iget-object v0, p0, Laep;->i:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 139
    iget-object p1, p0, Laep;->i:Labq;

    return-object p1

    .line 142
    :cond_8
    iget-object v0, p0, Laep;->j:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 143
    iget-object p1, p0, Laep;->j:Labq;

    return-object p1

    .line 146
    :cond_9
    iget-object v0, p0, Laep;->k:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_a

    .line 147
    iget-object p1, p0, Laep;->k:Labq;

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    move-object v7, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    .line 48
    iget-wide v5, v7, Laep;->C:J

    or-long/2addr v5, v3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v8

    or-long/2addr v5, v8

    .line 49
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

    .line 51
    :goto_0
    iget-boolean v8, v1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v8, :cond_2

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual/range {p0 .. p6}, Laep;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 57
    :cond_1
    invoke-virtual/range {p0 .. p6}, Laep;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 62
    iget-wide v5, v7, Laep;->C:J

    or-long/2addr v5, v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Laep;->c(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 66
    :cond_3
    iget-boolean v0, v7, Laep;->G:Z

    if-nez v0, :cond_5

    .line 67
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v8, v5

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4

    .line 68
    invoke-virtual {p0}, Laep;->b()V

    return-void

    .line 72
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-eqz v0, :cond_5

    .line 73
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 78
    :cond_5
    invoke-virtual {p0, p1}, Laep;->a(Lcom/alibaba/fastjson2/ab;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    .line 79
    invoke-virtual/range {v0 .. v6}, Laep;->d(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 83
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->k()V

    .line 85
    iget-wide v5, v7, Laep;->C:J

    or-long/2addr v5, v3

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-nez v0, :cond_7

    invoke-virtual {p1, p2, v3, v4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 86
    :cond_7
    invoke-virtual {p0, p1}, Laep;->c(Lcom/alibaba/fastjson2/ab;)Z

    .line 89
    :cond_8
    iget-object v0, v7, Laep;->a:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 90
    iget-object v0, v7, Laep;->b:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 91
    iget-object v0, v7, Laep;->c:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 92
    iget-object v0, v7, Laep;->d:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 93
    iget-object v0, v7, Laep;->e:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 94
    iget-object v0, v7, Laep;->f:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 95
    iget-object v0, v7, Laep;->g:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 96
    iget-object v0, v7, Laep;->h:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 97
    iget-object v0, v7, Laep;->i:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 98
    iget-object v0, v7, Laep;->j:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 99
    iget-object v0, v7, Laep;->k:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 101
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->l()V

    return-void
.end method
