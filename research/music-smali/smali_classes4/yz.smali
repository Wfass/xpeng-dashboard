.class final Lyz;
.super Lza;
.source "ObjectReaderImplMapString.java"


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;J)V
    .locals 8

    .line 15
    const-class v4, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v7}, Lza;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;JLjava/util/function/Function;)V

    return-void
.end method


# virtual methods
.method public readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7

    .line 20
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/u;->b:Z

    if-eqz v0, :cond_0

    .line 21
    invoke-virtual/range {p0 .. p5}, Lyz;->a(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->m()Z

    move-result p2

    if-nez p2, :cond_4

    .line 26
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result p2

    const/16 v0, 0x5b

    if-ne p2, v0, :cond_2

    .line 27
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->E()V

    .line 28
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->a()C

    move-result p2

    const/16 v0, 0x7b

    if-ne p2, v0, :cond_1

    .line 29
    const-class v3, Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p3

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lyz;->readObject(Lcom/alibaba/fastjson2/u;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p2

    .line 30
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->z()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 31
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->x()Z

    return-object p2

    .line 35
    :cond_1
    new-instance p2, Lcom/alibaba/fastjson2/c;

    const-string p3, "expect \'{\', but \'[\'"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/u;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p2

    .line 38
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->n()Z

    move-result p2

    if-nez p2, :cond_3

    const/16 v1, 0x22

    const/16 v2, 0x6e

    const/16 v3, 0x75

    const/16 v4, 0x6c

    const/16 v5, 0x6c

    const/16 v6, 0x22

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Lcom/alibaba/fastjson2/u;->a(CCCCCC)Z

    move-result p2

    if-eqz p2, :cond_4

    :cond_3
    const/4 p1, 0x0

    return-object p1

    .line 43
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->h()Lcom/alibaba/fastjson2/u$c;

    move-result-object p2

    .line 45
    iget-object p3, p0, Lyz;->b:Ljava/lang/Class;

    const-class v0, Ljava/util/HashMap;

    if-ne p3, v0, :cond_5

    .line 46
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    goto :goto_0

    .line 47
    :cond_5
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v0

    or-long/2addr v0, p4

    invoke-virtual {p0, v0, v1}, Lyz;->a(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 48
    :goto_0
    invoke-virtual {p2}, Lcom/alibaba/fastjson2/u$c;->i()J

    move-result-wide v0

    or-long/2addr p4, v0

    const/4 p2, 0x0

    .line 51
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->o()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 p2, 0x2c

    .line 81
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/u;->a(C)Z

    return-object p3

    .line 55
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->J()Ljava/lang/String;

    move-result-object v0

    .line 56
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aN()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    if-nez p2, :cond_7

    .line 57
    sget-object v4, Lcom/alibaba/fastjson2/u$d;->SupportAutoType:Lcom/alibaba/fastjson2/u$d;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v4, p4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_7

    .line 59
    invoke-virtual {p0}, Lyz;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    goto :goto_2

    :cond_7
    if-nez v1, :cond_8

    .line 63
    sget-object v4, Lcom/alibaba/fastjson2/u$d;->IgnoreNullPropertyValue:Lcom/alibaba/fastjson2/u$d;

    iget-wide v4, v4, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v4, p4

    cmp-long v4, v4, v2

    if-eqz v4, :cond_8

    goto :goto_2

    .line 67
    :cond_8
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 69
    sget-object v5, Lcom/alibaba/fastjson2/u$d;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/u$d;

    iget-wide v5, v5, Lcom/alibaba/fastjson2/u$d;->mask:J

    and-long/2addr v5, p4

    cmp-long v2, v5, v2

    if-eqz v2, :cond_a

    .line 70
    instance-of v2, v4, Ljava/util/Collection;

    if-eqz v2, :cond_9

    .line 71
    move-object v2, v4

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-interface {p3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 74
    :cond_9
    invoke-static {v4, v1}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v1

    .line 75
    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1
.end method
