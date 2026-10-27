.class public Lcom/xiaopeng/datalog/counter/CounterImpl;
.super Ljava/lang/Object;
.source "CounterImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/ICounter;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final KEY_TIME:Ljava/lang/String; = "time"

.field private static final MESSAGE_APPLY:I = 0x1

.field private static final MESSAGE_APPLY_DELAY:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "CounterImpl"


# instance fields
.field private final mCountMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private mDebug:Z

.field private final mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHandler:Landroid/os/Handler;

.field private final mInterval:J

.field private final mName:Ljava/lang/String;

.field private final mPreferences:Landroid/content/SharedPreferences;

.field private mTime:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "interval"    # J

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    iput-object p2, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mName:Ljava/lang/String;

    .line 51
    iput-wide p3, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mInterval:J

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mCountMap:Ljava/util/Map;

    .line 53
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mPreferences:Landroid/content/SharedPreferences;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mPreferences:Landroid/content/SharedPreferences;

    const-string v1, "time"

    invoke-direct {p0, v1}, Lcom/xiaopeng/datalog/counter/CounterImpl;->generatePrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 56
    .local v0, "time":J
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v2, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 57
    new-instance v2, Landroid/os/Handler;

    const/4 v3, 0x0

    invoke-static {v3}, Lcom/xiaopeng/lib/utils/ThreadUtils;->getLooper(I)Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mHandler:Landroid/os/Handler;

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/datalog/counter/CounterImpl;->initValuesFromPref()V

    .line 65
    invoke-direct {p0, v3}, Lcom/xiaopeng/datalog/counter/CounterImpl;->report(Z)V

    .line 66
    return-void

    .line 48
    .end local v0    # "time":J
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "name can\'t be empty!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/xiaopeng/datalog/counter/CounterImpl;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/datalog/counter/CounterImpl;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mName:Ljava/lang/String;

    return-object v0
.end method

