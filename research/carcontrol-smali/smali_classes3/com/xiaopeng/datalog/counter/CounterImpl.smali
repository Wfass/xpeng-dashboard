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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "name",
            "interval"
        }
    .end annotation

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iput-object p2, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mName:Ljava/lang/String;

    .line 52
    iput-wide p3, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mInterval:J

    .line 53
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mCountMap:Ljava/util/Map;

    .line 54
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mPreferences:Landroid/content/SharedPreferences;

    .line 55
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string p2, "time"

    .line 56
    invoke-direct {p0, p2}, Lcom/xiaopeng/datalog/counter/CounterImpl;->generatePrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 57
    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p3, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mTime:Ljava/util/concurrent/atomic/AtomicLong;

    .line 58
    new-instance p1, Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/xiaopeng/lib/utils/ThreadUtils;->getLooper(I)Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mHandler:Landroid/os/Handler;

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/datalog/counter/CounterImpl;->initValuesFromPref()V

    .line 66
    invoke-direct {p0, p2}, Lcom/xiaopeng/datalog/counter/CounterImpl;->report(Z)V

    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name can\'t be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/xiaopeng/datalog/counter/CounterImpl;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mName:Ljava/lang/String;

    return-object p0
.end method

.method private generateKeyFromPrefKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prefKey"
        }
    .end annotation

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    return-object v1

    .line 158
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private generatePrefKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initValuesFromPref()V
    .locals 7

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initValuesFromPref prefMap:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CounterImpl"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 74
    invoke-direct {p0, v3}, Lcom/xiaopeng/datalog/counter/CounterImpl;->generateKeyFromPrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 76
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "time"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 77
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 79
    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_0

    .line 80
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initValuesFromPref key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v5, Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v5, v3}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 82
    iget-object v3, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mCountMap:Ljava/util/Map;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method private report(Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "force"
        }
    .end annotation

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 165
    iget-object v2, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 166
    iget-wide v4, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mInterval:J

    div-long v6, v0, v4

    .line 167
    div-long v4, v2, v4

    cmp-long v4, v4, v6

    if-ltz v4, :cond_0

    if-eqz p1, :cond_2

    .line 169
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 170
    iget-object v4, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mCountMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 171
    iget-object v6, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mCountMap:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 172
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    .line 173
    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 174
    invoke-direct {p0, v5}, Lcom/xiaopeng/datalog/counter/CounterImpl;->generatePrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    iget-object v6, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    .line 177
    new-instance v5, Lcom/xiaopeng/datalog/counter/CounterImpl$1;

    invoke-direct {v5, p0, p1, v2, v3}, Lcom/xiaopeng/datalog/counter/CounterImpl$1;-><init>(Lcom/xiaopeng/datalog/counter/CounterImpl;Ljava/util/Map;J)V

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/ThreadUtils;->post(ILjava/lang/Runnable;)V

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 207
    iget-object p1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 211
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "time"

    invoke-direct {p0, v2}, Lcom/xiaopeng/datalog/counter/CounterImpl;->generatePrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    return-void
.end method


# virtual methods
.method public declared-synchronized count(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 106
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/datalog/counter/CounterImpl;->count(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized count(Ljava/lang/String;I)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "inc"
        }
    .end annotation

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mCountMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 112
    invoke-direct {p0, p1}, Lcom/xiaopeng/datalog/counter/CounterImpl;->generatePrefKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v3, "CounterImpl"

    .line 119
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPreferences.getInt("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    .line 121
    :goto_0
    iget-boolean v3, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mDebug:Z

    if-eqz v3, :cond_0

    const-string v3, "CounterImpl"

    .line 122
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", load key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from pref, value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    :cond_0
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mCountMap:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    .line 128
    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    add-int/2addr v3, p2

    .line 129
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 130
    iget-object p2, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 131
    iget-boolean p2, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mDebug:Z

    if-eqz p2, :cond_2

    const-string p2, "CounterImpl"

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", cache is:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mCountMap:Ljava/util/Map;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_3
    const p1, 0x7fffffff

    if-ne v3, p1, :cond_4

    move v2, p2

    .line 142
    :cond_4
    invoke-direct {p0, v2}, Lcom/xiaopeng/datalog/counter/CounterImpl;->report(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    monitor-exit p0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public debug(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "debug"
        }
    .end annotation

    .line 101
    iput-boolean p1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mDebug:Z

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 90
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 91
    iget-boolean p1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mDebug:Z

    if-eqz p1, :cond_0

    const-string p1, "CounterImpl"

    const-string v1, "mEditor.apply()"

    .line 92
    invoke-static {p1, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/datalog/counter/CounterImpl;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return v0
.end method
