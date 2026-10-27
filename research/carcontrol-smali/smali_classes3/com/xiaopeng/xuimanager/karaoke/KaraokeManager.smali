.class public Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;
.super Ljava/lang/Object;
.source "KaraokeManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeManagerHolder;,
        Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;,
        Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;
    }
.end annotation


# static fields
.field public static final DBG:Z = true

.field public static final KARAOKE_ECHO:I = 0x2

.field public static final KARAOKE_MIC_EFFECT:I = 0x4

.field public static final KARAOKE_MIC_VOLUME:I = 0x1

.field public static final KARAOKE_MUSIC_VOLUME:I = 0x0

.field public static final KARAOKE_REVERBERATION:I = 0x3

.field private static final MSG_KARAOKE_ERROR_EVENT:I = 0x0

.field private static final MSG_KARAOKE_EVENT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "KaraokeManager"

.field private static mServiceName:Ljava/lang/String;


# instance fields
.field private callingApp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private final mICallBack:Landroid/os/IBinder;

.field private mListenerToService:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mMicCallBack:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;

.field private mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mICallBack:Landroid/os/IBinder;

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListenerToService:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mICallBack:Landroid/os/IBinder;

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListeners:Ljava/util/Set;

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListenerToService:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;

    .line 181
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    .line 182
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mContext:Landroid/content/Context;

    .line 183
    new-instance p1, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mHandler:Landroid/os/Handler;

    .line 184
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->dispatchErrorEventToClient(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->dispatchEventToClient(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->handleErrorEvent(II)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->handleEvent(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;II)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->handleVolumeEvent(II)V

    return-void
.end method

.method private dispatchErrorEventToClient(II)V
    .locals 2

    .line 240
    monitor-enter p0

    .line 241
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListeners:Ljava/util/Set;

    .line 242
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;

    .line 245
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;->onErrorEvent(II)V

    goto :goto_0

    :cond_0
    const-string p1, "KaraokeManager"

    const-string p2, "Listener died, not dispatching event."

    .line 248
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 242
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchEventToClient(II)V
    .locals 2

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchEventToClient  event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mMicCallBack:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mMicCallBack:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KaraokeManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mMicCallBack:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;

    if-eqz v0, :cond_1

    if-gez p2, :cond_0

    .line 257
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;->micServiceCallBack(I)V

    goto :goto_0

    .line 259
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;->volumeEffectCallBack(II)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;
    .locals 1

    .line 157
    invoke-static {}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeManagerHolder;->access$600()Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;

    move-result-object v0

    return-object v0
.end method

.method private handleErrorEvent(II)V
    .locals 2

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 276
    iput v1, v0, Landroid/os/Message;->what:I

    .line 277
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 278
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 279
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleEvent(I)V
    .locals 2

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 284
    iput v1, v0, Landroid/os/Message;->what:I

    .line 285
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 286
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleVolumeEvent(II)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 291
    iput v1, v0, Landroid/os/Message;->what:I

    .line 292
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 293
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 294
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public XMA_ShowToast(Ljava/lang/String;)V
    .locals 1

    .line 1162
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1165
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_ShowToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1167
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public XMA_aiWakeUp()I
    .locals 1

    .line 1036
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1039
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_aiWakeUp()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1041
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_atlSwitch(Z)I
    .locals 1

    .line 1016
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1019
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_atlSwitch(Z)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1021
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public XMA_clientDied()I
    .locals 1

    .line 1200
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1203
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_clientDied()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1205
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public XMA_connectMicFlow()V
    .locals 1

    .line 1146
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1149
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_connectMicFlow()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1151
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public XMA_deinit()I
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 423
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_Distroy(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 425
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public XMA_getBuyMicUrl()Ljava/lang/String;
    .locals 1

    .line 1130
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1133
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_getBuyMicUrl()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1135
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, "https://www.xiaopeng.com/"

    :goto_0
    return-object v0
.end method

.method public XMA_getEcho()I
    .locals 2

    .line 601
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 604
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_GetEcho(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 606
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_getHandShakeStatus()I
    .locals 2

    .line 480
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 483
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_GetHandShakeStatus(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 485
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_getMicName()Ljava/lang/String;
    .locals 1

    .line 1112
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1115
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_getMicName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1117
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public XMA_getMicPowerStatus()I
    .locals 2

    .line 520
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 523
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_GetMicPowerStatus(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 525
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_getMicSoundEffectMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1212
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1213
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v1, :cond_0

    .line 1216
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    invoke-interface {v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_getMicSoundEffectMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1218
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public XMA_getMicStatus()I
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 503
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_GetMicStatus(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 505
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_getSignedToken(Ljava/lang/String;)I
    .locals 2

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 462
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_SetSignedToken(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 464
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public XMA_getToken()I
    .locals 3

    .line 438
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    const/4 v1, -0x1

    if-nez v0, :cond_1

    return v1

    .line 443
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_GetToken(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 445
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public XMA_getVolume(I)I
    .locals 2

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 586
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_GetVolume(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 588
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public XMA_hasAtl()Z
    .locals 1

    .line 1056
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1059
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_hasAtl()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1061
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public XMA_init(Ljava/lang/String;)I
    .locals 4

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "KaraokeManager"

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XMA_init  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    const-string v2, ""

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mICallBack:Landroid/os/IBinder;

    invoke-interface {p1, v1, v0, v2, v3}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_Create(Ljava/lang/String;ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 409
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v0
.end method

.method public XMA_isAtlEnabled()Z
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1097
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_isAtlEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1099
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public XMA_micCreate(III)I
    .locals 2

    .line 934
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 937
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_MicCreate(Ljava/lang/String;III)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 939
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public XMA_micDestroy()I
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 998
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_MicDestroy(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1000
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_micGetAvail()I
    .locals 2

    .line 954
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 957
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_MicGetAvail(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 959
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_micGetMinBuf(II)I
    .locals 2

    .line 911
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 914
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_MicGetMinBuf(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 916
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public XMA_pause()I
    .locals 2

    .line 723
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_Pause(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 728
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_pausePlay()I
    .locals 2

    .line 763
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 766
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_PausePlay(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 768
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_readMic([B)I
    .locals 3

    .line 975
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 978
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v2, p1, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_MicRead(Ljava/lang/String;[BI)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 980
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public XMA_readRec([B)I
    .locals 3

    .line 869
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    .line 872
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v2, p1, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_Read(Ljava/lang/String;[BI)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 874
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return v1
.end method

.method public XMA_recCreate(III)I
    .locals 2

    .line 828
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 831
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_RecCreate(Ljava/lang/String;III)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 833
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public XMA_recDestroy()I
    .locals 2

    .line 889
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 892
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_RecDestroy(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 894
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_recGetAvail()I
    .locals 2

    .line 848
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 851
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_RecGetAvail(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 853
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_recGetMinBuf(II)I
    .locals 2

    .line 805
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 808
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_RecGetMinBuf(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 810
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public XMA_registerCallback(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 368
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mMicCallBack:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;

    .line 370
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListenerToService:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;

    if-nez p1, :cond_0

    .line 371
    new-instance p1, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;

    invoke-direct {p1, p0}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;-><init>(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListenerToService:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;

    .line 372
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListenerToService:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_RegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 374
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public XMA_releaseKaraokeResource(Ljava/lang/String;)I
    .locals 1

    .line 1243
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1246
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_releaseKaraokeResource(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1248
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public XMA_requestKaraokeResource(Ljava/lang/String;)I
    .locals 3

    const v0, 0xbb80

    const/4 v1, 0x2

    .line 1238
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_micGetMinBuf(II)I

    move-result v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->XMA_requestKaraokeResource(Ljava/lang/String;III)I

    move-result p1

    return p1
.end method

.method public XMA_requestKaraokeResource(Ljava/lang/String;III)I
    .locals 1

    .line 1226
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1229
    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_requestKaraokeResource(Ljava/lang/String;III)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1231
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public XMA_resume()I
    .locals 2

    .line 743
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 746
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_Resume(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 748
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_resumePlay()I
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 786
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_ResumePlay(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 788
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_setAtlEnable(Z)V
    .locals 1

    .line 1075
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1078
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_setAtlEnable(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1080
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public XMA_setEcho(I)I
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 565
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_SetEcho(Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 567
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public XMA_setMusicInfo([Ljava/lang/String;)I
    .locals 1

    .line 1174
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1177
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_setMusicInfo([Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1179
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public XMA_setMusicLyric([Ljava/lang/String;)I
    .locals 1

    .line 1187
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1190
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_setMusicLyric([Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 1192
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public XMA_setVolume(II)I
    .locals 2

    .line 543
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 546
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_SetVolume(Ljava/lang/String;II)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 548
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public XMA_trackCreate(III)I
    .locals 2

    .line 643
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 646
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_TrackCreate(Ljava/lang/String;III)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 648
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public XMA_trackDestroy()I
    .locals 2

    .line 703
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 706
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_TrackDestroy(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 708
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_trackGetLatency()I
    .locals 2

    .line 660
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 663
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_TrackGetLatency(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 665
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public XMA_trackGetMinBuf(II)I
    .locals 2

    .line 621
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 624
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_TrackGetMinBuf(Ljava/lang/String;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 626
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public XMA_unRegisterCallback()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 386
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mMicCallBack:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;

    .line 388
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListenerToService:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;

    invoke-interface {v1, v2, v3}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_UnRegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 390
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    :goto_0
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListenerToService:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;

    const/4 v0, 0x0

    return v0
.end method

.method public XMA_write([BII)I
    .locals 2

    .line 683
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 686
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_Write(Ljava/lang/String;[BII)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 688
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public enableCarMicrophone(ZI)I
    .locals 1

    .line 1257
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1260
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->enableCarMicrophone(ZI)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1262
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public enableVocalRemove(ZI)I
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1299
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->enableVocalRemove(ZI)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1301
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public enableVocalRemoveDynamic(Z)V
    .locals 1

    .line 1334
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1337
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->enableVocalRemoveDynamic(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1339
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public getBgmVolume()I
    .locals 1

    .line 1370
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1373
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->getBgmVolume()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1375
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getCarMicrophonePosition()I
    .locals 1

    .line 1283
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1286
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->getCarMicrophonePosition()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1288
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 354
    sget-object v0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mServiceName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mServiceName:Ljava/lang/String;

    .line 357
    :cond_0
    sget-object v0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mServiceName:Ljava/lang/String;

    return-object v0
.end method

.method public getVocalRemoveLevel()I
    .locals 1

    .line 1322
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1325
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->getVocalRemoveLevel()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1327
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasBuiltIntMicKaraoke()Z
    .locals 1

    .line 1383
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1386
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->hasBuiltIntMicKaraoke()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1388
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 167
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    .line 168
    iput-object p2, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mContext:Landroid/content/Context;

    .line 169
    new-instance p1, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mHandler:Landroid/os/Handler;

    .line 170
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    return-void
.end method

.method public isCarMicrophoneEnable()Z
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1273
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->isCarMicrophoneEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1275
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVocalRemoveDynamicEnable()Z
    .locals 1

    .line 1346
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1349
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->isVocalRemoveDynamicEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1351
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isVocalRemoveEnable()Z
    .locals 1

    .line 1309
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1312
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->isVocalRemoveEnable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1314
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onServerDisconnected()V
    .locals 0

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "KaraokeManager"

    if-nez p1, :cond_0

    const-string p1, "onXUIConnected,service binder is null"

    .line 324
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 327
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 328
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

    .line 331
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    .line 333
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListenerToService:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;

    if-eqz v1, :cond_2

    .line 334
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {p1, v2, v1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_RegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected,register callback failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onXUIDisconnected()V
    .locals 3

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;

    .line 304
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->unregisterListener(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 310
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListenerToService:Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$KaraokeEventListenerToService;

    if-eqz v0, :cond_1

    .line 311
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->XMS_UnRegisterCallback(Ljava/lang/String;Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 314
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIDisconnected e="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KaraokeManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    .line 213
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setBgmVolume(I)V
    .locals 1

    .line 1358
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mService:Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;

    if-eqz v0, :cond_0

    .line 1361
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraoke;->setBgmVolume(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1363
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setCallingAppPkg(Ljava/lang/String;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->callingApp:Ljava/lang/String;

    return-void
.end method

.method public setServiceName(Ljava/lang/String;)V
    .locals 0

    .line 346
    sput-object p1, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mServiceName:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager$MicCallBack;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/xiaopeng/xuimanager/XUIServiceNotConnectedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "KaraokeManager"

    const-string v1, "unregisterListener"

    .line 224
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/karaoke/KaraokeManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 236
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
