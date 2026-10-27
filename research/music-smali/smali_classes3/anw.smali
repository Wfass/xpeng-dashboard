.class public Lanw;
.super Ljava/lang/Object;
.source "BtBoxesUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "anw"

.field private static volatile b:Lanw;


# instance fields
.field private c:Landroid/content/Context;

.field private d:Lcom/nforetek/bt/aidl/l;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lans;",
            ">;"
        }
    .end annotation
.end field

.field private f:Landroid/content/ServiceConnection;

.field private g:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Lanw$1;

    invoke-direct {v0, p0}, Lanw$1;-><init>(Lanw;)V

    iput-object v0, p0, Lanw;->f:Landroid/content/ServiceConnection;

    .line 142
    new-instance v0, Lanw$2;

    invoke-direct {v0, p0}, Lanw$2;-><init>(Lanw;)V

    iput-object v0, p0, Lanw;->g:Landroid/os/IBinder$DeathRecipient;

    .line 48
    iput-object p1, p0, Lanw;->c:Landroid/content/Context;

    .line 49
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lanw;->e:Ljava/util/List;

    return-void
.end method

.method public static a()Lanw;
    .locals 1

    .line 93
    sget-object v0, Lanw;->b:Lanw;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lanw;
    .locals 2

    .line 53
    sget-object v0, Lanw;->b:Lanw;

    if-nez v0, :cond_1

    .line 54
    const-class v0, Lanw;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lanw;->b:Lanw;

    if-nez v1, :cond_0

    .line 56
    new-instance v1, Lanw;

    invoke-direct {v1, p0}, Lanw;-><init>(Landroid/content/Context;)V

    sput-object v1, Lanw;->b:Lanw;

    .line 58
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 60
    :cond_1
    :goto_0
    sget-object p0, Lanw;->b:Lanw;

    return-object p0
.end method

.method static synthetic a(Lanw;Lcom/nforetek/bt/aidl/l;)Lcom/nforetek/bt/aidl/l;
    .locals 0

    .line 30
    iput-object p1, p0, Lanw;->d:Lcom/nforetek/bt/aidl/l;

    return-object p1
.end method

.method static synthetic a(Lanw;)Ljava/lang/String;
    .locals 0

    .line 30
    invoke-direct {p0}, Lanw;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(Lans;)V
    .locals 3

    .line 181
    iget-object v0, p0, Lanw;->e:Ljava/util/List;

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lanw;->e:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v1, Lanw;->a:Ljava/lang/String;

    const-string v2, "mConnectionCallbacks.add"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    sget-object v0, Lanw;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanw;->d:Lcom/nforetek/bt/aidl/l;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lanw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    iget-object v0, p0, Lanw;->d:Lcom/nforetek/bt/aidl/l;

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p1, v0}, Lans;->a(Lcom/nforetek/bt/aidl/l;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 184
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private a(Lcom/nforetek/bt/aidl/l;)V
    .locals 3

    .line 157
    sget-object v0, Lanw;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyConnected  from : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lanw;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " callback.size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lanw;->e:Ljava/util/List;

    .line 158
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lanw;->e:Ljava/util/List;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lanw;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lans;

    .line 161
    invoke-virtual {v2, p1}, Lans;->b(Lcom/nforetek/bt/aidl/l;)V

    goto :goto_0

    .line 163
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lanw;)Lcom/nforetek/bt/aidl/l;
    .locals 0

    .line 30
    iget-object p0, p0, Lanw;->d:Lcom/nforetek/bt/aidl/l;

    return-object p0
.end method

.method static synthetic b(Lanw;Lcom/nforetek/bt/aidl/l;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lanw;->a(Lcom/nforetek/bt/aidl/l;)V

    return-void
.end method

.method static synthetic c(Lanw;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 30
    iget-object p0, p0, Lanw;->g:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lanw;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d()Ljava/lang/String;
    .locals 1

    .line 89
    iget-object v0, p0, Lanw;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static synthetic d(Lanw;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lanw;->e()V

    return-void
.end method

.method private e()V
    .locals 4

    .line 167
    iget-object v0, p0, Lanw;->e:Ljava/util/List;

    monitor-enter v0

    .line 168
    :try_start_0
    sget-object v1, Lanw;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDisconnected from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lanw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v1, p0, Lanw;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lans;

    .line 170
    invoke-virtual {v2}, Lans;->a()V

    goto :goto_0

    .line 173
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Lano;)Lant;
    .locals 2

    .line 79
    new-instance v0, Lant;

    iget-object v1, p0, Lanw;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lant;-><init>(Landroid/content/Context;Lano;)V

    return-object v0
.end method

.method public a(Lanr;)Lanv;
    .locals 2

    .line 84
    new-instance v0, Lanv;

    iget-object v1, p0, Lanw;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lanv;-><init>(Landroid/content/Context;Lanr;)V

    return-object v0
.end method

.method public a(Lanp;)V
    .locals 0

    .line 177
    iget-object p1, p1, Lanp;->d:Lans;

    invoke-direct {p0, p1}, Lanw;->a(Lans;)V

    return-void
.end method

.method public b()V
    .locals 5

    .line 97
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 98
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaopeng.bt.ui.service"

    const-string v3, "com.xiaopeng.bt.ui.service.XpBtService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 101
    :try_start_0
    sget-object v1, Lanw;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "connectBluetooth "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " from : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lanw;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v1, p0, Lanw;->c:Landroid/content/Context;

    iget-object v2, p0, Lanw;->f:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
