.class public Laeq;
.super Laez;
.source "ObjectWriter12.java"


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

.field public final l:Labq;


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

    .line 33
    invoke-direct/range {p0 .. p6}, Laez;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLjava/util/List;)V

    const/4 p1, 0x0

    .line 34
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeq;->a:Labq;

    const/4 p1, 0x1

    .line 35
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeq;->b:Labq;

    const/4 p1, 0x2

    .line 36
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeq;->c:Labq;

    const/4 p1, 0x3

    .line 37
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeq;->d:Labq;

    const/4 p1, 0x4

    .line 38
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeq;->e:Labq;

    const/4 p1, 0x5

    .line 39
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeq;->f:Labq;

    const/4 p1, 0x6

    .line 40
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeq;->g:Labq;

    const/4 p1, 0x7

    .line 41
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeq;->h:Labq;

    const/16 p1, 0x8

    .line 42
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeq;->i:Labq;

    const/16 p1, 0x9

    .line 43
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeq;->j:Labq;

    const/16 p1, 0xa

    .line 44
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeq;->k:Labq;

    const/16 p1, 0xb

    .line 45
    invoke-interface {p6, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Labq;

    iput-object p1, p0, Laeq;->l:Labq;

    return-void
.end method


# virtual methods
.method public final a_(J)Labq;
    .locals 2

    .line 109
    iget-object v0, p0, Laeq;->a:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 110
    iget-object p1, p0, Laeq;->a:Labq;

    return-object p1

    .line 113
    :cond_0
    iget-object v0, p0, Laeq;->b:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 114
    iget-object p1, p0, Laeq;->b:Labq;

    return-object p1

    .line 117
    :cond_1
    iget-object v0, p0, Laeq;->c:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 118
    iget-object p1, p0, Laeq;->c:Labq;

    return-object p1

    .line 121
    :cond_2
    iget-object v0, p0, Laeq;->d:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 122
    iget-object p1, p0, Laeq;->d:Labq;

    return-object p1

    .line 125
    :cond_3
    iget-object v0, p0, Laeq;->e:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 126
    iget-object p1, p0, Laeq;->e:Labq;

    return-object p1

    .line 129
    :cond_4
    iget-object v0, p0, Laeq;->f:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 130
    iget-object p1, p0, Laeq;->f:Labq;

    return-object p1

    .line 133
    :cond_5
    iget-object v0, p0, Laeq;->g:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_6

    .line 134
    iget-object p1, p0, Laeq;->g:Labq;

    return-object p1

    .line 137
    :cond_6
    iget-object v0, p0, Laeq;->h:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_7

    .line 138
    iget-object p1, p0, Laeq;->h:Labq;

    return-object p1

    .line 141
    :cond_7
    iget-object v0, p0, Laeq;->i:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_8

    .line 142
    iget-object p1, p0, Laeq;->i:Labq;

    return-object p1

    .line 145
    :cond_8
    iget-object v0, p0, Laeq;->j:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_9

    .line 146
    iget-object p1, p0, Laeq;->j:Labq;

    return-object p1

    .line 149
    :cond_9
    iget-object v0, p0, Laeq;->k:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_a

    .line 150
    iget-object p1, p0, Laeq;->k:Labq;

    return-object p1

    .line 153
    :cond_a
    iget-object v0, p0, Laeq;->l:Labq;

    iget-wide v0, v0, Labq;->m:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_b

    .line 154
    iget-object p1, p0, Laeq;->l:Labq;

    return-object p1

    :cond_b
    const/4 p1, 0x0

    return-object p1
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 12

    move-object v7, p0

    move-object v1, p1

    move-object v2, p2

    move-wide/from16 v3, p5

    .line 50
    iget-wide v5, v7, Laeq;->C:J

    or-long/2addr v5, v3

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v8

    or-long/2addr v5, v8

    .line 51
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

    .line 53
    :goto_0
    iget-boolean v8, v1, Lcom/alibaba/fastjson2/ab;->f:Z

    if-eqz v8, :cond_2

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual/range {p0 .. p6}, Laeq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 59
    :cond_1
    invoke-virtual/range {p0 .. p6}, Laeq;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 64
    iget-wide v5, v7, Laeq;->C:J

    or-long/2addr v5, v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    invoke-virtual/range {v0 .. v6}, Laeq;->c(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 68
    :cond_3
    iget-boolean v0, v7, Laeq;->G:Z

    if-nez v0, :cond_5

    .line 69
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->ErrorOnNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v8, v5

    cmp-long v0, v8, v10

    if-eqz v0, :cond_4

    .line 70
    invoke-virtual {p0}, Laeq;->b()V

    return-void

    .line 74
    :cond_4
    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->IgnoreNoneSerializable:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-eqz v0, :cond_5

    .line 75
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 80
    :cond_5
    invoke-virtual {p0, p1}, Laeq;->a(Lcom/alibaba/fastjson2/ab;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    .line 81
    invoke-virtual/range {v0 .. v6}, Laeq;->d(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    return-void

    .line 85
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->k()V

    .line 87
    iget-wide v5, v7, Laeq;->C:J

    or-long/2addr v5, v3

    sget-object v0, Lcom/alibaba/fastjson2/ab$b;->WriteClassName:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v8, v0, Lcom/alibaba/fastjson2/ab$b;->mask:J

    and-long/2addr v5, v8

    cmp-long v0, v5, v10

    if-nez v0, :cond_7

    invoke-virtual {p1, p2, v3, v4}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 88
    :cond_7
    invoke-virtual {p0, p1}, Laeq;->c(Lcom/alibaba/fastjson2/ab;)Z

    .line 91
    :cond_8
    iget-object v0, v7, Laeq;->a:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 92
    iget-object v0, v7, Laeq;->b:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 93
    iget-object v0, v7, Laeq;->c:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 94
    iget-object v0, v7, Laeq;->d:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 95
    iget-object v0, v7, Laeq;->e:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 96
    iget-object v0, v7, Laeq;->f:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 97
    iget-object v0, v7, Laeq;->g:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 98
    iget-object v0, v7, Laeq;->h:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 99
    iget-object v0, v7, Laeq;->i:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 100
    iget-object v0, v7, Laeq;->j:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 101
    iget-object v0, v7, Laeq;->k:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 102
    iget-object v0, v7, Laeq;->l:Labq;

    invoke-virtual {v0, p1, p2}, Labq;->b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z

    .line 104
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->l()V

    return-void
.end method
