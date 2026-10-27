.class public Lws;
.super Lwx;
.source "ObjectReader5.java"


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

.field final g:J

.field final h:J

.field final i:J

.field final j:J

.field final k:J

.field final l:J

.field final m:J

.field final n:J

.field final o:J

.field final p:J


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

    .line 91
    invoke-direct/range {p0 .. p9}, Lwx;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)V

    const/4 p1, 0x0

    .line 93
    aget-object p2, p9, p1

    iput-object p2, p0, Lws;->a:Lsu;

    const/4 p2, 0x1

    .line 94
    aget-object p3, p9, p2

    iput-object p3, p0, Lws;->b:Lsu;

    const/4 p3, 0x2

    .line 95
    aget-object p3, p9, p3

    iput-object p3, p0, Lws;->c:Lsu;

    const/4 p3, 0x3

    .line 96
    aget-object p3, p9, p3

    iput-object p3, p0, Lws;->d:Lsu;

    const/4 p3, 0x4

    .line 97
    aget-object p3, p9, p3

    iput-object p3, p0, Lws;->e:Lsu;

    .line 99
    iget-object p3, p0, Lws;->a:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lws;->g:J

    .line 100
    iget-object p3, p0, Lws;->b:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lws;->h:J

    .line 101
    iget-object p3, p0, Lws;->c:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lws;->i:J

    .line 102
    iget-object p3, p0, Lws;->d:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lws;->j:J

    .line 103
    iget-object p3, p0, Lws;->e:Lsu;

    iget-wide p3, p3, Lsu;->n:J

    iput-wide p3, p0, Lws;->k:J

    .line 105
    iget-object p3, p0, Lws;->a:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lws;->l:J

    .line 106
    iget-object p3, p0, Lws;->b:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lws;->m:J

    .line 107
    iget-object p3, p0, Lws;->c:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lws;->n:J

    .line 108
    iget-object p3, p0, Lws;->d:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lws;->o:J

    .line 109
    iget-object p3, p0, Lws;->e:Lsu;

    iget-wide p3, p3, Lsu;->o:J

    iput-wide p3, p0, Lws;->p:J

    .line 111
    iget-object p3, p0, Lws;->a:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p3, p0, Lws;->b:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p3, p0, Lws;->c:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p3, p0, Lws;->d:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-nez p3, :cond_0

    iget-object p3, p0, Lws;->e:Lsu;

    iget-object p3, p3, Lsu;->j:Ljava/lang/Object;

    if-eqz p3, :cond_1

    :cond_0
    move p1, p2

    :cond_1
    iput-boolean p1, p0, Lws;->af:Z

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Ljava/util/function/Supplier;JLaai;Ljava/util/function/Function;Lsu;Lsu;Lsu;Lsu;Lsu;)V
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
            ")V"
        }
    .end annotation

    const/4 v0, 0x5

    .line 53
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

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object v8, p2

    move-object/from16 v9, p6

    invoke-direct/range {v1 .. v10}, Lws;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)V

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

    .line 169
    iget-boolean v0, p0, Lws;->ag:Z

    if-nez v0, :cond_0

    .line 170
    iget-object v0, p0, Lws;->Y:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;)V

    .line 173
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lws;->Z:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result v1

    if-lez v1, :cond_1

    .line 178
    iget-object v2, p0, Lws;->a:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    .line 180
    iget-object v2, p0, Lws;->b:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x2

    if-le v1, v2, :cond_1

    .line 182
    iget-object v2, p0, Lws;->c:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    .line 184
    iget-object v2, p0, Lws;->d:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x4

    if-le v1, v2, :cond_1

    .line 186
    iget-object v2, p0, Lws;->e:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 v2, 0x5

    :goto_0
    if-ge v2, v1, :cond_1

    .line 188
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lws;->aa:Ljava/util/function/Function;

    if-eqz v1, :cond_2

    .line 197
    iget-object v1, p0, Lws;->aa:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :cond_2
    return-object v0

    .line 202
    :cond_3
    iget-object v2, p0, Lws;->Y:Ljava/lang/Class;

    iget-wide v3, p0, Lws;->ad:J

    iget-wide v5, p0, Lws;->ab:J

    or-long/2addr v5, p4

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 203
    invoke-interface {v1}, Lwk;->d_()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, p0, Lws;->Y:Ljava/lang/Class;

    if-eq v0, v2, :cond_4

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 204
    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_4
    const/16 v0, -0x5a

    .line 207
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 212
    iget-object v0, p0, Lws;->Z:Ljava/util/function/Supplier;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_5

    .line 213
    iget-object v0, p0, Lws;->Z:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    .line 214
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

    .line 216
    :try_start_0
    sget-object v0, Labf;->a:Lsun/misc/Unsafe;

    iget-object v3, p0, Lws;->Y:Ljava/lang/Class;

    invoke-virtual {v0, v3}, Lsun/misc/Unsafe;->allocateInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 218
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

    .line 224
    iget-boolean v3, p0, Lws;->af:Z

    if-eqz v3, :cond_7

    .line 225
    invoke-virtual {p0, v0}, Lws;->a(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    const/16 v3, -0x5b

    .line 228
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/u;->a(B)Z

    move-result v3

    if-nez v3, :cond_14

    .line 229
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-nez v5, :cond_8

    goto :goto_2

    .line 234
    :cond_8
    iget-wide v5, p0, Lws;->g:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_9

    .line 235
    iget-object v3, p0, Lws;->a:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 236
    :cond_9
    iget-wide v5, p0, Lws;->h:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_a

    .line 237
    iget-object v3, p0, Lws;->b:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 238
    :cond_a
    iget-wide v5, p0, Lws;->i:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_b

    .line 239
    iget-object v3, p0, Lws;->c:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 240
    :cond_b
    iget-wide v5, p0, Lws;->j:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_c

    .line 241
    iget-object v3, p0, Lws;->d:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 242
    :cond_c
    iget-wide v5, p0, Lws;->k:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_d

    .line 243
    iget-object v3, p0, Lws;->e:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 245
    :cond_d
    iget-wide v3, p0, Lws;->ab:J

    or-long/2addr v3, p4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/u;->b(J)Z

    move-result v3

    if-nez v3, :cond_e

    .line 246
    invoke-virtual {p0, p1, v0}, Lws;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 250
    :cond_e
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->I()J

    move-result-wide v3

    .line 251
    iget-wide v5, p0, Lws;->l:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_f

    .line 252
    iget-object v3, p0, Lws;->a:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 253
    :cond_f
    iget-wide v5, p0, Lws;->m:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_10

    .line 254
    iget-object v3, p0, Lws;->b:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 255
    :cond_10
    iget-wide v5, p0, Lws;->n:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_11

    .line 256
    iget-object v3, p0, Lws;->c:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 257
    :cond_11
    iget-wide v5, p0, Lws;->o:J

    cmp-long v5, v3, v5

    if-nez v5, :cond_12

    .line 258
    iget-object v3, p0, Lws;->d:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 259
    :cond_12
    iget-wide v5, p0, Lws;->p:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_13

    .line 260
    iget-object v3, p0, Lws;->e:Lsu;

    invoke-virtual {v3, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 262
    :cond_13
    invoke-virtual {p0, p1, v0}, Lws;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 267
    :cond_14
    iget-object v1, p0, Lws;->aa:Ljava/util/function/Function;

    if-eqz v1, :cond_15

    .line 268
    iget-object v1, p0, Lws;->aa:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 271
    :cond_15
    iget-object v1, p0, Lws;->ah:Laai;

    if-eqz v1, :cond_16

    .line 272
    iget-object v1, p0, Lws;->ah:Laai;

    invoke-virtual {v1, v0}, Laai;->b(Ljava/lang/Object;)V

    :cond_16
    return-object v0

    .line 208
    :cond_17
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

    .line 120
    iget-object v0, p0, Lws;->a:Lsu;

    invoke-virtual {v0, p1}, Lsu;->a(Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lws;->b:Lsu;

    invoke-virtual {v0, p1}, Lsu;->a(Ljava/lang/Object;)V

    .line 122
    iget-object v0, p0, Lws;->c:Lsu;

    invoke-virtual {v0, p1}, Lsu;->a(Ljava/lang/Object;)V

    .line 123
    iget-object v0, p0, Lws;->d:Lsu;

    invoke-virtual {v0, p1}, Lsu;->a(Ljava/lang/Object;)V

    .line 124
    iget-object v0, p0, Lws;->e:Lsu;

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

    .line 129
    iget-boolean v0, p0, Lws;->ag:Z

    if-nez v0, :cond_0

    .line 130
    iget-object v0, p0, Lws;->Y:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;)V

    .line 133
    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lws;->b(Lcom/alibaba/fastjson2/u;J)Lwk;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 135
    invoke-interface/range {v1 .. v6}, Lwk;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 138
    :cond_1
    iget-object p2, p0, Lws;->Z:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 140
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result p3

    if-lez p3, :cond_2

    .line 142
    iget-object p4, p0, Lws;->a:Lsu;

    invoke-virtual {p4, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x1

    if-le p3, p4, :cond_2

    .line 144
    iget-object p4, p0, Lws;->b:Lsu;

    invoke-virtual {p4, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x2

    if-le p3, p4, :cond_2

    .line 146
    iget-object p4, p0, Lws;->c:Lsu;

    invoke-virtual {p4, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x3

    if-le p3, p4, :cond_2

    .line 148
    iget-object p4, p0, Lws;->d:Lsu;

    invoke-virtual {p4, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x4

    if-le p3, p4, :cond_2

    .line 150
    iget-object p4, p0, Lws;->e:Lsu;

    invoke-virtual {p4, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    const/4 p4, 0x5

    :goto_0
    if-ge p4, p3, :cond_2

    .line 152
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 160
    :cond_2
    iget-object p1, p0, Lws;->aa:Ljava/util/function/Function;

    if-eqz p1, :cond_3

    .line 161
    iget-object p1, p0, Lws;->aa:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p2
.end method

.method public b(J)Lsu;
    .locals 2

    .line 411
    iget-wide v0, p0, Lws;->g:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 412
    iget-object p1, p0, Lws;->a:Lsu;

    return-object p1

    .line 415
    :cond_0
    iget-wide v0, p0, Lws;->h:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 416
    iget-object p1, p0, Lws;->b:Lsu;

    return-object p1

    .line 419
    :cond_1
    iget-wide v0, p0, Lws;->i:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 420
    iget-object p1, p0, Lws;->c:Lsu;

    return-object p1

    .line 423
    :cond_2
    iget-wide v0, p0, Lws;->j:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 424
    iget-object p1, p0, Lws;->d:Lsu;

    return-object p1

    .line 427
    :cond_3
    iget-wide v0, p0, Lws;->k:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_4

    .line 428
    iget-object p1, p0, Lws;->e:Lsu;

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(J)Lsu;
    .locals 2

    .line 436
    iget-wide v0, p0, Lws;->l:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 437
    iget-object p1, p0, Lws;->a:Lsu;

    return-object p1

    .line 440
    :cond_0
    iget-wide v0, p0, Lws;->m:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 441
    iget-object p1, p0, Lws;->b:Lsu;

    return-object p1

    .line 444
    :cond_1
    iget-wide v0, p0, Lws;->n:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 445
    iget-object p1, p0, Lws;->c:Lsu;

    return-object p1

    .line 448
    :cond_2
    iget-wide v0, p0, Lws;->o:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 449
    iget-object p1, p0, Lws;->d:Lsu;

    return-object p1

    .line 452
    :cond_3
    iget-wide v0, p0, Lws;->p:J

    cmp-long p1, p1, v0

    if-nez p1, :cond_4

    .line 453
    iget-object p1, p0, Lws;->e:Lsu;

    return-object p1

    :cond_4
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

    .line 280
    iget-boolean v0, p0, Lws;->ag:Z

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lws;->Y:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;)V

    .line 284
    :cond_0
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_1

    .line 285
    invoke-virtual/range {p0 .. p5}, Lws;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 288
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 289
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    const/4 p1, 0x0

    return-object p1

    .line 293
    :cond_2
    iget-wide v0, p0, Lws;->ab:J

    or-long/2addr v0, p4

    invoke-virtual {p1, v0, v1}, Lcom/alibaba/fastjson2/u;->a(J)J

    move-result-wide v6

    .line 294
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_7

    .line 295
    sget-object p4, Lcom/alibaba/fastjson2/u$d;->SupportArrayToBean:Lcom/alibaba/fastjson2/u$d;

    iget-wide p4, p4, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr p4, v6

    cmp-long p4, p4, v1

    if-eqz p4, :cond_6

    .line 296
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->y()Z

    .line 297
    iget-object p2, p0, Lws;->Z:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    .line 298
    iget-boolean p3, p0, Lws;->af:Z

    if-eqz p3, :cond_3

    .line 299
    invoke-virtual {p0, p2}, Lws;->a(Ljava/lang/Object;)V

    .line 302
    :cond_3
    iget-object p3, p0, Lws;->a:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 303
    iget-object p3, p0, Lws;->b:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 304
    iget-object p3, p0, Lws;->c:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 305
    iget-object p3, p0, Lws;->d:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 306
    iget-object p3, p0, Lws;->e:Lsu;

    invoke-virtual {p3, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    .line 307
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 311
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 313
    iget-object p1, p0, Lws;->aa:Ljava/util/function/Function;

    if-eqz p1, :cond_4

    .line 314
    iget-object p1, p0, Lws;->aa:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p2

    .line 308
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

    .line 319
    invoke-virtual/range {v2 .. v7}, Lws;->d(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 322
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    .line 323
    iget-object v0, p0, Lws;->Z:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    .line 324
    iget-boolean v3, p0, Lws;->af:Z

    if-eqz v3, :cond_8

    .line 325
    invoke-virtual {p0, v0}, Lws;->a(Ljava/lang/Object;)V

    :cond_8
    if-eqz v0, :cond_9

    .line 327
    sget-object v3, Lcom/alibaba/fastjson2/u$d;->InitStringFieldAsEmpty:Lcom/alibaba/fastjson2/u$d;

    iget-wide v3, v3, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v3, v6

    cmp-long v1, v3, v1

    if-eqz v1, :cond_9

    .line 328
    invoke-virtual {p0, v0}, Lws;->b(Ljava/lang/Object;)V

    :cond_9
    const/4 v1, 0x0

    .line 332
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v2

    if-eqz v2, :cond_a

    goto :goto_1

    .line 336
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v2

    if-nez v1, :cond_c

    .line 338
    sget-wide v4, Lws;->f:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_c

    .line 339
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide v2

    .line 340
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v4

    .line 341
    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson2/u$c;->a(J)Lwk;

    move-result-object v2

    if-nez v2, :cond_b

    .line 343
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v2

    .line 344
    iget-object v3, p0, Lws;->Y:Ljava/lang/Class;

    invoke-virtual {v4, v2, v3}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lwk;

    move-result-object v2

    if-nez v2, :cond_b

    goto/16 :goto_2

    :cond_b
    move-object v3, v2

    if-eq v3, p0, :cond_1b

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-wide v7, p4

    .line 352
    invoke-interface/range {v3 .. v8}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_c
    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-nez v4, :cond_f

    .line 396
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 398
    iget-object p1, p0, Lws;->aa:Ljava/util/function/Function;

    if-eqz p1, :cond_d

    .line 399
    iget-object p1, p0, Lws;->aa:Ljava/util/function/Function;

    invoke-interface {p1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 402
    :cond_d
    iget-object p1, p0, Lws;->ah:Laai;

    if-eqz p1, :cond_e

    .line 403
    iget-object p1, p0, Lws;->ah:Laai;

    invoke-virtual {p1, v0}, Laai;->b(Ljava/lang/Object;)V

    :cond_e
    return-object v0

    .line 363
    :cond_f
    iget-wide v4, p0, Lws;->g:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_10

    .line 364
    iget-object v2, p0, Lws;->a:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 365
    :cond_10
    iget-wide v4, p0, Lws;->h:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_11

    .line 366
    iget-object v2, p0, Lws;->b:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 367
    :cond_11
    iget-wide v4, p0, Lws;->i:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_12

    .line 368
    iget-object v2, p0, Lws;->c:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 369
    :cond_12
    iget-wide v4, p0, Lws;->j:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_13

    .line 370
    iget-object v2, p0, Lws;->d:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 371
    :cond_13
    iget-wide v4, p0, Lws;->k:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_14

    .line 372
    iget-object v2, p0, Lws;->e:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 374
    :cond_14
    iget-wide v2, p0, Lws;->ab:J

    or-long/2addr v2, p4

    invoke-virtual {p1, v2, v3}, Lcom/alibaba/fastjson2/u;->b(J)Z

    move-result v2

    if-nez v2, :cond_15

    .line 375
    invoke-virtual {p0, p1, v0}, Lws;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 379
    :cond_15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->I()J

    move-result-wide v2

    .line 380
    iget-wide v4, p0, Lws;->l:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_16

    .line 381
    iget-object v2, p0, Lws;->a:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 382
    :cond_16
    iget-wide v4, p0, Lws;->m:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_17

    .line 383
    iget-object v2, p0, Lws;->b:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 384
    :cond_17
    iget-wide v4, p0, Lws;->n:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_18

    .line 385
    iget-object v2, p0, Lws;->c:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 386
    :cond_18
    iget-wide v4, p0, Lws;->o:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_19

    .line 387
    iget-object v2, p0, Lws;->d:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 388
    :cond_19
    iget-wide v4, p0, Lws;->p:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1a

    .line 389
    iget-object v2, p0, Lws;->e:Lsu;

    invoke-virtual {v2, p1, v0}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    .line 391
    :cond_1a
    invoke-virtual {p0, p1, v0}, Lws;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    :cond_1b
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method
