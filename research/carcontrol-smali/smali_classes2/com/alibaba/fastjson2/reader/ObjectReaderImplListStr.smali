.class public final Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;
.super Ljava/lang/Object;
.source "ObjectReaderImplListStr.java"

# interfaces
.implements Lcom/alibaba/fastjson2/reader/ObjectReader;


# instance fields
.field final instanceType:Ljava/lang/Class;

.field final listType:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->listType:Ljava/lang/Class;

    .line 22
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->instanceType:Ljava/lang/Class;

    return-void
.end method

.method public static synthetic lambda$-tyXSJp6yIHZkhd2CSpn4WX993I(Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$JsxHMws04F2Dh76JtRQA6GLDlcI(Ljava/util/List;)Ljava/util/List;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$SHHtmjIbqL3gJz4iPPzD781Zajo(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$ZLR_S5xBs-G7PN2LRM6JEyGmWks(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$readJSONBObject$0(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 122
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$readJSONBObject$1(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0

    .line 125
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$wzemHH36VFj4CWmc4njg0GT465s(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createInstance(J)Ljava/lang/Object;
    .locals 1

    .line 27
    iget-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->instanceType:Ljava/lang/Class;

    const-class p2, Ljava/util/ArrayList;

    if-ne p1, p2, :cond_0

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    .line 31
    :cond_0
    const-class p2, Ljava/util/LinkedList;

    if-ne p1, p2, :cond_1

    .line 32
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    return-object p1

    .line 36
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 38
    :catch_0
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create list error, type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->instanceType:Ljava/lang/Class;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public createInstance(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 3

    .line 44
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->listType:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 46
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 47
    instance-of v2, v2, Ljava/lang/String;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :cond_1
    if-eqz v0, :cond_2

    return-object p1

    :cond_2
    const-wide/16 v0, 0x0

    .line 57
    invoke-virtual {p0, v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->createInstance(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 58
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 59
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_1

    .line 64
    :cond_3
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 63
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 60
    :cond_4
    :goto_1
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public getObjectClass()Ljava/lang/Class;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->listType:Ljava/lang/Class;

    return-object v0
.end method

.method public readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7

    .line 77
    iget-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->instanceType:Ljava/lang/Class;

    .line 79
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfNull()Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    return-object v0

    .line 83
    :cond_0
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->listType:Ljava/lang/Class;

    const-wide/16 v3, 0x0

    move-object v1, p1

    move-wide v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/JSONReader;->checkAutoType(Ljava/lang/Class;JJ)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 85
    invoke-interface {p3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getObjectClass()Ljava/lang/Class;

    move-result-object p2

    .line 88
    :cond_1
    sget-object p3, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_ARRAYS_LIST:Ljava/lang/Class;

    const/4 v1, 0x0

    if-ne p2, p3, :cond_3

    .line 89
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result p2

    .line 90
    new-array p3, p2, [Ljava/lang/String;

    :goto_0
    if-ge v1, p2, :cond_2

    .line 92
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p4

    aput-object p4, p3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_2
    invoke-static {p3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 97
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result p3

    .line 101
    const-class v2, Ljava/util/ArrayList;

    if-ne p2, v2, :cond_5

    .line 102
    new-instance p2, Ljava/util/ArrayList;

    if-lez p3, :cond_4

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    goto/16 :goto_4

    :cond_4
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto/16 :goto_4

    .line 103
    :cond_5
    const-class v2, Lcom/alibaba/fastjson2/JSONArray;

    if-ne p2, v2, :cond_7

    .line 104
    new-instance p2, Lcom/alibaba/fastjson2/JSONArray;

    if-lez p3, :cond_6

    invoke-direct {p2, p3}, Lcom/alibaba/fastjson2/JSONArray;-><init>(I)V

    goto/16 :goto_4

    :cond_6
    invoke-direct {p2}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto/16 :goto_4

    .line 105
    :cond_7
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_COLLECTION:Ljava/lang/Class;

    if-ne p2, v2, :cond_8

    .line 106
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    sget-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$SHHtmjIbqL3gJz4iPPzD781Zajo;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$SHHtmjIbqL3gJz4iPPzD781Zajo;

    goto/16 :goto_4

    .line 108
    :cond_8
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_LIST:Ljava/lang/Class;

    if-ne p2, v2, :cond_9

    .line 109
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 110
    sget-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$JsxHMws04F2Dh76JtRQA6GLDlcI;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$JsxHMws04F2Dh76JtRQA6GLDlcI;

    goto/16 :goto_4

    .line 111
    :cond_9
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SET:Ljava/lang/Class;

    if-ne p2, v2, :cond_a

    .line 112
    new-instance p2, Ljava/util/LinkedHashSet;

    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 113
    sget-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$-tyXSJp6yIHZkhd2CSpn4WX993I;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$-tyXSJp6yIHZkhd2CSpn4WX993I;

    goto/16 :goto_4

    .line 114
    :cond_a
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_SORTED_SET:Ljava/lang/Class;

    if-ne p2, v2, :cond_b

    .line 115
    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    .line 116
    sget-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$wzemHH36VFj4CWmc4njg0GT465s;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$wzemHH36VFj4CWmc4njg0GT465s;

    goto/16 :goto_4

    .line 117
    :cond_b
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_UNMODIFIABLE_NAVIGABLE_SET:Ljava/lang/Class;

    if-ne p2, v2, :cond_c

    .line 118
    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2}, Ljava/util/TreeSet;-><init>()V

    .line 119
    sget-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$ZLR_S5xBs-G7PN2LRM6JEyGmWks;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$ZLR_S5xBs-G7PN2LRM6JEyGmWks;

    goto/16 :goto_4

    .line 120
    :cond_c
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON:Ljava/lang/Class;

    if-ne p2, v2, :cond_d

    .line 121
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 122
    sget-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$s1FevKbr59YU8mwJQ6tCcpc2HG0;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$s1FevKbr59YU8mwJQ6tCcpc2HG0;

    goto/16 :goto_4

    .line 123
    :cond_d
    sget-object v2, Lcom/alibaba/fastjson2/reader/ObjectReaderImplList;->CLASS_SINGLETON_LIST:Ljava/lang/Class;

    if-ne p2, v2, :cond_e

    .line 124
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 125
    sget-object v0, Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$svMmhqNuwmGW0ffM5gjt2Fz7YU4;->INSTANCE:Lcom/alibaba/fastjson2/reader/-$$Lambda$ObjectReaderImplListStr$svMmhqNuwmGW0ffM5gjt2Fz7YU4;

    goto/16 :goto_4

    :cond_e
    if-eqz p2, :cond_13

    .line 126
    iget-object v2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->listType:Ljava/lang/Class;

    if-eq p2, v2, :cond_13

    .line 127
    invoke-virtual {p2}, Ljava/lang/Class;->getTypeName()Ljava/lang/String;

    move-result-object p4

    .line 128
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    const/4 p5, -0x1

    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v2, "com.google.common.collect.Lists.TransformingSequentialList"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    goto :goto_1

    :cond_f
    const/4 p5, 0x3

    goto :goto_1

    :sswitch_1
    const-string v2, "com.google.common.collect.Lists$TransformingRandomAccessList"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_10

    goto :goto_1

    :cond_10
    const/4 p5, 0x2

    goto :goto_1

    :sswitch_2
    const-string v2, "com.google.common.collect.ImmutableSet"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_11

    goto :goto_1

    :cond_11
    const/4 p5, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "com.google.common.collect.ImmutableList"

    invoke-virtual {p4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_12

    goto :goto_1

    :cond_12
    move p5, v1

    :goto_1
    packed-switch p5, :pswitch_data_0

    .line 145
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p2, p4

    goto :goto_4

    :catch_0
    move-exception p3

    goto :goto_2

    :catch_1
    move-exception p3

    .line 147
    :goto_2
    new-instance p4, Lcom/alibaba/fastjson2/JSONException;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "create instance error "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONReader;->info(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p4, p1, p3}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p4

    .line 141
    :pswitch_0
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    goto :goto_4

    .line 138
    :pswitch_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    goto :goto_4

    .line 134
    :pswitch_2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 135
    invoke-static {}, Lcom/alibaba/fastjson2/util/GuavaSupport;->immutableSetConverter()Ljava/util/function/Function;

    move-result-object p4

    goto :goto_3

    .line 130
    :pswitch_3
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 131
    invoke-static {}, Lcom/alibaba/fastjson2/util/GuavaSupport;->immutableListConverter()Ljava/util/function/Function;

    move-result-object p4

    :goto_3
    move-object v0, p4

    goto :goto_4

    .line 152
    :cond_13
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide v2

    or-long/2addr p4, v2

    invoke-virtual {p0, p4, p5}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->createInstance(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    :goto_4
    if-ge v1, p3, :cond_14

    .line 156
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p4

    invoke-interface {p2, p4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    if-eqz v0, :cond_15

    .line 160
    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Ljava/util/Collection;

    :cond_15
    return-object p2

    :sswitch_data_0
    .sparse-switch
        -0x766adabf -> :sswitch_3
        0x35fca75f -> :sswitch_2
        0x50d047c9 -> :sswitch_1
        0x53c73d4b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 7

    .line 168
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    if-eqz v0, :cond_0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 169
    invoke-virtual/range {v1 .. v6}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->readJSONBObject(Lcom/alibaba/fastjson2/JSONReader;Ljava/lang/reflect/Type;Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 172
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readIfNull()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 176
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfSet()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 178
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 179
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/fastjson2/JSONReader$Context;->getFeatures()J

    move-result-wide p2

    or-long/2addr p2, p4

    invoke-virtual {p0, p2, p3}, Lcom/alibaba/fastjson2/reader/ObjectReaderImplListStr;->createInstance(J)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Collection;

    .line 181
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->current()C

    move-result p3

    const/16 p4, 0x5b

    if-ne p3, p4, :cond_3

    .line 183
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 184
    :goto_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfArrayEnd()Z

    move-result p3

    if-nez p3, :cond_6

    .line 186
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p3

    .line 185
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const/16 p4, 0x22

    if-eq p3, p4, :cond_5

    const/16 p4, 0x27

    if-eq p3, p4, :cond_5

    const/16 p4, 0x7b

    if-ne p3, p4, :cond_4

    goto :goto_2

    .line 194
    :cond_4
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->info()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 189
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p3

    .line 190
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_6

    .line 191
    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 197
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfComma()Z

    return-object p2
.end method
