.class final Laec;
.super Labq;
.source "FieldWriterObjectArrayMethod.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Labq<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final A:Ljava/lang/reflect/Type;

.field final B:Ljava/lang/Class;

.field C:Laem;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V
    .locals 13

    move-object v11, p0

    move-object v12, p2

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p3

    move-wide/from16 v3, p4

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move-object/from16 v10, p11

    .line 33
    invoke-direct/range {v0 .. v10}, Labq;-><init>(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Field;Ljava/lang/reflect/Method;)V

    .line 34
    iput-object v12, v11, Laec;->A:Ljava/lang/reflect/Type;

    .line 35
    instance-of v0, v12, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 36
    move-object v0, v12

    check-cast v0, Ljava/lang/Class;

    iput-object v0, v11, Laec;->B:Ljava/lang/Class;

    goto :goto_0

    .line 38
    :cond_0
    invoke-static {p2}, Labo;->b(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, v11, Laec;->B:Ljava/lang/Class;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/reflect/Type;)Laem;
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 53
    iget-object v1, p0, Laec;->A:Ljava/lang/reflect/Type;

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object p1

    return-object p1

    .line 54
    :cond_1
    :goto_0
    iget-object v1, p0, Laec;->C:Laem;

    if-eqz v1, :cond_2

    return-object v1

    .line 58
    :cond_2
    const-class v1, [Ljava/lang/Float;

    if-ne p2, v1, :cond_4

    .line 59
    iget-object p1, p0, Laec;->g:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_3

    .line 60
    new-instance p1, Lafb;

    const-class p2, Ljava/lang/Float;

    iget-object v0, p0, Laec;->g:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lafb;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 62
    :cond_3
    sget-object p1, Lafb;->a:Lafb;

    return-object p1

    .line 64
    :cond_4
    const-class v1, [Ljava/lang/Double;

    if-ne p2, v1, :cond_6

    .line 65
    iget-object p1, p0, Laec;->g:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_5

    .line 66
    new-instance p1, Lafb;

    const-class p2, Ljava/lang/Double;

    iget-object v0, p0, Laec;->g:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lafb;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 68
    :cond_5
    sget-object p1, Lafb;->b:Lafb;

    return-object p1

    .line 70
    :cond_6
    const-class v1, [Ljava/math/BigDecimal;

    if-ne p2, v1, :cond_8

    .line 71
    iget-object p1, p0, Laec;->g:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_7

    .line 72
    new-instance p1, Lafb;

    const-class p2, Ljava/math/BigDecimal;

    iget-object v0, p0, Laec;->g:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lafb;-><init>(Ljava/lang/Class;Ljava/text/DecimalFormat;)V

    return-object p1

    .line 74
    :cond_7
    sget-object p1, Lafb;->c:Lafb;

    return-object p1

    .line 76
    :cond_8
    const-class v1, Ljava/lang/Float;

    if-ne p2, v1, :cond_a

    .line 77
    iget-object p1, p0, Laec;->g:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_9

    .line 78
    new-instance p1, Lage;

    iget-object p2, p0, Laec;->g:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2}, Lage;-><init>(Ljava/text/DecimalFormat;)V

    return-object p1

    .line 80
    :cond_9
    sget-object p1, Lage;->a:Lage;

    return-object p1

    .line 82
    :cond_a
    const-class v1, Ljava/lang/Double;

    if-ne p2, v1, :cond_c

    .line 83
    iget-object p1, p0, Laec;->g:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_b

    .line 84
    new-instance p1, Lagb;

    iget-object p2, p0, Laec;->g:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2}, Lagb;-><init>(Ljava/text/DecimalFormat;)V

    return-object p1

    .line 86
    :cond_b
    sget-object p1, Lagb;->a:Lagb;

    return-object p1

    .line 88
    :cond_c
    const-class v1, Ljava/math/BigDecimal;

    if-ne p2, v1, :cond_e

    .line 89
    iget-object p1, p0, Laec;->g:Ljava/text/DecimalFormat;

    if-eqz p1, :cond_d

    .line 90
    new-instance p1, Lafp;

    iget-object p2, p0, Laec;->g:Ljava/text/DecimalFormat;

    invoke-direct {p1, p2, v0}, Lafp;-><init>(Ljava/text/DecimalFormat;Ljava/util/function/Function;)V

    return-object p1

    .line 92
    :cond_d
    sget-object p1, Lafp;->a:Lafp;

    return-object p1

    .line 95
    :cond_e
    iget-object p2, p0, Laec;->A:Ljava/lang/reflect/Type;

    iget-object v0, p0, Laec;->B:Ljava/lang/Class;

    .line 96
    invoke-virtual {p1, p2, v0}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;

    move-result-object p1

    iput-object p1, p0, Laec;->C:Laem;

    return-object p1
.end method

.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)V"
        }
    .end annotation

    .line 123
    invoke-virtual {p0, p2}, Laec;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    if-nez p2, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, p1, v0, p2}, Laec;->a(Lcom/alibaba/fastjson2/ab;Z[Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/alibaba/fastjson2/ab;Z[Ljava/lang/Object;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    if-eqz p2, :cond_0

    .line 138
    invoke-virtual/range {p0 .. p1}, Laec;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 141
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 145
    iget-object v1, v0, Laec;->a:Ljava/lang/String;

    invoke-virtual {v8, v1, v9}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 147
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    return-void

    .line 152
    :cond_1
    iget-boolean v1, v8, Lcom/alibaba/fastjson2/ab;->f:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    .line 153
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 154
    iget-object v4, v0, Laec;->c:Ljava/lang/Class;

    if-eq v1, v4, :cond_2

    .line 156
    invoke-static {v1}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    .line 155
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/ab;->c(Ljava/lang/String;)V

    .line 159
    :cond_2
    array-length v11, v9

    .line 160
    invoke-virtual {v8, v11}, Lcom/alibaba/fastjson2/ab;->c(I)V

    move v12, v2

    move-object v2, v3

    move v1, v10

    :goto_0
    if-ge v12, v11, :cond_8

    .line 162
    aget-object v13, v9, v12

    if-nez v13, :cond_3

    .line 164
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_3

    .line 169
    :cond_3
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v4, v3, :cond_5

    .line 172
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->e()Z

    move-result v1

    .line 173
    invoke-virtual {v0, v8, v4}, Laec;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/reflect/Type;)Laem;

    move-result-object v2

    if-eqz v1, :cond_4

    .line 176
    invoke-static {v4}, Lahq;->d(Ljava/lang/Class;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    :cond_4
    move v15, v1

    move-object v14, v2

    move-object/from16 v16, v4

    goto :goto_1

    :cond_5
    move v15, v1

    move-object v14, v2

    move-object/from16 v16, v3

    :goto_1
    if-eqz v15, :cond_6

    .line 185
    invoke-virtual {v8, v12, v13}, Lcom/alibaba/fastjson2/ab;->b(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 187
    invoke-virtual {v8, v1}, Lcom/alibaba/fastjson2/ab;->f(Ljava/lang/String;)V

    .line 188
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 193
    :cond_6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, v0, Laec;->A:Ljava/lang/reflect/Type;

    iget-wide v6, v0, Laec;->d:J

    move-object v1, v14

    move-object/from16 v2, p1

    move-object v3, v13

    invoke-interface/range {v1 .. v7}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V

    if-eqz v15, :cond_7

    .line 196
    invoke-virtual {v8, v13}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    :cond_7
    :goto_2
    move-object v2, v14

    move v1, v15

    move-object/from16 v3, v16

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_8
    if-eqz v10, :cond_9

    .line 201
    invoke-virtual {v8, v9}, Lcom/alibaba/fastjson2/ab;->b(Ljava/lang/Object;)V

    :cond_9
    return-void

    .line 207
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->m()V

    move-object v1, v3

    .line 208
    :goto_4
    array-length v4, v9

    if-ge v2, v4, :cond_e

    if-eqz v2, :cond_b

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->o()V

    .line 213
    :cond_b
    aget-object v4, v9, v2

    if-nez v4, :cond_c

    .line 215
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->q()V

    goto :goto_6

    .line 218
    :cond_c
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    if-ne v5, v3, :cond_d

    goto :goto_5

    .line 223
    :cond_d
    invoke-virtual {v0, v8, v5}, Laec;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/reflect/Type;)Laem;

    move-result-object v1

    move-object v3, v5

    .line 228
    :goto_5
    invoke-interface {v1, v8, v4}, Laem;->a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 230
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson2/ab;->n()V

    return-void
.end method

.method public b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 45
    :try_start_0
    iget-object v0, p0, Laec;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 47
    :goto_0
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "field.get error, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Laec;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public b(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/ab;",
            "TT;)Z"
        }
    .end annotation

    .line 104
    invoke-virtual {p0, p2}, Laec;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    const/4 v0, 0x1

    if-nez p2, :cond_1

    .line 107
    iget-wide v1, p0, Laec;->d:J

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->g()J

    move-result-wide v3

    or-long/2addr v1, v3

    .line 108
    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNulls:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v3, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->NullAsDefaultValue:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v3, v5

    sget-object p2, Lcom/alibaba/fastjson2/ab$b;->WriteNullListAsEmpty:Lcom/alibaba/fastjson2/ab$b;

    iget-wide v5, p2, Lcom/alibaba/fastjson2/ab$b;->mask:J

    or-long/2addr v3, v5

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p2, v1, v3

    if-eqz p2, :cond_0

    .line 109
    invoke-virtual {p0, p1}, Laec;->a(Lcom/alibaba/fastjson2/ab;)V

    .line 110
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->s()V

    return v0

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 117
    :cond_1
    invoke-virtual {p0, p1, v0, p2}, Laec;->a(Lcom/alibaba/fastjson2/ab;Z[Ljava/lang/Object;)V

    return v0
.end method
