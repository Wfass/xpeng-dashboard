.class public Lorg/eclipse/paho/android/service/MqttService;
.super Landroid/app/Service;
.source "MqttService.java"

# interfaces
.implements Lorg/eclipse/paho/android/service/i;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "Registered"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/android/service/MqttService$a;,
        Lorg/eclipse/paho/android/service/MqttService$b;
    }
.end annotation


# instance fields
.field a:Lorg/eclipse/paho/android/service/c;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Lorg/eclipse/paho/android/service/MqttService$b;

.field private f:Lorg/eclipse/paho/android/service/MqttService$a;

.field private volatile g:Z

.field private h:Lorg/eclipse/paho/android/service/g;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/eclipse/paho/android/service/e;",
            ">;"
        }
    .end annotation
.end field

.field private j:Landroid/os/HandlerThread;

.field private k:Landroid/os/Handler;

.field private l:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 268
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    .line 241
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->c:Z

    const/4 v1, 0x0

    .line 243
    iput-boolean v1, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Z

    .line 257
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Z

    .line 263
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->i:Ljava/util/Map;

    const/4 v0, -0x1

    .line 868
    iput v0, p0, Lorg/eclipse/paho/android/service/MqttService;->l:I

    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/MqttService;I)I
    .locals 0

    .line 232
    iput p1, p0, Lorg/eclipse/paho/android/service/MqttService;->l:I

    return p1
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/MqttService;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0

    .line 232
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->k:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/MqttService;)Landroid/os/HandlerThread;
    .locals 0

    .line 232
    iget-object p0, p0, Lorg/eclipse/paho/android/service/MqttService;->j:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/MqttService;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 232
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->j:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/MqttService;Z)Z
    .locals 0

    .line 232
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Z

    return p1
.end method

.method static synthetic b(Lorg/eclipse/paho/android/service/MqttService;)Landroid/os/Handler;
    .locals 0

    .line 232
    iget-object p0, p0, Lorg/eclipse/paho/android/service/MqttService;->k:Landroid/os/Handler;

    return-object p0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 801
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->c:Z

    if-eqz v0, :cond_0

    .line 802
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "trace"

    .line 803
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.traceSeverity"

    .line 804
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MqttService.traceTag"

    .line 805
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "MqttService.errorMessage"

    .line 807
    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 808
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    sget-object p2, Lorg/eclipse/paho/android/service/j;->ERROR:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method static synthetic c(Lorg/eclipse/paho/android/service/MqttService;)I
    .locals 0

    .line 232
    iget p0, p0, Lorg/eclipse/paho/android/service/MqttService;->l:I

    return p0
.end method

