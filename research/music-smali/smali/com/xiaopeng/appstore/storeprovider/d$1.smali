.class Lcom/xiaopeng/appstore/storeprovider/d$1;
.super Ljava/lang/Object;
.source "StoreProviderManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/appstore/storeprovider/d;


# direct methods
.method constructor <init>(Lcom/xiaopeng/appstore/storeprovider/d;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/d$1;->a:Lcom/xiaopeng/appstore/storeprovider/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Landroid/os/IBinder;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d$1;->a:Lcom/xiaopeng/appstore/storeprovider/d;

    invoke-static {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/d;->a(Lcom/xiaopeng/appstore/storeprovider/d;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic lambda$JLRtCIVGCuaygjvziLf0Rt4tgjA(Lcom/xiaopeng/appstore/storeprovider/d$1;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/d$1;->a(Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StoreProviderManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/d$1;->a:Lcom/xiaopeng/appstore/storeprovider/d;

    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/d;->a(Lcom/xiaopeng/appstore/storeprovider/d;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "onServiceConnected: work handler is not init!"

    .line 59
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/d$1;->a:Lcom/xiaopeng/appstore/storeprovider/d;

    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/d;->a(Lcom/xiaopeng/appstore/storeprovider/d;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$1$JLRtCIVGCuaygjvziLf0Rt4tgjA;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/appstore/storeprovider/-$$Lambda$d$1$JLRtCIVGCuaygjvziLf0Rt4tgjA;-><init>(Lcom/xiaopeng/appstore/storeprovider/d$1;Landroid/os/IBinder;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StoreProviderManager"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/d$1;->a:Lcom/xiaopeng/appstore/storeprovider/d;

    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/d;->a(Lcom/xiaopeng/appstore/storeprovider/d;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "onServiceDisconnected: work handler is not init!"

    .line 69
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 72
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/d$1;->a:Lcom/xiaopeng/appstore/storeprovider/d;

    invoke-static {p1}, Lcom/xiaopeng/appstore/storeprovider/d;->a(Lcom/xiaopeng/appstore/storeprovider/d;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/d$1;->a:Lcom/xiaopeng/appstore/storeprovider/d;

    invoke-static {v0}, Lcom/xiaopeng/appstore/storeprovider/d;->b(Lcom/xiaopeng/appstore/storeprovider/d;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
