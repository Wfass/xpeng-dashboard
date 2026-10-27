.class public Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;
.super Ljava/lang/Object;
.source "LightLanuageManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;,
        Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;,
        Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;,
        Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$SingletonHolder;
    }
.end annotation


# static fields
.field public static final DBG:Z = false

.field private static final MSG_ERROR_EVENT:I = 0x4

.field private static final MSG_FINISH_EVENT:I = 0x3

.field private static final MSG_START_EVENT:I = 0x1

.field private static final MSG_STOP_EVENT:I = 0x2

.field private static final MSG_UPGRADE_EVENT:I = 0x5

.field public static final TAG:Ljava/lang/String; = "LightLanuageManager"

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListenerToService:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListenerToService:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 719
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    invoke-static {p2}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    const/4 p2, 0x0

    .line 44
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListenerToService:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;

    .line 720
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    .line 721
    new-instance p1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$1;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->dispatchErrorEventToClient(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->dispatchUpgradeEventToClient(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->handleStartEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->handleStopEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->handleFinishEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;I)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->handleErrorEvent(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;II)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->handleUpgradeEvent(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->dispatchStartEventToClient(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->dispatchStopEventToClient(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->dispatchFinishEventToClient(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private dispatchErrorEventToClient(Ljava/lang/String;I)V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    new-instance v2, Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$zxdrq3eIR8ptDotHmcEqjLn5B7w;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$zxdrq3eIR8ptDotHmcEqjLn5B7w;-><init>(Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 132
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchFinishEventToClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    new-instance v2, Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$upKUGZPMs8B7E_ST60MzKxdsq3Y;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$upKUGZPMs8B7E_ST60MzKxdsq3Y;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 123
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchStartEventToClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    new-instance v2, Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$S6ybZG1e0CyIuYs0qkw0_JjPkmo;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$S6ybZG1e0CyIuYs0qkw0_JjPkmo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 105
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchStopEventToClient(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    new-instance v2, Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$1qx85yCkrppnU4SxQVuNlwI241Q;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$1qx85yCkrppnU4SxQVuNlwI241Q;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 114
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchUpgradeEventToClient(II)V
    .locals 3

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    monitor-enter v0

    .line 137
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    new-instance v2, Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$0V-8e4PXBN2Zj0dTKri3tVdxPaM;

    invoke-direct {v2, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/-$$Lambda$LightLanuageManager$0V-8e4PXBN2Zj0dTKri3tVdxPaM;-><init>(II)V

    invoke-interface {v1, v2}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 141
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;
    .locals 1

    .line 56
    invoke-static {}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$SingletonHolder;->access$100()Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;

    move-result-object v0

    return-object v0
.end method

.method private handleErrorEvent(Ljava/lang/String;I)V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x4

    .line 167
    iput v1, v0, Landroid/os/Message;->what:I

    .line 168
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 169
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleFinishEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x3

    .line 160
    iput v1, v0, Landroid/os/Message;->what:I

    .line 161
    new-instance v1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;-><init>(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleStartEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 146
    iput v1, v0, Landroid/os/Message;->what:I

    .line 147
    new-instance v1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;-><init>(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleStopEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x2

    .line 153
    iput v1, v0, Landroid/os/Message;->what:I

    .line 154
    new-instance v1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventMessage;-><init>(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleUpgradeEvent(II)V
    .locals 2

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x5

    .line 175
    iput v1, v0, Landroid/os/Message;->what:I

    .line 176
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 178
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method static synthetic lambda$dispatchErrorEventToClient$3(Ljava/lang/String;ILcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;)V
    .locals 2

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onError, name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errrCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLanuageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-interface {p2, p0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;->onError(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic lambda$dispatchFinishEventToClient$2(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;)V
    .locals 2

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFinish, name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLanuageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-interface {p2, p0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;->onFinish(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dispatchStartEventToClient$0(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;)V
    .locals 2

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStart, name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLanuageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    invoke-interface {p2, p0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;->onStart(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dispatchStopEventToClient$1(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;)V
    .locals 2

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStop, name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLanuageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-interface {p2, p0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;->onStop(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$dispatchUpgradeEventToClient$4(IILcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;)V
    .locals 2

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onUpgrade, name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLanuageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-interface {p2, p0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;->onUpgrade(II)V

    return-void
.end method


# virtual methods
.method public getDanceEffectRunnable()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 611
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getDanceEffectRunnable()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 613
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getDanceEffectRunnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightLanuageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getLightEffect()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 358
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getLightEffect()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getLightEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightLanuageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getLightEffectEnable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 485
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getLightEffectEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getLightEffectEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightLanuageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getLocalDanceEffectInfo()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 404
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getLocalDanceEffectInfo()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getLocalDanceEffectInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightLanuageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getMcuEffect(I)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 517
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getMcuEffect(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 519
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not getMcuEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLanuageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getRhythmEffect()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getRhythmEffect()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 549
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getRhythmEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightLanuageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getRhythmEffectEnable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getRhythmEffectEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getRhythmEffectEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightLanuageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getRunningEffect()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getRunningEffect()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 579
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getRunningEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightLanuageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getSayhiEffectEnable()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 421
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getSayhiEffectEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 423
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getSayhiEffectEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightLanuageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 282
    sget-object v0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 283
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mServiceName:Ljava/lang/String;

    .line 286
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getUserEffectInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getUserEffectInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not getUserEffectInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLanuageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public getUserEffectInfoList()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 373
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->getUserEffectInfoList()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 375
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not getUserEffectInfoList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightLanuageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 66
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    .line 67
    new-instance p1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public isDanceEffectRunning()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 594
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->isDanceEffectRunning()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 596
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not isDanceEffectRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightLanuageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public loadLightEffect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 343
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->loadLightEffect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 345
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not loadLightEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightLanuageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public onServerDisconnected()V
    .locals 0

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "LightLanuageManager"

    if-nez p1, :cond_0

    const-string p1, "onXUIConnected,service binder is null"

    .line 251
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 254
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 255
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected,service is the same:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 258
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    .line 259
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 261
    :try_start_0
    new-instance p1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;-><init>(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListenerToService:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;

    .line 262
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v1, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->registerListener(Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect to XUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public onXUIDisconnected()V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListenerToService:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->unregisterListener(Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;)V

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListenerToService:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 240
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect to XUI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLanuageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public playEffect(Ljava/lang/String;I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 630
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->playEffect(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 632
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not playEffect: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LightLanuageManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public playSmartEffect(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 656
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->playSmartEffect(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 658
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not playSmartEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLanuageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "LightLanuageManager"

    const-string v1, "registerListener"

    .line 297
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 301
    :try_start_1
    new-instance v0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;-><init>(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListenerToService:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;

    .line 302
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->registerListener(Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 307
    :try_start_2
    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->checkXUIServiceNotConnectedExceptionFromXUIService(Ljava/lang/IllegalStateException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    const-string v0, "LightLanuageManager"

    .line 304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0

    .line 311
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 312
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLightEffectEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 500
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->setLightEffectEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setLightEffectEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLanuageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setMcuEffect(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 532
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->setMcuEffect(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 534
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Could not setMcuEffect: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "LightLanuageManager"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    new-instance p2, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {p2, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw p2
.end method

.method public setRhythmEffect(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 562
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->setRhythmEffect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setRhythmEffect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLanuageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setRhythmEffectEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 468
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->setRhythmEffectEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 470
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setRhythmEffectEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLanuageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setSayhiEffectEnable(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 436
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->setSayhiEffectEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 438
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Could not setSayhiEffectEnable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LightLanuageManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 274
    sput-object p1, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public stopEffect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 644
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->stopEffect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not stopEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightLanuageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public stopSmartEffect()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    .line 668
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->stopSmartEffect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 670
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not stopSmartEffect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LightLanuageManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    new-instance v1, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v1
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$EventListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "LightLanuageManager"

    const-string v1, "unregisterListener"

    .line 322
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 325
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 327
    :try_start_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mService:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListenerToService:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;->unregisterListener(Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x0

    .line 332
    :try_start_2
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager;->mListenerToService:Lcom/xiaopeng/xuimanager/lightlanuage/LightLanuageManager$LightLanuageListenerToService;

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "LightLanuageManager"

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not unregister: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v0, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;-><init>(Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
