.class public Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;
.super Ljava/lang/Object;
.source "QIYIVideoHandler.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/xapp/video/handler/IVideoHandler;


# static fields
.field private static final PATH_PLAYER:Ljava/lang/String; = "player"

.field private static final PATH_VOICE:Ljava/lang/String; = "voice"

.field private static final RESPONSE_CODE_CMD_NOT_EXIT:I = -0x194

.field private static final RESPONSE_CODE_PARAMS_ERROR:I = -0x190

.field private static final RESPONSE_CODE_PLAYER_BUY_VIP:I = -0x1876c

.field private static final RESPONSE_CODE_PLAYER_LOGIN:I = -0x1876b

.field private static final RESPONSE_CODE_PLAYER_NOT_EXIST:I = -0x18834

.field private static final RESPONSE_CODE_PLAYER_SEEK_END:I = -0x1876e

.field private static final RESPONSE_CODE_PLAYER_SEEK_HEAD:I = -0x1876d

.field private static final RESPONSE_CODE_PLAYER_STATUS_ERROR:I = -0x18835

.field private static final RESPONSE_CODE_PLAYER_TRIAL_END:I = -0x1876a

.field private static final RESPONSE_CODE_RESULT_NO_MATCH:I = -0x195

.field private static final RESPONSE_CODE_SUCCESS:I = 0xc8

.field private static final RESPONSE_CODE_UNANTICIPATE:I = -0xca

.field private static final RESPONSE_FAILURE_FROM_CONNECT:I = -0x6

.field private static final TAG:Ljava/lang/String; = "QIYIVideoHandler"


# instance fields
.field mConnectStatusChangedListener:Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;

.field private mIQYSService:Lcom/qiyi/video/client/IQYSService;

.field private mShowScreenId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->mShowScreenId:I

    .line 350
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$6;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$6;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->mConnectStatusChangedListener:Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;

    .line 43
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->init()V

    .line 44
    return-void
.end method

.method static synthetic access$002(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;
    .param p1, "x1"    # I

    .line 22
    iput p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->mShowScreenId:I

    return p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->registerQIYIService()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;)Lcom/qiyi/video/client/IQYSService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->mIQYSService:Lcom/qiyi/video/client/IQYSService;

    return-object v0
.end method

.method static synthetic access$202(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;Lcom/qiyi/video/client/IQYSService;)Lcom/qiyi/video/client/IQYSService;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;
    .param p1, "x1"    # Lcom/qiyi/video/client/IQYSService;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->mIQYSService:Lcom/qiyi/video/client/IQYSService;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;Lcom/qiyi/video/qys/IQYSResponse;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;
    .param p1, "x1"    # Lcom/qiyi/video/qys/IQYSResponse;

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->getResultCode(Lcom/qiyi/video/qys/IQYSResponse;)I

    move-result v0

    return v0
.end method

