.class public Lorg/eclipse/paho/android/service/d;
.super Landroid/content/BroadcastReceiver;
.source "MqttAndroidClient.java"

# interfaces
.implements Lcee;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/android/service/d$b;,
        Lorg/eclipse/paho/android/service/d$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final b:Lorg/eclipse/paho/android/service/d$b;

.field private c:Lorg/eclipse/paho/android/service/MqttService;

.field private d:Ljava/lang/String;

.field private e:Landroid/content/Context;

.field private final f:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lceh;",
            ">;"
        }
    .end annotation
.end field

.field private g:I

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private j:Lcel;

.field private k:Lcem;

.field private l:Lceh;

.field private m:Lcej;

.field private n:Lorg/eclipse/paho/android/service/i;

.field private final o:Lorg/eclipse/paho/android/service/d$a;

.field private p:Z

.field private volatile q:Z

.field private volatile r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 110
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/android/service/d;->a:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcel;)V
    .locals 6

    .line 228
    sget-object v5, Lorg/eclipse/paho/android/service/d$a;->AUTO_ACK:Lorg/eclipse/paho/android/service/d$a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/android/service/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcel;Lorg/eclipse/paho/android/service/d$a;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcel;Lorg/eclipse/paho/android/service/d$a;)V
    .locals 2

    .line 251
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 141
    new-instance v0, Lorg/eclipse/paho/android/service/d$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/eclipse/paho/android/service/d$b;-><init>(Lorg/eclipse/paho/android/service/d;Lorg/eclipse/paho/android/service/d$1;)V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/d;->b:Lorg/eclipse/paho/android/service/d$b;

    .line 154
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/android/service/d;->f:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 155
    iput v0, p0, Lorg/eclipse/paho/android/service/d;->g:I

    .line 160
    iput-object v1, p0, Lorg/eclipse/paho/android/service/d;->j:Lcel;

    .line 170
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/d;->p:Z

    .line 172
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/d;->q:Z

    .line 173
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/d;->r:Z

    .line 252
    iput-object p1, p0, Lorg/eclipse/paho/android/service/d;->e:Landroid/content/Context;

    .line 253
    iput-object p2, p0, Lorg/eclipse/paho/android/service/d;->h:Ljava/lang/String;

    .line 254
    iput-object p3, p0, Lorg/eclipse/paho/android/service/d;->i:Ljava/lang/String;

    .line 255
    iput-object p4, p0, Lorg/eclipse/paho/android/service/d;->j:Lcel;

    .line 256
    iput-object p5, p0, Lorg/eclipse/paho/android/service/d;->o:Lorg/eclipse/paho/android/service/d$a;

    return-void
.end method

.method private declared-synchronized a(Lceh;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 1733
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->f:Landroid/util/SparseArray;

    iget v1, p0, Lorg/eclipse/paho/android/service/d;->g:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1734
    iget p1, p0, Lorg/eclipse/paho/android/service/d;->g:I

    add-int/lit8 v0, p1, 0x1

    iput v0, p0, Lorg/eclipse/paho/android/service/d;->g:I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/d;Lorg/eclipse/paho/android/service/MqttService;)Lorg/eclipse/paho/android/service/MqttService;
    .locals 0

    .line 78
    iput-object p1, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    return-object p1
.end method

.method private a(Landroid/content/BroadcastReceiver;)V
    .locals 2

    .line 476
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "MqttService.callbackToActivity.v0"

    .line 477
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    iget-object v1, p0, Lorg/eclipse/paho/android/service/d;->e:Landroid/content/Context;

    invoke-static {v1}, Lhu;->a(Landroid/content/Context;)Lhu;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lhu;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 p1, 0x1

    .line 479
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/d;->q:Z

    return-void
.end method

.method private a(Landroid/os/Bundle;)V
    .locals 1

    .line 1544
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->l:Lceh;

    .line 1545
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->k(Landroid/os/Bundle;)Lceh;

    .line 1547
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/d;->a(Lceh;Landroid/os/Bundle;)V

    return-void
.end method

