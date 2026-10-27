.class public Lcom/xiaopeng/libbluetooth/e;
.super Ljava/lang/Object;
.source "BluetoothBoxes.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile Xk:Lcom/xiaopeng/libbluetooth/e;

.field private static Xl:Ljava/lang/String;


# instance fields
.field private Xm:Lcom/xiaopeng/b/a;

.field private Xn:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/libbluetooth/d;",
            ">;"
        }
    .end annotation
.end field

.field private Xo:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-class v0, Lcom/xiaopeng/libbluetooth/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/libbluetooth/e;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 101
    new-instance v0, Lcom/xiaopeng/libbluetooth/e$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/libbluetooth/e$1;-><init>(Lcom/xiaopeng/libbluetooth/e;)V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/e;->Xo:Landroid/content/ServiceConnection;

    .line 35
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/e;->Xn:Ljava/util/List;

    .line 36
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/libbluetooth/e;Lcom/xiaopeng/b/a;)Lcom/xiaopeng/b/a;
    .locals 0

    .line 17
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/e;->Xm:Lcom/xiaopeng/b/a;

    return-object p1
.end method

.method private a(Lcom/xiaopeng/libbluetooth/d;)V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/e;->Xm:Lcom/xiaopeng/b/a;

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/e;->Xm:Lcom/xiaopeng/b/a;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/libbluetooth/d;->b(Lcom/xiaopeng/b/a;)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/e;->Xn:Ljava/util/List;

    monitor-enter v0

    .line 152
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/e;->Xn:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    monitor-exit v0

    .line 154
    return-void

    .line 153
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic a(Lcom/xiaopeng/libbluetooth/e;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/libbluetooth/e;->pw()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/xiaopeng/libbluetooth/e;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/xiaopeng/libbluetooth/e;)Lcom/xiaopeng/b/a;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/libbluetooth/e;->Xm:Lcom/xiaopeng/b/a;

    return-object p0
.end method

.method private b(Lcom/xiaopeng/libbluetooth/d;)V
    .locals 2

    .line 157
    invoke-virtual {p1}, Lcom/xiaopeng/libbluetooth/d;->ps()V

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/e;->Xn:Ljava/util/List;

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/e;->Xn:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 160
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic b(Lcom/xiaopeng/libbluetooth/e;Lcom/xiaopeng/b/a;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/e;->d(Lcom/xiaopeng/b/a;)V

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/libbluetooth/e;)Landroid/content/Context;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/libbluetooth/e;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private d(Lcom/xiaopeng/b/a;)V
    .locals 3

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/e;->Xn:Ljava/util/List;

    monitor-enter v0

    .line 141
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/e;->Xn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libbluetooth/d;

    .line 142
    invoke-virtual {v2, p1}, Lcom/xiaopeng/libbluetooth/d;->c(Lcom/xiaopeng/b/a;)V

    .line 143
    goto :goto_0

    .line 144
    :cond_0
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic dP(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 17
    sput-object p0, Lcom/xiaopeng/libbluetooth/e;->Xl:Ljava/lang/String;

    return-object p0
.end method

.method public static getID()Ljava/lang/String;
    .locals 1

    .line 164
    sget-object v0, Lcom/xiaopeng/libbluetooth/e;->Xl:Ljava/lang/String;

    return-object v0
.end method

.method public static pt()Lcom/xiaopeng/libbluetooth/e;
    .locals 2

    .line 39
    sget-object v0, Lcom/xiaopeng/libbluetooth/e;->Xk:Lcom/xiaopeng/libbluetooth/e;

    if-nez v0, :cond_1

    .line 40
    const-class v0, Lcom/xiaopeng/libbluetooth/e;

    monitor-enter v0

    .line 41
    :try_start_0
    sget-object v1, Lcom/xiaopeng/libbluetooth/e;->Xk:Lcom/xiaopeng/libbluetooth/e;

    if-nez v1, :cond_0

    .line 42
    new-instance v1, Lcom/xiaopeng/libbluetooth/e;

    invoke-direct {v1}, Lcom/xiaopeng/libbluetooth/e;-><init>()V

    sput-object v1, Lcom/xiaopeng/libbluetooth/e;->Xk:Lcom/xiaopeng/libbluetooth/e;

    .line 44
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 46
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/libbluetooth/e;->Xk:Lcom/xiaopeng/libbluetooth/e;

    return-object v0
.end method

.method private pw()V
    .locals 3

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/e;->Xn:Ljava/util/List;

    monitor-enter v0

    .line 133
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/e;->Xn:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/libbluetooth/d;

    .line 134
    invoke-virtual {v2}, Lcom/xiaopeng/libbluetooth/d;->onDisconnected()V

    .line 135
    goto :goto_0

    .line 136
    :cond_0
    monitor-exit v0

    .line 137
    return-void

    .line 136
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic px()Ljava/lang/String;
    .locals 1

    .line 17
    sget-object v0, Lcom/xiaopeng/libbluetooth/e;->Xl:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/libbluetooth/b;)Lcom/xiaopeng/libbluetooth/f;
    .locals 2

    .line 84
    new-instance v0, Lcom/xiaopeng/libbluetooth/f;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/libbluetooth/f;-><init>(Landroid/content/Context;Lcom/xiaopeng/libbluetooth/b;)V

    .line 86
    return-object v0
.end method

.method public a(Lcom/xiaopeng/libbluetooth/c;)Lcom/xiaopeng/libbluetooth/g;
    .locals 2

    .line 78
    new-instance v0, Lcom/xiaopeng/libbluetooth/g;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/e;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/libbluetooth/g;-><init>(Landroid/content/Context;Lcom/xiaopeng/libbluetooth/c;)V

    .line 80
    return-object v0
.end method

.method public a(Lcom/xiaopeng/libbluetooth/a;)V
    .locals 0

    .line 68
    iget-object p1, p1, Lcom/xiaopeng/libbluetooth/a;->Xh:Lcom/xiaopeng/libbluetooth/d;

    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/e;->a(Lcom/xiaopeng/libbluetooth/d;)V

    .line 69
    return-void
.end method

.method public a(Lcom/xiaopeng/libbluetooth/f;)V
    .locals 0

    .line 90
    iget-object p1, p1, Lcom/xiaopeng/libbluetooth/f;->Xh:Lcom/xiaopeng/libbluetooth/d;

    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/e;->b(Lcom/xiaopeng/libbluetooth/d;)V

    .line 91
    return-void
.end method

.method public a(Lcom/xiaopeng/libbluetooth/g;)V
    .locals 0

    .line 94
    iget-object p1, p1, Lcom/xiaopeng/libbluetooth/g;->Xh:Lcom/xiaopeng/libbluetooth/d;

    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/e;->b(Lcom/xiaopeng/libbluetooth/d;)V

    .line 95
    return-void
.end method

.method public pu()V
    .locals 5

    .line 54
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 55
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaopeng.xpbluetoothservice"

    const-string v3, "com.xiaopeng.xpbluetoothservice.XpBluetoothService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/e;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/libbluetooth/e;->Xo:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 58
    return-void
.end method

.method public pv()V
    .locals 2

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/e;->Xn:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/libbluetooth/d;

    .line 62
    invoke-direct {p0, v1}, Lcom/xiaopeng/libbluetooth/e;->b(Lcom/xiaopeng/libbluetooth/d;)V

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/e;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/e;->Xo:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 65
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/e;->mContext:Landroid/content/Context;

    .line 51
    return-void
.end method
