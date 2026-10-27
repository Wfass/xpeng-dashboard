.class public Lwr;
.super Lwx;
.source "ObjectReader4.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwx<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final a:Lsu;

.field protected final b:Lsu;

.field protected final c:Lsu;

.field protected final d:Lsu;

.field final e:J

.field final g:J

.field final h:J

.field final i:J

.field final j:J

.field final k:J

.field final l:J

.field final m:J


# direct methods
.method constructor <init>(Ljava/lang/Class;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;Lsu;Lsu;Lsu;Lsu;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "J",
            "Laai;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function;",
            "Lsu;",
            "Lsu;",
            "Lsu;",
            "Lsu;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x4

    .line 49
    new-array v10, v0, [Lsu;

    const/4 v0, 0x0

    aput-object p7, v10, v0

    const/4 v0, 0x1

    aput-object p8, v10, v0

    const/4 v0, 0x2

    aput-object p9, v10, v0

    const/4 v0, 0x3

    aput-object p10, v10, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lwr;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J",
            "Laai;",
            "Ljava/util/function/Supplier<",
            "TT;>;",
            "Ljava/util/function/Function;",
            "[",
            "Lsu;",
            ")V"
        }
    .end annotation

    .line 86
    invoke-direct/range {p0 .. p9}, Lwx;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)V

    const/4 p1, 0x0

    .line 87
    aget-object p2, p9, p1

    iput-object p2, p0, Lwr;->a:Lsu;

    const/4 p2, 0x1

    .line 88
    aget-object p3, p9, p2

    iput-object p3, p0, Lwr;->b:Lsu;

    const/4 p3, 0x2

    .line 89
    aget-object p3, p9, p3

    iput-object p3, p0, Lwr;->c:Lsu;

    const/4 p3, 0x3

    .line 90
    aget-object p3, p9, p3

    iput-object p3, p0, Lwr;->d:Lsu;

    .line 92
    iget-object p3, p0, Lwr;->a:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lwr;->e:J

    .line 93
    iget-object p3, p0, Lwr;->b:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lwr;->g:J

    .line 94
    iget-object p3, p0, Lwr;->c:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lwr;->h:J

    .line 95
    iget-object p3, p0, Lwr;->d:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lwr;->i:J

    .line 97
    iget-object p3, p0, Lwr;->a:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lwr;->j:J

    .line 98
    iget-object p3, p0, Lwr;->b:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lwr;->k:J

    .line 99
    iget-object p3, p0, Lwr;->c:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lwr;->l:J

    .line 100
    iget-object p3, p0, Lwr;->d:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lwr;->m:J

    .line 102
    iget-object p3, p0, Lwr;->a:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p3, p0, Lwr;->b:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p3, p0, Lwr;->c:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p3, p0, Lwr;->d:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-eqz p3, :cond_1

    :cond_0
    move p1, p2

    :cond_1
    iput-boolean p1, p0, Lwr;->af:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 118
    iget-boolean v0, p0, Lwr;->ag:Z

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lwr;->Y:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;)V

    .line 122
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 123
    iget-object v0, p0, Lwr;->Z:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 125
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result v1

    if-lez v1, :cond_1

    .line 127
    iget-object v2, p0, Lwr;->a:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 129
    iget-object v2, p0, Lwr;->b:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 131
    iget-object v2, p0, Lwr;->c:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 133
    iget-object v2, p0, Lwr;->d:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x4

    :goto_0
    if-ge v2, v1, :cond_1

    .line 136
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_1
    iget-object v1, p0, Lwr;->aa:Ljava/util/function/Function;

    if-eqz v1, :cond_2

    .line 144
    iget-object v1, p0, Lwr;->aa:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    return-object v0

    .line 149
    :cond_3
    iget-object v2, p0, Lwr;->Y:Ljava/lang/Class;

    iget-wide v3, p0, Lwr;->ad:J

    iget-wide v5, p0, Lwr;->ab:J

    or-long/2addr v5, p4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 150
    invoke-interface {v1}, Lwk;->d_()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lwr;->Y:Ljava/lang/Class;

    if-eq v0, v2, :cond_4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 151
    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v0, -0x5a

    .line 154
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 159
    iget-object v0, p0, Lwr;->Z:Ljava/util/function/Supplier;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    .line 160
    iget-object v0, p0, Lwr;->Z:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 161
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v3

    or-long/2addr v3, p4

    sget-object v0, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v5, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v3, v5

    cmp-long v0, v3, v1

    if-eqz v0, :cond_6

    .line 163
    :try_start_0
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-object v3, p0, Lwr;->Y:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 165
    new-instance v1, Lcom/alibaba/fastjson2/c;

    const-string v2, "create instance error"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_7

    .line 171
    iget-boolean v3, p0, Lwr;->af:Z

    if-eqz v3, :cond_7

    .line 172
    invoke-virtual {p0, v0}, Lwr;->a(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    const/16 v3, -0x5b

    .line 175
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result v3

    if-nez v3, :cond_12

    .line 176
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_8

    goto :goto_2

    .line 181
    :cond_8
    iget-wide v5, p0, Lwr;->e:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_9

    .line 182
    iget-object v3, p0, Lwr;->a:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 183
    :cond_9
    iget-wide v5, p0, Lwr;->g:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_a

    .line 184
    iget-object v3, p0, Lwr;->b:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 185
    :cond_a
    iget-wide v5, p0, Lwr;->h:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_b

    .line 186
    iget-object v3, p0, Lwr;->c:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 187
    :cond_b
    iget-wide v5, p0, Lwr;->i:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_c

    .line 188
    iget-object v3, p0, Lwr;->d:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 190
    :cond_c
    iget-wide v3, p0, Lwr;->ab:J

    or-long/2addr v3, p4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/u;->b(J)Z

    move-result v3

    if-nez v3, :cond_d

    .line 191
    invoke-virtual {p0, p1, v0}, Lwr;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 195
    :cond_d
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->I()J

    move-result-wide v3

    .line 196
    iget-wide v5, p0, Lwr;->j:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_e

    .line 197
    iget-object v3, p0, Lwr;->a:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 198
    :cond_e
    iget-wide v5, p0, Lwr;->k:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_f

    .line 199
    iget-object v3, p0, Lwr;->b:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 200
    :cond_f
    iget-wide v5, p0, Lwr;->l:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_10

    .line 201
    iget-object v3, p0, Lwr;->c:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 202
    :cond_10
    iget-wide v5, p0, Lwr;->m:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_11

    .line 203
    iget-object v3, p0, Lwr;->d:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 205
    :cond_11
    invoke-virtual {p0, p1, v0}, Lwr;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 210
    :cond_12
    iget-object v1, p0, Lwr;->aa:Ljava/util/function/Function;

    if-eqz v1, :cond_13

    .line 211
    iget-object v1, p0, Lwr;->aa:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 214
    :cond_13
    iget-object v1, p0, Lwr;->ah:Laai;

    if-eqz v1, :cond_14

    .line 215
    iget-object v1, p0, Lwr;->ah:Laai;

    invoke-virtual {v1, v0}, Laai;->b(Ljava/lang/Object;)V

    :cond_14
    return-object v0

    .line 155
    :cond_15
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect object, but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v2

    invoke-static {v2}, Lcom/alibaba/fastjson2/b;->a(B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lwr;->a:Lsu;

    invoke-virtual {v0, p1}, Lsu;->a(Ljava/lang/Object;)V

    .line 111
    iget-object v0, p0, Lwr;->b:Lsu;

    invoke-virtual {v0, p1}, Lsu;->a(Ljava/lang/Object;)V

    .line 112
    iget-object v0, p0, Lwr;->c:Lsu;

    invoke-virtual {v0, p1}, Lsu;->a(Ljava/lang/Object;)V

    .line 113
    iget-object v0, p0, Lwr;->d:Lsu;

    invoke-virtual {v0, p1}, Lsu;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 223
    iget-boolean v0, p0, Lwr;->ag:Z

    if-nez v0, :cond_0

    .line 224
    iget-object v0, p0, Lwr;->Y:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;)V

    .line 227
    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lwr;->b(Lcom/alibaba/fastjson2/u;J)Lwk;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 229
    invoke-interface/range {v1 .. v6}, Lwk;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 232
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result p2

    .line 233
    iget-object p3, p0, Lwr;->Z:Ljava/util/function/Supplier;

    invoke-interface {p3}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p3

    if-lez p2, :cond_2

    .line 236
    iget-object p4, p0, Lwr;->a:Lsu;

    invoke-virtual {p4, p1, p3}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x1

    if-le p2, p4, :cond_2

    .line 238
    iget-object p4, p0, Lwr;->b:Lsu;

    invoke-virtual {p4, p1, p3}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x2

    if-le p2, p4, :cond_2

    .line 240
    iget-object p4, p0, Lwr;->c:Lsu;

    invoke-virtual {p4, p1, p3}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x3

    if-le p2, p4, :cond_2

    .line 242
    iget-object p4, p0, Lwr;->d:Lsu;

    invoke-virtual {p4, p1, p3}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x4

    :goto_0
    if-ge p4, p2, :cond_2

    .line 245
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 252
    :cond_2
    iget-object p1, p0, Lwr;->aa:Ljava/util/function/Function;

    if-eqz p1, :cond_3

    .line 253
    iget-object p1, p0, Lwr;->aa:Ljava/util/function/Function;

    invoke-interface {p1, p3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p3
.end method

.method public b(J)Lsu;
    .locals 2

    .line 383
    iget-wide v0, p0, Lwr;->e:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 384
    iget-object p1, p0, Lwr;->a:Lsu;

    return-object p1

    .line 387
    :cond_0
    iget-wide v0, p0, Lwr;->g:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 388
    iget-object p1, p0, Lwr;->b:Lsu;

    return-object p1

    .line 391
    :cond_1
    iget-wide v0, p0, Lwr;->h:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 392
    iget-object p1, p0, Lwr;->c:Lsu;

    return-object p1

    .line 395
    :cond_2
    iget-wide v0, p0, Lwr;->i:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    .line 396
    iget-object p1, p0, Lwr;->d:Lsu;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(J)Lsu;
    .locals 2

    .line 404
    iget-wide v0, p0, Lwr;->j:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 405
    iget-object p1, p0, Lwr;->a:Lsu;

    return-object p1

    .line 408
    :cond_0
    iget-wide v0, p0, Lwr;->k:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 409
    iget-object p1, p0, Lwr;->b:Lsu;

    return-object p1

    .line 412
    :cond_1
    iget-wide v0, p0, Lwr;->l:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 413
    iget-object p1, p0, Lwr;->c:Lsu;

    return-object p1

    .line 416
    :cond_2
    iget-wide v0, p0, Lwr;->m:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_3

    .line 417
    iget-object p1, p0, Lwr;->d:Lsu;

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 261
    iget-boolean v0, p0, Lwr;->ag:Z

    if-nez v0, :cond_0

    .line 262
    iget-object v0, p0, Lwr;->Y:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;)V

    .line 265
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual/range {p0 .. p5}, Lwr;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 269
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 270
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    const/4 p1, 0x0

    return-object p1

    .line 274
    :cond_2
    iget-wide v0, p0, Lwr;->ab:J

    or-long/2addr v0, p4

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/u;->a(J)J

    move-result-wide v6

    .line 275
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_7

    .line 276
    sget-object p4, Lcom/alibaba/fastjson2/u$d;->SupportArrayToBean:Lcom/alibaba/fastjson2/u$d;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr p4, v6

    cmp-long p4, p4, v1

    if-eqz p4, :cond_6

    .line 277
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->y()Z

    .line 278
    iget-object p2, p0, Lwr;->Z:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 279
    iget-boolean p3, p0, Lwr;->af:Z

    if-eqz p3, :cond_3

    .line 280
    invoke-virtual {p0, p2}, Lwr;->a(Ljava/lang/Object;)V

    .line 283
    :cond_3
    iget-object p3, p0, Lwr;->a:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 284
    iget-object p3, p0, Lwr;->b:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 285
    iget-object p3, p0, Lwr;->c:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 286
    iget-object p3, p0, Lwr;->d:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 291
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 293
    iget-object p1, p0, Lwr;->aa:Ljava/util/function/Function;

    if-eqz p1, :cond_4

    .line 294
    iget-object p1, p0, Lwr;->aa:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p2

    .line 288
    :cond_5
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "array to bean end error"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_6
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 299
    invoke-virtual/range {v2 .. v7}, Lwr;->d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 302
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    .line 303
    iget-object v0, p0, Lwr;->Z:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 304
    iget-boolean v3, p0, Lwr;->af:Z

    if-eqz v3, :cond_8

    .line 305
    invoke-virtual {p0, v0}, Lwr;->a(Ljava/lang/Object;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 307
    sget-object v3, Lcom/alibaba/fastjson2/u$d;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v3, v6

    cmp-long v1, v3, v1

    if-eqz v1, :cond_9

    .line 308
    invoke-virtual {p0, v0}, Lwr;->b(Ljava/lang/Object;)V

    :cond_9
    const/4 v1, 0x0

    .line 312
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    .line 316
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v2

    if-nez v1, :cond_e

    .line 318
    sget-wide v4, Lwr;->f:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_e

    .line 319
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide v2

    .line 320
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v4

    .line 321
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson2/u$c;->a(J)Lwk;

    move-result-object v2

    if-nez v2, :cond_b

    .line 323
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v2

    .line 324
    iget-object v3, p0, Lwr;->Y:Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lwk;

    move-result-object v2

    if-nez v2, :cond_b

    goto/16 :goto_2

    :cond_b
    move-object v3, v2

    if-eq v3, p0, :cond_18

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    .line 332
    invoke-interface/range {v3 .. v8}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 368
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 370
    iget-object p1, p0, Lwr;->aa:Ljava/util/function/Function;

    if-eqz p1, :cond_c

    .line 371
    iget-object p1, p0, Lwr;->aa:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 374
    :cond_c
    iget-object p1, p0, Lwr;->ah:Laai;

    if-eqz p1, :cond_d

    .line 375
    iget-object p1, p0, Lwr;->ah:Laai;

    invoke-virtual {p1, v0}, Laai;->b(Ljava/lang/Object;)V

    :cond_d
    return-object v0

    .line 339
    :cond_e
    iget-wide v4, p0, Lwr;->e:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_f

    .line 340
    iget-object v2, p0, Lwr;->a:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 341
    :cond_f
    iget-wide v4, p0, Lwr;->g:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_10

    .line 342
    iget-object v2, p0, Lwr;->b:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 343
    :cond_10
    iget-wide v4, p0, Lwr;->h:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_11

    .line 344
    iget-object v2, p0, Lwr;->c:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 345
    :cond_11
    iget-wide v4, p0, Lwr;->i:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_12

    .line 346
    iget-object v2, p0, Lwr;->d:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 348
    :cond_12
    iget-wide v2, p0, Lwr;->ab:J

    or-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/u;->b(J)Z

    move-result v2

    if-nez v2, :cond_13

    .line 349
    invoke-virtual {p0, p1, v0}, Lwr;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 353
    :cond_13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->I()J

    move-result-wide v2

    .line 354
    iget-wide v4, p0, Lwr;->j:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_14

    .line 355
    iget-object v2, p0, Lwr;->a:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 356
    :cond_14
    iget-wide v4, p0, Lwr;->k:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_15

    .line 357
    iget-object v2, p0, Lwr;->b:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 358
    :cond_15
    iget-wide v4, p0, Lwr;->l:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_16

    .line 359
    iget-object v2, p0, Lwr;->c:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 360
    :cond_16
    iget-wide v4, p0, Lwr;->m:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_17

    .line 361
    iget-object v2, p0, Lwr;->d:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 363
    :cond_17
    invoke-virtual {p0, p1, v0}, Lwr;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    :cond_18
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
