.class public Lcom/xiaopeng/datalog/a/b;
.super Ljava/lang/Object;
.source "CounterImpl.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Lcom/xiaopeng/lib/framework/moduleinterface/datalogmodule/ICounter;


# instance fields
.field private final mEditor:Landroid/content/SharedPreferences$Editor;

.field private mHandler:Landroid/os/Handler;

.field private final mName:Ljava/lang/String;

.field private final qk:J

.field private final ql:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field

.field private qm:Z

.field private qn:Ljava/util/concurrent/atomic/AtomicLong;

.field private final qo:Landroid/content/SharedPreferences;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iput-object p2, p0, Lcom/xiaopeng/datalog/a/b;->mName:Ljava/lang/String;

    .line 52
    iput-wide p3, p0, Lcom/xiaopeng/datalog/a/b;->qk:J

    .line 53
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/datalog/a/b;->ql:Ljava/util/Map;

    .line 54
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/datalog/a/b;->qo:Landroid/content/SharedPreferences;

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/datalog/a/b;->qo:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/datalog/a/b;->mEditor:Landroid/content/SharedPreferences$Editor;

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/datalog/a/b;->qo:Landroid/content/SharedPreferences;

    const-string p2, "time"

    invoke-direct {p0, p2}, Lcom/xiaopeng/datalog/a/b;->bh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-interface {p1, p2, p3, p4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    .line 57
    new-instance p3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {p3, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object p3, p0, Lcom/xiaopeng/datalog/a/b;->qn:Ljava/util/concurrent/atomic/AtomicLong;

    .line 58
    new-instance p1, Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-static {p2}, Lcom/xiaopeng/lib/utils/j;->dR(I)Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/xiaopeng/datalog/a/b;->mHandler:Landroid/os/Handler;

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/datalog/a/b;->eU()V

    .line 66
    invoke-direct {p0, p2}, Lcom/xiaopeng/datalog/a/b;->A(Z)V

    .line 67
    return-void

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "name can\'t be empty!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private A(Z)V
    .locals 8

    .line 164
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 165
    iget-object v2, p0, Lcom/xiaopeng/datalog/a/b;->qn:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 166
    iget-wide v4, p0, Lcom/xiaopeng/datalog/a/b;->qk:J

    div-long v4, v0, v4

    .line 167
    iget-wide v6, p0, Lcom/xiaopeng/datalog/a/b;->qk:J

    div-long v6, v2, v6

    .line 168
    cmp-long v4, v6, v4

    if-ltz v4, :cond_0

    if-eqz p1, :cond_2

    .line 169
    :cond_0
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 170
    iget-object v4, p0, Lcom/xiaopeng/datalog/a/b;->ql:Ljava/util/Map;

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
    iget-object v6, p0, Lcom/xiaopeng/datalog/a/b;->ql:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 172
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {p1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 174
    invoke-direct {p0, v5}, Lcom/xiaopeng/datalog/a/b;->bh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    iget-object v6, p0, Lcom/xiaopeng/datalog/a/b;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6, v5, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 176
    goto :goto_0

    .line 177
    :cond_1
    const/4 v4, 0x2

    new-instance v5, Lcom/xiaopeng/datalog/a/b$1;

    invoke-direct {v5, p0, p1, v2, v3}, Lcom/xiaopeng/datalog/a/b$1;-><init>(Lcom/xiaopeng/datalog/a/b;Ljava/util/Map;J)V

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/j;->a(ILjava/lang/Runnable;)V

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/datalog/a/b;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 207
    iget-object p1, p0, Lcom/xiaopeng/datalog/a/b;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x2710

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 211
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/datalog/a/b;->qn:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/datalog/a/b;->mEditor:Landroid/content/SharedPreferences$Editor;

    const-string v2, "time"

    invoke-direct {p0, v2}, Lcom/xiaopeng/datalog/a/b;->bh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 213
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/datalog/a/b;)Ljava/lang/String;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/datalog/a/b;->mName:Ljava/lang/String;

    return-object p0
.end method

.method private bh(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/datalog/a/b;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private bi(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 152
    return-object v1

    .line 154
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/datalog/a/b;->mName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 155
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 156
    return-object v1

    .line 158
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private eU()V
    .locals 7

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/datalog/a/b;->qo:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 71
    const-string v1, "CounterImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initValuesFromPref prefMap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
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

    .line 74
    invoke-direct {p0, v2}, Lcom/xiaopeng/datalog/a/b;->bi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 77
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 79
    instance-of v4, v2, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    .line 80
    const-string v4, "CounterImpl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initValuesFromPref key:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " value:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    new-instance v4, Ljava/util/concurrent/atomic/AtomicInteger;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-direct {v4, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 82
    iget-object v2, p0, Lcom/xiaopeng/datalog/a/b;->ql:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    :cond_0
    goto :goto_0

    .line 86
    :cond_1
    return-void
.end method


# virtual methods
.method public declared-synchronized count(Ljava/lang/String;)I
    .locals 1

    monitor-enter p0

    .line 106
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/datalog/a/b;->count(Ljava/lang/String;I)I

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

    monitor-enter p0

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/datalog/a/b;->ql:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 112
    invoke-direct {p0, p1}, Lcom/xiaopeng/datalog/a/b;->bh(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 115
    nop

    .line 117
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/datalog/a/b;->qo:Landroid/content/SharedPreferences;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    goto :goto_0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    :try_start_2
    const-string v3, "CounterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mPreferences.getInt("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") error!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/xiaopeng/lib/utils/c;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Lcom/xiaopeng/datalog/a/b;->qm:Z

    if-eqz v3, :cond_0

    .line 122
    const-string v3, "CounterImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "count "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/datalog/a/b;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", load key:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " from pref, value is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    :cond_0
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/datalog/a/b;->ql:Ljava/util/Map;

    invoke-interface {v0, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    move-object v0, v3

    :cond_1
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    add-int/2addr v3, p2

    .line 129
    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 130
    iget-object p2, p0, Lcom/xiaopeng/datalog/a/b;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p2, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 131
    iget-boolean p2, p0, Lcom/xiaopeng/datalog/a/b;->qm:Z

    if-eqz p2, :cond_2

    .line 132
    const-string p2, "CounterImpl"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "count "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/datalog/a/b;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", cache is:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/datalog/a/b;->ql:Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/c;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/datalog/a/b;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 138
    iget-object p1, p0, Lcom/xiaopeng/datalog/a/b;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x2710

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 142
    :cond_3
    const p1, 0x7fffffff

    if-ne v3, p1, :cond_4

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    invoke-direct {p0, p2}, Lcom/xiaopeng/datalog/a/b;->A(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 143
    monitor-exit p0

    return v3

    .line 110
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public debug(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Lcom/xiaopeng/datalog/a/b;->qm:Z

    .line 102
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 90
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 91
    iget-boolean p1, p0, Lcom/xiaopeng/datalog/a/b;->qm:Z

    if-eqz p1, :cond_0

    .line 92
    const-string p1, "CounterImpl"

    const-string v1, "mEditor.apply()"

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/datalog/a/b;->mEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 96
    :cond_1
    return v0
.end method
