.class public Lcom/alibaba/sdk/android/man/util/Aggregation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationTimerTask;,
        Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationSend;,
        Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;,
        Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationNetworkPerformance;,
        Lcom/alibaba/sdk/android/man/util/Aggregation$Singleton;
    }
.end annotation


# static fields
.field private static tag:Ljava/lang/String;


# instance fields
.field private final AGGREGATION_CUSTOM_PERFORMANCE_LABLE:Ljava/lang/String;

.field private final AGGREGATION_NETWORK_PERFORMANCE_LABLE:Ljava/lang/String;

.field private final hashMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationSend;",
            ">;"
        }
    .end annotation
.end field

.field private final networkDefineKey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timer:Ljava/util/Timer;

.field private timerTask:Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationTimerTask;

.field private totalNum:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    const-string v0, "MAN_Aggregation"

    sput-object v0, Lcom/alibaba/sdk/android/man/util/Aggregation;->tag:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 7

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, "AGGREGATION_3002"

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->AGGREGATION_NETWORK_PERFORMANCE_LABLE:Ljava/lang/String;

    .line 19
    const-string v0, "AGGREGATION_66602"

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->AGGREGATION_CUSTOM_PERFORMANCE_LABLE:Ljava/lang/String;

    .line 21
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->totalNum:J

    .line 22
    new-instance v0, Lcom/alibaba/sdk/android/man/util/Aggregation$1;

    invoke-direct {v0, p0}, Lcom/alibaba/sdk/android/man/util/Aggregation$1;-><init>(Lcom/alibaba/sdk/android/man/util/Aggregation;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->hashMap:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->networkDefineKey:Ljava/util/ArrayList;

    .line 33
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->networkDefineKey:Ljava/util/ArrayList;

    const-string v1, "singleConnectTime"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->networkDefineKey:Ljava/util/ArrayList;

    const-string v1, "firstPacketRT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->networkDefineKey:Ljava/util/ArrayList;

    const-string v1, "singleRequestRT"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->networkDefineKey:Ljava/util/ArrayList;

    const-string v1, "singleRequestBytes"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->networkDefineKey:Ljava/util/ArrayList;

    const-string v1, "Host"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->networkDefineKey:Ljava/util/ArrayList;

    const-string v1, "Method"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v0, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationTimerTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationTimerTask;-><init>(Lcom/alibaba/sdk/android/man/util/Aggregation;Lcom/alibaba/sdk/android/man/util/Aggregation$1;)V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->timerTask:Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationTimerTask;

    .line 41
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->timer:Ljava/util/Timer;

    .line 42
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->timer:Ljava/util/Timer;

    iget-object v2, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->timerTask:Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationTimerTask;

    const-wide/16 v3, 0x7530

    const-wide/16 v5, 0x7530

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lcom/alibaba/sdk/android/man/util/Aggregation$1;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alibaba/sdk/android/man/util/Aggregation;-><init>()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 13
    sget-object v0, Lcom/alibaba/sdk/android/man/util/Aggregation;->tag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/alibaba/sdk/android/man/util/Aggregation;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/alibaba/sdk/android/man/util/Aggregation;->submitAggregation()V

    return-void
.end method

.method private convertTimeStr2Long(Ljava/lang/String;)J
    .locals 2

    .line 122
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 123
    :catch_0
    move-exception p1

    .line 124
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getInstance()Lcom/alibaba/sdk/android/man/util/Aggregation;
    .locals 1

    .line 50
    sget-object v0, Lcom/alibaba/sdk/android/man/util/Aggregation$Singleton;->instance:Lcom/alibaba/sdk/android/man/util/Aggregation;

    return-object v0
.end method

.method private isOnlyContainsDefineKey(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 131
    return v0

    .line 133
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    iget-object v2, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->networkDefineKey:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 135
    return v0

    .line 137
    :cond_1
    goto :goto_0

    .line 139
    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method private submitAggregation()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->hashMap:Ljava/util/Map;

    monitor-enter v0

    .line 144
    const-wide/16 v1, 0x0

    :try_start_0
    iput-wide v1, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->totalNum:J

    .line 145
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->hashMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 146
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 147
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 149
    iget-object v3, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->hashMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 150
    iget-object v3, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->hashMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationSend;

    invoke-interface {v2}, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationSend;->send()V

    .line 152
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 153
    goto :goto_0

    .line 154
    :cond_1
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addCustomPerfToAggregation(Lcom/alibaba/sdk/android/man/customperf/MANCustomPerformance;)Z
    .locals 6

    .line 54
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/man/customperf/MANCustomPerformance;->getProperties()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/man/customperf/MANCustomPerformance;->getProperties()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    const/4 p1, 0x0

    return p1

    .line 58
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGGREGATION_66602"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/man/customperf/MANCustomPerformance;->getEventLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->hashMap:Ljava/util/Map;

    monitor-enter v1

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->hashMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;

    .line 61
    if-nez v2, :cond_1

    .line 62
    new-instance v2, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;

    invoke-virtual {p1}, Lcom/alibaba/sdk/android/man/customperf/MANCustomPerformance;->getEventLabel()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;-><init>(Lcom/alibaba/sdk/android/man/util/Aggregation;Ljava/lang/String;)V

    .line 63
    iget-object v3, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->hashMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/sdk/android/man/customperf/MANCustomPerformance;->getDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationCustomPerf;->addCustomPerf(J)V

    .line 66
    iget-wide v2, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->totalNum:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->totalNum:J

    .line 67
    iget-wide v2, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->totalNum:J

    const-wide/16 v4, 0x64

    cmp-long p1, v2, v4

    if-ltz p1, :cond_2

    .line 68
    invoke-direct {p0}, Lcom/alibaba/sdk/android/man/util/Aggregation;->submitAggregation()V

    .line 70
    :cond_2
    monitor-exit v1

    .line 71
    const/4 p1, 0x1

    return p1

    .line 70
    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public addToNetPerfAggregation(Ljava/util/Map;)Z
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 76
    nop

    .line 77
    nop

    .line 78
    nop

    .line 79
    nop

    .line 82
    invoke-direct {p0, p1}, Lcom/alibaba/sdk/android/man/util/Aggregation;->isOnlyContainsDefineKey(Ljava/util/Map;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 83
    const/4 p1, 0x0

    return p1

    .line 86
    :cond_0
    const-string v0, "singleConnectTime"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/man/util/Aggregation;->convertTimeStr2Long(Ljava/lang/String;)J

    move-result-wide v4

    .line 87
    const-string v0, "firstPacketRT"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/man/util/Aggregation;->convertTimeStr2Long(Ljava/lang/String;)J

    move-result-wide v6

    .line 88
    const-string v0, "singleRequestRT"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/alibaba/sdk/android/man/util/Aggregation;->convertTimeStr2Long(Ljava/lang/String;)J

    move-result-wide v2

    .line 90
    :try_start_0
    const-string v0, "singleRequestBytes"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    goto :goto_0

    .line 91
    :catch_0
    move-exception v0

    .line 92
    const-wide/16 v0, 0x0

    .line 94
    :goto_0
    move-wide v8, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AGGREGATION_3002"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Host"

    .line 95
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Method"

    .line 96
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v12, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->hashMap:Ljava/util/Map;

    monitor-enter v12

    .line 98
    :try_start_1
    iget-object v1, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->hashMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationNetworkPerformance;

    .line 99
    if-eqz v1, :cond_1

    .line 100
    const-string v0, "Method"

    .line 101
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    const-string v0, "Host"

    .line 102
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v11, p1

    check-cast v11, Ljava/lang/String;

    .line 100
    invoke-virtual/range {v1 .. v11}, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationNetworkPerformance;->addNetworkPerformance(JJJJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 104
    :cond_1
    new-instance v13, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationNetworkPerformance;

    const/4 v1, 0x0

    invoke-direct {v13, p0, v1}, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationNetworkPerformance;-><init>(Lcom/alibaba/sdk/android/man/util/Aggregation;Lcom/alibaba/sdk/android/man/util/Aggregation$1;)V

    .line 105
    const-string v1, "Method"

    .line 106
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Ljava/lang/String;

    const-string v1, "Host"

    .line 107
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v11, p1

    check-cast v11, Ljava/lang/String;

    .line 105
    move-object v1, v13

    invoke-virtual/range {v1 .. v11}, Lcom/alibaba/sdk/android/man/util/Aggregation$AggregationNetworkPerformance;->addNetworkPerformance(JJJJLjava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object p1, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->hashMap:Ljava/util/Map;

    invoke-interface {p1, v0, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :goto_1
    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->totalNum:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->totalNum:J

    .line 111
    iget-wide v0, p0, Lcom/alibaba/sdk/android/man/util/Aggregation;->totalNum:J

    const-wide/16 v2, 0x64

    cmp-long p1, v0, v2

    if-ltz p1, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/alibaba/sdk/android/man/util/Aggregation;->submitAggregation()V

    .line 114
    :cond_2
    monitor-exit v12

    .line 116
    const/4 p1, 0x1

    return p1

    .line 114
    :catchall_0
    move-exception p1

    monitor-exit v12
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
