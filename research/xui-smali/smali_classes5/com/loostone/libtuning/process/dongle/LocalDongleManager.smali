.class public final Lcom/loostone/libtuning/process/dongle/LocalDongleManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO00o;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 #2\u00020\u0001:\u0001$B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008!\u0010\"J\r\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\r\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0015\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\r\u0010\u000cR\u001d\u0010\u0013\u001a\u00020\u000e8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0015\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u001d\u0010\u001b\u001a\u00020\u00178F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u0010\u001a\u0004\u0008\u0019\u0010\u001aR#\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\t0\u001c8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u0010\u001a\u0004\u0008\u001e\u0010\u001f\u00a8\u0006%"
    }
    d2 = {
        "Lcom/loostone/libtuning/process/dongle/LocalDongleManager;",
        "",
        "",
        "init",
        "()V",
        "release",
        "",
        "dongleStatus",
        "()I",
        "Lcom/loostone/libtuning/inf/extern/IDongleListener;",
        "listener",
        "registerDongleListener",
        "(Lcom/loostone/libtuning/inf/extern/IDongleListener;)V",
        "unRegisterDongleListener",
        "LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;",
        "mEventManager$delegate",
        "Lkotlin/Lazy;",
        "getMEventManager",
        "()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;",
        "mEventManager",
        "Landroid/content/Context;",
        "mContext",
        "Landroid/content/Context;",
        "LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;",
        "mCachedDongleDeviceManager$delegate",
        "getMCachedDongleDeviceManager",
        "()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;",
        "mCachedDongleDeviceManager",
        "Ljava/util/LinkedList;",
        "dongleListeners$delegate",
        "getDongleListeners",
        "()Ljava/util/LinkedList;",
        "dongleListeners",
        "<init>",
        "(Landroid/content/Context;)V",
        "Companion",
        "OooO00o",
        "libTuning_CAR_XIAOPENGRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO00o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DongleController"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final dongleListeners$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mCachedDongleDeviceManager$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mEventManager$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO00o;

    .line 2
    invoke-direct {v0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO00o;-><init>()V

    .line 3
    sput-object v0, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->Companion:Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO00o;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->mContext:Landroid/content/Context;

    .line 9
    sget-object p1, Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO0O0;->OooO00o:Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO0O0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->dongleListeners$delegate:Lkotlin/Lazy;

    .line 14
    new-instance p1, Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO0OO;

    invoke-direct {p1, p0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO0OO;-><init>(Lcom/loostone/libtuning/process/dongle/LocalDongleManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->mCachedDongleDeviceManager$delegate:Lkotlin/Lazy;

    .line 22
    new-instance p1, Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO0o;

    invoke-direct {p1, p0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager$OooO0o;-><init>(Lcom/loostone/libtuning/process/dongle/LocalDongleManager;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->mEventManager$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getDongleListeners(Lcom/loostone/libtuning/process/dongle/LocalDongleManager;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->getDongleListeners()Ljava/util/LinkedList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMContext$p(Lcom/loostone/libtuning/process/dongle/LocalDongleManager;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private final getDongleListeners()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/loostone/libtuning/inf/extern/IDongleListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->dongleListeners$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    return-object v0
.end method


# virtual methods
.method public final dongleStatus()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->getMCachedDongleDeviceManager()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0OO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final getMCachedDongleDeviceManager()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->mCachedDongleDeviceManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;

    return-object v0
.end method

.method public final getMEventManager()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->mEventManager$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    return-object v0
.end method

.method public final init()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->getMEventManager()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 94
    new-instance v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO00o;

    invoke-direct {v1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO00o;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;)V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o(Ljava/lang/String;LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0OO;)V

    .line 95
    new-instance v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0O0;

    invoke-direct {v1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0O0;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;)V

    const-string v2, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o(Ljava/lang/String;LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0OO;)V

    .line 96
    new-instance v1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0o;

    invoke-direct {v1, v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0o;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;)V

    const-string v2, "com.loostone.tuning.USB_PERMISSION"

    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o(Ljava/lang/String;LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0OO;)V

    .line 98
    iget-object v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o:Landroid/content/Context;

    iget-object v2, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0oo:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOOO;

    .line 99
    iget-object v3, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v3}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/IntentFilter;

    .line 100
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 101
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0O0()Landroid/hardware/usb/UsbManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbManager;->getDeviceList()Ljava/util/HashMap;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 103
    :cond_0
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/usb/UsbDevice;

    .line 104
    sget-object v3, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;

    const-string v4, "usbDevice"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO00o;->OooO00o(Landroid/hardware/usb/UsbDevice;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 105
    iget-object v3, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0O0:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;

    .line 106
    iget-object v3, v3, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0o0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;

    if-nez v3, :cond_1

    .line 107
    iget-object v3, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o:Landroid/content/Context;

    invoke-static {v2, v3}, LOooO00o/OooO00o/OooO00o/OooO00o/OooO0O0;->OooO00o(Landroid/hardware/usb/UsbDevice;Landroid/content/Context;)V

    .line 108
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0O0()Landroid/hardware/usb/UsbManager;

    move-result-object v3

    .line 109
    iget-object v4, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0oO:Lkotlin/Lazy;

    invoke-interface {v4}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "<get-mPermissionIntent>(...)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Landroid/app/PendingIntent;

    .line 110
    invoke-virtual {v3, v2, v4}, Landroid/hardware/usb/UsbManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Landroid/app/PendingIntent;)V

    goto :goto_0

    .line 111
    :cond_2
    :goto_1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "DongleEventManager"

    const-string v2, "init ------> \u521d\u59cb\u5316\u6210\u529f"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final registerDongleListener(Lcom/loostone/libtuning/inf/extern/IDongleListener;)V
    .locals 1
    .param p1    # Lcom/loostone/libtuning/inf/extern/IDongleListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->getDongleListeners()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final release()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->getMEventManager()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    sget-object v1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v2, "DongleEventManager"

    const-string v3, "  release"

    invoke-virtual {v1, v2, v3}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    :try_start_0
    iget-object v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o:Landroid/content/Context;

    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0oo:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOOO;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 172
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 173
    :goto_0
    invoke-virtual {p0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->getMCachedDongleDeviceManager()LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;

    move-result-object v0

    const/4 v1, 0x0

    .line 174
    iput-object v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0o0:LOooO00o/OooO0O0/OooO0O0/OooO0Oo/OooO0O0/OooO00o;

    .line 175
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;->OooO0OO()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final unRegisterDongleListener(Lcom/loostone/libtuning/inf/extern/IDongleListener;)V
    .locals 1
    .param p1    # Lcom/loostone/libtuning/inf/extern/IDongleListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/loostone/libtuning/process/dongle/LocalDongleManager;->getDongleListeners()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
