.class public Lcom/xiaopeng/musicradio/common/e;
.super Ljava/lang/Object;
.source "ExternalStorageMgr.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/common/e$b;,
        Lcom/xiaopeng/musicradio/common/e$a;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/xiaopeng/musicradio/common/e;


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/common/e$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/common/e;->b()V

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/common/e;
    .locals 2

    .line 33
    sget-object v0, Lcom/xiaopeng/musicradio/common/e;->a:Lcom/xiaopeng/musicradio/common/e;

    if-nez v0, :cond_1

    .line 34
    const-class v0, Lcom/xiaopeng/musicradio/common/e;

    monitor-enter v0

    .line 35
    :try_start_0
    sget-object v1, Lcom/xiaopeng/musicradio/common/e;->a:Lcom/xiaopeng/musicradio/common/e;

    if-nez v1, :cond_0

    .line 36
    new-instance v1, Lcom/xiaopeng/musicradio/common/e;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/common/e;-><init>()V

    sput-object v1, Lcom/xiaopeng/musicradio/common/e;->a:Lcom/xiaopeng/musicradio/common/e;

    .line 38
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 40
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/musicradio/common/e;->a:Lcom/xiaopeng/musicradio/common/e;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/common/e;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/common/e;->e()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/common/e;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/common/e;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/common/e;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/common/e;->a(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/common/e$a;

    .line 112
    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/common/e$a;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private a(Z)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/common/e$a;

    .line 106
    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/common/e$a;->a(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 2

    const-string v0, "ExternalStorageMonitor"

    const-string v1, "init: "

    .line 48
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/common/e;->c:Landroid/content/Context;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/common/e;->b:Ljava/util/List;

    .line 52
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/common/e;->c()V

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/common/e;->d()V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/common/e;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/common/e;->f()V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/common/e;Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/common/e;->a(Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/common/e$a;

    .line 118
    invoke-interface {v1, p1}, Lcom/xiaopeng/musicradio/common/e$a;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private c()V
    .locals 3

    .line 75
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 76
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.os.storage.action.VOLUME_STATE_CHANGED"

    .line 78
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    new-instance v1, Lcom/xiaopeng/musicradio/common/e$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/musicradio/common/e$b;-><init>(Lcom/xiaopeng/musicradio/common/e;Lcom/xiaopeng/musicradio/common/e$1;)V

    .line 81
    iget-object v2, p0, Lcom/xiaopeng/musicradio/common/e;->c:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private d()V
    .locals 4

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/e;->c:Landroid/content/Context;

    const-string v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-eqz v0, :cond_2

    .line 90
    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/usb/UsbDevice;

    .line 95
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "device name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\nvendor id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ExternalStorageMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 96
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/common/e;->a(Z)V

    .line 97
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bo;->a()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 98
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/common/e;->b(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private e()V
    .locals 2

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/common/e$a;

    .line 124
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/common/e$a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private f()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/common/e$a;

    .line 130
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/common/e$a;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/xiaopeng/musicradio/common/e$a;)V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/e;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/common/e$a;

    if-ne p1, v1, :cond_0

    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/common/e$a;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/common/e;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
