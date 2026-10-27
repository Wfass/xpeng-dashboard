.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;
.super Ljava/lang/Object;
.source "ObjectReaderImplListInt64.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# instance fields
.field final instanceType:Ljava/lang/Class;

.field final instanceTypeHash:J

.field final listType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->listType:Ljava/lang/Class;

    .line 24
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->instanceType:Ljava/lang/Class;

    .line 25
    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->instanceTypeHash:J

    return-void
.end method


# virtual methods
.method public createInstance(J)Ljava/lang/Object;
    .locals 1

    .line 30
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->instanceType:Ljava/lang/Class;

    const-class p2, Ljava/util/ArrayList;

    if-ne p1, p2, :cond_0

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 34
    :cond_0
    const-class p2, Ljava/util/LinkedList;

    if-ne p1, p2, :cond_1

    .line 35
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 39
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 41
    :catch_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create list error, type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->instanceType:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x0

    .line 47
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->createInstance(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 48
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 49
    invoke-static {v1}, Lcom/alibaba/fastjson2/util/TypeUtils;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 6

    .line 56
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 60
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->listType:Ljava/lang/Class;

    .line 62
    iget-wide v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->instanceTypeHash:J

    move-object v0, p1

    move-object v1, p2

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 64
    invoke-interface {p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object p2

    .line 68
    :cond_1
    const-class v0, Ljava/util/ArrayList;

    if-ne p2, v0, :cond_2

    .line 69
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 70
    :cond_2
    const-class v0, Lcom/alibaba/fastjson2/JSONArray;

    if-ne p2, v0, :cond_3

    .line 71
    new-instance p2, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p2}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 72
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->listType:Ljava/lang/Class;

    if-eq p2, v0, :cond_4

    .line 73
    invoke-interface {p3, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReader;->createInstance(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    goto :goto_0

    .line 75
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v0

    or-long/2addr p4, v0

    invoke-virtual {p0, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->createInstance(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 78
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result p4

    const/4 p5, 0x0

    :goto_1
    if-ge p5, p4, :cond_5

    .line 80
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64()Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p5, p5, 0x1

    goto :goto_1

    :cond_5
    if-eqz p3, :cond_6

    .line 84
    invoke-interface {p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getBuildFunction()Ljava/util/function/Function;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 86
    invoke-interface {p1, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    :cond_6
    return-object p2
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7

    .line 95
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 96
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 99
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 103
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isString()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 104
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide p2

    or-long/2addr p2, p4

    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->createInstance(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 105
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p3

    const/16 p4, 0x2c

    .line 106
    invoke-virtual {p3, p4}, Ljava/lang/String;->indexOf(I)I

    move-result p4

    const/4 p5, -0x1

    if-eq p4, p5, :cond_2

    const-string p4, ","

    .line 107
    invoke-virtual {p3, p4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x0

    .line 108
    :goto_0
    array-length p5, p3

    if-ge p4, p5, :cond_3

    .line 109
    aget-object p5, p3, p4

    .line 111
    invoke-static {p5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    .line 110
    invoke-interface {p2, p5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 115
    :cond_2
    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    .line 114
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object p2

    .line 121
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result p2

    .line 123
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p3

    const/16 v0, 0x5b

    if-ne p3, v0, :cond_8

    .line 126
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    if-eqz p2, :cond_5

    .line 129
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->instanceType:Ljava/lang/Class;

    const-class p3, Ljava/util/Collection;

    if-ne p2, p3, :cond_5

    .line 130
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    goto :goto_1

    .line 132
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide p2

    or-long/2addr p2, p4

    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListInt64;->createInstance(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 136
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isEnd()Z

    move-result p3

    if-nez p3, :cond_7

    .line 140
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 148
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object p2

    .line 145
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64()Ljava/lang/Long;

    move-result-object p3

    .line 144
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    :cond_7
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string p3, "illegal input error"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 124
    :cond_8
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string p3, "format error"

    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
