.class public Lwt;
.super Lwx;
.source "ObjectReader6.java"


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

.field protected final e:Lsu;

.field protected final g:Lsu;

.field final h:J

.field final i:J

.field final j:J

.field final k:J

.field final l:J

.field final m:J

.field final n:J

.field final o:J

.field final p:J

.field final q:J

.field final r:J

.field final s:J


# direct methods
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

    .line 97
    invoke-direct/range {p0 .. p9}, Lwx;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)V

    const/4 p1, 0x0

    .line 99
    aget-object p2, p9, p1

    iput-object p2, p0, Lwt;->a:Lsu;

    const/4 p2, 0x1

    .line 100
    aget-object p3, p9, p2

    iput-object p3, p0, Lwt;->b:Lsu;

    const/4 p3, 0x2

    .line 101
    aget-object p3, p9, p3

    iput-object p3, p0, Lwt;->c:Lsu;

    const/4 p3, 0x3

    .line 102
    aget-object p3, p9, p3

    iput-object p3, p0, Lwt;->d:Lsu;

    const/4 p3, 0x4

    .line 103
    aget-object p3, p9, p3

    iput-object p3, p0, Lwt;->e:Lsu;

    const/4 p3, 0x5

    .line 104
    aget-object p3, p9, p3

    iput-object p3, p0, Lwt;->g:Lsu;

    .line 106
    iget-object p3, p0, Lwt;->a:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lwt;->h:J

    .line 107
    iget-object p3, p0, Lwt;->b:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lwt;->i:J

    .line 108
    iget-object p3, p0, Lwt;->c:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lwt;->j:J

    .line 109
    iget-object p3, p0, Lwt;->d:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lwt;->k:J

    .line 110
    iget-object p3, p0, Lwt;->e:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lwt;->l:J

    .line 111
    iget-object p3, p0, Lwt;->g:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lwt;->m:J

    .line 113
    iget-object p3, p0, Lwt;->a:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lwt;->n:J

    .line 114
    iget-object p3, p0, Lwt;->b:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lwt;->o:J

    .line 115
    iget-object p3, p0, Lwt;->c:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lwt;->p:J

    .line 116
    iget-object p3, p0, Lwt;->d:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lwt;->q:J

    .line 117
    iget-object p3, p0, Lwt;->e:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lwt;->r:J

    .line 118
    iget-object p3, p0, Lwt;->g:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lwt;->s:J

    .line 120
    iget-object p3, p0, Lwt;->a:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p3, p0, Lwt;->b:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p3, p0, Lwt;->c:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p3, p0, Lwt;->d:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p3, p0, Lwt;->e:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p3, p0, Lwt;->g:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-eqz p3, :cond_1

    :cond_0
    move p1, p2

    :cond_1
    iput-boolean p1, p0, Lwt;->af:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/util/function/Supplier;JLaai;Ljava/util/function/Function;Lsu;Lsu;Lsu;Lsu;Lsu;Lsu;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class;",
            "Ljava/util/function/Supplier<",
            "TT;>;J",
            "Laai;",
            "Ljava/util/function/Function;",
            "Lsu;",
            "Lsu;",
            "Lsu;",
            "Lsu;",
            "Lsu;",
            "Lsu;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x6

    .line 58
    new-array v10, v0, [Lsu;

    const/4 v0, 0x0

    aput-object p7, v10, v0

    const/4 v0, 0x1

    aput-object p8, v10, v0

    const/4 v0, 0x2

    aput-object p9, v10, v0

    const/4 v0, 0x3

    aput-object p10, v10, v0

    const/4 v0, 0x4

    aput-object p11, v10, v0

    const/4 v0, 0x5

    aput-object p12, v10, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object v8, p2

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lwt;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)V

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

    .line 183
    iget-boolean v0, p0, Lwt;->ag:Z

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lwt;->Y:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;)V

    .line 187
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 188
    iget-object v0, p0, Lwt;->Z:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result v1

    if-lez v1, :cond_1

    .line 192
    iget-object v2, p0, Lwt;->a:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 194
    iget-object v2, p0, Lwt;->b:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 196
    iget-object v2, p0, Lwt;->c:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 198
    iget-object v2, p0, Lwt;->d:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 200
    iget-object v2, p0, Lwt;->e:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x5

    if-le v1, v2, :cond_1

    .line 202
    iget-object v2, p0, Lwt;->g:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x6

    :goto_0
    if-ge v2, v1, :cond_1

    .line 204
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_1
    iget-object v1, p0, Lwt;->aa:Ljava/util/function/Function;

    if-eqz v1, :cond_2

    .line 214
    iget-object v1, p0, Lwt;->aa:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    return-object v0

    .line 219
    :cond_3
    iget-object v2, p0, Lwt;->Y:Ljava/lang/Class;

    iget-wide v3, p0, Lwt;->ad:J

    iget-wide v5, p0, Lwt;->ab:J

    or-long/2addr v5, p4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 220
    invoke-interface {v1}, Lwk;->d_()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lwt;->Y:Ljava/lang/Class;

    if-eq v0, v2, :cond_4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 221
    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v0, -0x5a

    .line 224
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 229
    iget-object v0, p0, Lwt;->Z:Ljava/util/function/Supplier;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    .line 230
    iget-object v0, p0, Lwt;->Z:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 231
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

    .line 233
    :try_start_0
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-object v3, p0, Lwt;->Y:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 235
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

    .line 241
    iget-boolean v3, p0, Lwt;->af:Z

    if-eqz v3, :cond_7

    .line 242
    invoke-virtual {p0, v0}, Lwt;->a(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    const/16 v3, -0x5b

    .line 245
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result v3

    if-nez v3, :cond_16

    .line 246
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_8

    goto :goto_2

    .line 251
    :cond_8
    iget-wide v5, p0, Lwt;->h:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_9

    .line 252
    iget-object v3, p0, Lwt;->a:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 253
    :cond_9
    iget-wide v5, p0, Lwt;->i:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_a

    .line 254
    iget-object v3, p0, Lwt;->b:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 255
    :cond_a
    iget-wide v5, p0, Lwt;->j:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_b

    .line 256
    iget-object v3, p0, Lwt;->c:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 257
    :cond_b
    iget-wide v5, p0, Lwt;->k:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_c

    .line 258
    iget-object v3, p0, Lwt;->d:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 259
    :cond_c
    iget-wide v5, p0, Lwt;->l:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_d

    .line 260
    iget-object v3, p0, Lwt;->e:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 261
    :cond_d
    iget-wide v5, p0, Lwt;->m:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_e

    .line 262
    iget-object v3, p0, Lwt;->g:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 264
    :cond_e
    iget-wide v3, p0, Lwt;->ab:J

    or-long/2addr v3, p4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/u;->b(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 265
    invoke-virtual {p0, p1, v0}, Lwt;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 269
    :cond_f
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->I()J

    move-result-wide v3

    .line 270
    iget-wide v5, p0, Lwt;->n:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_10

    .line 271
    iget-object v3, p0, Lwt;->a:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 272
    :cond_10
    iget-wide v5, p0, Lwt;->o:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_11

    .line 273
    iget-object v3, p0, Lwt;->b:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 274
    :cond_11
    iget-wide v5, p0, Lwt;->p:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_12

    .line 275
    iget-object v3, p0, Lwt;->c:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 276
    :cond_12
    iget-wide v5, p0, Lwt;->q:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_13

    .line 277
    iget-object v3, p0, Lwt;->d:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 278
    :cond_13
    iget-wide v5, p0, Lwt;->r:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_14

    .line 279
    iget-object v3, p0, Lwt;->e:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 280
    :cond_14
    iget-wide v5, p0, Lwt;->s:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_15

    .line 281
    iget-object v3, p0, Lwt;->g:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 283
    :cond_15
    invoke-virtual {p0, p1, v0}, Lwt;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 288
    :cond_16
    iget-object v1, p0, Lwt;->aa:Ljava/util/function/Function;

    if-eqz v1, :cond_17

    .line 289
    iget-object v1, p0, Lwt;->aa:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 292
    :cond_17
    iget-object v1, p0, Lwt;->ah:Laai;

    if-eqz v1, :cond_18

    .line 293
    iget-object v1, p0, Lwt;->ah:Laai;

    invoke-virtual {v1, v0}, Laai;->b(Ljava/lang/Object;)V

    :cond_18
    return-object v0

    .line 225
    :cond_19
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

    .line 130
    iget-object v0, p0, Lwt;->a:Lsu;

    invoke-virtual {v0, p1}, Lsu;->a(Ljava/lang/Object;)V

    .line 131
    iget-object v0, p0, Lwt;->b:Lsu;

    invoke-virtual {v0, p1}, Lsu;->a(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lwt;->c:Lsu;

    invoke-virtual {v0, p1}, Lsu;->a(Ljava/lang/Object;)V

    .line 133
    iget-object v0, p0, Lwt;->d:Lsu;

    invoke-virtual {v0, p1}, Lsu;->a(Ljava/lang/Object;)V

    .line 134
    iget-object v0, p0, Lwt;->e:Lsu;

    invoke-virtual {v0, p1}, Lsu;->a(Ljava/lang/Object;)V

    .line 135
    iget-object v0, p0, Lwt;->g:Lsu;

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

    .line 140
    iget-boolean v0, p0, Lwt;->ag:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lwt;->Y:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;)V

    .line 144
    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lwt;->b(Lcom/alibaba/fastjson2/u;J)Lwk;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 146
    invoke-interface/range {v1 .. v6}, Lwk;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 149
    :cond_1
    iget-object p2, p0, Lwt;->Z:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 151
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result p3

    if-lez p3, :cond_2

    .line 153
    iget-object p4, p0, Lwt;->a:Lsu;

    invoke-virtual {p4, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x1

    if-le p3, p4, :cond_2

    .line 155
    iget-object p4, p0, Lwt;->b:Lsu;

    invoke-virtual {p4, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x2

    if-le p3, p4, :cond_2

    .line 157
    iget-object p4, p0, Lwt;->c:Lsu;

    invoke-virtual {p4, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x3

    if-le p3, p4, :cond_2

    .line 159
    iget-object p4, p0, Lwt;->d:Lsu;

    invoke-virtual {p4, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x4

    if-le p3, p4, :cond_2

    .line 161
    iget-object p4, p0, Lwt;->e:Lsu;

    invoke-virtual {p4, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x5

    if-le p3, p4, :cond_2

    .line 163
    iget-object p4, p0, Lwt;->g:Lsu;

    invoke-virtual {p4, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x6

    :goto_0
    if-ge p4, p3, :cond_2

    .line 165
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 174
    :cond_2
    iget-object p1, p0, Lwt;->aa:Ljava/util/function/Function;

    if-eqz p1, :cond_3

    .line 175
    iget-object p1, p0, Lwt;->aa:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2
.end method

.method public b(J)Lsu;
    .locals 2

    .line 434
    iget-wide v0, p0, Lwt;->h:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 435
    iget-object p1, p0, Lwt;->a:Lsu;

    return-object p1

    .line 438
    :cond_0
    iget-wide v0, p0, Lwt;->i:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 439
    iget-object p1, p0, Lwt;->b:Lsu;

    return-object p1

    .line 442
    :cond_1
    iget-wide v0, p0, Lwt;->j:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 443
    iget-object p1, p0, Lwt;->c:Lsu;

    return-object p1

    .line 446
    :cond_2
    iget-wide v0, p0, Lwt;->k:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 447
    iget-object p1, p0, Lwt;->d:Lsu;

    return-object p1

    .line 450
    :cond_3
    iget-wide v0, p0, Lwt;->l:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 451
    iget-object p1, p0, Lwt;->e:Lsu;

    return-object p1

    .line 454
    :cond_4
    iget-wide v0, p0, Lwt;->m:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_5

    .line 455
    iget-object p1, p0, Lwt;->g:Lsu;

    return-object p1

    :cond_5
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(J)Lsu;
    .locals 2

    .line 463
    iget-wide v0, p0, Lwt;->n:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 464
    iget-object p1, p0, Lwt;->a:Lsu;

    return-object p1

    .line 467
    :cond_0
    iget-wide v0, p0, Lwt;->o:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 468
    iget-object p1, p0, Lwt;->b:Lsu;

    return-object p1

    .line 471
    :cond_1
    iget-wide v0, p0, Lwt;->p:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 472
    iget-object p1, p0, Lwt;->c:Lsu;

    return-object p1

    .line 475
    :cond_2
    iget-wide v0, p0, Lwt;->q:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 476
    iget-object p1, p0, Lwt;->d:Lsu;

    return-object p1

    .line 479
    :cond_3
    iget-wide v0, p0, Lwt;->r:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 480
    iget-object p1, p0, Lwt;->e:Lsu;

    return-object p1

    .line 483
    :cond_4
    iget-wide v0, p0, Lwt;->s:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_5

    .line 484
    iget-object p1, p0, Lwt;->g:Lsu;

    return-object p1

    :cond_5
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

    .line 301
    iget-boolean v0, p0, Lwt;->ag:Z

    if-nez v0, :cond_0

    .line 302
    iget-object v0, p0, Lwt;->Y:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;)V

    .line 305
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_1

    .line 306
    invoke-virtual/range {p0 .. p5}, Lwt;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 309
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 310
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    const/4 p1, 0x0

    return-object p1

    .line 314
    :cond_2
    iget-wide v0, p0, Lwt;->ab:J

    or-long/2addr v0, p4

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/u;->a(J)J

    move-result-wide v6

    .line 315
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_7

    .line 316
    sget-object p4, Lcom/alibaba/fastjson2/u$d;->SupportArrayToBean:Lcom/alibaba/fastjson2/u$d;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr p4, v6

    cmp-long p4, p4, v1

    if-eqz p4, :cond_6

    .line 317
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->y()Z

    .line 318
    iget-object p2, p0, Lwt;->Z:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 319
    iget-boolean p3, p0, Lwt;->af:Z

    if-eqz p3, :cond_3

    .line 320
    invoke-virtual {p0, p2}, Lwt;->a(Ljava/lang/Object;)V

    .line 323
    :cond_3
    iget-object p3, p0, Lwt;->a:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 324
    iget-object p3, p0, Lwt;->b:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 325
    iget-object p3, p0, Lwt;->c:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 326
    iget-object p3, p0, Lwt;->d:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 327
    iget-object p3, p0, Lwt;->e:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 328
    iget-object p3, p0, Lwt;->g:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 329
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 333
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 335
    iget-object p1, p0, Lwt;->aa:Ljava/util/function/Function;

    if-eqz p1, :cond_4

    .line 336
    iget-object p1, p0, Lwt;->aa:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p2

    .line 330
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

    .line 341
    invoke-virtual/range {v2 .. v7}, Lwt;->d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 344
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    .line 345
    iget-object v0, p0, Lwt;->Z:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 346
    iget-boolean v3, p0, Lwt;->af:Z

    if-eqz v3, :cond_8

    .line 347
    invoke-virtual {p0, v0}, Lwt;->a(Ljava/lang/Object;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 349
    sget-object v3, Lcom/alibaba/fastjson2/u$d;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v3, v6

    cmp-long v1, v3, v1

    if-eqz v1, :cond_9

    .line 350
    invoke-virtual {p0, v0}, Lwt;->b(Ljava/lang/Object;)V

    :cond_9
    const/4 v1, 0x0

    .line 354
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    .line 359
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v2

    if-nez v1, :cond_e

    .line 361
    sget-wide v4, Lwt;->f:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_e

    .line 362
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide v2

    .line 363
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v4

    .line 364
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson2/u$c;->a(J)Lwk;

    move-result-object v2

    if-nez v2, :cond_b

    .line 366
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v2

    .line 367
    iget-object v3, p0, Lwt;->Y:Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lwk;

    move-result-object v2

    if-nez v2, :cond_b

    goto/16 :goto_2

    :cond_b
    move-object v3, v2

    if-eq v3, p0, :cond_1c

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    .line 375
    invoke-interface/range {v3 .. v8}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 419
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 421
    iget-object p1, p0, Lwt;->aa:Ljava/util/function/Function;

    if-eqz p1, :cond_c

    .line 422
    iget-object p1, p0, Lwt;->aa:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 425
    :cond_c
    iget-object p1, p0, Lwt;->ah:Laai;

    if-eqz p1, :cond_d

    .line 426
    iget-object p1, p0, Lwt;->ah:Laai;

    invoke-virtual {p1, v0}, Laai;->b(Ljava/lang/Object;)V

    :cond_d
    return-object v0

    .line 382
    :cond_e
    iget-wide v4, p0, Lwt;->h:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_f

    .line 383
    iget-object v2, p0, Lwt;->a:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 384
    :cond_f
    iget-wide v4, p0, Lwt;->i:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_10

    .line 385
    iget-object v2, p0, Lwt;->b:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 386
    :cond_10
    iget-wide v4, p0, Lwt;->j:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_11

    .line 387
    iget-object v2, p0, Lwt;->c:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 388
    :cond_11
    iget-wide v4, p0, Lwt;->k:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_12

    .line 389
    iget-object v2, p0, Lwt;->d:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 390
    :cond_12
    iget-wide v4, p0, Lwt;->l:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_13

    .line 391
    iget-object v2, p0, Lwt;->e:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 392
    :cond_13
    iget-wide v4, p0, Lwt;->m:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    .line 393
    iget-object v2, p0, Lwt;->g:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 395
    :cond_14
    iget-wide v2, p0, Lwt;->ab:J

    or-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/u;->b(J)Z

    move-result v2

    if-nez v2, :cond_15

    .line 396
    invoke-virtual {p0, p1, v0}, Lwt;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 400
    :cond_15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->I()J

    move-result-wide v2

    .line 401
    iget-wide v4, p0, Lwt;->n:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_16

    .line 402
    iget-object v2, p0, Lwt;->a:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 403
    :cond_16
    iget-wide v4, p0, Lwt;->o:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_17

    .line 404
    iget-object v2, p0, Lwt;->b:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 405
    :cond_17
    iget-wide v4, p0, Lwt;->p:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_18

    .line 406
    iget-object v2, p0, Lwt;->c:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 407
    :cond_18
    iget-wide v4, p0, Lwt;->q:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_19

    .line 408
    iget-object v2, p0, Lwt;->d:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 409
    :cond_19
    iget-wide v4, p0, Lwt;->r:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_1a

    .line 410
    iget-object v2, p0, Lwt;->e:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 411
    :cond_1a
    iget-wide v4, p0, Lwt;->s:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1b

    .line 412
    iget-object v2, p0, Lwt;->g:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 414
    :cond_1b
    invoke-virtual {p0, p1, v0}, Lwt;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    :cond_1c
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