.method private executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->mIQYSService:Lcom/qiyi/video/client/IQYSService;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->mIQYSService:Lcom/qiyi/video/client/IQYSService;

    new-instance v1, Lcom/qiyi/video/qys/IQYSRequest;

    invoke-direct {v1, p1}, Lcom/qiyi/video/qys/IQYSRequest;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$4;

    invoke-direct {v2, p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$4;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/qiyi/video/client/IQYSService;->executeAsync(Lcom/qiyi/video/qys/IQYSRequest;Lcom/qiyi/video/client/IQYSService$Callback;)V

    goto :goto_0

    .line 285
    :cond_0
    const-string v0, "QIYIVideoHandler"

    const-string v1, "executeAsync service not can connected"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x6

    invoke-interface {p2, v0}, Lcom/xiaopeng/xuiservice/xapp/video/Callback;->onResult(I)V

    .line 288
    :goto_0
    return-void
.end method

.method private getResultCode(Lcom/qiyi/video/qys/IQYSResponse;)I
    .locals 3
    .param p1, "iqysResponse"    # Lcom/qiyi/video/qys/IQYSResponse;

    .line 291
    const/4 v0, 0x1

    .line 292
    .local v0, "result":I
    if-eqz p1, :cond_4

    .line 293
    iget v1, p1, Lcom/qiyi/video/qys/IQYSResponse;->mCode:I

    const/16 v2, -0x190

    if-eq v1, v2, :cond_3

    const/16 v2, -0xca

    if-eq v1, v2, :cond_2

    const/4 v2, -0x6

    if-eq v1, v2, :cond_1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    goto :goto_0

    .line 319
    :pswitch_0
    const/4 v0, 0x4

    .line 320
    goto :goto_0

    .line 295
    :cond_0
    const/4 v0, 0x0

    .line 296
    goto :goto_0

    .line 299
    :cond_1
    const/4 v0, 0x6

    .line 300
    goto :goto_0

    .line 313
    :cond_2
    :pswitch_1
    const/4 v0, 0x5

    .line 314
    goto :goto_0

    .line 307
    :cond_3
    :pswitch_2
    const/4 v0, 0x3

    .line 308
    nop

    .line 326
    :cond_4
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch -0x18835
        :pswitch_2
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1876e
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x195
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 2

    .line 47
    const-string v0, "QIYIVideoHandler"

    const-string v1, "init the QIYI handler"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/qiyi/video/client/IQYSManager;->getInstance()Lcom/qiyi/video/client/IQYSManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->mConnectStatusChangedListener:Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;

    invoke-virtual {v0, v1}, Lcom/qiyi/video/client/IQYSManager;->addConnectStatusChangedListener(Lcom/qiyi/video/client/IQYSManager$ConnectStatusChangedListener;)V

    .line 49
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->addWindowStatusCallback(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;)V

    .line 60
    return-void
.end method

.method private launchApp(I)V
    .locals 4
    .param p1, "screenId"    # I

    .line 361
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 362
    .local v0, "context":Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 363
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 364
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 365
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addPrivateFlags(I)Landroid/content/Intent;

    .line 366
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 368
    :cond_0
    return-void
.end method

.method private registerQIYIService()V
    .locals 3

    .line 330
    const-string v0, "QIYIVideoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerQIYIService getService serviceNull:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/qiyi/video/client/IQYSManager;->getInstance()Lcom/qiyi/video/client/IQYSManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qiyi/video/client/IQYSManager;->getService()Lcom/qiyi/video/client/IQYSService;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->mIQYSService:Lcom/qiyi/video/client/IQYSService;

    if-nez v0, :cond_1

    .line 332
    invoke-static {}, Lcom/qiyi/video/client/IQYSManager;->getInstance()Lcom/qiyi/video/client/IQYSManager;

    move-result-object v0

    .line 333
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$5;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$5;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;)V

    .line 332
    invoke-virtual {v0, v1, v2}, Lcom/qiyi/video/client/IQYSManager;->register(Landroid/content/Context;Lcom/qiyi/video/client/IQYSManager$RegisterListener;)V

    .line 348
    :cond_1
    return-void
.end method


