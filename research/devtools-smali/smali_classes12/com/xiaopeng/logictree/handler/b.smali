.class public Lcom/xiaopeng/logictree/handler/b;
.super Lcom/xiaopeng/logictree/handler/h;
.source "DiagnosisCode.java"


# instance fields
.field private final vs:Lcom/xiaopeng/commonfunc/b/b/a;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/h;-><init>(Landroid/app/Application;)V

    .line 23
    const-string p1, "DiagnosisCode"

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/b;->CLASS_NAME:Ljava/lang/String;

    .line 24
    new-instance p1, Lcom/xiaopeng/commonfunc/b/b/a;

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/b;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/xiaopeng/commonfunc/b/b/a;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/b;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    .line 25
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/b;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/b/a;->dI()V

    .line 26
    return-void
.end method

.method public static synthetic lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;
    .locals 13

    monitor-enter p0

    .line 30
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/logictree/handler/h;->a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/b;->YB:[Ljava/lang/String;

    const-string v1, "1"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/logictree/handler/b;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/32 v3, 0x1b7740

    if-eqz v0, :cond_2

    .line 33
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->getStartTime()J

    move-result-wide v5

    .line 34
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pB()J

    move-result-wide v11

    .line 35
    sub-long v7, v11, v5

    cmp-long p1, v7, v3

    if-gez p1, :cond_0

    .line 36
    sub-long v5, v11, v3

    .line 38
    :cond_0
    move-wide v9, v5

    iget-object v7, p0, Lcom/xiaopeng/logictree/handler/b;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/b;->YB:[Ljava/lang/String;

    aget-object v8, p1, v2

    invoke-virtual/range {v7 .. v12}, Lcom/xiaopeng/commonfunc/b/b/a;->a(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1

    .line 40
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/logictree/handler/-$$Lambda$b$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/xiaopeng/logictree/handler/-$$Lambda$b$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->d([I)V

    .line 44
    goto/16 :goto_3

    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/b;->YB:[Ljava/lang/String;

    const-string v5, "2"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/logictree/handler/b;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 45
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->getStartTime()J

    move-result-wide v0

    .line 46
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pB()J

    move-result-wide v9

    .line 47
    sub-long v5, v9, v0

    cmp-long p1, v5, v3

    if-gez p1, :cond_3

    .line 48
    sub-long v0, v9, v3

    .line 50
    :cond_3
    move-wide v7, v0

    iget-object v5, p0, Lcom/xiaopeng/logictree/handler/b;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/b;->YB:[Ljava/lang/String;

    aget-object v6, p1, v2

    invoke-virtual/range {v5 .. v10}, Lcom/xiaopeng/commonfunc/b/b/a;->b(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;

    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :cond_4
    goto :goto_0

    .line 59
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_6

    .line 60
    const-string p1, ""

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->g([Ljava/lang/String;)V

    .line 63
    goto/16 :goto_3

    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/b;->YB:[Ljava/lang/String;

    const-string v5, "3"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/logictree/handler/b;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 65
    iget-object v5, p0, Lcom/xiaopeng/logictree/handler/b;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/b;->YB:[Ljava/lang/String;

    aget-object v6, p1, v2

    sub-long v7, v9, v3

    invoke-virtual/range {v5 .. v10}, Lcom/xiaopeng/commonfunc/b/b/a;->a(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1

    .line 67
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 68
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/logictree/handler/-$$Lambda$b$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/xiaopeng/logictree/handler/-$$Lambda$b$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->d([I)V

    .line 71
    goto/16 :goto_3

    :cond_9
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/b;->YB:[Ljava/lang/String;

    const-string v5, "4"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v0, v5}, Lcom/xiaopeng/logictree/handler/b;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 72
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    .line 73
    iget-object v5, p0, Lcom/xiaopeng/logictree/handler/b;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/b;->YB:[Ljava/lang/String;

    aget-object v6, p1, v2

    sub-long v7, v9, v3

    invoke-virtual/range {v5 .. v10}, Lcom/xiaopeng/commonfunc/b/b/a;->b(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1

    .line 75
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 76
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;

    .line 77
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 79
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_a
    goto :goto_1

    .line 82
    :cond_b
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_c

    .line 83
    const-string p1, ""

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_c
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->g([Ljava/lang/String;)V

    .line 86
    goto/16 :goto_3

    :cond_d
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/b;->YB:[Ljava/lang/String;

    const-string v3, "5"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/logictree/handler/b;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    const-wide/32 v3, 0x6ddd000

    if-eqz v0, :cond_10

    .line 87
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->getStartTime()J

    move-result-wide v5

    .line 88
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pB()J

    move-result-wide v11

    .line 89
    sub-long v7, v11, v5

    cmp-long p1, v7, v3

    if-gez p1, :cond_e

    .line 90
    sub-long v5, v11, v3

    .line 92
    :cond_e
    move-wide v9, v5

    iget-object v7, p0, Lcom/xiaopeng/logictree/handler/b;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/b;->YB:[Ljava/lang/String;

    aget-object v8, p1, v2

    invoke-virtual/range {v7 .. v12}, Lcom/xiaopeng/commonfunc/b/b/a;->a(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_f

    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_f
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v0, Lcom/xiaopeng/logictree/handler/-$$Lambda$b$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/xiaopeng/logictree/handler/-$$Lambda$b$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->d([I)V

    .line 98
    goto/16 :goto_3

    :cond_10
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/b;->YB:[Ljava/lang/String;

    const-string v1, "6"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/logictree/handler/b;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 99
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->getStartTime()J

    move-result-wide v0

    .line 100
    invoke-virtual {p1}, Lcom/xiaopeng/logictree/a;->pB()J

    move-result-wide v9

    .line 101
    sub-long v5, v9, v0

    cmp-long p1, v5, v3

    if-gez p1, :cond_11

    .line 102
    sub-long v0, v9, v3

    .line 104
    :cond_11
    move-wide v7, v0

    iget-object v5, p0, Lcom/xiaopeng/logictree/handler/b;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/b;->YB:[Ljava/lang/String;

    aget-object v6, p1, v2

    invoke-virtual/range {v5 .. v10}, Lcom/xiaopeng/commonfunc/b/b/a;->b(Ljava/lang/String;JJ)Ljava/util/List;

    move-result-object p1

    .line 106
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 107
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;

    .line 108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/commonfunc/bean/aftersales/DiagnosisData;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 109
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    .line 110
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_12
    goto :goto_2

    .line 113
    :cond_13
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_14

    .line 114
    const-string p1, ""

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    :cond_14
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    invoke-static {p1}, Lcom/xiaopeng/logictree/d;->g([Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :cond_15
    :goto_3
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 29
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 123
    invoke-super {p0}, Lcom/xiaopeng/logictree/handler/h;->destroy()V

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/b;->vs:Lcom/xiaopeng/commonfunc/b/b/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/b/a;->onDestroy()V

    .line 125
    return-void
.end method
