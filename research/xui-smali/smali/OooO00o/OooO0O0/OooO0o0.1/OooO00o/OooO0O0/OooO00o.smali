.class public final LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/loostone/libtuning/inf/extern/IBaseKeyService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;
    }
.end annotation


# instance fields
.field public final OooO:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public OooO00o:Landroid/hardware/usb/UsbDevice;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public OooO0O0:Z

.field public final OooO0OO:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public OooO0Oo:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public final OooO0o:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0o0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0oO:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0oo:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooOO0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .locals 0
    .param p1    # Landroid/hardware/usb/UsbDevice;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 p1, 0x0

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO00o:Landroid/hardware/usb/UsbDevice;

    .line 17
    const/4 p1, 0x1

    iput-boolean p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0O0:Z

    .line 18
    new-instance p1, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooOO0;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooOO0;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0OO:Lkotlin/Lazy;

    .line 25
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0o;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0o0:Lkotlin/Lazy;

    .line 30
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooOOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooOOO0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0o:Lkotlin/Lazy;

    .line 35
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0oO:Lkotlin/Lazy;

    .line 39
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0OO;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0oo:Lkotlin/Lazy;

    .line 62
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooOO0O;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO:Lkotlin/Lazy;

    .line 72
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO0O0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooOO0:Lkotlin/Lazy;

    return-void
.end method

.method public static final OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;II)V
    .locals 4

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loostone/libtuning/data/bean/HidItem;

    .line 4
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/bean/HidItem;->getMicIndex()I

    move-result v2

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/bean/HidItem;->getLastState()I

    move-result v2

    if-eq v2, p2, :cond_1

    .line 8
    :try_start_0
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0OO()Ljava/util/LinkedList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/loostone/libtuning/inf/extern/IMicInfoListener;

    .line 9
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/bean/HidItem;->getKeyCode()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 16
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    :cond_1
    invoke-virtual {v1, p2}, Lcom/loostone/libtuning/data/bean/HidItem;->setLastState(I)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public final OooO00o()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    return-object v0
.end method

.method public final OooO00o(II)V
    .locals 7

    .line 21
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooOO0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 22
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 23
    :cond_0
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loostone/libtuning/data/bean/HidItem;

    .line 25
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/bean/HidItem;->getMicIndex()I

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 27
    :cond_1
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/bean/HidItem;->getHidCode()I

    move-result v2

    and-int/2addr v2, p2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    xor-int/lit8 v3, v2, 0x1

    .line 30
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/bean/HidItem;->getLastState()I

    move-result v4

    if-eq v4, v3, :cond_3

    .line 32
    :try_start_0
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO00o()Ljava/util/LinkedList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/loostone/libtuning/inf/extern/IKeyListener;

    .line 33
    invoke-virtual {v1}, Lcom/loostone/libtuning/data/bean/HidItem;->getKeyCode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_2

    .line 35
    :pswitch_0
    invoke-interface {v5, p1, v2}, Lcom/loostone/libtuning/inf/extern/IKeyListener;->onPower(IZ)V

    goto :goto_2

    .line 39
    :pswitch_1
    invoke-interface {v5, p1, v2}, Lcom/loostone/libtuning/inf/extern/IKeyListener;->onVoice(IZ)V

    goto :goto_2

    .line 43
    :pswitch_2
    invoke-interface {v5, p1, v2}, Lcom/loostone/libtuning/inf/extern/IKeyListener;->onTVPhoneSwitch(IZ)V

    goto :goto_2

    .line 47
    :pswitch_3
    invoke-interface {v5, p1, v2}, Lcom/loostone/libtuning/inf/extern/IKeyListener;->onVolumeUp(IZ)V

    goto :goto_2

    .line 51
    :pswitch_4
    invoke-interface {v5, p1, v2}, Lcom/loostone/libtuning/inf/extern/IKeyListener;->onVolumeDown(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 56
    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    :cond_3
    invoke-virtual {v1, v3}, Lcom/loostone/libtuning/data/bean/HidItem;->setLastState(I)V

    goto :goto_0

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final OooO0O0()LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;

    return-object v0
.end method

.method public final OooO0OO()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/loostone/libtuning/inf/extern/IMicInfoListener;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    return-object v0
.end method

.method public getMicControl()Lcom/loostone/libtuning/inf/extern/IMicControl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0O0()LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0Oo:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO0O0:Z

    :goto_0
    return-void
.end method

.method public registerKeyListener(Lcom/loostone/libtuning/inf/extern/IKeyListener;)V
    .locals 1
    .param p1    # Lcom/loostone/libtuning/inf/extern/IKeyListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO00o()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerMicInfoListener(Lcom/loostone/libtuning/inf/extern/IMicInfoListener;)V
    .locals 1
    .param p1    # Lcom/loostone/libtuning/inf/extern/IMicInfoListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0OO()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resume()V
    .locals 2

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0Oo:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    iput-boolean v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO0O0:Z

    .line 3
    iget-object v1, v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO00o:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :try_start_0
    iget-object v0, v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;->OooO00o:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit v1

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setDevice(Landroid/hardware/usb/UsbDevice;)V
    .locals 1
    .param p1    # Landroid/hardware/usb/UsbDevice;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO00o:Landroid/hardware/usb/UsbDevice;

    .line 2
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0O0()LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;

    move-result-object v0

    .line 3
    iput-object p1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0O0:Landroid/hardware/usb/UsbDevice;

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "HidService"

    const-string v2, "start()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;

    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 386
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO0OO/OooO00o/OooOO0;->OooOooO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;

    .line 387
    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0O0/OooO0o0/OooO0o0/OooO00o;->OooO00o()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 388
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0O0()LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;

    move-result-object v0

    .line 389
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    .line 471
    new-array v2, v2, [B

    fill-array-data v2, :array_0

    .line 472
    nop

    .line 473
    nop

    .line 474
    invoke-virtual {v0, v2, v1}, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO00o([BZ)I

    .line 475
    :cond_1
    :goto_0
    iput-boolean v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0O0:Z

    .line 476
    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;)V

    .line 477
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 478
    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0Oo:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;

    return-void

    nop

    :array_0
    .array-data 1
        -0x12t
        0x8t
        0x1t
    .end array-data
.end method

.method public stop()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "HidService"

    const-string v2, "stop()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    const/4 v0, 0x0

    iput-boolean v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0O0:Z

    .line 3
    const/4 v1, 0x0

    iput-object v1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0Oo:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o$OooO00o;

    .line 4
    invoke-virtual {p0, v0, v0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO00o(II)V

    return-void
.end method

.method public unRegisterKeyListener(Lcom/loostone/libtuning/inf/extern/IKeyListener;)V
    .locals 1
    .param p1    # Lcom/loostone/libtuning/inf/extern/IKeyListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO00o()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public unRegisterMicInfoListener(Lcom/loostone/libtuning/inf/extern/IMicInfoListener;)V
    .locals 1
    .param p1    # Lcom/loostone/libtuning/inf/extern/IMicInfoListener;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO00o;->OooO0OO()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
