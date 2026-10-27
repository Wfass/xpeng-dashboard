.class public Lbey;
.super Ljava/lang/Object;
.source "ModuleManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbey$a;
    }
.end annotation


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Lbex;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbey;->a:Ljava/util/Map;

    .line 33
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public static a()Lbey;
    .locals 1

    .line 29
    sget-object v0, Lbey$a;->a:Lbey;

    return-object v0
.end method

.method private a(Ljava/lang/Class;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lbex;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 62
    iget-object v0, p0, Lbey;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbex;

    const-string v1, "ModuleManager"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x2

    .line 65
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 66
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lbex;

    .line 67
    sget-object v7, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v7}, Lcom/xiaopeng/musicradio/utils/d;->a(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 68
    invoke-virtual {v6}, Lbex;->registerService()V

    .line 69
    invoke-virtual {v6}, Lbex;->initNow()V

    goto :goto_0

    .line 71
    :cond_0
    invoke-virtual {v6}, Lbex;->initPlayer()V

    .line 73
    :goto_0
    iget-object v7, p0, Lbey;->a:Ljava/util/Map;

    invoke-interface {v7, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "moduleInit %s takes :%d ms"

    .line 74
    new-array v7, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v3

    invoke-static {v1, v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 76
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v3

    const-string p1, "registerModule %s fail, %s"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 79
    :cond_1
    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v2

    const-string p1, "clazz(%s) had register"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    .line 54
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lbey;->a(Ljava/lang/Class;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x2

    .line 56
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, p1

    const-string p1, "ModuleManager"

    const-string v0, "registerModule:%s fail, %s"

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const-string v0, "ModuleManager"

    const-string v1, "init: ==========="

    .line 37
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.xiaopeng.musicradio.CommonInit"

    .line 38
    invoke-direct {p0, v0}, Lbey;->a(Ljava/lang/String;)V

    const-string v0, "com.xiaopeng.musicradio.MusicInit"

    .line 39
    invoke-direct {p0, v0}, Lbey;->a(Ljava/lang/String;)V

    const-string v0, "com.xiaopeng.musicradio.ProgramInit"

    .line 40
    invoke-direct {p0, v0}, Lbey;->a(Ljava/lang/String;)V

    const-string v0, "com.xiaopeng.musicradio.LoginInit"

    .line 41
    invoke-direct {p0, v0}, Lbey;->a(Ljava/lang/String;)V

    const-string v0, "com.xiaopeng.musicradio.NetRadioInit"

    .line 42
    invoke-direct {p0, v0}, Lbey;->a(Ljava/lang/String;)V

    const-string v0, "com.xiaopeng.musicradio.VipInit"

    .line 43
    invoke-direct {p0, v0}, Lbey;->a(Ljava/lang/String;)V

    const-string v0, "com.xiaopeng.musicradio.MineInit"

    .line 44
    invoke-direct {p0, v0}, Lbey;->a(Ljava/lang/String;)V

    const-string v0, "com.xiaopeng.musicradio.WebViewInit"

    .line 45
    invoke-direct {p0, v0}, Lbey;->a(Ljava/lang/String;)V

    const-string v0, "com.xiaopeng.musicradio.PlayerComponentInit"

    .line 46
    invoke-direct {p0, v0}, Lbey;->a(Ljava/lang/String;)V

    const-string v0, "com.xiaopeng.musicradio.MusicAppInit"

    .line 47
    invoke-direct {p0, v0}, Lbey;->a(Ljava/lang/String;)V

    const-string v0, "com.xiaopeng.musicradio.search.SearchInit"

    .line 48
    invoke-direct {p0, v0}, Lbey;->a(Ljava/lang/String;)V

    const-string v0, "com.xiaopeng.musicradio.usb.UsbInit"

    .line 49
    invoke-direct {p0, v0}, Lbey;->a(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 4

    .line 85
    iget-object v0, p0, Lbey;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 86
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbex;

    .line 89
    invoke-virtual {v1}, Lbex;->initDelay()V

    const/4 v2, 0x1

    .line 90
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    const-string v1, "ModuleManager"

    const-string v3, "delayInit clazz(%s)"

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPowerStateChange(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 96
    iget-object v0, p0, Lbey;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 97
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbex;

    .line 100
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ah;->a()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 101
    invoke-virtual {v1}, Lbex;->igOn()V

    goto :goto_0

    .line 103
    :cond_0
    invoke-virtual {v1}, Lbex;->igOff()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public receiveKugouMusicBinded(Lasj$h;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 130
    iget-object p1, p0, Lbey;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 131
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 133
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbex;

    .line 134
    invoke-virtual {v0}, Lbex;->onKugouBinded()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public receiveMusicBinded(Lasj$m;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 110
    iget-object p1, p0, Lbey;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 111
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbex;

    .line 114
    invoke-virtual {v0}, Lbex;->onMusicBinded()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public receiveNeteaseMusicBinded(Lasj$t;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 120
    iget-object p1, p0, Lbey;->a:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 121
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 123
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbex;

    .line 124
    invoke-virtual {v0}, Lbex;->onNeteaseBinded()V

    goto :goto_0

    :cond_0
    return-void
.end method
