.class public Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;
.super Ljava/lang/Object;
.source "XuiAlsaPlayerManager.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/XUIManagerBase;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$EventCallbackHandler;,
        Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerEventListenerToService;,
        Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerCallback;,
        Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$SingletonHolder;
    }
.end annotation


# static fields
.field public static final MEDIA_LOOPBACK:Ljava/lang/String; = "MediaLoopback"

.field private static final MSG_CHANGE_EVENT:I = 0x1

.field private static final MSG_ERROR_EVENT:I = 0x0

.field public static final PATH_OFF:Ljava/lang/String; = "=OFF"

.field public static final PATH_ON:Ljava/lang/String; = "=ON"

.field public static final PERMISSION_EVENT:I = 0x1

.field public static final PLAY_EVENT:I = 0x0

.field public static final RELEASE_PERMISSION:Ljava/lang/String; = "release"

.field public static final REQUEST_PERMISSION:Ljava/lang/String; = "request"

.field public static final START_PLAY:Ljava/lang/String; = "start"

.field public static final STOP_PLAY:Ljava/lang/String; = "stop"

.field public static final SYSTEM_LOOPBACK:Ljava/lang/String; = "SystemLoopback"

.field public static final TAG:Ljava/lang/String; = "XuiAlsaPlayerManager"


# instance fields
.field private callingApp:Ljava/lang/String;

.field private mAlsaPlayerCallback:Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerCallback;

.field private mHandler:Landroid/os/Handler;

.field private mListenerToService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

.field private final mListeners:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mListeners:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

    return-void
.end method

.method public constructor <init>(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mListeners:Landroid/util/ArraySet;

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

    .line 83
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    .line 84
    new-instance p1, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mHandler:Landroid/os/Handler;

    .line 85
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->callingApp:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$1;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;ILjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->handleChangeEvent(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->handleErrorEvent(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;II)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->dispatchErrorEventToClient(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;ILjava/lang/String;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->dispatchEventToClient(ILjava/lang/String;)V

    return-void
.end method

.method private dispatchErrorEventToClient(II)V
    .locals 2

    .line 178
    monitor-enter p0

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mListeners:Landroid/util/ArraySet;

    .line 180
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 181
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerCallback;

    .line 183
    invoke-interface {v1, p1, p2}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerCallback;->onError(II)V

    goto :goto_0

    :cond_0
    const-string p1, "XuiAlsaPlayerManager"

    const-string p2, "Listener died, not dispatching event."

    .line 186
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 180
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private dispatchEventToClient(ILjava/lang/String;)V
    .locals 2

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dispatchEventToClient event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " value:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XuiAlsaPlayerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mAlsaPlayerCallback:Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerCallback;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerCallback;->onAlsaPlayerChangeEvent(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;
    .locals 1

    .line 62
    invoke-static {}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$SingletonHolder;->access$100()Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;

    move-result-object v0

    return-object v0
.end method

.method private handleChangeEvent(ILjava/lang/String;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    .line 119
    iput v1, v0, Landroid/os/Message;->what:I

    .line 120
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 121
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private handleErrorEvent(II)V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 127
    iput v1, v0, Landroid/os/Message;->what:I

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 129
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method


# virtual methods
.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 79
    invoke-super {p0}, Lcom/xiaopeng/xuimanager/XUIManagerBase;->getServiceName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/os/IBinder;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    .line 72
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    .line 73
    new-instance p1, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$EventCallbackHandler;

    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p1, p0, p3}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$EventCallbackHandler;-><init>(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mHandler:Landroid/os/Handler;

    .line 74
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->callingApp:Ljava/lang/String;

    return-void
.end method

.method public onServerDisconnected()V
    .locals 0

    return-void
.end method

.method public onXUIConnected(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "XuiAlsaPlayerManager"

    if-nez p1, :cond_0

    const-string p1, "onXUIConnected,service binder is null"

    .line 219
    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 222
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 223
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

    .line 226
    :cond_1
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    .line 228
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

    if-eqz v1, :cond_2

    .line 229
    invoke-interface {p1, v1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->registerListener(Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIConnected,registerListener failed:"

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

    .line 239
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerCallback;

    .line 240
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->unregisterListener(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 243
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onXUIDisconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XuiAlsaPlayerManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerCallback;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 191
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mAlsaPlayerCallback:Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerCallback;

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

    if-nez v0, :cond_0

    .line 194
    new-instance v0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerEventListenerToService;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerEventListenerToService;-><init>(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->registerListener(Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 199
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public resetRouteAndUpdatePath(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 307
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->resetRouteAndUpdatePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 309
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setCaptureParameter(IIIIII)I
    .locals 8

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 285
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->callingApp:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->setCaptureParameter(Ljava/lang/String;IIIIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 287
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPlaybackParameter(IIIIII)I
    .locals 8

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 296
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->callingApp:Ljava/lang/String;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->setPlaybackParameter(Ljava/lang/String;IIIIII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 298
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public startPlay()I
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 252
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->startPlay(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 254
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public stopPlay()I
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 263
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->stopPlay(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 265
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerCallback;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mAlsaPlayerCallback:Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager$AlsaPlayerCallback;

    .line 207
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

    invoke-interface {v1, v2}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->unregisterListener(Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;)V

    .line 208
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mListeners:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 210
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 212
    :goto_0
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mListenerToService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayerEventListener;

    const/4 p1, 0x0

    return p1
.end method

.method public writeData([BII)I
    .locals 2

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->mService:Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 274
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/alsaplayer/XuiAlsaPlayerManager;->callingApp:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/xiaopeng/xuimanager/alsaplayer/IXuiAlsaPlayer;->writeData(Ljava/lang/String;[BII)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 276
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
