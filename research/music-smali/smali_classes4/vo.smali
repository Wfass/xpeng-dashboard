.class public Lvo;
.super Lvv;
.source "FieldReaderList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lvv<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final w:J

.field final x:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V
    .locals 16

    move-object/from16 v14, p0

    move-object/from16 v15, p4

    move-object/from16 v13, p9

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p6

    move-wide/from16 v5, p7

    move-object/from16 v7, p9

    move-object/from16 v8, p10

    move-object/from16 v9, p11

    move-object/from16 v10, p12

    move-object/from16 v11, p13

    move-object/from16 v12, p14

    move-object/from16 v13, p15

    .line 38
    invoke-direct/range {v0 .. v13}, Lvv;-><init>(Ljava/lang/String;Ljava/lang/reflect/Type;Ljava/lang/Class;IJLjava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Laai;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/util/function/BiConsumer;)V

    .line 39
    iput-object v15, v14, Lvo;->t:Ljava/lang/reflect/Type;

    move-object/from16 v0, p5

    .line 40
    iput-object v0, v14, Lvo;->u:Ljava/lang/Class;

    .line 41
    iget-object v1, v14, Lvo;->u:Ljava/lang/Class;

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, v14, Lvo;->x:J

    if-nez p3, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    invoke-static/range {p3 .. p3}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v2

    :goto_1
    iput-wide v2, v14, Lvo;->w:J

    move-object/from16 v0, p9

    if-eqz v0, :cond_2

    .line 45
    const-class v1, Ljava/util/Date;

    if-ne v15, v1, :cond_2

    .line 46
    new-instance v1, Lxp;

    move-object/from16 v2, p10

    invoke-direct {v1, v0, v2}, Lxp;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    iput-object v1, v14, Lvo;->v:Lwk;

    :cond_2
    return-void
.end method


