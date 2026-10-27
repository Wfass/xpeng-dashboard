.class final Lwj;
.super Lzw;
.source "ObjectArrayTypedReader.java"


# instance fields
.field final a:Ljava/lang/Class;

.field final b:Ljava/lang/Class;

.field final c:J

.field final d:Ljava/lang/String;

.field final e:J


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 2

    .line 23
    invoke-direct {p0, p1}, Lzw;-><init>(Ljava/lang/Class;)V

    .line 24
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lwj;->a:Ljava/lang/Class;

    .line 25
    iget-object p1, p0, Lwj;->a:Ljava/lang/Class;

    invoke-static {p1}, Labo;->a(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 26
    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lwj;->c:J

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lwj;->d:Ljava/lang/String;

    .line 28
    iget-object p1, p0, Lwj;->d:Ljava/lang/String;

    invoke-static {p1}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lwj;->e:J

    .line 30
    iget-object p1, p0, Lwj;->a:Ljava/lang/Class;

    invoke-static {p1}, Labo;->d(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    iput-object p1, p0, Lwj;->b:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 14

    move-object v0, p0

    move-object v7, p1

    .line 80
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->c()B

    move-result v1

    const/16 v2, -0x6e

    if-ne v1, v2, :cond_3

    .line 81
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 82
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->G()J

    move-result-wide v2

    .line 83
    sget-wide v4, Lwh;->b:J

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    iget-wide v4, v0, Lwj;->e:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-wide/from16 v8, p4

    .line 86
    invoke-virtual {p1, v8, v9}, Lcom/alibaba/fastjson2/u;->d(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 87
    iget-object v4, v0, Lwj;->h:Ljava/lang/Class;

    move-object v1, p1

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/u;->a(JLjava/lang/Class;J)Lwk;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-wide/from16 v5, p4

    .line 92
    invoke-interface/range {v1 .. v6}, Lwk;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 89
    :cond_1
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "auotype not support : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    .line 95
    :cond_2
    new-instance v1, Lcom/alibaba/fastjson2/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not support autotype : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    move-wide/from16 v8, p4

    .line 99
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->p()I

    move-result v10

    const/4 v1, -0x1

    const/4 v11, 0x0

    if-ne v10, v1, :cond_4

    return-object v11

    .line 104
    :cond_4
    iget-object v1, v0, Lwj;->b:Ljava/lang/Class;

    invoke-static {v1, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [Ljava/lang/Object;

    const/4 v1, 0x0

    move v13, v1

    :goto_1
    if-ge v13, v10, :cond_8

    .line 108
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->q()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 109
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->r()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".."

    .line 110
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v1, v12

    goto :goto_2

    .line 114
    :cond_5
    invoke-static {v1}, Lcom/alibaba/fastjson2/g;->a(Ljava/lang/String;)Lcom/alibaba/fastjson2/g;

    move-result-object v1

    invoke-virtual {p1, v12, v13, v1}, Lcom/alibaba/fastjson2/u;->a([Ljava/lang/Object;ILcom/alibaba/fastjson2/g;)V

    move-object v1, v11

    goto :goto_2

    .line 117
    :cond_6
    iget-object v2, v0, Lwj;->b:Ljava/lang/Class;

    iget-wide v3, v0, Lwj;->c:J

    move-object v1, p1

    move-wide/from16 v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/u;->a(Ljava/lang/Class;JJ)Lwk;

    move-result-object v1

    if-eqz v1, :cond_7

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v2, p1

    move-wide/from16 v5, p4

    .line 119
    invoke-interface/range {v1 .. v6}, Lwk;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    goto :goto_2

    .line 121
    :cond_7
    iget-object v1, v0, Lwj;->a:Ljava/lang/Class;

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 125
    :goto_2
    aput-object v1, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_8
    return-object v12
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 9

    .line 132
    iget-object v0, p0, Lwj;->b:Ljava/lang/Class;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 134
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 136
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 137
    iget-object v5, p0, Lwj;->a:Ljava/lang/Class;

    if-eq v4, v5, :cond_0

    .line 138
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v5

    .line 139
    iget-object v6, p0, Lwj;->a:Ljava/lang/Class;

    invoke-virtual {v5, v4, v6}, Lzx;->a(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 141
    invoke-interface {v4, v3}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 146
    :cond_0
    iget-object v4, p0, Lwj;->a:Ljava/lang/Class;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 147
    invoke-static {}, Lcom/alibaba/fastjson2/d;->e()Lzx;

    move-result-object v4

    iget-object v5, p0, Lwj;->a:Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lzx;->a(Ljava/lang/reflect/Type;)Lwk;

    move-result-object v4

    .line 148
    instance-of v5, v3, Ljava/util/Map;

    if-eqz v5, :cond_1

    .line 149
    check-cast v3, Ljava/util/Map;

    new-array v5, v1, [Lcom/alibaba/fastjson2/u$d;

    invoke-interface {v4, v3, v5}, Lwk;->a(Ljava/util/Map;[Lcom/alibaba/fastjson2/u$d;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 150
    :cond_1
    instance-of v5, v3, Ljava/util/Collection;

    if-eqz v5, :cond_2

    .line 151
    check-cast v3, Ljava/util/Collection;

    invoke-interface {v4, v3}, Lwk;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 152
    :cond_2
    instance-of v5, v3, [Ljava/lang/Object;

    if-eqz v5, :cond_3

    .line 153
    check-cast v3, [Ljava/lang/Object;

    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONArray;->of([Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v3

    invoke-interface {v4, v3}, Lwk;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    :cond_3
    if-eqz v3, :cond_6

    .line 155
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 156
    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 157
    invoke-static {v3}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v5

    .line 158
    new-instance v6, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v6, v5}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    move v7, v1

    :goto_1
    if-ge v7, v5, :cond_4

    .line 160
    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 162
    :cond_4
    invoke-interface {v4, v6}, Lwk;->createInstance(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_2

    .line 164
    :cond_5
    new-instance p1, Lcom/alibaba/fastjson2/c;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "component type not match, expect "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lwj;->a:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", but "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    :goto_2
    add-int/lit8 v4, v2, 0x1

    .line 168
    aput-object v3, v0, v2

    move v2, v4

    goto/16 :goto_0

    :cond_7
    return-object v0
.end method

.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    .line 35
    iget-boolean p4, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz p4, :cond_0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 36
    invoke-virtual/range {v0 .. v5}, Lwj;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aR()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    return-object p3

    .line 43
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->y()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 44
    iget-object p2, p0, Lwj;->a:Ljava/lang/Class;

    const/16 p3, 0x10

    invoke-static {p2, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result p4

    if-nez p4, :cond_4

    add-int/lit8 p4, p3, 0x1

    .line 48
    array-length p5, p2

    sub-int p5, p4, p5

    if-lez p5, :cond_3

    .line 49
    array-length p5, p2

    shr-int/lit8 v0, p5, 0x1

    add-int/2addr p5, v0

    sub-int v0, p5, p4

    if-gez v0, :cond_2

    move p5, p4

    .line 55
    :cond_2
    invoke-static {p2, p5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    .line 58
    :cond_3
    iget-object p5, p0, Lwj;->a:Ljava/lang/Class;

    invoke-virtual {p1, p5}, Lcom/alibaba/fastjson2/u;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p5

    .line 59
    aput-object p5, p2, p3

    .line 61
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    move p3, p4

    goto :goto_0

    :cond_4
    const/16 p4, 0x2c

    .line 63
    invoke-virtual {p1, p4}, Lcom/alibaba/fastjson2/u;->a(C)Z

    .line 65
    invoke-static {p2, p3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 68
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result p2

    const/16 p4, 0x22

    if-ne p2, p4, :cond_6

    .line 69
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object p2

    .line 70
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_6

    return-object p3

    .line 75
    :cond_6
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "TODO"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2
.end method