.method private generateKeyFromPrefKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "prefKey"    # Ljava/lang/String;

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 151
    return-object v1

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 155
    return-object v1

    .line 157
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private generatePrefKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 146
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initValuesFromPref()V
    .locals 8

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 70
    .local v0, "prefMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    const-string v1, "CounterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initValuesFromPref prefMap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 73
    .local v2, "k":Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/xiaopeng/datalog/counter/CounterImpl;->generateKeyFromPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 75
    .local v3, "key":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 76
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 78
    .local v4, "value":Ljava/lang/Object;
    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 79
    const-string v5, "CounterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "initValuesFromPref key:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v6, v4

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 81
    .local v5, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    iget-object v6, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mCountMap:Ljava/util/Map;

    invoke-interface {v6, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .end local v2    # "k":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    .end local v5    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    :cond_0
    goto :goto_0

    .line 85
    .end local v3    # "key":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private report(Z)V
    .locals 18
    .param p1, "force"    # Z

    move-object/from16 v0, p0

    .line 163
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 164
    .local v1, "now":J
    iget-object v3, v0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    .line 165
    .local v3, "time":J
    iget-wide v5, v0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mInterval:J

    div-long v5, v1, v5

    .line 166
    .local v5, "currentInterval":J
    iget-wide v7, v0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mInterval:J

    div-long v7, v3, v7

    .line 167
    .local v7, "lastInterval":J
    cmp-long v9, v7, v5

    if-ltz v9, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    move-wide/from16 v16, v5

    goto :goto_2

    .line 168
    :cond_1
    :goto_0
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 169
    .local v10, "reportMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v11, v0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mCountMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 170
    .local v12, "key":Ljava/lang/String;
    iget-object v13, v0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mCountMap:Ljava/util/Map;

    invoke-interface {v13, v12}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 171
    .local v13, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v14

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v10, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 173
    invoke-direct {v0, v12}, Lcom/xiaopeng/datalog/counter/CounterImpl;->generatePrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 174
    .local v15, "prefKey":Ljava/lang/String;
    move-wide/from16 v16, v5

    iget-object v5, v0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    .end local v5    # "currentInterval":J
    .local v16, "currentInterval":J
    invoke-interface {v5, v15, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 175
    .end local v12    # "key":Ljava/lang/String;
    .end local v13    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v15    # "prefKey":Ljava/lang/String;
    nop

    .line 169
    move-wide/from16 v5, v16

    goto :goto_1

    .line 176
    .end local v16    # "currentInterval":J
    .restart local v5    # "currentInterval":J
    :cond_2
    move-wide/from16 v16, v5

    .end local v5    # "currentInterval":J
    .restart local v16    # "currentInterval":J
    const/4 v5, 0x2

    new-instance v6, Lcom/xiaopeng/datalog/counter/CounterImpl$1;

    invoke-direct {v6, v0, v10, v3, v4}, Lcom/xiaopeng/datalog/counter/CounterImpl$1;-><init>(Lcom/xiaopeng/datalog/counter/CounterImpl;Ljava/util/Map;J)V

    invoke-static {v5, v6}, Lcom/xiaopeng/lib/utils/ThreadUtils;->post(ILjava/lang/Runnable;)V

    .line 196
    iget-object v5, v0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mHandler:Landroid/os/Handler;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 198
    iget-object v5, v0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v11, 0x2710

    invoke-virtual {v5, v6, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 202
    .end local v10    # "reportMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_3
    :goto_2
    iget-object v5, v0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 203
    iget-object v5, v0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "time"

    invoke-direct {v0, v6}, Lcom/xiaopeng/datalog/counter/CounterImpl;->generatePrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 204
    return-void
.end method


# virtual methods
.method public declared-synchronized count(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    monitor-enter p0

    .line 105
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/datalog/counter/CounterImpl;->count(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .end local p1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/datalog/counter/CounterImpl;
    throw p1
.end method

.method public declared-synchronized count(Ljava/lang/String;I)I
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "inc"    # I

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 111
    .local v0, "count":Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-direct {p0, p1}, Lcom/xiaopeng/datalog/counter/CounterImpl;->generatePrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    .local v1, "prefKey":Ljava/lang/String;
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 114
    move v3, v2

    .line 116
    .local v3, "value":I
    :try_start_1
    iget-object v4, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v4, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v3, v4

    .line 119
    goto :goto_0

    .line 117
    :catch_0
    move-exception v4

    .line 118
    .local v4, "e":Ljava/lang/ClassCastException;
    :try_start_2
    const-string v5, "CounterImpl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPreferences.getInt("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ") error!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 120
    .end local v4    # "e":Ljava/lang/ClassCastException;
    :goto_0
    iget-boolean v4, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mDebug:Z

    if-eqz v4, :cond_0

    .line 121
    const-string v4, "CounterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", load key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " from pref, value is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    :cond_0
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v4, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object v0, v4

    .line 125
    iget-object v4, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mCountMap:Ljava/util/Map;

    invoke-interface {v4, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    .end local v3    # "value":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    add-int/2addr v3, p2

    .line 128
    .local v3, "result":I
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 129
    iget-object v4, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v4, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 130
    iget-boolean v4, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mDebug:Z

    if-eqz v4, :cond_2

    .line 131
    const-string v4, "CounterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "count "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", cache is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mCountMap:Ljava/util/Map;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_3

    .line 137
    iget-object v4, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 141
    :cond_3
    const v4, 0x7fffffff

    if-ne v3, v4, :cond_4

    move v2, v5

    nop

    :cond_4
    invoke-direct {p0, v2}, Lcom/xiaopeng/datalog/counter/CounterImpl;->report(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 142
    monitor-exit p0

    return v3

    .line 109
    .end local v0    # "count":Ljava/util/concurrent/atomic/AtomicInteger;
    .end local v1    # "prefKey":Ljava/lang/String;
    .end local v3    # "result":I
    .end local p1    # "key":Ljava/lang/String;
    .end local p2    # "inc":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/datalog/counter/CounterImpl;
    throw p1
.end method

.method public debug(Z)V
    .locals 0
    .param p1, "debug"    # Z

    .line 100
    iput-boolean p1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mDebug:Z

    .line 101
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 89
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 90
    iget-boolean v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mDebug:Z

    if-eqz v0, :cond_0

    .line 91
    const-string v0, "CounterImpl"

    const-string v2, "mEditor.apply()"

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 95
    :cond_1
    return v1
.end method
