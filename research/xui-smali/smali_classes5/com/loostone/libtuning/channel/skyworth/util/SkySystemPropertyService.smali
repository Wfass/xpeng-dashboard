.class public final Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$Companion;,
        Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 !2\u00020\u0001:\u0002!\"B\u0007\u00a2\u0006\u0004\u0008 \u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\r\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0004J\r\u0010\u0006\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0004J\r\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0004J\r\u0010\u0008\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0008\u0010\u0004J\u0015\u0010\u000b\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0015\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t\u00a2\u0006\u0004\u0008\r\u0010\u000cR#\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0016\u001a\u0008\u0018\u00010\u0015R\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017R\u0016\u0010\u0019\u001a\u00020\u00188\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR#\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\t0\u001b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0011\u001a\u0004\u0008\u001d\u0010\u001e\u00a8\u0006#"
    }
    d2 = {
        "Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;",
        "",
        "",
        "dealWithMute",
        "()V",
        "start",
        "resume",
        "pause",
        "stop",
        "Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;",
        "listener",
        "registerCallback",
        "(Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;)V",
        "unRegisterCallback",
        "Ljava/util/ArrayList;",
        "Lcom/loostone/libtuning/channel/skyworth/bean/SkySystemProperty;",
        "systemProperties$delegate",
        "Lkotlin/Lazy;",
        "getSystemProperties",
        "()Ljava/util/ArrayList;",
        "systemProperties",
        "Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;",
        "listenThread",
        "Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;",
        "",
        "startListen",
        "Z",
        "Ljava/util/LinkedList;",
        "callBackList$delegate",
        "getCallBackList",
        "()Ljava/util/LinkedList;",
        "callBackList",
        "<init>",
        "Companion",
        "SystemPropertyThread",
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
.field public static final Companion:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "MicMuteService"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final callBackList$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private listenThread:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private startListen:Z

.field private final systemProperties$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->Companion:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->startListen:Z

    .line 11
    sget-object v0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$callBackList$2;->INSTANCE:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$callBackList$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->callBackList$delegate:Lkotlin/Lazy;

    .line 15
    sget-object v0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$systemProperties$2;->INSTANCE:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$systemProperties$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->systemProperties$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$dealWithMute(Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->dealWithMute()V

    return-void
.end method

.method public static final synthetic access$getStartListen$p(Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->startListen:Z

    return p0
.end method

.method private final dealWithMute()V
    .locals 8

    const-string v0, "third.get.aistandbymode"

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_0
    const-string v3, "android.os.SystemProperties"

    .line 1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "getInt"

    .line 4
    const/4 v5, 0x2

    :try_start_1
    new-array v6, v5, [Ljava/lang/Class;

    const-class v7, Ljava/lang/String;

    aput-object v7, v6, v2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v1

    .line 5
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    const/4 v4, 0x0

    .line 10
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v3, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 12
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    move v1, v2

    :goto_1
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->getSystemProperties()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/loostone/libtuning/channel/skyworth/bean/SkySystemProperty;

    invoke-virtual {v3}, Lcom/loostone/libtuning/channel/skyworth/bean/SkySystemProperty;->getLastState()I

    move-result v3

    if-eq v3, v0, :cond_2

    .line 15
    :try_start_2
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->getCallBackList()Ljava/util/LinkedList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;

    .line 16
    invoke-interface {v4, v1}, Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;->onDormancy(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 19
    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 22
    :cond_2
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->getSystemProperties()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/loostone/libtuning/channel/skyworth/bean/SkySystemProperty;

    invoke-virtual {v1, v0}, Lcom/loostone/libtuning/channel/skyworth/bean/SkySystemProperty;->setLastState(I)V

    return-void
.end method

.method private final getCallBackList()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->callBackList$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    return-object v0
.end method

.method private final getSystemProperties()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/loostone/libtuning/channel/skyworth/bean/SkySystemProperty;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->systemProperties$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public final pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->listenThread:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;->pauseThread()V

    :goto_0
    return-void
.end method

.method public final registerCallback(Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;)V
    .locals 1
    .param p1    # Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->getCallBackList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->listenThread:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;->resumeThread()V

    :goto_0
    return-void
.end method

.method public final start()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->startListen:Z

    .line 2
    new-instance v0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;

    invoke-direct {v0, p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;-><init>(Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;)V

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->listenThread:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final stop()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->startListen:Z

    .line 2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->listenThread:Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService$SystemPropertyThread;

    return-void
.end method

.method public final unRegisterCallback(Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;)V
    .locals 1
    .param p1    # Lcom/loostone/libtuning/channel/skyworth/inf/ISkySystemProperty;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/loostone/libtuning/channel/skyworth/util/SkySystemPropertyService;->getCallBackList()Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