# virtual methods
.method public backward(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 145
    const-string v0, "player"

    const-string v1, "FAST_BACKWARD"

    const-string v2, "15000"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 147
    return-void
.end method

.method public clarityDown(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 201
    const-string v0, "player"

    const-string v1, "CHANGE_RATE"

    const-string v2, "DOWN"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 202
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 203
    return-void
.end method

.method public claritySet(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 207
    const-string v0, "player"

    const-string v1, "CHANGE_RATE"

    invoke-virtual {p0, v0, v1, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 209
    return-void
.end method

.method public clarityUP(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 195
    const-string v0, "player"

    const-string v1, "CHANGE_RATE"

    const-string v2, "UP"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 196
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 197
    return-void
.end method

.method public collect(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 213
    const-string v0, "player"

    const-string v1, "CHANGE_FAVOR"

    const-string v2, "TRUE"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 215
    return-void
.end method

.method public collectCancel(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 219
    const-string v0, "player"

    const-string v1, "CHANGE_FAVOR"

    const-string v2, "FALSE"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 221
    return-void
.end method

.method public end(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 189
    const-string v0, "player"

    const-string v1, "EXIT_PLAYER"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 191
    return-void
.end method

.method public forward(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 139
    const-string v0, "player"

    const-string v1, "FAST_FORWARD"

    const-string v2, "15000"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 141
    return-void
.end method

.method public generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "param"    # Ljava/lang/String;

    .line 262
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "iqiyi"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.qiyi.video.iv"

    .line 263
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "from"

    const-string/jumbo v2, "xui"

    .line 265
    invoke-virtual {v0, v1, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "command"

    .line 266
    invoke-virtual {v0, v1, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 267
    .local v0, "builder":Landroid/net/Uri$Builder;
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 268
    const-string v1, "param"

    invoke-virtual {v0, v1, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 270
    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 116
    const-string v0, "com.qiyi.video.iv"

    return-object v0
.end method

.method public next(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 127
    const-string v0, "player"

    const-string v1, "NEXT"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 128
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 129
    return-void
.end method

.method public pause(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 158
    const-string v0, "player"

    const-string v1, "PAUSE"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 160
    return-void
.end method

.method public play(ILjava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "command"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 64
    const-string v0, "QIYIVideoHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AI play displayId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " &command:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->mIQYSService:Lcom/qiyi/video/client/IQYSService;

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->launchApp(I)V

    .line 67
    invoke-static {}, Lcom/qiyi/video/client/IQYSManager;->getInstance()Lcom/qiyi/video/client/IQYSManager;

    move-result-object v0

    .line 68
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$2;

    invoke-direct {v2, p0, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/qiyi/video/client/IQYSManager;->register(Landroid/content/Context;Lcom/qiyi/video/client/IQYSManager$RegisterListener;)V

    goto :goto_0

    .line 94
    :cond_0
    iget v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->mShowScreenId:I

    if-eq v0, p1, :cond_1

    .line 95
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->launchApp(I)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->mIQYSService:Lcom/qiyi/video/client/IQYSService;

    new-instance v1, Lcom/qiyi/video/qys/IQYSRequest;

    invoke-direct {v1, p2}, Lcom/qiyi/video/qys/IQYSRequest;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$3;

    invoke-direct {v2, p0, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    invoke-interface {v0, v1, v2}, Lcom/qiyi/video/client/IQYSService;->executeAsync(Lcom/qiyi/video/qys/IQYSRequest;Lcom/qiyi/video/client/IQYSService$Callback;)V

    .line 107
    :goto_0
    return-void
.end method

.method public play(ILjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 0
    .param p1, "displayId"    # I
    .param p2, "programName"    # Ljava/lang/String;
    .param p3, "artistName"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 112
    return-void
.end method

.method public prev(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 121
    const-string v0, "player"

    const-string v1, "PREVIOUS"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 123
    return-void
.end method

.method public resume(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 164
    const-string v0, "player"

    const-string v1, "PLAY"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 166
    return-void
.end method

.method public set(ILcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "value"    # I
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 133
    const-string v0, "player"

    const-string v1, "EPISODE"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 135
    return-void
.end method

.method public setBarrageClose(ZLcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "enable"    # Z
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 257
    const-string v0, "player"

    const-string v1, "CHANGE_DANMU_STATUS"

    if-eqz p1, :cond_0

    const-string v2, "FALSE"

    goto :goto_0

    :cond_0
    const-string v2, "TRUE"

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 259
    return-void
.end method

.method public setMediaPlayMode(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 237
    if-eqz p1, :cond_0

    .line 238
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuiservice/xapp/video/Callback;->onResult(I)V

    .line 240
    :cond_0
    return-void
.end method

.method public setTime(DLcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 4
    .param p1, "time"    # D
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 151
    const-wide v0, 0x408f400000000000L    # 1000.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    .line 152
    .local v0, "timeValue":I
    const-string v1, "player"

    const-string v2, "SEEK"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v1, p3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 154
    return-void
.end method

.method public setVideoPlayMode(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 1
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 244
    if-eqz p1, :cond_0

    .line 245
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Lcom/xiaopeng/xuiservice/xapp/video/Callback;->onResult(I)V

    .line 247
    :cond_0
    return-void
.end method

.method public skipAllModeSet(ZLcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "skipEnable"    # Z
    .param p2, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 251
    const-string v0, "player"

    const-string v1, "SKIP_VIDEOS_HEAD_TILE"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 253
    return-void
.end method

.method public skipBegin(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 225
    const-string v0, "player"

    const-string v1, "SKIP_VIDEO_HEAD"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 227
    return-void
.end method

.method public skipEnd(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 231
    const-string v0, "player"

    const-string v1, "SKIP_VIDEO_TILE"

    const-string v2, ""

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 233
    return-void
.end method

.method public speedDown(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 176
    const-string v0, "player"

    const-string v1, "SPEED"

    const-string v2, "DOWN"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 178
    return-void
.end method

.method public speedSet(DLcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 4
    .param p1, "speed"    # D
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 182
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, p1

    double-to-int v0, v0

    .line 183
    .local v0, "speedValue":I
    const-string v1, "player"

    const-string v2, "SPEED"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v1, p3}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 185
    return-void
.end method

.method public speedUp(Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/xiaopeng/xuiservice/xapp/video/Callback;

    .line 170
    const-string v0, "player"

    const-string v1, "SPEED"

    const-string v2, "UP"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->generateFullCommand(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 171
    .local v0, "fullCommand":Ljava/lang/String;
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/xapp/video/handler/QIYIVideoHandler;->executeAsync(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/video/Callback;)V

    .line 172
    return-void
.end method
