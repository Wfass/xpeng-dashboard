.class final Lcom/alibaba/fastjson2/JSONPathSingleName;
.super Lcom/alibaba/fastjson2/JSONPathSingle;
.source "JSONPathSingleName.java"


# instance fields
.field final name:Ljava/lang/String;

.field final nameHashCode:J


# direct methods
.method public varargs constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson2/JSONPathSegmentName;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V
    .locals 0

    .line 20
    invoke-direct {p0, p2, p1, p3}, Lcom/alibaba/fastjson2/JSONPathSingle;-><init>(Lcom/alibaba/fastjson2/JSONPathSegment;Ljava/lang/String;[Lcom/alibaba/fastjson2/JSONPath$Feature;)V

    .line 21
    iget-object p1, p2, Lcom/alibaba/fastjson2/JSONPathSegmentName;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    .line 22
    iget-wide p1, p2, Lcom/alibaba/fastjson2/JSONPathSegmentName;->nameHashCode:J

    iput-wide p1, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 4

    .line 114
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 115
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 118
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPathSingleName;->getWriterContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v0

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 125
    :cond_1
    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    invoke-interface {v0, v2, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    .line 130
    :cond_2
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 28
    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 29
    check-cast p1, Ljava/util/Map;

    .line 30
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_6

    .line 32
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-static {v2}, Lcom/alibaba/fastjson2/util/IOUtils;->isNumber(Ljava/lang/String;)Z

    move-result v2

    .line 35
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 36
    check-cast v3, Ljava/util/Map$Entry;

    .line 37
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    .line 38
    instance-of v5, v4, Ljava/lang/Enum;

    if-eqz v5, :cond_1

    move-object v5, v4

    check-cast v5, Ljava/lang/Enum;

    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 39
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    instance-of v5, v4, Ljava/lang/Long;

    if-eqz v5, :cond_0

    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 43
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 45
    :cond_2
    invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPathSingleName;->getWriterContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v0

    .line 55
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 54
    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    if-nez v0, :cond_4

    return-object v1

    .line 61
    :cond_4
    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    invoke-interface {v0, v2, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    if-nez v0, :cond_5

    return-object v1

    .line 66
    :cond_5
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 69
    :cond_6
    :goto_0
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONPath$Feature;->AlwaysReturnList:Lcom/alibaba/fastjson2/JSONPath$Feature;

    iget-wide v3, p1, Lcom/alibaba/fastjson2/JSONPath$Feature;->mask:J

    and-long/2addr v1, v3

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-eqz p1, :cond_8

    if-nez v0, :cond_7

    .line 71
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_1

    .line 72
    :cond_7
    invoke-static {v0}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    :goto_1
    move-object v0, p1

    :cond_8
    return-object v0
.end method

.method public extract(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/Object;
    .locals 10

    .line 262
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_6

    .line 263
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 264
    :goto_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v0

    if-nez v0, :cond_4

    .line 265
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v6

    cmp-long v0, v6, v4

    if-nez v0, :cond_0

    goto :goto_0

    .line 270
    :cond_0
    iget-wide v8, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-nez v0, :cond_2

    .line 271
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-nez v0, :cond_2

    .line 272
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_0

    .line 276
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isNumber()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 277
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object p1

    return-object p1

    .line 280
    :cond_3
    new-instance p1, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "TODO"

    invoke-direct {p1, v0}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 284
    :cond_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONPath$Feature;->AlwaysReturnList:Lcom/alibaba/fastjson2/JSONPath$Feature;

    iget-wide v6, p1, Lcom/alibaba/fastjson2/JSONPath$Feature;->mask:J

    and-long/2addr v0, v6

    cmp-long p1, v0, v4

    if-eqz p1, :cond_5

    .line 285
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    return-object p1

    :cond_5
    return-object v3

    .line 290
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 291
    :goto_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectEnd()Z

    move-result v0

    if-nez v0, :cond_11

    .line 292
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v6

    .line 293
    iget-wide v8, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_3

    :cond_7
    move v0, v2

    :goto_3
    if-nez v0, :cond_8

    .line 296
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_2

    .line 301
    :cond_8
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x22

    if-eq v0, v1, :cond_e

    const/16 v1, 0x27

    if-eq v0, v1, :cond_e

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_d

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_d

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_c

    const/16 v1, 0x66

    if-eq v0, v1, :cond_b

    const/16 v1, 0x6e

    if-eq v0, v1, :cond_a

    const/16 v1, 0x74

    if-eq v0, v1, :cond_b

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_0

    .line 335
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char p1, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v3

    goto :goto_4

    .line 331
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    goto :goto_4

    .line 328
    :cond_b
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_4

    .line 317
    :cond_c
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v3

    goto :goto_4

    .line 314
    :cond_d
    :pswitch_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v3

    goto :goto_4

    .line 324
    :cond_e
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v3

    .line 338
    :goto_4
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONPath$Feature;->AlwaysReturnList:Lcom/alibaba/fastjson2/JSONPath$Feature;

    iget-wide v6, p1, Lcom/alibaba/fastjson2/JSONPath$Feature;->mask:J

    and-long/2addr v0, v6

    cmp-long p1, v0, v4

    if-eqz p1, :cond_10

    if-nez v3, :cond_f

    .line 340
    new-instance v3, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v3}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    goto :goto_5

    .line 342
    :cond_f
    invoke-static {v3}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v3

    :cond_10
    :goto_5
    return-object v3

    .line 350
    :cond_11
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->features:J

    sget-object p1, Lcom/alibaba/fastjson2/JSONPath$Feature;->AlwaysReturnList:Lcom/alibaba/fastjson2/JSONPath$Feature;

    iget-wide v6, p1, Lcom/alibaba/fastjson2/JSONPath$Feature;->mask:J

    and-long/2addr v0, v6

    cmp-long p1, v0, v4

    if-eqz p1, :cond_12

    .line 351
    new-instance p1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    return-object p1

    :cond_12
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public extract(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/reader/ValueConsumer;)V
    .locals 4

    .line 610
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 612
    :goto_0
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_0

    .line 613
    invoke-interface {p2}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->acceptNull()V

    return-void

    .line 617
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v0

    .line 619
    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 621
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_0

    .line 625
    :cond_2
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x22

    if-eq v0, v2, :cond_8

    const/16 v2, 0x27

    if-eq v0, v2, :cond_8

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_7

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_7

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_6

    const/16 v2, 0x66

    if-eq v0, v2, :cond_5

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_4

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 668
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char p1, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 647
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object p1

    .line 648
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/util/Map;)V

    return-void

    .line 664
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    .line 665
    invoke-interface {p2}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->acceptNull()V

    return-void

    .line 659
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result p1

    .line 658
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Z)V

    return-void

    .line 642
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object p1

    .line 643
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/util/List;)V

    return-void

    .line 638
    :cond_7
    :pswitch_0
    invoke-virtual {p1, p2, v1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber(Lcom/alibaba/fastjson2/reader/ValueConsumer;Z)V

    return-void

    .line 653
    :cond_8
    invoke-virtual {p1, p2, v1}, Lcom/alibaba/fastjson2/JSONReader;->readString(Lcom/alibaba/fastjson2/reader/ValueConsumer;Z)V

    return-void

    .line 673
    :cond_9
    invoke-interface {p2}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->acceptNull()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public extractInt32Value(Lcom/alibaba/fastjson2/JSONReader;)I
    .locals 7

    .line 481
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    .line 484
    :goto_0
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_0

    .line 485
    iput-boolean v2, p1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return v1

    .line 489
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v3

    .line 491
    iget-wide v5, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    .line 493
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_0

    .line 497
    :cond_2
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x22

    if-eq v0, v3, :cond_7

    const/16 v3, 0x27

    if-eq v0, v3, :cond_7

    const/16 v3, 0x2b

    if-eq v0, v3, :cond_6

    const/16 v3, 0x2d

    if-eq v0, v3, :cond_6

    const/16 v3, 0x5d

    if-eq v0, v3, :cond_5

    const/16 v3, 0x66

    if-eq v0, v3, :cond_4

    const/16 v3, 0x6e

    if-eq v0, v3, :cond_3

    const/16 v1, 0x74

    if-eq v0, v1, :cond_4

    packed-switch v0, :pswitch_data_0

    .line 527
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char p1, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 520
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    .line 521
    iput-boolean v2, p1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return v1

    .line 517
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result p1

    return p1

    .line 524
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    goto :goto_2

    .line 510
    :cond_6
    :pswitch_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt32Value()I

    move-result p1

    return p1

    .line 513
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 514
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 532
    :cond_8
    :goto_2
    iput-boolean v2, p1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return v1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public extractInt64Value(Lcom/alibaba/fastjson2/JSONReader;)J
    .locals 8

    .line 420
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_a

    .line 423
    :goto_0
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x7d

    if-ne v0, v4, :cond_0

    .line 424
    iput-boolean v3, p1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return-wide v1

    .line 428
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v4

    .line 430
    iget-wide v6, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 432
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_0

    .line 436
    :cond_2
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v4, 0x22

    if-eq v0, v4, :cond_9

    const/16 v4, 0x27

    if-eq v0, v4, :cond_9

    const/16 v4, 0x2b

    if-eq v0, v4, :cond_8

    const/16 v4, 0x2d

    if-eq v0, v4, :cond_8

    const/16 v4, 0x5b

    if-eq v0, v4, :cond_7

    const/16 v4, 0x5d

    if-eq v0, v4, :cond_6

    const/16 v4, 0x66

    if-eq v0, v4, :cond_4

    const/16 v4, 0x6e

    if-eq v0, v4, :cond_3

    const/16 v3, 0x74

    if-eq v0, v3, :cond_4

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_7

    packed-switch v0, :pswitch_data_0

    .line 470
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char p1, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    .line 464
    iput-boolean v3, p1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return-wide v1

    .line 460
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result p1

    if-eqz p1, :cond_5

    const-wide/16 v1, 0x1

    :cond_5
    return-wide v1

    .line 467
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    goto :goto_2

    .line 452
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v0

    .line 453
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->toLong(Ljava/util/Map;)J

    move-result-wide v0

    return-wide v0

    .line 449
    :cond_8
    :pswitch_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readInt64Value()J

    move-result-wide v0

    return-wide v0

    .line 456
    :cond_9
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object p1

    .line 457
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    .line 475
    :cond_a
    :goto_2
    iput-boolean v3, p1, Lcom/alibaba/fastjson2/JSONReader;->wasNull:Z

    return-wide v1

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public extractScalar(Lcom/alibaba/fastjson2/JSONReader;)Ljava/lang/String;
    .locals 6

    .line 358
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    .line 360
    :goto_0
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_0

    .line 361
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    goto/16 :goto_3

    .line 365
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v2

    .line 367
    iget-wide v4, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 368
    :goto_1
    iget-char v2, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x7b

    const/16 v4, 0x5b

    if-nez v0, :cond_2

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_2

    .line 370
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_0

    .line 375
    :cond_2
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x22

    if-eq v0, v2, :cond_8

    const/16 v2, 0x27

    if-eq v0, v2, :cond_8

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_7

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_7

    if-eq v0, v4, :cond_6

    const/16 v2, 0x66

    if-eq v0, v2, :cond_5

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_4

    const/16 v1, 0x74

    if-eq v0, v1, :cond_5

    if-eq v0, v3, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 409
    new-instance v0, Lcom/alibaba/fastjson2/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TODO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char p1, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 394
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v1

    goto :goto_2

    .line 405
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    goto :goto_2

    .line 402
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_2

    .line 391
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v1

    goto :goto_2

    .line 388
    :cond_7
    :pswitch_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber()Ljava/lang/Number;

    move-result-object v1

    goto :goto_2

    .line 398
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v1

    .line 412
    :goto_2
    invoke-static {v1}, Lcom/alibaba/fastjson2/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    :goto_3
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public extractScalar(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/reader/ValueConsumer;)V
    .locals 4

    .line 538
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->nextIfObjectStart()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 541
    :goto_0
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x7d

    if-ne v0, v1, :cond_0

    .line 542
    invoke-interface {p2}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->acceptNull()V

    return-void

    .line 546
    :cond_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v0

    .line 548
    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    if-nez v0, :cond_2

    .line 550
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_0

    .line 554
    :cond_2
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v2, 0x22

    if-eq v0, v2, :cond_9

    const/16 v2, 0x27

    if-eq v0, v2, :cond_9

    const/16 v2, 0x2b

    if-eq v0, v2, :cond_8

    const/16 v2, 0x2d

    if-eq v0, v2, :cond_8

    const/16 v2, 0x5b

    if-eq v0, v2, :cond_7

    const/16 v2, 0x5d

    if-eq v0, v2, :cond_6

    const/16 v2, 0x66

    if-eq v0, v2, :cond_5

    const/16 v2, 0x6e

    if-eq v0, v2, :cond_4

    const/16 v2, 0x74

    if-eq v0, v2, :cond_5

    const/16 v2, 0x7b

    if-eq v0, v2, :cond_3

    packed-switch v0, :pswitch_data_0

    .line 600
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TODO : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char p1, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 576
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object p1

    .line 577
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/util/Map;)V

    return-void

    .line 593
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    .line 594
    invoke-interface {p2}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->acceptNull()V

    return-void

    .line 588
    :cond_5
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result p1

    .line 587
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Z)V

    return-void

    .line 597
    :cond_6
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    goto :goto_2

    .line 571
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object p1

    .line 572
    invoke-interface {p2, p1}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->accept(Ljava/util/List;)V

    return-void

    .line 567
    :cond_8
    :pswitch_0
    invoke-virtual {p1, p2, v1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber(Lcom/alibaba/fastjson2/reader/ValueConsumer;Z)V

    return-void

    .line 582
    :cond_9
    invoke-virtual {p1, p2, v1}, Lcom/alibaba/fastjson2/JSONReader;->readString(Lcom/alibaba/fastjson2/reader/ValueConsumer;Z)V

    return-void

    .line 605
    :cond_a
    :goto_2
    invoke-interface {p2}, Lcom/alibaba/fastjson2/reader/ValueConsumer;->acceptNull()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isRef()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 83
    :cond_0
    instance-of v1, p1, Ljava/util/Map;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 84
    check-cast p1, Ljava/util/Map;

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    move v0, v2

    :cond_1
    return v0

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPathSingleName;->getReaderContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alibaba/fastjson2/JSONReader$Context;->getProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v1

    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    if-nez v1, :cond_3

    return v0

    .line 94
    :cond_3
    iget-wide v3, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    invoke-interface {v1, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v1

    if-nez v1, :cond_4

    return v0

    :cond_4
    const/4 v3, 0x0

    .line 100
    :try_start_0
    invoke-virtual {v1, p1, v3}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    return v0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 135
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 136
    check-cast p1, Ljava/util/Map;

    .line 137
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPathSingleName;->getReaderContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 141
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 142
    iget-wide v3, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    invoke-interface {v2, v3, v4}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eqz p2, :cond_1

    .line 146
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 147
    iget-object v3, v1, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    .line 148
    invoke-virtual {v1, v2}, Lcom/alibaba/fastjson2/reader/FieldReader;->supportAcceptType(Ljava/lang/Class;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 149
    invoke-virtual {v0, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 151
    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 155
    :cond_1
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 156
    :cond_2
    instance-of v0, v2, Lcom/alibaba/fastjson2/reader/ObjectReaderBean;

    if-eqz v0, :cond_3

    .line 157
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    const-wide/16 v6, 0x0

    move-object v3, p1

    move-object v5, p2

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->acceptExtra(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;J)V

    :cond_3
    :goto_0
    return-void
.end method

.method public varargs set(Ljava/lang/Object;Ljava/lang/Object;[Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 6

    .line 163
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_4

    .line 164
    check-cast p1, Ljava/util/Map;

    .line 165
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 168
    array-length v1, p3

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p3, v3

    .line 169
    sget-object v5, Lcom/alibaba/fastjson2/JSONReader$Feature;->DuplicateKeyValueAsArray:Lcom/alibaba/fastjson2/JSONReader$Feature;

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    .line 176
    instance-of p3, v0, Ljava/util/Collection;

    if-eqz p3, :cond_2

    .line 177
    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 180
    :cond_2
    invoke-static {v0, p2}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p2

    .line 181
    iget-object p3, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    return-void

    .line 187
    :cond_4
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPathSingleName;->getReaderContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object p3

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONReader$Context;->getProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object p3

    .line 188
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v0

    .line 189
    iget-wide v1, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    invoke-interface {v0, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v0

    if-eqz p2, :cond_5

    .line 192
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 193
    iget-object v2, v0, Lcom/alibaba/fastjson2/reader/FieldReader;->fieldClass:Ljava/lang/Class;

    if-eq v1, v2, :cond_5

    .line 195
    invoke-virtual {p3, v1, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getTypeConvert(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/util/function/Function;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 197
    invoke-interface {p3, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 201
    :cond_5
    invoke-virtual {v0, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public setCallback(Ljava/lang/Object;Ljava/util/function/BiFunction;)V
    .locals 4

    .line 206
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 207
    check-cast p1, Ljava/util/Map;

    .line 208
    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 210
    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void

    .line 215
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

    if-nez v1, :cond_3

    .line 218
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createReadContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

    .line 220
    :cond_3
    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->readerContext:Lcom/alibaba/fastjson2/JSONReader$Context;

    iget-object v1, v1, Lcom/alibaba/fastjson2/JSONReader$Context;->provider:Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    .line 221
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v1

    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    .line 222
    invoke-interface {v1, v2, v3}, Lcom/alibaba/fastjson2/reader/ObjectReader;->getFieldReader(J)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v1

    .line 224
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->writerContext:Lcom/alibaba/fastjson2/JSONWriter$Context;

    if-nez v2, :cond_4

    .line 225
    invoke-static {}, Lcom/alibaba/fastjson2/JSONFactory;->createWriteContext()Lcom/alibaba/fastjson2/JSONWriter$Context;

    move-result-object v2

    iput-object v2, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->writerContext:Lcom/alibaba/fastjson2/JSONWriter$Context;

    .line 227
    :cond_4
    iget-object v2, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->writerContext:Lcom/alibaba/fastjson2/JSONWriter$Context;

    iget-object v2, v2, Lcom/alibaba/fastjson2/JSONWriter$Context;->provider:Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;

    .line 228
    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriterProvider;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object v0

    iget-wide v2, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    .line 229
    invoke-interface {v0, v2, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriter;->getFieldWriter(J)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 232
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson2/writer/FieldWriter;->getFieldValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 233
    invoke-interface {p2, p1, v0}, Ljava/util/function/BiFunction;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 234
    invoke-virtual {v1, p1, p2}, Lcom/alibaba/fastjson2/reader/FieldReader;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method

.method public setInt(Ljava/lang/Object;I)V
    .locals 8

    .line 240
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 241
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPathSingleName;->getReaderContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 245
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 246
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    move-object v3, p1

    move v7, p2

    invoke-interface/range {v2 .. v7}, Lcom/alibaba/fastjson2/reader/ObjectReader;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;JI)Z

    return-void
.end method

.method public setLong(Ljava/lang/Object;J)V
    .locals 9

    .line 251
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 252
    check-cast p1, Ljava/util/Map;

    iget-object v0, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPathSingleName;->getReaderContext()Lcom/alibaba/fastjson2/JSONReader$Context;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/fastjson2/JSONReader$Context;->getProvider()Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;

    move-result-object v0

    .line 256
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;->getObjectReader(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object v2

    .line 257
    iget-object v4, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->name:Ljava/lang/String;

    iget-wide v5, p0, Lcom/alibaba/fastjson2/JSONPathSingleName;->nameHashCode:J

    move-object v3, p1

    move-wide v7, p2

    invoke-interface/range {v2 .. v8}, Lcom/alibaba/fastjson2/reader/ObjectReader;->setFieldValue(Ljava/lang/Object;Ljava/lang/String;JJ)Z

    return-void
.end method
