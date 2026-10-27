.class public Laxy;
.super Ljava/lang/Object;
.source "DataFetchManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laxy$b;,
        Laxy$a;,
        Laxy$c;
    }
.end annotation


# instance fields
.field public a:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Laxy$a;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Class;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Laxy;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Laxy;->b:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laxy;->d:J

    return-void
.end method

.method public static a()Laxy;
    .locals 1

    .line 36
    sget-object v0, Laxy$c;->a:Laxy;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .locals 4

    .line 109
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v0

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performErrorRetry:from"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",igOn="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ",mDataFetch="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Laxy;->c:Z

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DataFetchManager"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    .line 114
    :cond_0
    iget-object p1, p0, Laxy;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laxy$a;

    .line 115
    instance-of v2, v0, Laxy$b;

    if-eqz v2, :cond_2

    iget-object v2, p0, Laxy;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 121
    :try_start_0
    check-cast v0, Laxy$b;

    invoke-interface {v0}, Laxy$b;->n_()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "performErrorRetry"

    .line 123
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .line 130
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "performDataFetch:from"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",igOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",mDataFetch="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Laxy;->c:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataFetchManager"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 132
    iget-boolean v0, p0, Laxy;->c:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 135
    iput-boolean v0, p0, Laxy;->c:Z

    .line 136
    iget-object v0, p0, Laxy;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laxy$a;

    .line 141
    :try_start_0
    invoke-interface {v1, p1}, Laxy$a;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "performDataFetch"

    .line 143
    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private c()Z
    .locals 1

    .line 72
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Laxy$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 58
    iget-object v0, p0, Laxy;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 59
    iget-object v0, p0, Laxy;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Laxy$a;Z)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eqz p2, :cond_1

    .line 50
    iget-object p2, p0, Laxy;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 51
    iget-object p1, p0, Laxy;->b:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 p2, 0x1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 53
    :cond_1
    iget-object p1, p0, Laxy;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public b()J
    .locals 2

    .line 149
    iget-wide v0, p0, Laxy;->d:J

    return-wide v0
.end method

.method public b(Laxy$a;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 65
    iget-object v0, p0, Laxy;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 66
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    .line 67
    iget-object v0, p0, Laxy;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onNetWorkValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 100
    iget-boolean p1, p0, Laxy;->c:Z

    const-string v0, "onNetWorkValid"

    if-eqz p1, :cond_0

    .line 101
    invoke-direct {p0, v0}, Laxy;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "DataFetchManager"

    const-string v1, "onNetWorkValid:ignore"

    .line 103
    invoke-static {p1, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    invoke-direct {p0, v0}, Laxy;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onPowerStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 78
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result v0

    .line 79
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->b()Z

    move-result p1

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPowerStateChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isFirstBootIG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataFetchManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 85
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Laxy;->d:J

    const/4 p1, 0x1

    .line 86
    iput-boolean p1, p0, Laxy;->c:Z

    .line 87
    invoke-direct {p0}, Laxy;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "onPowerStateChange"

    .line 89
    invoke-direct {p0, p1}, Laxy;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "onPowerStateChange:Invalid"

    .line 91
    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string p1, "onPowerStateChange:off"

    .line 94
    invoke-static {v2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
