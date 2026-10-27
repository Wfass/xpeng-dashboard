.class public Lwx;
.super Lwz;
.source "ObjectReaderAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwz<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final L:Ljava/lang/String;

.field protected final M:J

.field protected final N:[Lsu;

.field final O:[J

.field final P:[S

.field final Q:[J

.field final R:[S

.field final S:Ljava/lang/reflect/Constructor;

.field volatile T:Z

.field final U:[Ljava/lang/Class;

.field final V:[Ljava/lang/String;

.field final W:Ljava/lang/Class;

.field final X:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lsu;)V
    .locals 14
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
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            "[",
            "Lsu;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p12

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p8

    .line 118
    invoke-direct/range {v0 .. v7}, Lwz;-><init>(Ljava/lang/Class;Ljava/util/function/Supplier;Ljava/lang/String;JLaai;Ljava/util/function/Function;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez v9, :cond_0

    move-object v2, v0

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {p1, v1}, Laax;->a(Ljava/lang/Class;Z)Ljava/lang/reflect/Constructor;

    move-result-object v2

    :goto_0
    iput-object v2, v8, Lwx;->S:Ljava/lang/reflect/Constructor;

    .line 124
    iget-object v2, v8, Lwx;->S:Ljava/lang/reflect/Constructor;

    if-eqz v2, :cond_1

    .line 125
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_1
    if-eqz v10, :cond_3

    .line 128
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 132
    :cond_2
    iput-object v10, v8, Lwx;->L:Ljava/lang/String;

    .line 133
    invoke-static/range {p2 .. p2}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v8, Lwx;->M:J

    goto :goto_2

    :cond_3
    :goto_1
    const-string v2, "@type"

    .line 129
    iput-object v2, v8, Lwx;->L:Ljava/lang/String;

    .line 130
    sget-wide v2, Lwx;->f:J

    iput-wide v2, v8, Lwx;->M:J

    .line 136
    :goto_2
    iput-object v13, v8, Lwx;->N:[Lsu;

    .line 138
    array-length v2, v13

    new-array v2, v2, [J

    .line 139
    array-length v3, v13

    new-array v3, v3, [J

    const/4 v4, 0x0

    move v5, v4

    .line 140
    :goto_3
    array-length v6, v13

    if-ge v5, v6, :cond_7

    .line 141
    aget-object v6, v13, v5

    .line 142
    iget-wide v9, v6, Lsu;->n:J

    aput-wide v9, v2, v5

    .line 143
    iget-wide v9, v6, Lsu;->o:J

    aput-wide v9, v3, v5

    .line 145
    invoke-virtual {v6}, Lsu;->b()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 146
    iget-object v7, v8, Lwx;->ae:Lsu;

    if-eqz v7, :cond_4

    iget-object v7, v8, Lwx;->ae:Lsu;

    instance-of v7, v7, Lsv;

    if-nez v7, :cond_5

    .line 147
    :cond_4
    iput-object v6, v8, Lwx;->ae:Lsu;

    .line 151
    :cond_5
    iget-object v6, v6, Lsu;->j:Ljava/lang/Object;

    if-eqz v6, :cond_6

    .line 152
    iput-boolean v1, v8, Lwx;->af:Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 156
    :cond_7
    array-length v1, v2

    invoke-static {v2, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v8, Lwx;->O:[J

    .line 157
    iget-object v1, v8, Lwx;->O:[J

    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 159
    iget-object v1, v8, Lwx;->O:[J

    array-length v1, v1

    new-array v1, v1, [S

    iput-object v1, v8, Lwx;->P:[S

    move v1, v4

    .line 160
    :goto_4
    array-length v5, v2

    if-ge v1, v5, :cond_8

    .line 161
    aget-wide v5, v2, v1

    .line 162
    iget-object v7, v8, Lwx;->O:[J

    invoke-static {v7, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v5

    .line 163
    iget-object v6, v8, Lwx;->P:[S

    int-to-short v7, v1

    aput-short v7, v6, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 166
    :cond_8
    array-length v1, v3

    invoke-static {v3, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    iput-object v1, v8, Lwx;->Q:[J

    .line 167
    iget-object v1, v8, Lwx;->Q:[J

    invoke-static {v1}, Ljava/util/Arrays;->sort([J)V

    .line 169
    iget-object v1, v8, Lwx;->Q:[J

    array-length v1, v1

    new-array v1, v1, [S

    iput-object v1, v8, Lwx;->R:[S

    move v1, v4

    .line 170
    :goto_5
    array-length v2, v3

    if-ge v1, v2, :cond_9

    .line 171
    aget-wide v5, v3, v1

    .line 172
    iget-object v2, v8, Lwx;->Q:[J

    invoke-static {v2, v5, v6}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result v2

    .line 173
    iget-object v5, v8, Lwx;->R:[S

    int-to-short v6, v1

    aput-short v6, v5, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 176
    :cond_9
    iput-object v11, v8, Lwx;->U:[Ljava/lang/Class;

    if-eqz v11, :cond_d

    .line 178
    new-instance v1, Ljava/util/HashMap;

    array-length v2, v11

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v1, v8, Lwx;->X:Ljava/util/Map;

    .line 179
    array-length v1, v11

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, v8, Lwx;->V:[Ljava/lang/String;

    .line 180
    :goto_6
    array-length v1, v11

    if-ge v4, v1, :cond_e

    .line 181
    aget-object v1, v11, v4

    if-eqz v12, :cond_a

    .line 184
    array-length v2, v12

    add-int/lit8 v3, v4, 0x1

    if-lt v2, v3, :cond_a

    .line 185
    aget-object v2, v12, v4

    goto :goto_7

    :cond_a
    move-object v2, v0

    :goto_7
    if-eqz v2, :cond_b

    .line 187
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 188
    :cond_b
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    .line 190
    :cond_c
    invoke-static {v2}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v5

    .line 191
    iget-object v3, v8, Lwx;->X:Ljava/util/Map;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v3, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v1, v8, Lwx;->V:[Ljava/lang/String;

    aput-object v2, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 195
    :cond_d
    iput-object v0, v8, Lwx;->X:Ljava/util/Map;

    .line 196
    iput-object v0, v8, Lwx;->V:[Ljava/lang/String;

    :cond_e
    move-object/from16 v0, p11

    .line 198
    iput-object v0, v8, Lwx;->W:Ljava/lang/Class;

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Ljava/lang/Class;[Ljava/lang/String;[Lsu;)V
    .locals 13
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
            "Ljava/lang/Class;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Lsu;",
            ")V"
        }
    .end annotation

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v12, p11

    .line 90
    invoke-direct/range {v0 .. v12}, Lwx;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lsu;)V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Lsu;)V
    .locals 13
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

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-wide/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v12, p9

    .line 51
    invoke-direct/range {v0 .. v12}, Lwx;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;JLaai;Ljava/util/function/Supplier;Ljava/util/function/Function;[Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/Class;[Lsu;)V

    return-void
.end method


# virtual methods
.method public a(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TT;"
        }
    .end annotation

    .line 376
    iget-boolean v0, p0, Lwx;->T:Z

    const/4 v1, 0x0

    const-string v2, "create instance error, "

    if-eqz v0, :cond_1

    iget-object v0, p0, Lwx;->S:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_1

    .line 379
    :try_start_0
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    iget-boolean p2, p0, Lwx;->af:Z

    if-eqz p2, :cond_0

    .line 385
    invoke-virtual {p0, p1}, Lwx;->a(Ljava/lang/Object;)V

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 381
    :goto_0
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwx;->Y:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 393
    :cond_1
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lwx;->d(J)Ljava/lang/Object;

    move-result-object p1

    .line 394
    iget-boolean p2, p0, Lwx;->af:Z

    if-eqz p2, :cond_2

    .line 395
    invoke-virtual {p0, p1}, Lwx;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :cond_2
    return-object p1

    :catch_3
    move-exception p1

    const/4 p2, 0x1

    .line 401
    iput-boolean p2, p0, Lwx;->T:Z

    .line 403
    iget-object p2, p0, Lwx;->S:Ljava/lang/reflect/Constructor;

    if-eqz p2, :cond_4

    .line 405
    :try_start_2
    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 406
    iget-boolean p2, p0, Lwx;->af:Z

    if-eqz p2, :cond_3

    .line 407
    invoke-virtual {p0, p1}, Lwx;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_3
    return-object p1

    :catch_4
    move-exception p1

    goto :goto_1

    :catch_5
    move-exception p1

    goto :goto_1

    :catch_6
    move-exception p1

    .line 411
    :goto_1
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwx;->Y:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 415
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwx;->Y:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

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

    .line 463
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    return-object v6

    .line 467
    :cond_0
    iget-object v1, p0, Lwx;->Y:Ljava/lang/Class;

    iget-wide v2, p0, Lwx;->ad:J

    iget-wide v4, p0, Lwx;->ab:J

    or-long/2addr v4, p4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 468
    invoke-interface {v0}, Lwk;->d_()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lwx;->Y:Ljava/lang/Class;

    if-eq v1, v2, :cond_1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 469
    invoke-interface/range {v0 .. v5}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 472
    :cond_1
    iget-boolean v0, p0, Lwx;->ag:Z

    if-nez v0, :cond_2

    .line 473
    iget-object v0, p0, Lwx;->Y:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;)V

    .line 476
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 477
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 478
    invoke-virtual/range {p0 .. p5}, Lwx;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 480
    :cond_3
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

    .line 484
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    const/4 v0, 0x0

    move-object v1, v6

    .line 488
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v1, :cond_5

    .line 536
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v0

    or-long/2addr v0, p4

    invoke-virtual {p0, v0, v1}, Lwx;->a(J)Ljava/lang/Object;

    move-result-object v1

    .line 539
    :cond_5
    iget-object v0, p0, Lwx;->ah:Laai;

    if-eqz v0, :cond_6

    .line 540
    iget-object v0, p0, Lwx;->ah:Laai;

    invoke-virtual {v0, v1}, Laai;->b(Ljava/lang/Object;)V

    :cond_6
    return-object v1

    .line 492
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->H()J

    move-result-wide v2

    .line 493
    iget-wide v4, p0, Lwx;->M:J

    cmp-long v4, v2, v4

    if-nez v4, :cond_b

    if-nez v0, :cond_b

    .line 494
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->F()J

    move-result-wide v2

    .line 495
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v4

    .line 496
    invoke-virtual {p0, v4, v2, v3}, Lwx;->a(Lcom/alibaba/fastjson2/u$c;J)Lwk;

    move-result-object v2

    if-nez v2, :cond_9

    .line 498
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v2

    .line 499
    invoke-virtual {v4, v2, v6}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/String;Ljava/lang/Class;)Lwk;

    move-result-object v3

    if-eqz v3, :cond_8

    move-object v2, v3

    goto :goto_1

    .line 502
    :cond_8
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auotype not support : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    :goto_1
    if-ne v2, p0, :cond_a

    goto :goto_2

    :cond_a
    const/4 v0, 0x1

    .line 510
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Z)V

    move-object v0, v2

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    .line 511
    invoke-interface/range {v0 .. v5}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_b
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_c

    goto :goto_2

    .line 518
    :cond_c
    invoke-virtual {p0, v2, v3}, Lwx;->b(J)Lsu;

    move-result-object v2

    if-nez v2, :cond_d

    .line 519
    iget-wide v3, p0, Lwx;->ab:J

    or-long/2addr v3, p4

    invoke-virtual {p1, v3, v4}, Lcom/alibaba/fastjson2/u;->b(J)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 520
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->I()J

    move-result-wide v2

    .line 521
    invoke-virtual {p0, v2, v3}, Lwx;->c(J)Lsu;

    move-result-object v2

    :cond_d
    if-nez v2, :cond_e

    .line 524
    invoke-virtual {p0, p1, v1}, Lwx;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    goto :goto_2

    :cond_e
    if-nez v1, :cond_f

    .line 529
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v3

    or-long/2addr v3, p4

    invoke-virtual {p0, v3, v4}, Lwx;->a(J)Ljava/lang/Object;

    move-result-object v1

    .line 532
    :cond_f
    invoke-virtual {v2, p1, v1}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method public a(Ljava/util/Map;J)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "J)TT;"
        }
    .end annotation

    .line 583
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v0

    .line 584
    iget-object v1, p0, Lwx;->L:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 586
    instance-of v2, v1, Ljava/lang/String;

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_3

    .line 587
    check-cast v1, Ljava/lang/String;

    .line 588
    invoke-static {v1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v5

    const/4 v2, 0x0

    .line 590
    sget-object v7, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v7, v7, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v7, p2

    cmp-long v7, v7, v3

    if-nez v7, :cond_0

    instance-of v7, p0, Lzy;

    if-eqz v7, :cond_1

    .line 591
    :cond_0
    invoke-virtual {p0, v0, v5, v6}, Lwx;->a(Lzx;J)Lwk;

    move-result-object v2

    :cond_1
    if-nez v2, :cond_2

    .line 596
    invoke-virtual {p0}, Lwx;->d_()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Lwx;->getFeatures()J

    move-result-wide v5

    or-long/2addr v5, p2

    .line 595
    invoke-virtual {v0, v1, v2, v5, v6}, Lzx;->a(Ljava/lang/String;Ljava/lang/Class;J)Lwk;

    move-result-object v2

    :cond_2
    if-eq v2, p0, :cond_3

    if-eqz v2, :cond_3

    .line 601
    invoke-interface {v2, p1, p2, p3}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 605
    :cond_3
    invoke-virtual {p0, v3, v4}, Lwx;->a(J)Ljava/lang/Object;

    move-result-object v6

    .line 607
    iget-object v1, p0, Lwx;->ae:Lsu;

    if-nez v1, :cond_9

    iget-wide v1, p0, Lwx;->ab:J

    or-long/2addr v1, p2

    sget-object v5, Lcom/alibaba/fastjson2/u$d;->SupportSmartMatch:Lcom/alibaba/fastjson2/u$d;

    iget-wide v7, v5, Lcom/alibaba/fastjson2/u$d;->mask:J

    sget-object v5, Lcom/alibaba/fastjson2/u$d;->ErrorOnUnknownProperties:Lcom/alibaba/fastjson2/u$d;

    iget-wide v9, v5, Lcom/alibaba/fastjson2/u$d;->mask:J

    or-long/2addr v7, v9

    and-long/2addr v1, v7

    cmp-long v1, v1, v3

    if-nez v1, :cond_9

    const/4 v1, 0x0

    move v2, v1

    .line 610
    :goto_0
    iget-object v5, p0, Lwx;->N:[Lsu;

    array-length v7, v5

    if-ge v2, v7, :cond_c

    .line 611
    aget-object v5, v5, v2

    .line 612
    iget-object v7, v5, Lsu;->b:Ljava/lang/String;

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_4

    goto :goto_2

    .line 617
    :cond_4
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    iget-object v9, v5, Lsu;->d:Ljava/lang/reflect/Type;

    if-ne v8, v9, :cond_5

    .line 618
    invoke-virtual {v5, v6, v7}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 620
    :cond_5
    instance-of v8, v5, Lvo;

    if-eqz v8, :cond_6

    instance-of v8, v7, Lcom/alibaba/fastjson2/JSONArray;

    if-eqz v8, :cond_6

    .line 623
    invoke-virtual {v5, v0}, Lsu;->a(Lzx;)Lwk;

    move-result-object v8

    .line 624
    check-cast v7, Lcom/alibaba/fastjson2/JSONArray;

    invoke-interface {v8, v7}, Lwk;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v7

    .line 625
    invoke-virtual {v5, v6, v7}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 627
    :cond_6
    instance-of v8, v7, Lcom/alibaba/fastjson2/e;

    if-eqz v8, :cond_8

    iget-object v8, v5, Lsu;->d:Ljava/lang/reflect/Type;

    const-class v9, Lcom/alibaba/fastjson2/e;

    if-eq v8, v9, :cond_8

    .line 630
    check-cast v7, Lcom/alibaba/fastjson2/e;

    .line 631
    iget-wide v8, p0, Lwx;->ab:J

    or-long/2addr v8, p2

    sget-object v10, Lcom/alibaba/fastjson2/u$d;->FieldBased:Lcom/alibaba/fastjson2/u$d;

    iget-wide v10, v10, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v8, v10

    cmp-long v8, v8, v3

    if-eqz v8, :cond_7

    const/4 v8, 0x1

    goto :goto_1

    :cond_7
    move v8, v1

    .line 632
    :goto_1
    iget-object v9, v5, Lsu;->d:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v9, v8}, Lzx;->a(Ljava/lang/reflect/Type;Z)Lwk;

    move-result-object v8

    .line 633
    invoke-interface {v8, v7, p2, p3}, Lwk;->a(Ljava/util/Map;J)Ljava/lang/Object;

    move-result-object v7

    .line 634
    invoke-virtual {v5, v6, v7}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 638
    :cond_8
    invoke-virtual {v5, v6, v7, p2, p3}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 642
    :cond_9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 643
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 644
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 646
    invoke-virtual {p0, v2}, Lwx;->a(Ljava/lang/String;)Lsu;

    move-result-object v3

    if-nez v3, :cond_a

    .line 648
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v0, p0

    move-object v1, v6

    move-wide v4, p2

    invoke-virtual/range {v0 .. v5}, Lwx;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V

    goto :goto_3

    :cond_a
    if-eqz v1, :cond_b

    .line 653
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    iget-object v2, v3, Lsu;->d:Ljava/lang/reflect/Type;

    if-ne v0, v2, :cond_b

    .line 655
    invoke-virtual {v3, v6, v1}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    .line 657
    :cond_b
    invoke-virtual {v3, v6, v1, p2, p3}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_3

    .line 662
    :cond_c
    invoke-virtual {p0}, Lwx;->e()Ljava/util/function/Function;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 664
    invoke-interface {p1, v6}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_d
    return-object v6
.end method

.method public a(Lcom/alibaba/fastjson2/u$c;J)Lwk;
    .locals 1

    .line 561
    iget-object v0, p0, Lwx;->X:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 562
    iget-object v0, p0, Lwx;->X:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 567
    :cond_0
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u$c;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    return-object p1

    .line 570
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/alibaba/fastjson2/u$c;->a(J)Lwk;

    move-result-object p1

    return-object p1
.end method

.method public a(Lzx;J)Lwk;
    .locals 1

    .line 548
    iget-object v0, p0, Lwx;->X:Ljava/util/Map;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 549
    iget-object v0, p0, Lwx;->X:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Class;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 553
    :cond_0
    invoke-virtual {p1, p2}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object p1

    return-object p1

    .line 556
    :cond_1
    invoke-virtual {p1, p2, p3}, Lzx;->a(J)Lwk;

    move-result-object p1

    return-object p1
.end method

.method protected a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;I)V
    .locals 3

    const/4 v0, 0x0

    .line 312
    :goto_0
    iget-object v1, p0, Lwx;->N:[Lsu;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    if-lt v0, p3, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    aget-object v1, v1, v0

    .line 317
    invoke-virtual {v1, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_1
    array-length p2, v1

    :goto_2
    if-ge p2, p3, :cond_2

    .line 321
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->P()V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 351
    :goto_0
    iget-object v1, p0, Lwx;->N:[Lsu;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 352
    aget-object v1, v1, v0

    .line 353
    iget-object v2, v1, Lsu;->j:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 355
    invoke-virtual {v1, p1, v2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
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

    .line 283
    iget-boolean v0, p0, Lwx;->ag:Z

    if-nez v0, :cond_0

    .line 284
    iget-object v0, p0, Lwx;->Y:Ljava/lang/Class;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;)V

    .line 287
    :cond_0
    invoke-virtual {p0, p1, p4, p5}, Lwx;->b(Lcom/alibaba/fastjson2/u;J)Lwk;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-wide v5, p4

    .line 289
    invoke-interface/range {v1 .. v6}, Lwk;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    const-wide/16 p2, 0x0

    .line 292
    invoke-virtual {p0, p2, p3}, Lwx;->a(J)Ljava/lang/Object;

    move-result-object p2

    .line 294
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result p3

    .line 295
    iget-object p4, p0, Lwx;->N:[Lsu;

    array-length p4, p4

    if-ne p3, p4, :cond_2

    const/4 p3, 0x0

    .line 296
    :goto_0
    iget-object p4, p0, Lwx;->N:[Lsu;

    array-length p5, p4

    if-ge p3, p5, :cond_3

    .line 297
    aget-object p4, p4, p3

    .line 298
    invoke-virtual {p4, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 301
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lwx;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;I)V

    .line 304
    :cond_3
    iget-object p1, p0, Lwx;->aa:Ljava/util/function/Function;

    if-eqz p1, :cond_4

    .line 305
    iget-object p1, p0, Lwx;->aa:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_4
    return-object p2
.end method

.method public b(J)Lsu;
    .locals 1

    .line 420
    iget-object v0, p0, Lwx;->O:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 425
    :cond_0
    iget-object p2, p0, Lwx;->P:[S

    aget-short p1, p2, p1

    .line 426
    iget-object p2, p0, Lwx;->N:[Lsu;

    aget-object p1, p2, p1

    return-object p1
.end method

.method protected b(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    .line 574
    :goto_0
    iget-object v1, p0, Lwx;->N:[Lsu;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 575
    aget-object v1, v1, v0

    .line 576
    iget-object v2, v1, Lsu;->c:Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    if-ne v2, v3, :cond_0

    const-string v2, ""

    .line 577
    invoke-virtual {v1, p1, v2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public c(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            "J)TT;"
        }
    .end annotation

    .line 257
    iget-boolean p2, p0, Lwx;->ag:Z

    if-nez p2, :cond_0

    .line 258
    iget-object p2, p0, Lwx;->Y:Ljava/lang/Class;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;)V

    .line 261
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->y()Z

    .line 262
    iget-object p2, p0, Lwx;->Z:Ljava/util/function/Supplier;

    invoke-interface {p2}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p2

    const/4 p3, 0x0

    .line 264
    :goto_0
    iget-object p4, p0, Lwx;->N:[Lsu;

    array-length p5, p4

    if-ge p3, p5, :cond_1

    .line 265
    aget-object p4, p4, p3

    invoke-virtual {p4, p1, p2}, Lsu;->b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 268
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 272
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    .line 274
    iget-object p1, p0, Lwx;->aa:Ljava/util/function/Function;

    if-eqz p1, :cond_2

    .line 275
    iget-object p1, p0, Lwx;->aa:Ljava/util/function/Function;

    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    return-object p2

    .line 269
    :cond_3
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "array to bean end error"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 203
    iget-object v0, p0, Lwx;->L:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)Lsu;
    .locals 1

    .line 436
    iget-object v0, p0, Lwx;->Q:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->binarySearch([JJ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 441
    :cond_0
    iget-object p2, p0, Lwx;->R:[S

    aget-short p1, p2, p1

    .line 442
    iget-object p2, p0, Lwx;->N:[Lsu;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection;",
            ")TT;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 361
    invoke-virtual {p0, v0, v1}, Lwx;->a(J)Ljava/lang/Object;

    move-result-object v0

    .line 363
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 364
    iget-object v3, p0, Lwx;->N:[Lsu;

    array-length v4, v3

    if-lt v1, v4, :cond_0

    goto :goto_1

    .line 367
    :cond_0
    aget-object v3, v3, v1

    .line 368
    invoke-virtual {v3, v0, v2}, Lsu;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public final d()J
    .locals 2

    .line 208
    iget-wide v0, p0, Lwx;->M:J

    return-wide v0
.end method

.method protected d(J)Ljava/lang/Object;
    .locals 2

    .line 326
    sget-object v0, Lcom/alibaba/fastjson2/u$d;->UseDefaultConstructorAsPossible:Lcom/alibaba/fastjson2/u$d;

    iget-wide v0, v0, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    const-string p2, "create instance error, "

    if-eqz p1, :cond_1

    iget-object p1, p0, Lwx;->S:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_1

    .line 328
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 331
    :try_start_0
    iget-object p1, p0, Lwx;->S:Ljava/lang/reflect/Constructor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    iget-boolean p2, p0, Lwx;->af:Z

    if-eqz p2, :cond_0

    .line 337
    invoke-virtual {p0, p1}, Lwx;->a(Ljava/lang/Object;)V

    :cond_0
    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 333
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lwx;->Y:Ljava/lang/Class;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 343
    :cond_1
    iget-object p1, p0, Lwx;->Z:Ljava/util/function/Supplier;

    if-eqz p1, :cond_2

    .line 346
    iget-object p1, p0, Lwx;->Z:Ljava/util/function/Supplier;

    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 344
    :cond_2
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lwx;->Y:Ljava/lang/Class;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final e()Ljava/util/function/Function;
    .locals 1

    .line 252
    iget-object v0, p0, Lwx;->aa:Ljava/util/function/Function;

    return-object v0
.end method

.method public final getFeatures()J
    .locals 2

    .line 213
    iget-wide v0, p0, Lwx;->ab:J

    return-wide v0
.end method
