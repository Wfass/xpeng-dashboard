.class public final Lcom/xiaopeng/factory/utils/IndivHelper;
.super Ljava/lang/Object;
.source "IndivHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;
    }
.end annotation


# static fields
.field public static final ACTION_BROADCAST_ISF_SECURE_STORE_RELOAD:Ljava/lang/String; = "com.xiaopeng.action.ISF_SECURE_STORE_RELOAD"

.field public static final ACTION_BROADCAST_SECURE_STORE_RELOAD:Ljava/lang/String; = "com.xiaopeng.action.SECURE_STORE_RELOAD"

.field public static final CAR_APP_SEC:Ljava/lang/String; = "B638C588DCAD7C1A43E6FB"

.field private static final EVENT_INIT_SECURE_SDK:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IndivHelper"

.field private static sContext:Landroid/content/Context;

.field private static sIndivInternal:Lcom/xiaopeng/factory/utils/internal/IIndivInternal;

.field private static sIsInitSuccess:Z

.field private static sIsInitializing:Z

.field private static sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

.field private static sThreadHandler:Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    invoke-static {}, Lcom/xiaopeng/lib/security/SecurityModuleFactory;->getSecurityModule()Lcom/xiaopeng/lib/security/ISecurityModule;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    .line 65
    invoke-static {}, Lcom/xiaopeng/factory/utils/internal/IndivInternalFactory;->getIndivHelperImpl()Lcom/xiaopeng/factory/utils/internal/IIndivInternal;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sIndivInternal:Lcom/xiaopeng/factory/utils/internal/IIndivInternal;

    .line 66
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/factory/utils/internal/IIndivInternal;
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sIndivInternal:Lcom/xiaopeng/factory/utils/internal/IIndivInternal;

    return-object v0
.end method

.method static synthetic access$100()Lcom/xiaopeng/lib/security/ISecurityModule;
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    return-object v0
.end method

.method static synthetic access$200()V
    .locals 0

    .line 46
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->postSaveIndiv()V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .line 46
    sput-boolean p0, Lcom/xiaopeng/factory/utils/IndivHelper;->sIsInitializing:Z

    return p0
.end method

.method static synthetic access$400()V
    .locals 0

    .line 46
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->postIndividualProcessing()V

    return-void
.end method

.method static synthetic access$500()Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;
    .locals 1

    .line 46
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sThreadHandler:Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;

    return-object v0
.end method

.method static synthetic access$600()V
    .locals 0

    .line 46
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->processInitService()V

    return-void
.end method

