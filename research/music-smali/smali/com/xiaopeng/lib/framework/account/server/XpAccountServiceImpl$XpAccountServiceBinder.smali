.class Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;
.super Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub;
.source "XpAccountServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "XpAccountServiceBinder"
.end annotation


# instance fields
.field private mAccountProvider:Lcom/xiaopeng/lib/framework/account/server/IAccountProvider;

.field private final mCallbacks:Lcom/xiaopeng/lib/framework/account/server/CallbackList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/IXpAccountService$Stub;-><init>()V

    .line 70
    new-instance v0, Lcom/xiaopeng/lib/framework/account/server/CallbackList;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/account/server/CallbackList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->mCallbacks:Lcom/xiaopeng/lib/framework/account/server/CallbackList;

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;
    .locals 1

    .line 68
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->getCarAccountService()Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;

    move-result-object v0

    return-object v0
.end method

.method private static getCarAccountService()Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;
    .locals 2

    .line 138
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl;->access$100()Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;

    move-result-object v0

    if-nez v0, :cond_1

    .line 139
    const-class v0, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;

    monitor-enter v0

    .line 140
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl;->access$100()Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;

    move-result-object v1

    if-nez v1, :cond_0

    .line 141
    new-instance v1, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;

    invoke-direct {v1}, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;-><init>()V

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl;->access$102(Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;)Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;

    .line 143
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 145
    :cond_1
    :goto_0
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl;->access$100()Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getUserInfo(J)Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;
    .locals 0

    const-string p1, "XpAccountServiceImpl"

    const-string p2, "getUserInfo"

    .line 91
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->mAccountProvider:Lcom/xiaopeng/lib/framework/account/server/IAccountProvider;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/account/server/IAccountProvider;->userInfo()Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;

    return-object p1
.end method

.method public init(JLjava/lang/String;)V
    .locals 0

    const-string p1, "XpAccountServiceImpl"

    const-string p2, "init"

    .line 86
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public initProvider(Lcom/xiaopeng/lib/framework/account/server/IAccountProvider;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->mAccountProvider:Lcom/xiaopeng/lib/framework/account/server/IAccountProvider;

    return-void
.end method

.method public postMessage(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IUserInfo;)V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->mCallbacks:Lcom/xiaopeng/lib/framework/account/server/CallbackList;

    check-cast p1, Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/account/server/CallbackList;->notifyUserInfoChanged(Lcom/xiaopeng/lib/framework/account/info/UserInfoImpl;)V

    return-void
.end method

.method public requestAction(JILandroid/os/Bundle;)V
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendMessage timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "pAction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpAccountServiceImpl"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p3, :cond_0

    .line 111
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->values()[Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    move-result-object v0

    array-length v0, v0

    if-ge p3, v0, :cond_0

    .line 112
    invoke-static {}, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->values()[Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    move-result-object v0

    aget-object p3, v0, p3

    goto :goto_0

    :cond_0
    const-string p3, "sendMessage action is ArrayIndexOutBoundsException"

    .line 114
    invoke-static {v1, p3}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    sget-object p3, Lcom/xiaopeng/lib/framework/account/action/AccountAction;->NONE:Lcom/xiaopeng/lib/framework/account/action/AccountAction;

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->mAccountProvider:Lcom/xiaopeng/lib/framework/account/server/IAccountProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/framework/account/server/IAccountProvider;->action(JLcom/xiaopeng/lib/framework/account/action/AccountAction;Landroid/os/Bundle;)V

    return-void
.end method

.method public requestOAuth(JLjava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpCallback;)V
    .locals 2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestOAuth timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpAccountServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->mAccountProvider:Lcom/xiaopeng/lib/framework/account/server/IAccountProvider;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/framework/account/server/IAccountProvider;->authorize(JLjava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpCallback;)V

    return-void
.end method

.method public requestOTP(JLjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpCallback;)V
    .locals 8

    .line 103
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestOTP timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "; deviceID="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpAccountServiceImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-object v2, p0, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->mAccountProvider:Lcom/xiaopeng/lib/framework/account/server/IAccountProvider;

    move-wide v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/xiaopeng/lib/framework/account/server/IAccountProvider;->requestOTP(JLjava/lang/String;Ljava/lang/String;Lcom/xiaopeng/lib/framework/account/IXpCallback;)V

    return-void
.end method

.method public subscribe(JLandroid/os/Bundle;Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;)V
    .locals 0

    const-string p1, "XpAccountServiceImpl"

    const-string p2, "subscribe "

    .line 122
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->mCallbacks:Lcom/xiaopeng/lib/framework/account/server/CallbackList;

    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/account/server/CallbackList;->register(Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;)V

    return-void
.end method

.method public unsubscribe(JLandroid/os/Bundle;Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;)V
    .locals 0

    const-string p1, "XpAccountServiceImpl"

    const-string p2, "unsubscribe "

    .line 128
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/server/XpAccountServiceImpl$XpAccountServiceBinder;->mCallbacks:Lcom/xiaopeng/lib/framework/account/server/CallbackList;

    invoke-virtual {p1, p4}, Lcom/xiaopeng/lib/framework/account/server/CallbackList;->unregister(Lcom/xiaopeng/lib/framework/account/IUserInfoChangedListener;)V

    return-void
.end method