.method private c()V
    .locals 4

    .line 835
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$b;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 836
    new-instance v0, Lorg/eclipse/paho/android/service/MqttService$b;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/paho/android/service/MqttService$b;-><init>(Lorg/eclipse/paho/android/service/MqttService;Lorg/eclipse/paho/android/service/MqttService$1;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$b;

    .line 837
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$b;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lorg/eclipse/paho/android/service/MqttService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 841
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_1

    const-string v0, "connectivity"

    .line 843
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 844
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v0

    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Z

    .line 845
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Lorg/eclipse/paho/android/service/MqttService$a;

    if-nez v0, :cond_1

    .line 846
    new-instance v0, Lorg/eclipse/paho/android/service/MqttService$a;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/paho/android/service/MqttService$a;-><init>(Lorg/eclipse/paho/android/service/MqttService;Lorg/eclipse/paho/android/service/MqttService$1;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Lorg/eclipse/paho/android/service/MqttService$a;

    .line 847
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Lorg/eclipse/paho/android/service/MqttService$a;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.BACKGROUND_DATA_SETTING_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private d()V
    .locals 2

    .line 856
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$b;

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 858
    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->e:Lorg/eclipse/paho/android/service/MqttService$b;

    .line 861
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_1

    .line 862
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->f:Lorg/eclipse/paho/android/service/MqttService$a;

    if-eqz v0, :cond_1

    .line 863
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    return-void
.end method

.method static synthetic d(Lorg/eclipse/paho/android/service/MqttService;)V
    .locals 0

    .line 232
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttService;->e()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 954
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/android/service/e;

    .line 955
    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/e;->e()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic e(Lorg/eclipse/paho/android/service/MqttService;)Z
    .locals 0

    .line 232
    iget-boolean p0, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Z

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Lcep;Ljava/lang/String;Ljava/lang/String;)Lcef;
    .locals 2

    const-string v0, "publish: "

    const-string v1, "MqttService"

    .line 513
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->c(Ljava/lang/String;)Lorg/eclipse/paho/android/service/e;

    move-result-object p1

    .line 514
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/eclipse/paho/android/service/e;->a(Ljava/lang/String;Lcep;Ljava/lang/String;Ljava/lang/String;)Lcef;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 518
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 516
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcel;)Ljava/lang/String;
    .locals 8

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 310
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->i:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    new-instance v0, Lorg/eclipse/paho/android/service/e;

    move-object v2, v0

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/paho/android/service/e;-><init>(Lorg/eclipse/paho/android/service/MqttService;Ljava/lang/String;Ljava/lang/String;Lcel;Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->i:Ljava/util/Map;

    invoke-interface {p1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p3
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/android/service/j;
    .locals 1

    .line 670
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    invoke-interface {v0, p1, p2}, Lorg/eclipse/paho/android/service/c;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 671
    sget-object p1, Lorg/eclipse/paho/android/service/j;->OK:Lorg/eclipse/paho/android/service/j;

    return-object p1

    .line 673
    :cond_0
    sget-object p1, Lorg/eclipse/paho/android/service/j;->ERROR:Lorg/eclipse/paho/android/service/j;

    return-object p1
.end method

.method a()V
    .locals 4

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reconnect to server, client size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/MqttService;->i:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService"

    invoke-virtual {p0, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/android/service/e;

    .line 345
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x2f

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Reconnect Client:"

    .line 345
    invoke-virtual {p0, v3, v2}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/MqttService;->b()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    invoke-virtual {v1}, Lorg/eclipse/paho/android/service/e;->f()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "close: "

    const-string v1, "MqttService"

    .line 360
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->c(Ljava/lang/String;)Lorg/eclipse/paho/android/service/e;

    move-result-object p1

    .line 361
    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/e;->c()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcec;)V
    .locals 2

    const-string v0, "setBufferOpts: "

    const-string v1, "MqttService"

    .line 992
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->c(Ljava/lang/String;)Lorg/eclipse/paho/android/service/e;

    move-result-object p1

    .line 993
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/e;->a(Lcec;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 997
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 995
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Lcem;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 331
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->c(Ljava/lang/String;)Lorg/eclipse/paho/android/service/e;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x0

    .line 335
    invoke-virtual {p1, p2, p3, p4}, Lorg/eclipse/paho/android/service/e;->a(Lcem;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "subscribe: "

    const-string v1, "MqttService"

    .line 535
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->c(Ljava/lang/String;)Lorg/eclipse/paho/android/service/e;

    move-result-object p1

    .line 536
    invoke-virtual {p1, p2, p3, p4, p5}, Lorg/eclipse/paho/android/service/e;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 540
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 538
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string v0, "disconnectConnection: "

    const-string v1, "MqttService"

    .line 431
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->c(Ljava/lang/String;)Lorg/eclipse/paho/android/service/e;

    move-result-object v2

    .line 432
    invoke-virtual {v2, p2, p3}, Lorg/eclipse/paho/android/service/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;)V

    .line 434
    iget-object p2, p0, Lorg/eclipse/paho/android/service/MqttService;->i:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 438
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 436
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/paho/android/service/MqttService;->stopSelf()V

    return-void
.end method

.method a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V
    .locals 2

    .line 283
    new-instance v0, Landroid/content/Intent;

    const-string v1, "MqttService.callbackToActivity.v0"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const-string v1, "MqttService.clientHandle"

    .line 286
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string p1, "MqttService.callbackStatus"

    .line 289
    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    if-eqz p3, :cond_1

    .line 291
    invoke-virtual {v0, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 293
    :cond_1
    invoke-static {p0}, Lhu;->a(Landroid/content/Context;)Lhu;

    move-result-object p1

    invoke-virtual {p1, v0}, Lhu;->a(Landroid/content/Intent;)Z

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 766
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttService;->c:Z

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1065
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->c(Ljava/lang/String;)Lorg/eclipse/paho/android/service/e;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_0

    .line 1070
    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/e;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 2

    const-string v0, "connectivity"

    .line 937
    invoke-virtual {p0, v0}, Lorg/eclipse/paho/android/service/MqttService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 938
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 941
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 942
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    .line 455
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/android/service/MqttService;->c(Ljava/lang/String;)Lorg/eclipse/paho/android/service/e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 457
    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/e;->d()Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 460
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(Ljava/lang/String;)Lorg/eclipse/paho/android/service/e;
    .locals 1

    .line 653
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->i:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 654
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/android/service/e;

    if-eqz p1, :cond_1

    return-object p1

    .line 656
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid ClientHandle"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 757
    iput-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "MqttService.activityToken"

    .line 731
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 732
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Lorg/eclipse/paho/android/service/g;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/android/service/g;->a(Ljava/lang/String;)V

    .line 733
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Lorg/eclipse/paho/android/service/g;

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 684
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 688
    new-instance v0, Lorg/eclipse/paho/android/service/g;

    invoke-direct {v0, p0}, Lorg/eclipse/paho/android/service/g;-><init>(Lorg/eclipse/paho/android/service/MqttService;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Lorg/eclipse/paho/android/service/g;

    .line 692
    new-instance v0, Lorg/eclipse/paho/android/service/b;

    invoke-direct {v0, p0, p0}, Lorg/eclipse/paho/android/service/b;-><init>(Lorg/eclipse/paho/android/service/MqttService;Landroid/content/Context;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "MqttService"

    const-string v1, "onDestroy"

    .line 701
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/android/service/MqttService;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->i:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/paho/android/service/e;

    .line 704
    invoke-virtual {v1, v2, v2}, Lorg/eclipse/paho/android/service/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 708
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Lorg/eclipse/paho/android/service/g;

    if-eqz v0, :cond_1

    .line 709
    iput-object v2, p0, Lorg/eclipse/paho/android/service/MqttService;->h:Lorg/eclipse/paho/android/service/g;

    .line 712
    :cond_1
    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Z

    if-eqz v0, :cond_2

    .line 713
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttService;->d()V

    .line 716
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->a:Lorg/eclipse/paho/android/service/c;

    if-eqz v0, :cond_3

    .line 717
    invoke-interface {v0}, Lorg/eclipse/paho/android/service/c;->a()V

    .line 719
    :cond_3
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 743
    iget-boolean p1, p0, Lorg/eclipse/paho/android/service/MqttService;->d:Z

    if-eqz p1, :cond_0

    .line 744
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/MqttService;->c()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public traceDebug(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "debug"

    .line 786
    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public traceError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "error"

    .line 797
    invoke-direct {p0, v0, p1, p2}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    .line 821
    iget-object v0, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 822
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "MqttService.callbackAction"

    const-string v2, "trace"

    .line 823
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.traceSeverity"

    const-string v2, "exception"

    .line 824
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "MqttService.errorMessage"

    .line 825
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "MqttService.exception"

    .line 826
    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p2, "MqttService.traceTag"

    .line 827
    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 829
    iget-object p1, p0, Lorg/eclipse/paho/android/service/MqttService;->b:Ljava/lang/String;

    sget-object p2, Lorg/eclipse/paho/android/service/j;->ERROR:Lorg/eclipse/paho/android/service/j;

    invoke-virtual {p0, p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lorg/eclipse/paho/android/service/j;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