.method public static asyncGetMCUSecurityKey(Lcom/xiaopeng/lib/http/ICallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/http/ICallback<",
            "[B",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 366
    .local p0, "callback":Lcom/xiaopeng/lib/http/ICallback;, "Lcom/xiaopeng/lib/http/ICallback<[BLjava/lang/String;>;"
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->asyncGetMCUSecurityKey(Lcom/xiaopeng/lib/http/ICallback;)V

    .line 367
    return-void
.end method

.method public static declared-synchronized asyncInitIndivService()V
    .locals 5

    const-class v0, Lcom/xiaopeng/factory/utils/IndivHelper;

    monitor-enter v0

    .line 120
    :try_start_0
    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sThreadHandler:Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;

    if-nez v1, :cond_0

    .line 121
    const-string v1, "IndivHelper"

    const-string v2, "sThreadHandler is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    monitor-exit v0

    return-void

    .line 124
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sThreadHandler:Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;->removeMessages(I)V

    .line 126
    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sThreadHandler:Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    monitor-exit v0

    return-void

    .line 119
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static clearIrdetoBuildFiles()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 177
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->clearIndividualData()V

    .line 178
    return-void
.end method

.method public static clearLocalIndividualData()V
    .locals 1

    .line 184
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->clearIndividualData()V

    .line 185
    return-void
.end method

.method public static cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "Iv"    # Ljava/lang/String;
    .param p2, "data"    # [B

    .line 378
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1, p2}, Lcom/xiaopeng/lib/security/ISecurityModule;->cryptoDecode(Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    const-class v0, Lcom/xiaopeng/factory/utils/IndivHelper;

    monitor-enter v0

    .line 327
    :try_start_0
    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "str":Ljava/lang/String;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static deleteString(Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 357
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->deleteString(Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method public static declared-synchronized destroy()V
    .locals 2

    const-class v0, Lcom/xiaopeng/factory/utils/IndivHelper;

    monitor-enter v0

    .line 302
    :try_start_0
    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1}, Lcom/xiaopeng/lib/security/ISecurityModule;->destroy()V

    .line 303
    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sThreadHandler:Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;

    if-eqz v1, :cond_0

    .line 304
    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sThreadHandler:Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;

    invoke-virtual {v1}, Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 305
    const/4 v1, 0x0

    sput-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sThreadHandler:Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;

    .line 307
    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sIsInitializing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    monitor-exit v0

    return-void

    .line 301
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 317
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getLocalFlag()Ljava/lang/String;
    .locals 1

    .line 193
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->getIndividualFlag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getServerBean(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Lcom/xiaopeng/lib/http/server/ServerBean;
    .locals 5
    .param p0, "response"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 385
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 386
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/xiaopeng/lib/http/server/ServerBean;

    invoke-direct {v1}, Lcom/xiaopeng/lib/http/server/ServerBean;-><init>()V

    .line 387
    .local v1, "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    const-string v2, "code"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/http/server/ServerBean;->setCode(I)V

    .line 388
    const-string v2, "data"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/http/server/ServerBean;->setData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 390
    :try_start_1
    const-string v2, "msg"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/lib/http/server/ServerBean;->setMsg(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 393
    goto :goto_0

    .line 391
    :catch_0
    move-exception v2

    .line 397
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    :goto_0
    goto :goto_1

    .line 394
    .end local v1    # "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    :catch_1
    move-exception v0

    .line 395
    .local v0, "ex":Ljava/lang/Exception;
    const/4 v1, 0x0

    .line 396
    .restart local v1    # "bean":Lcom/xiaopeng/lib/http/server/ServerBean;
    const-string v2, "IndivHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parser the response data. response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_1
    return-object v1
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .line 337
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0}, Lcom/xiaopeng/lib/security/ISecurityModule;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized initMain(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/xiaopeng/factory/utils/IndivHelper;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-boolean v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sIsInitSuccess:Z

    if-eqz v1, :cond_0

    .line 75
    const-string v1, "IndivHelper"

    const-string v2, "irdeto sdk has init"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    monitor-exit v0

    return-void

    .line 80
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sContext:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :try_start_2
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->initThread()V

    .line 85
    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    sget-object v2, Lcom/xiaopeng/factory/utils/IndivHelper;->sContext:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/xiaopeng/lib/security/ISecurityModule;->initForIndividual(Landroid/content/Context;)Lcom/xiaopeng/lib/security/ISecurityModule;

    .line 87
    const/4 v1, 0x1

    sput-boolean v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sIsInitSuccess:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 93
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    return-void

    .line 73
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static initThread()V
    .locals 3

    .line 109
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sThreadHandler:Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;

    if-nez v0, :cond_0

    .line 110
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SecureSdkSampleHandler"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 111
    .local v0, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 112
    new-instance v1, Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sThreadHandler:Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;

    .line 114
    .end local v0    # "thread":Landroid/os/HandlerThread;
    :cond_0
    return-void
.end method

.method public static isInitSuccess()Z
    .locals 1

    .line 144
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->isInitAndIndivSuccess()Z

    move-result v0

    return v0
.end method

.method public static isIrdetoInitSuccess()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->isInitAndIndivSuccess()Z

    move-result v0

    return v0
.end method

.method private static notifyIndividualFinished()V
    .locals 2

    .line 294
    const-string v0, "IndivHelper"

    const-string v1, "notifyIndivFinished"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 295
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sIndivInternal:Lcom/xiaopeng/factory/utils/internal/IIndivInternal;

    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/xiaopeng/factory/utils/internal/IIndivInternal;->notifyIndivFinished(Landroid/content/Context;)V

    .line 296
    return-void
.end method

.method private static postIndivService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 202
    sget-boolean v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sIsInitializing:Z

    if-eqz v0, :cond_0

    .line 203
    const-string v0, "IndivHelper"

    const-string v1, "irdeto sdk indiv is initing"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    return-void

    .line 207
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sIsInitializing:Z

    .line 209
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sIndivInternal:Lcom/xiaopeng/factory/utils/internal/IIndivInternal;

    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/factory/utils/internal/IIndivInternal;->buildIndivRequest(Landroid/content/Context;Lcom/xiaopeng/lib/security/ISecurityModule;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    .line 210
    .local v0, "request":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    if-nez v0, :cond_1

    .line 211
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sIsInitializing:Z

    .line 212
    return-void

    .line 215
    :cond_1
    new-instance v1, Lcom/xiaopeng/factory/utils/IndivHelper$2;

    invoke-direct {v1}, Lcom/xiaopeng/factory/utils/IndivHelper$2;-><init>()V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    .line 238
    return-void
.end method

.method private static postIndividualProcessing()V
    .locals 2

    .line 285
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->saveIndividualFlag()V

    .line 286
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/security/ISecurityModule;->saveMCUSecurityKey(Z)V

    .line 287
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->notifyIndividualFinished()V

    .line 288
    return-void
.end method

.method private static postSaveIndiv()V
    .locals 3

    .line 245
    :try_start_0
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sIndivInternal:Lcom/xiaopeng/factory/utils/internal/IIndivInternal;

    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sContext:Landroid/content/Context;

    sget-object v2, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/factory/utils/internal/IIndivInternal;->buildIndivSavingRequest(Landroid/content/Context;Lcom/xiaopeng/lib/security/ISecurityModule;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    .line 246
    .local v0, "request":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    if-nez v0, :cond_0

    .line 247
    const-string v1, "IndivHelper"

    const-string v2, "No need to post individual saving request."

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 248
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->postIndividualProcessing()V

    .line 249
    return-void

    .line 252
    :cond_0
    new-instance v1, Lcom/xiaopeng/factory/utils/IndivHelper$3;

    invoke-direct {v1}, Lcom/xiaopeng/factory/utils/IndivHelper$3;-><init>()V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    .end local v0    # "request":Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    goto :goto_0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 279
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private static processInitService()V
    .locals 5

    .line 149
    sget-boolean v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sIsInitSuccess:Z

    if-nez v0, :cond_0

    .line 150
    const-string v0, "IndivHelper"

    const-string v1, "irdeto sdk not init"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    return-void

    .line 155
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1}, Lcom/xiaopeng/lib/security/ISecurityModule;->isInitAndIndivSuccess()Z

    move-result v1

    if-nez v1, :cond_1

    .line 156
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->postIndivService()V

    .line 158
    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sThreadHandler:Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;->removeMessages(I)V

    .line 160
    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sThreadHandler:Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;

    const-wide/32 v3, 0xea60

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 163
    :cond_1
    sget-object v1, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v1, v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->saveMCUSecurityKey(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_0
    goto :goto_1

    .line 165
    :catch_0
    move-exception v1

    .line 166
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 167
    sput-boolean v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sIsInitializing:Z

    .line 169
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private static registerBroadcast(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 97
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    new-instance v1, Lcom/xiaopeng/factory/utils/IndivHelper$1;

    invoke-direct {v1}, Lcom/xiaopeng/factory/utils/IndivHelper$1;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 106
    return-void
.end method

.method public static setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 347
    sget-object v0, Lcom/xiaopeng/factory/utils/IndivHelper;->sSecurityUtils:Lcom/xiaopeng/lib/security/ISecurityModule;

    invoke-interface {v0, p0, p1}, Lcom/xiaopeng/lib/security/ISecurityModule;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    return-void
.end method

.method public static sign(Landroid/content/Context;Ljava/util/Map;J)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "time"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 428
    .local p1, "kV":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p1}, Lcom/xiaopeng/factory/utils/IndivHelper;->sortParameterAndValues(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 429
    .local v0, "k":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "xmart:appid:002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "B638C588DCAD7C1A43E6FB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/MD5Utils;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static sortParameterAndValues(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 439
    .local p0, "parameterMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 440
    const-string v0, ""

    return-object v0

    .line 443
    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 445
    .local v0, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 447
    .local v1, "keyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 448
    .local v3, "key":Ljava/lang/String;
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    .end local v3    # "key":Ljava/lang/String;
    goto :goto_0

    .line 451
    :cond_1
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 453
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 455
    .local v2, "sb":Ljava/lang/StringBuffer;
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 456
    .local v4, "key":Ljava/lang/String;
    const-string v5, "app_id"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "timestamp"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "sign"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 457
    goto :goto_1

    .line 459
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 460
    invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 461
    .local v5, "valArr":Ljava/lang/String;
    invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 462
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "valArr":Ljava/lang/String;
    goto :goto_1

    .line 464
    :cond_4
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method