.method private a(Lceh;Landroid/os/Bundle;)V
    .locals 2

    if-eqz p1, :cond_1

    const-string v0, "MqttService.callbackStatus"

    .line 1603
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/android/service/j;

    .line 1604
    sget-object v1, Lorg/eclipse/paho/android/service/j;->OK:Lorg/eclipse/paho/android/service/j;

    if-ne v0, v1, :cond_0

    .line 1605
    check-cast p1, Lorg/eclipse/paho/android/service/h;

    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/h;->b()V

    goto :goto_0

    :cond_0
    const-string v0, "MqttService.exception"

    .line 1608
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/lang/Exception;

    .line 1609
    check-cast p1, Lorg/eclipse/paho/android/service/h;

    invoke-virtual {p1, p2}, Lorg/eclipse/paho/android/service/h;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1612
    :cond_1
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/d;->g()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 1615
    :cond_2
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    const-string p2, "MqttService"

    const-string v0, "simpleAction : token is null"

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/d;)V
    .locals 0

    .line 78
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/d;->f()V

    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/d;Landroid/content/BroadcastReceiver;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->a(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method static synthetic a(Lorg/eclipse/paho/android/service/d;Z)Z
    .locals 0

    .line 78
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/d;->r:Z

    return p1
.end method

.method private b(Landroid/os/Bundle;)V
    .locals 1

    const/4 v0, 0x0

    .line 1558
    iput-object v0, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    .line 1559
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->k(Landroid/os/Bundle;)Lceh;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1561
    check-cast p1, Lorg/eclipse/paho/android/service/h;

    invoke-virtual {p1}, Lorg/eclipse/paho/android/service/h;->b()V

    .line 1563
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d;->m:Lcej;

    if-eqz p1, :cond_1

    .line 1564
    invoke-interface {p1, v0}, Lcej;->connectionLost(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lorg/eclipse/paho/android/service/d;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Lorg/eclipse/paho/android/service/d;->q:Z

    return p0
.end method

.method private c(Landroid/os/Bundle;)V
    .locals 1

    .line 1574
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->m:Lcej;

    if-eqz v0, :cond_0

    const-string v0, "MqttService.exception"

    .line 1576
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    .line 1577
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->m:Lcej;

    invoke-interface {v0, p1}, Lcej;->connectionLost(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 2

    .line 1584
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->m:Lcej;

    instance-of v0, v0, Lcek;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "MqttService.reconnect"

    .line 1585
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "MqttService.serverURI"

    .line 1586
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1587
    iget-object v1, p0, Lorg/eclipse/paho/android/service/d;->m:Lcej;

    check-cast v1, Lcek;

    invoke-interface {v1, v0, p1}, Lcek;->connectComplete(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method static synthetic e()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .line 78
    sget-object v0, Lorg/eclipse/paho/android/service/d;->a:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private e(Landroid/os/Bundle;)V
    .locals 1

    .line 1625
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->l(Landroid/os/Bundle;)Lceh;

    move-result-object v0

    .line 1627
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/d;->a(Lceh;Landroid/os/Bundle;)V

    return-void
.end method

.method private declared-synchronized f()V
    .locals 6

    monitor-enter p0

    .line 486
    :try_start_0
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/d;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 487
    monitor-exit p0

    return-void

    .line 495
    :cond_0
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 497
    :try_start_2
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/android/service/MqttService;->c(Ljava/lang/String;)Lorg/eclipse/paho/android/service/e;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 499
    :catch_0
    :try_start_3
    iput-object v1, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    .line 503
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 504
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/d;->h:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/d;->i:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/paho/android/service/d;->e:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lorg/eclipse/paho/android/service/d;->j:Lcel;

    invoke-virtual {v0, v2, v3, v4, v5}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcel;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    .line 507
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-boolean v2, p0, Lorg/eclipse/paho/android/service/d;->p:Z

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/android/service/MqttService;->a(Z)V

    .line 508
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/eclipse/paho/android/service/MqttService;->d(Ljava/lang/String;)V

    .line 510
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->l:Lceh;

    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/d;->a(Lceh;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 512
    :try_start_4
    iget-object v2, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/paho/android/service/d;->k:Lcem;

    invoke-virtual {v2, v3, v4, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lcem;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 516
    :try_start_5
    iget-object v1, p0, Lorg/eclipse/paho/android/service/d;->l:Lceh;

    invoke-interface {v1}, Lceh;->d()Lced;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 518
    iget-object v2, p0, Lorg/eclipse/paho/android/service/d;->l:Lceh;

    invoke-interface {v1, v2, v0}, Lced;->onFailure(Lceh;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 521
    :cond_3
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private f(Landroid/os/Bundle;)V
    .locals 1

    .line 1636
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->k(Landroid/os/Bundle;)Lceh;

    move-result-object v0

    .line 1637
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/d;->a(Lceh;Landroid/os/Bundle;)V

    return-void
.end method

.method private g(Landroid/os/Bundle;)V
    .locals 1

    .line 1646
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->k(Landroid/os/Bundle;)Lceh;

    move-result-object v0

    .line 1647
    invoke-direct {p0, v0, p1}, Lorg/eclipse/paho/android/service/d;->a(Lceh;Landroid/os/Bundle;)V

    return-void
.end method

.method private g()Z
    .locals 1

    .line 1855
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private h(Landroid/os/Bundle;)V
    .locals 2

    .line 1656
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->k(Landroid/os/Bundle;)Lceh;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1658
    iget-object v1, p0, Lorg/eclipse/paho/android/service/d;->m:Lcej;

    if-eqz v1, :cond_0

    const-string v1, "MqttService.callbackStatus"

    .line 1660
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/android/service/j;

    .line 1661
    sget-object v1, Lorg/eclipse/paho/android/service/j;->OK:Lorg/eclipse/paho/android/service/j;

    if-ne p1, v1, :cond_0

    instance-of p1, v0, Lcef;

    if-eqz p1, :cond_0

    .line 1662
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d;->m:Lcej;

    check-cast v0, Lcef;

    invoke-interface {p1, v0}, Lcej;->deliveryComplete(Lcef;)V

    :cond_0
    return-void
.end method

.method private i(Landroid/os/Bundle;)V
    .locals 4

    .line 1674
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->m:Lcej;

    if-eqz v0, :cond_2

    const-string v0, "MqttService.messageId"

    .line 1676
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.destinationName"

    .line 1678
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttService.PARCEL"

    .line 1681
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lorg/eclipse/paho/android/service/ParcelableMqttMessage;

    .line 1683
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/android/service/d;->o:Lorg/eclipse/paho/android/service/d$a;

    sget-object v3, Lorg/eclipse/paho/android/service/d$a;->AUTO_ACK:Lorg/eclipse/paho/android/service/d$a;

    if-ne v2, v3, :cond_1

    .line 1684
    iget-object v2, p0, Lorg/eclipse/paho/android/service/d;->m:Lcej;

    invoke-interface {v2, v1, p1}, Lcej;->messageArrived(Ljava/lang/String;Lcep;)V

    .line 1685
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/d;->g()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 1688
    :cond_0
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/android/service/j;

    goto :goto_0

    .line 1691
    :cond_1
    iput-object v0, p1, Lorg/eclipse/paho/android/service/ParcelableMqttMessage;->a:Ljava/lang/String;

    .line 1692
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->m:Lcej;

    invoke-interface {v0, v1, p1}, Lcej;->messageArrived(Ljava/lang/String;Lcep;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    :goto_0
    return-void
.end method

.method private j(Landroid/os/Bundle;)V
    .locals 4

    .line 1710
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->n:Lorg/eclipse/paho/android/service/i;

    if-eqz v0, :cond_2

    const-string v0, "MqttService.traceSeverity"

    .line 1711
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MqttService.errorMessage"

    .line 1712
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "MqttService.traceTag"

    .line 1713
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "debug"

    .line 1714
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1715
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d;->n:Lorg/eclipse/paho/android/service/i;

    invoke-interface {p1, v2, v1}, Lorg/eclipse/paho/android/service/i;->traceDebug(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "error"

    .line 1716
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1717
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d;->n:Lorg/eclipse/paho/android/service/i;

    invoke-interface {p1, v2, v1}, Lorg/eclipse/paho/android/service/i;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "MqttService.exception"

    .line 1720
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Exception;

    .line 1721
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->n:Lorg/eclipse/paho/android/service/i;

    invoke-interface {v0, v2, v1, p1}, Lorg/eclipse/paho/android/service/i;->traceException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized k(Landroid/os/Bundle;)Lceh;
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "MqttService.activityToken"

    .line 1745
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1747
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 1748
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->f:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lceh;

    .line 1749
    iget-object v1, p0, Lorg/eclipse/paho/android/service/d;->f:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1750
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 1752
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized l(Landroid/os/Bundle;)Lceh;
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "MqttService.activityToken"

    .line 1763
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1764
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->f:Landroid/util/SparseArray;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lceh;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcep;Ljava/lang/Object;Lced;)Lcef;
    .locals 7

    .line 893
    new-instance v0, Lorg/eclipse/paho/android/service/f;

    invoke-direct {v0, p0, p3, p4, p2}, Lorg/eclipse/paho/android/service/f;-><init>(Lorg/eclipse/paho/android/service/d;Ljava/lang/Object;Lced;Lcep;)V

    .line 895
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/d;->a(Lceh;)Ljava/lang/String;

    move-result-object v6

    .line 896
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/d;->g()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 899
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v1 .. v6}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;Lcep;Ljava/lang/String;Ljava/lang/String;)Lcef;

    move-result-object p1

    .line 901
    invoke-virtual {v0, p1}, Lorg/eclipse/paho/android/service/f;->a(Lceh;)V

    return-object v0
.end method

.method public a(Lced;)Lceh;
    .locals 4

    .line 685
    new-instance v0, Lorg/eclipse/paho/android/service/h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lorg/eclipse/paho/android/service/h;-><init>(Lorg/eclipse/paho/android/service/d;Ljava/lang/Object;Lced;)V

    .line 687
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/d;->a(Lceh;)Ljava/lang/String;

    move-result-object p1

    .line 688
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/d;->g()Z

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    .line 691
    :cond_0
    iget-object v2, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v3, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcem;Ljava/lang/Object;Lced;)Lceh;
    .locals 2

    .line 426
    new-instance v0, Lorg/eclipse/paho/android/service/h;

    invoke-direct {v0, p0, p2, p3}, Lorg/eclipse/paho/android/service/h;-><init>(Lorg/eclipse/paho/android/service/d;Ljava/lang/Object;Lced;)V

    .line 429
    iput-object p1, p0, Lorg/eclipse/paho/android/service/d;->k:Lcem;

    .line 430
    iput-object v0, p0, Lorg/eclipse/paho/android/service/d;->l:Lceh;

    .line 438
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    if-nez p1, :cond_1

    .line 439
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 440
    new-instance p2, Landroid/content/ComponentName;

    iget-object p3, p0, Lorg/eclipse/paho/android/service/d;->e:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v1, "org.eclipse.paho.android.service.MqttService"

    invoke-direct {p2, p3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 441
    iget-object p2, p0, Lorg/eclipse/paho/android/service/d;->e:Landroid/content/Context;

    sget-object p3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p2

    if-nez p2, :cond_0

    .line 444
    invoke-interface {v0}, Lceh;->d()Lced;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 446
    new-instance p3, Ljava/lang/RuntimeException;

    const-string v1, "cannot start service org.eclipse.paho.android.service.MqttService"

    invoke-direct {p3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, p3}, Lced;->onFailure(Lceh;Ljava/lang/Throwable;)V

    .line 453
    :cond_0
    iget-object p2, p0, Lorg/eclipse/paho/android/service/d;->e:Landroid/content/Context;

    iget-object p3, p0, Lorg/eclipse/paho/android/service/d;->b:Lorg/eclipse/paho/android/service/d$b;

    const/4 v1, 0x1

    invoke-virtual {p2, p1, p3, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 456
    iget-boolean p1, p0, Lorg/eclipse/paho/android/service/d;->q:Z

    if-nez p1, :cond_2

    invoke-direct {p0, p0}, Lorg/eclipse/paho/android/service/d;->a(Landroid/content/BroadcastReceiver;)V

    goto :goto_0

    .line 459
    :cond_1
    sget-object p1, Lorg/eclipse/paho/android/service/d;->a:Ljava/util/concurrent/ExecutorService;

    new-instance p2, Lorg/eclipse/paho/android/service/d$1;

    invoke-direct {p2, p0}, Lorg/eclipse/paho/android/service/d$1;-><init>(Lorg/eclipse/paho/android/service/d;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_2
    :goto_0
    return-object v0
.end method

.method public a(Ljava/lang/String;ILjava/lang/Object;Lced;)Lceh;
    .locals 9

    .line 990
    new-instance v0, Lorg/eclipse/paho/android/service/h;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-direct {v0, p0, p3, p4, v1}, Lorg/eclipse/paho/android/service/h;-><init>(Lorg/eclipse/paho/android/service/d;Ljava/lang/Object;Lced;[Ljava/lang/String;)V

    .line 992
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/d;->a(Lceh;)Ljava/lang/String;

    move-result-object v8

    .line 993
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/d;->g()Z

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 996
    :cond_0
    iget-object v3, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v4, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v5, p1

    move v6, p2

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a(Lcec;)V
    .locals 2

    .line 1772
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/d;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1775
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Ljava/lang/String;Lcec;)V

    return-void
.end method

.method public a(Lcej;)V
    .locals 0

    .line 1415
    iput-object p1, p0, Lorg/eclipse/paho/android/service/d;->m:Lcej;

    return-void
.end method

.method public a(Lorg/eclipse/paho/android/service/i;)V
    .locals 0

    .line 1426
    iput-object p1, p0, Lorg/eclipse/paho/android/service/d;->n:Lorg/eclipse/paho/android/service/i;

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 1439
    iput-boolean p1, p0, Lorg/eclipse/paho/android/service/d;->p:Z

    .line 1440
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    if-eqz v0, :cond_0

    .line 1441
    invoke-virtual {v0, p1}, Lorg/eclipse/paho/android/service/MqttService;->a(Z)V

    :cond_0
    return-void
.end method

.method public a()Z
    .locals 3

    .line 267
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    if-eqz v2, :cond_0

    .line 269
    :try_start_0
    invoke-virtual {v2, v0}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b(Lced;)V
    .locals 2

    .line 1903
    new-instance v0, Lorg/eclipse/paho/android/service/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1, v1}, Lorg/eclipse/paho/android/service/f;-><init>(Lorg/eclipse/paho/android/service/d;Ljava/lang/Object;Lced;Lcep;)V

    .line 1905
    invoke-direct {p0, v0}, Lorg/eclipse/paho/android/service/d;->a(Lceh;)Ljava/lang/String;

    move-result-object p1

    .line 1906
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/d;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1909
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    iget-object v1, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Lorg/eclipse/paho/android/service/MqttService;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 305
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized d()V
    .locals 3

    monitor-enter p0

    .line 1863
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->e:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/paho/android/service/d;->q:Z

    if-eqz v0, :cond_0

    .line 1864
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1865
    :try_start_1
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->e:Landroid/content/Context;

    invoke-static {v0}, Lhu;->a(Landroid/content/Context;)Lhu;

    move-result-object v0

    invoke-virtual {v0, p0}, Lhu;->a(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 1866
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/d;->q:Z

    .line 1867
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1868
    :try_start_2
    iget-boolean v1, p0, Lorg/eclipse/paho/android/service/d;->r:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_0

    .line 1870
    :try_start_3
    iget-object v1, p0, Lorg/eclipse/paho/android/service/d;->e:Landroid/content/Context;

    iget-object v2, p0, Lorg/eclipse/paho/android/service/d;->b:Lorg/eclipse/paho/android/service/d$b;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1871
    iput-boolean v0, p0, Lorg/eclipse/paho/android/service/d;->r:Z
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1867
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1877
    :catch_0
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1457
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "MqttService.clientHandle"

    .line 1460
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 1462
    iget-object v0, p0, Lorg/eclipse/paho/android/service/d;->d:Ljava/lang/String;

    .line 1463
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const-string p2, "MqttService.callbackAction"

    .line 1467
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "connect"

    .line 1469
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1470
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->a(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_1
    const-string v0, "connectExtended"

    .line 1472
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1473
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->d(Landroid/os/Bundle;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "messageArrived"

    .line 1475
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1476
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->i(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    const-string v0, "subscribe"

    .line 1478
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1479
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->f(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_4
    const-string v0, "unsubscribe"

    .line 1481
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1482
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->g(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_5
    const-string v0, "send"

    .line 1484
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1485
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->e(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_6
    const-string v0, "messageDelivered"

    .line 1487
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1488
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->h(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_7
    const-string v0, "onConnectionLost"

    .line 1491
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1492
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->c(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_8
    const-string v0, "disconnect"

    .line 1494
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1495
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->b(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_9
    const-string v0, "trace"

    .line 1497
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 1498
    invoke-direct {p0, p1}, Lorg/eclipse/paho/android/service/d;->j(Landroid/os/Bundle;)V

    goto :goto_0

    .line 1500
    :cond_a
    invoke-direct {p0}, Lorg/eclipse/paho/android/service/d;->g()Z

    move-result p1

    if-nez p1, :cond_b

    return-void

    .line 1503
    :cond_b
    iget-object p1, p0, Lorg/eclipse/paho/android/service/d;->c:Lorg/eclipse/paho/android/service/MqttService;

    const-string p2, "MqttService"

    const-string v0, "Callback action doesn\'t exist."

    invoke-virtual {p1, p2, v0}, Lorg/eclipse/paho/android/service/MqttService;->traceError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    :goto_0
    return-void
.end method
