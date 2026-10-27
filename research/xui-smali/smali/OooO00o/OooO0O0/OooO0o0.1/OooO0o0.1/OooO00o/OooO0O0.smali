.class public final LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0OO;,
        LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO00o;,
        LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0O0;,
        LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0o;
    }
.end annotation


# instance fields
.field public final OooO00o:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0O0:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0OO:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final OooO0Oo:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
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

.field public final OooO0oo:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOOO;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "mContext"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mDeviceManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o:Landroid/content/Context;

    .line 3
    iput-object p2, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0O0:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO00o;

    .line 16
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOO0O;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOO0O;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0OO:Lkotlin/Lazy;

    .line 21
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOO0;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOO0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0Oo:Lkotlin/Lazy;

    .line 26
    sget-object p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO;->OooO00o:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0o0:Lkotlin/Lazy;

    .line 31
    new-instance p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOOOO;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOOOO;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0o:Lkotlin/Lazy;

    .line 37
    new-instance p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOOO0;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOOO0;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0oO:Lkotlin/Lazy;

    .line 52
    new-instance p1, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOOO;

    invoke-direct {p1, p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOOO;-><init>(LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;)V

    iput-object p1, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0oo:LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooOOO;

    return-void
.end method


# virtual methods
.method public final OooO00o()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;",
            ">;"
        }
    .end annotation

    .line 5
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0Oo:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public final declared-synchronized OooO00o(LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;)V
    .locals 2
    .param p1    # LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "DongleEventManager"

    const-string v1, "  \u6ce8\u518cCallback\u6210\u529f"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 5
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final OooO00o(Ljava/lang/String;LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0$OooO0OO;)V
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0OO:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 2
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p2, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0o0:Lkotlin/Lazy;

    invoke-interface {p2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/IntentFilter;

    .line 4
    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method

.method public final OooO0O0()Landroid/hardware/usb/UsbManager;
    .locals 1

    .line 1
    iget-object v0, p0, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO0o:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    return-object v0
.end method

.method public final declared-synchronized OooO0O0(LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;)V
    .locals 2
    .param p1    # LOooO00o/OooO0O0/OooO0o0/OooO0Oo/OooO0O0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, LOooO00o/OooO0O0/OooO0o0/OooO0o0/OooO00o/OooO0O0;->OooO00o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4
    sget-object p1, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o:LOooO00o/OooO0O0/OooO0O0/OooO0O0;

    const-string v0, "DongleEventManager"

    const-string v1, "  \u53d6\u6d88\u6ce8\u518cCallback\u6210\u529f"

    invoke-virtual {p1, v0, v1}, LOooO00o/OooO0O0/OooO0O0/OooO0O0;->OooO00o(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 1
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