# virtual methods
.method public b(Lcom/alibaba/fastjson2/u;)Ljava/lang/Object;
    .locals 10

    .line 140
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 141
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result v0

    .line 143
    new-array v2, v0, [Ljava/lang/Object;

    .line 146
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v3

    .line 145
    invoke-virtual {p0, v3}, Lvo;->b(Lcom/alibaba/fastjson2/u$c;)Lwk;

    move-result-object v3

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    move-object v4, v3

    move-object v5, p1

    .line 148
    invoke-interface/range {v4 .. v9}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    :cond_0
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 153
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v0

    const/16 v2, 0x5b

    if-ne v0, v2, :cond_3

    .line 154
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    .line 155
    invoke-virtual {p0, v0}, Lvo;->b(Lcom/alibaba/fastjson2/u$c;)Lwk;

    move-result-object v7

    .line 157
    invoke-virtual {p0, v0}, Lvo;->c(Lcom/alibaba/fastjson2/u$c;)Ljava/util/Collection;

    move-result-object v0

    .line 158
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 159
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v7

    move-object v2, p1

    .line 161
    invoke-interface/range {v1 .. v6}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 160
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    return-object v0

    .line 172
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->v()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 173
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v0

    .line 174
    iget-object v2, p0, Lvo;->t:Ljava/lang/reflect/Type;

    instance-of v2, v2, Ljava/lang/Class;

    if-eqz v2, :cond_5

    const-class v2, Ljava/lang/Number;

    iget-object v3, p0, Lvo;->t:Ljava/lang/reflect/Type;

    check-cast v3, Ljava/lang/Class;

    .line 175
    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 177
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alibaba/fastjson2/u$c;->b()Lzx;

    move-result-object v2

    const-class v3, Ljava/lang/String;

    iget-object v4, p0, Lvo;->t:Ljava/lang/reflect/Type;

    invoke-virtual {v2, v3, v4}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 179
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lvo;->c(Lcom/alibaba/fastjson2/u$c;)Ljava/util/Collection;

    move-result-object p1

    const/16 v3, 0x2c

    .line 181
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    const-string v3, ","

    .line 182
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 184
    array-length v3, v0

    :goto_2
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 185
    invoke-interface {v2, v4}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 186
    invoke-interface {p1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-object p1

    .line 195
    :cond_5
    new-instance v0, Lcom/alibaba/fastjson2/c;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u;",
            "TT;)V"
        }
    .end annotation

    .line 66
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0, p1, p2}, Lvo;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/Object;)V

    return-void

    .line 71
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->g()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 72
    invoke-virtual {p0, p2, v1}, Lvo;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 76
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object v0

    .line 77
    invoke-virtual {p0, v0}, Lvo;->a(Lcom/alibaba/fastjson2/u$c;)Lwk;

    move-result-object v2

    .line 81
    iget-object v3, p0, Lvo;->y:Lwk;

    if-eqz v3, :cond_2

    .line 82
    iget-object v1, p0, Lvo;->y:Lwk;

    invoke-interface {v1}, Lwk;->e()Ljava/util/function/Function;

    move-result-object v1

    goto :goto_0

    .line 84
    :cond_2
    instance-of v3, v2, Lyp;

    if-eqz v3, :cond_3

    .line 85
    invoke-interface {v2}, Lwk;->e()Ljava/util/function/Function;

    move-result-object v1

    .line 89
    :cond_3
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result v3

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_7

    .line 91
    invoke-virtual {p0, v0}, Lvo;->b(Lcom/alibaba/fastjson2/u$c;)Lwk;

    move-result-object v4

    .line 93
    invoke-virtual {p0, v0}, Lvo;->c(Lcom/alibaba/fastjson2/u$c;)Ljava/util/Collection;

    move-result-object v11

    .line 94
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    const/4 v0, 0x0

    .line 96
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    .line 111
    invoke-interface {v1, v11}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/util/Collection;

    .line 113
    :cond_4
    invoke-virtual {p0, p2, v11}, Lvo;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 115
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    return-void

    .line 100
    :cond_5
    move-object v2, v11

    check-cast v2, Ljava/util/List;

    invoke-virtual {p1, v2, v0}, Lcom/alibaba/fastjson2/u;->a(Ljava/util/List;I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    move-object v5, v4

    move-object v6, p1

    .line 105
    invoke-interface/range {v5 .. v10}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 104
    invoke-interface {v11, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    const/16 v4, 0x7b

    if-ne v3, v4, :cond_a

    .line 117
    invoke-virtual {p0, v0}, Lvo;->b(Lcom/alibaba/fastjson2/u$c;)Lwk;

    move-result-object v0

    instance-of v0, v0, Lwz;

    if-eqz v0, :cond_a

    .line 118
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_8

    .line 119
    iget-object v3, p0, Lvo;->v:Lwk;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v7, p0, Lvo;->e:J

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    goto :goto_3

    .line 120
    :cond_8
    iget-object v3, p0, Lvo;->v:Lwk;

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-wide v7, p0, Lvo;->e:J

    move-object v4, p1

    invoke-interface/range {v3 .. v8}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    .line 121
    :goto_3
    iget-wide v3, p0, Lvo;->e:J

    invoke-interface {v2, v3, v4}, Lwk;->a(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    .line 122
    invoke-interface {v2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_9

    .line 124
    invoke-interface {v1, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    .line 126
    :cond_9
    invoke-virtual {p0, p2, v2}, Lvo;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    return-void

    .line 132
    :cond_a
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_b

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 133
    iget-wide v6, p0, Lvo;->e:J

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 134
    iget-wide v6, p0, Lvo;->e:J

    move-object v3, p1

    invoke-interface/range {v2 .. v7}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    .line 135
    :goto_4
    invoke-virtual {p0, p2, p1}, Lvo;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Lcom/alibaba/fastjson2/u$c;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/u$c;",
            ")",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Lvo;->c:Ljava/lang/Class;

    const-class v1, Ljava/util/List;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lvo;->c:Ljava/lang/Class;

    const-class v1, Ljava/util/Collection;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lvo;->c:Ljava/lang/Class;

    const-class v1, Ljava/util/ArrayList;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0, p1}, Lvo;->a(Lcom/alibaba/fastjson2/u$c;)Lwk;

    move-result-object p1

    invoke-interface {p1}, Lwk;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1

    .line 58
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method
