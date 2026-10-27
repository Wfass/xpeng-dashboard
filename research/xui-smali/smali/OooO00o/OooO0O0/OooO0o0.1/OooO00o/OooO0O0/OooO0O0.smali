.class public final LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;
.super Landroid/accessibilityservice/AccessibilityService;
.source "SourceFile"

# interfaces
.implements Lcom/loostone/libtuning/inf/extern/IBaseKeyService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0O0;
    }
.end annotation


# static fields
.field public static final OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0O0;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final OooO0O0:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Ljava/util/LinkedList<",
            "Lcom/loostone/libtuning/inf/extern/IKeyListener;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public OooO0OO:Landroid/hardware/usb/UsbDevice;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public OooO0Oo:Z

.field public final OooO0o0:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0O0;

    .line 2
    invoke-direct {v0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0O0;-><init>()V

    .line 3
    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0O0;

    .line 4
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO00o;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO00o;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;->OooO0O0:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityService;-><init>()V

    .line 15
    const/4 v0, 0x1

    iput-boolean v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;->OooO0Oo:Z

    .line 18
    new-instance v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0OO;

    invoke-direct {v0, p0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0OO;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;->OooO0o0:Lkotlin/Lazy;

    return-void
.end method


# virtual methods
.method public getMicControl()Lcom/loostone/libtuning/inf/extern/IMicControl;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;

    return-object v0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0
    .param p1    # Landroid/view/accessibility/AccessibilityEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public onCreate()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/accessibilityservice/AccessibilityService;->onCreate()V

    .line 3
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "MicKeyService"

    const-string v2, "  onCreate()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onInterrupt()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "MicKeyService"

    const-string v2, "  onInterrupt()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1    # Landroid/view/KeyEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-boolean v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;->OooO0Oo:Z

    if-nez v0, :cond_1

    .line 4
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 7
    :cond_1
    :try_start_0
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0O0;

    invoke-static {v0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0O0;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loostone/libtuning/inf/extern/IKeyListener;

    .line 8
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 41
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    .line 42
    invoke-interface {v1, v4, v3}, Lcom/loostone/libtuning/inf/extern/IKeyListener;->onVolumeUp(IZ)V

    goto :goto_0

    .line 43
    :cond_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 44
    invoke-interface {v1, v4, v4}, Lcom/loostone/libtuning/inf/extern/IKeyListener;->onVolumeUp(IZ)V

    goto :goto_0

    .line 45
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_4

    .line 46
    invoke-interface {v1, v4, v3}, Lcom/loostone/libtuning/inf/extern/IKeyListener;->onVolumeUp(IZ)V

    goto :goto_0

    .line 47
    :cond_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 48
    invoke-interface {v1, v4, v4}, Lcom/loostone/libtuning/inf/extern/IKeyListener;->onVolumeUp(IZ)V

    goto :goto_0

    .line 49
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 50
    invoke-interface {v1, v4, v3}, Lcom/loostone/libtuning/inf/extern/IKeyListener;->onVoice(IZ)V

    goto :goto_0

    .line 51
    :cond_5
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 52
    invoke-interface {v1, v4, v4}, Lcom/loostone/libtuning/inf/extern/IKeyListener;->onVoice(IZ)V

    goto :goto_0

    .line 53
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 54
    invoke-interface {v1, v4, v4}, Lcom/loostone/libtuning/inf/extern/IKeyListener;->onPower(IZ)V

    goto :goto_0

    .line 55
    :pswitch_4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    .line 56
    invoke-interface {v1, v4, v3}, Lcom/loostone/libtuning/inf/extern/IKeyListener;->onPower(IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 97
    :cond_6
    invoke-super {p0, p1}, Landroid/accessibilityservice/AccessibilityService;->onKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x83
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public pause()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;->OooO0Oo:Z

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
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0O0;

    invoke-static {v0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0O0;)Ljava/util/LinkedList;

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

    return-void
.end method

.method public resume()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;->OooO0Oo:Z

    return-void
.end method

.method public setDevice(Landroid/hardware/usb/UsbDevice;)V
    .locals 1
    .param p1    # Landroid/hardware/usb/UsbDevice;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;->OooO0OO:Landroid/hardware/usb/UsbDevice;

    .line 2
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;

    .line 3
    iput-object p1, v0, LOooO00o/OooO0O0/OooO0o0/OooO0O0/OooO0OO/OooO0O0;->OooO0O0:Landroid/hardware/usb/UsbDevice;

    return-void
.end method

.method public start()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "MicKeyService"

    const-string v2, "start()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o:LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0OO;

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO$OooO0OO;->OooO00o()LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;

    move-result-object v0

    invoke-virtual {v0}, LOooO00o/OooO0O0/OooO0OO/OooO0O0/OooO0OO;->OooO00o()V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    sget-object v0, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v1, "MicKeyService"

    const-string v2, "stop()"

    invoke-virtual {v0, v1, v2}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO0OO(Ljava/lang/String;Ljava/lang/String;)V

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
    sget-object v0, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0O0;

    invoke-static {v0}, LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0O0;->OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO00o/OooO0O0/OooO0O0$OooO0O0;)Ljava/util/LinkedList;

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

    return-void
.end method
