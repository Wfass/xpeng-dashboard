.class public Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;
.super Ljava/lang/Object;
.source "XpAccountProxy.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/account/IAccountProxy;


# static fields
.field private static final ACTION_XP_ACCOUNT_SERVER_SERVICE:Ljava/lang/String; = "com.xiaopeng.lib.framework.account.server"

.field private static final LOOP_DELAY_IN_SEC:J = 0x1L

.field private static final ONLY_ONE_THREAD:I = 0x1

.field private static final REMOTE_PACKAGE_NAME:Ljava/lang/String; = "com.xiaopeng.caraccount"

.field private static final TAG:Ljava/lang/String; = "XpAccountProxy"

.field private static volatile mXpAccountProxy:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private mAppId:Ljava/lang/String;

.field private mApplication:Landroid/app/Application;

.field private mBindingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private mBindingTask:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field

.field private mContextProvider:Lcom/xiaopeng/lib/framework/account/client/IContextProvider;

.field private mCopyOnWriteArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field mUserInfoChangedListener:Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;

.field private volatile mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

.field private remotePackageName:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mCopyOnWriteArrayList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 62
    new-instance v0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$1;-><init>(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 89
    new-instance v0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$2;-><init>(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 269
    new-instance v0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$4;-><init>(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mUserInfoChangedListener:Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;

    .line 277
    new-instance v0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$5;-><init>(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mContextProvider:Lcom/xiaopeng/lib/framework/account/client/IContextProvider;

    .line 99
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mBindingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)Lcom/xiaopeng/lib/framework/account/IXpAccountService;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    return-object p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;Lcom/xiaopeng/lib/framework/account/IXpAccountService;)Lcom/xiaopeng/lib/framework/account/IXpAccountService;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mAppId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->onServiceConnected()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->stopBindTask()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->onServiceDisconnected()V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->bindRemoteService()V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)Landroid/app/Application;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mApplication:Landroid/app/Application;

    return-object p0
.end method

.method private bindRemoteService()V
    .locals 4

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mApplication:Landroid/app/Application;

    if-nez v0, :cond_0

    return-void

    .line 130
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.xiaopeng.lib.framework.account.server"

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->remotePackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mApplication:Landroid/app/Application;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;
    .locals 2

    .line 104
    sget-object v0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountProxy:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    if-nez v0, :cond_1

    .line 105
    const-class v0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    monitor-enter v0

    .line 106
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountProxy:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    if-nez v1, :cond_0

    .line 107
    new-instance v1, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;-><init>()V

    sput-object v1, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountProxy:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    .line 109
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 111
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountProxy:Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;

    return-object v0
.end method

.method private onServiceConnected()V
    .locals 4

    const-string v0, "XpAccountProxy"

    :try_start_0
    const-string v1, "onServiceConnected before getUserInfo"

    .line 173
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->getUserInfo()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 176
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;

    invoke-direct {v3}, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;-><init>()V

    invoke-virtual {v3, v1}, Lcom/xiaopeng/lib/framework/account/info/UserInfoEventImpl;->setUserInfo(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfoEvent;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 177
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected getUserInfo and notify, info:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 180
    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;->printStackTrace()V

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected getUserInfo exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized onServiceDisconnected()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "XpAccountProxy"

    .line 189
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceDisconnected mXpAccountService:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 191
    monitor-exit p0

    return-void

    .line 193
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    invoke-interface {v0}, Lcom/xiaopeng/lib/framework/account/IXpAccountService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 194
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    .line 196
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->startBindTask()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 197
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private requestOAuth(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;J)V"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestOAuth appID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; timeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpAccountProxy"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    if-nez v0, :cond_0

    const-string v0, "requestOAuth mXpAccountService is null."

    .line 227
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mAppId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "requestOAuth appID is empty."

    .line 230
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 234
    :cond_1
    new-instance v0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;

    iget-object v3, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mApplication:Landroid/app/Application;

    iget-object v5, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    move-object v2, v0

    move-object v4, p1

    move-object v6, p2

    move-wide v7, p3

    invoke-direct/range {v2 .. v8}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;-><init>(Landroid/app/Application;Ljava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpAccountService;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;J)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private startBindTask()V
    .locals 9

    .line 137
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->stopBindTask()V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    if-eqz v0, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mBindingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_1

    .line 143
    new-instance v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mBindingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_1
    const-string v0, "XpAccountProxy"

    const-string v1, "startBindTask"

    .line 145
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mBindingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$3;

    invoke-direct {v3, p0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy$3;-><init>(Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v2 .. v8}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mBindingTask:Ljava/util/concurrent/ScheduledFuture;

    return-void
.end method

.method private stopBindTask()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mBindingTask:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 157
    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 158
    iput-object v1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mBindingTask:Ljava/util/concurrent/ScheduledFuture;

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mBindingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 163
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    .line 164
    iput-object v1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mBindingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_1
    return-void
.end method


# virtual methods
.method public getUserInfo()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;
    .locals 5

    const-string v0, "XpAccountProxy"

    const-string v1, "getUserInfo"

    .line 208
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 216
    :try_start_0
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    const-wide/16 v3, 0x0

    invoke-interface {v2, v3, v4}, Lcom/xiaopeng/lib/framework/account/IXpAccountService;->getUserInfo(J)Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 218
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 220
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mXpAccountService userInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v1, "mXpAccountService is null."

    .line 210
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    new-instance v0, Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;-><init>(I)V

    throw v0
.end method

.method public init(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init mAppId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpAccountProxy"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mAppId:Ljava/lang/String;

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mApplication:Landroid/app/Application;

    .line 119
    iput-object p3, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->remotePackageName:Ljava/lang/String;

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->remotePackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "com.xiaopeng.caraccount"

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->remotePackageName:Ljava/lang/String;

    .line 123
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->startBindTask()V

    return-void
.end method

.method public release(Landroid/content/Context;)V
    .locals 2

    const-string v0, "XpAccountProxy"

    const-string v1, "disconnectService"

    .line 201
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public requestOAuth(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;)V"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mAppId:Ljava/lang/String;

    const-wide/16 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v2}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->requestOAuth(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;J)V

    return-void
.end method

.method public requestOAuth(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 244
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->requestOAuth(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;J)V

    return-void
.end method

.method public requestOTP(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IOTPInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    if-nez v0, :cond_0

    const-string v0, "XpAccountProxy"

    const-string v1, "requestOTP mXpAccountService is null."

    .line 250
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/account/utils/L;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :cond_0
    new-instance v0, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mContextProvider:Lcom/xiaopeng/lib/framework/account/client/IContextProvider;

    invoke-direct {v0, v1, p1, p2}, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;-><init>(Lcom/xiaopeng/lib/framework/account/client/IContextProvider;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public sendAction(Lcom/xiaopeng/lib/framework/account/action/AccountAction;)V
    .locals 4

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendAction action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->ordinal()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpAccountProxy"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    if-eqz v0, :cond_0

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/client/XpAccountProxy;->mXpAccountService:Lcom/xiaopeng/lib/framework/account/IXpAccountService;

    const-wide/16 v1, 0x0

    invoke-virtual {p1}, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->ordinal()I

    move-result p1

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, p1, v3}, Lcom/xiaopeng/lib/framework/account/IXpAccountService;->requestAction(JILandroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 265
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    :cond_0
    const-string p1, "mXpAccountService is null."

    .line 259
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    new-instance p1, Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/xiaopeng/lib/framework/account/exception/AccountConnectionException;-><init>(I)V

    throw p1
.end method
