.class final Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;
.super Lcom/alibaba/fastjson2/JSONPathSegment;
.source "JSONPathSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPathSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CycleNameSegment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopRemove;,
        Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;,
        Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;,
        Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;,
        Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;
    }
.end annotation


# static fields
.field static final HASH_EMPTY:J

.field static final HASH_STAR:J


# instance fields
.field final name:Ljava/lang/String;

.field final nameHashCode:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "*"

    .line 1109
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->HASH_STAR:J

    const-string v0, ""

    .line 1110
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->HASH_EMPTY:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 1114
    invoke-direct {p0}, Lcom/alibaba/fastjson2/JSONPathSegment;-><init>()V

    .line 1115
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->name:Ljava/lang/String;

    .line 1116
    iput-wide p2, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->nameHashCode:J

    return-void
.end method


# virtual methods
.method public accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 1

    .line 1452
    new-instance v0, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 1453
    invoke-virtual {p0, p1, p2, v0}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/List;)V

    .line 1454
    iput-object v0, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1455
    iput-boolean p1, p2, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void
.end method

.method public accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson2/JSONReader;",
            "Lcom/alibaba/fastjson2/JSONPath$Context;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1459
    iget-boolean v0, p1, Lcom/alibaba/fastjson2/JSONReader;->jsonb:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_c

    const/16 v0, -0x5a

    .line 1460
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result v0

    if-eqz v0, :cond_7

    :goto_0
    const/16 v0, -0x5b

    .line 1461
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONReader;->nextIfMatch(B)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1462
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    goto :goto_0

    .line 1467
    :cond_0
    iget-wide v5, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->nameHashCode:J

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    .line 1469
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1470
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1472
    :cond_2
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readAny()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1474
    :cond_3
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 1477
    :cond_4
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_0

    .line 1475
    :cond_5
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/List;)V

    goto :goto_0

    :cond_6
    return-void

    .line 1483
    :cond_7
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1484
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->startArray()I

    move-result v0

    :goto_3
    if-ge v2, v0, :cond_b

    .line 1486
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isObject()Z

    move-result v1

    if-nez v1, :cond_9

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->isArray()Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_4

    .line 1491
    :cond_8
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_5

    .line 1487
    :cond_9
    :goto_4
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/List;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1494
    :cond_a
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    :cond_b
    return-void

    .line 1499
    :cond_c
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v3, 0x2c

    const/16 v4, 0x7b

    const/16 v5, 0x5b

    if-ne v0, v4, :cond_19

    .line 1500
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 1502
    :cond_d
    :goto_6
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v6, 0x7d

    if-ne v0, v6, :cond_e

    .line 1503
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 1567
    iget-char p2, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne p2, v3, :cond_1f

    .line 1568
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    goto/16 :goto_d

    .line 1507
    :cond_e
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readFieldNameHashCode()J

    move-result-wide v6

    .line 1509
    iget-wide v8, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->nameHashCode:J

    cmp-long v0, v6, v8

    if-nez v0, :cond_f

    move v0, v1

    goto :goto_7

    :cond_f
    move v0, v2

    .line 1510
    :goto_7
    iget-char v6, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-nez v0, :cond_10

    if-eq v6, v4, :cond_10

    if-eq v6, v5, :cond_10

    .line 1512
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_6

    .line 1517
    :cond_10
    iget-char v7, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v8, 0x22

    if-eq v7, v8, :cond_17

    const/16 v8, 0x27

    if-eq v7, v8, :cond_17

    const/16 v8, 0x2b

    if-eq v7, v8, :cond_16

    const/16 v8, 0x2d

    if-eq v7, v8, :cond_16

    if-eq v7, v5, :cond_13

    const/16 v8, 0x66

    if-eq v7, v8, :cond_12

    const/16 v8, 0x6e

    if-eq v7, v8, :cond_11

    const/16 v8, 0x74

    if-eq v7, v8, :cond_12

    if-eq v7, v4, :cond_13

    packed-switch v7, :pswitch_data_0

    .line 1554
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TODO : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    iget-char p1, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1550
    :cond_11
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNull()V

    const/4 v0, 0x0

    goto :goto_8

    .line 1547
    :cond_12
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readBoolValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_8

    :cond_13
    if-eqz v0, :cond_15

    if-ne v6, v5, :cond_14

    .line 1536
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readArray()Ljava/util/List;

    move-result-object v0

    goto :goto_8

    :cond_14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readObject()Ljava/util/Map;

    move-result-object v0

    goto :goto_8

    .line 1539
    :cond_15
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/List;)V

    goto/16 :goto_6

    .line 1530
    :cond_16
    :pswitch_0
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readNumber0()V

    .line 1531
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->getNumber()Ljava/lang/Number;

    move-result-object v0

    goto :goto_8

    .line 1543
    :cond_17
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->readString()Ljava/lang/String;

    move-result-object v0

    .line 1556
    :goto_8
    instance-of v6, v0, Ljava/util/Collection;

    if-eqz v6, :cond_18

    .line 1557
    check-cast v0, Ljava/util/Collection;

    invoke-interface {p3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    .line 1559
    :cond_18
    invoke-interface {p3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1562
    :goto_9
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v0, v3, :cond_d

    .line 1563
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    goto/16 :goto_6

    .line 1570
    :cond_19
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v0, v5, :cond_1e

    .line 1571
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 1574
    :cond_1a
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    const/16 v1, 0x5d

    if-ne v0, v1, :cond_1b

    .line 1575
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    goto :goto_c

    .line 1579
    :cond_1b
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-eq v0, v4, :cond_1d

    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v0, v5, :cond_1c

    goto :goto_a

    .line 1582
    :cond_1c
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    goto :goto_b

    .line 1580
    :cond_1d
    :goto_a
    invoke-virtual {p0, p1, p2, p3}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->accept(Lcom/alibaba/fastjson2/JSONReader;Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/List;)V

    .line 1585
    :goto_b
    iget-char v0, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne v0, v3, :cond_1a

    .line 1586
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    .line 1591
    :goto_c
    iget-char p2, p1, Lcom/alibaba/fastjson2/JSONReader;->ch:C

    if-ne p2, v3, :cond_1f

    .line 1592
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->next()V

    goto :goto_d

    .line 1595
    :cond_1e
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONReader;->skipValue()V

    :cond_1f
    :goto_d
    return-void

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

.method public eval(Lcom/alibaba/fastjson2/JSONPath$Context;)V
    .locals 4

    .line 1137
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 1138
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    goto :goto_0

    .line 1139
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 1141
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONArray;

    invoke-direct {v1}, Lcom/alibaba/fastjson2/JSONArray;-><init>()V

    .line 1144
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->shouldRecursive()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1145
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;

    invoke-direct {v2, p0, p1, v1, v3}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapRecursive;-><init>(Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/List;I)V

    goto :goto_1

    .line 1147
    :cond_1
    new-instance v2, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;

    invoke-direct {v2, p0, p1, v1}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$MapLoop;-><init>(Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/List;)V

    .line 1149
    :goto_1
    invoke-interface {v2, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1151
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Ljava/util/Collection;

    if-eqz v0, :cond_2

    .line 1152
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    goto :goto_2

    .line 1154
    :cond_2
    iput-object v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 1156
    :goto_2
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/List;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->next:Lcom/alibaba/fastjson2/JSONPathSegment;

    instance-of v0, v0, Lcom/alibaba/fastjson2/JSONPathFilter;

    if-eqz v0, :cond_3

    .line 1157
    new-instance v0, Lcom/alibaba/fastjson2/JSONPath$Sequence;

    iget-object v1, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson2/JSONPath$Sequence;-><init>(Ljava/util/List;)V

    iput-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 1160
    :cond_3
    iput-boolean v2, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return-void
.end method

.method public remove(Lcom/alibaba/fastjson2/JSONPath$Context;)Z
    .locals 2

    .line 1126
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 1127
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    goto :goto_0

    .line 1128
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 1130
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopRemove;

    invoke-direct {v1, p0, p1}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopRemove;-><init>(Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;Lcom/alibaba/fastjson2/JSONPath$Context;)V

    .line 1131
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopRemove;->accept(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 1132
    iput-boolean v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->eval:Z

    return v0
.end method

.method public set(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/lang/Object;)V
    .locals 2

    .line 1165
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 1166
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    goto :goto_0

    .line 1167
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 1169
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;-><init>(Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/lang/Object;)V

    .line 1170
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopSet;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public setCallback(Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/function/BiFunction;)V
    .locals 2

    .line 1175
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    if-nez v0, :cond_0

    .line 1176
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->root:Ljava/lang/Object;

    goto :goto_0

    .line 1177
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/JSONPath$Context;->parent:Lcom/alibaba/fastjson2/JSONPath$Context;

    iget-object v0, v0, Lcom/alibaba/fastjson2/JSONPath$Context;->value:Ljava/lang/Object;

    .line 1179
    :goto_0
    new-instance v1, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;

    invoke-direct {v1, p0, p1, p2}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;-><init>(Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;Lcom/alibaba/fastjson2/JSONPath$Context;Ljava/util/function/BiFunction;)V

    .line 1180
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment$LoopCallback;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method protected shouldRecursive()Z
    .locals 4

    .line 1184
    iget-wide v0, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->nameHashCode:J

    sget-wide v2, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->HASH_STAR:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    sget-wide v2, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->HASH_EMPTY:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alibaba/fastjson2/JSONPathSegment$CycleNameSegment;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
