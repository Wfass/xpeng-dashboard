.class Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;
.super Landroid/os/AsyncTask;
.source "AccountManagerProxy.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "StaticFieldLeak"
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RequestOAuthTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/accounts/Account;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback<",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;",
            "Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IError;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetAppId:Ljava/lang/String;

.field private mTimer:Landroid/os/CountDownTimer;

.field final synthetic this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .locals 7
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

    .line 262
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 263
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->mTargetAppId:Ljava/lang/String;

    .line 264
    iput-object p3, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    .line 266
    new-instance p2, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask$1;

    const-wide/32 v2, 0x9c40

    const-wide/32 v4, 0x9c40

    move-object v0, p2

    move-object v1, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask$1;-><init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;JJLcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)V

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->mTimer:Landroid/os/CountDownTimer;

    .line 278
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;)V
    .locals 0

    .line 256
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;-><init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;)V
    .locals 0

    .line 256
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->postpone()V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;I)V
    .locals 0

    .line 256
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->notifyFailed(I)V

    return-void
.end method

.method private dismiss()V
    .locals 3

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$900(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)[B

    move-result-object v0

    monitor-enter v0

    .line 295
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$1000(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$1000(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

    move-result-object v1

    if-ne v1, p0, :cond_0

    .line 296
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$1002(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;)Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

    .line 298
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_1

    .line 300
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 301
    iput-object v2, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->mTimer:Landroid/os/CountDownTimer;

    :cond_1
    return-void

    :catchall_0
    move-exception v1

    .line 298
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private notifyFailed(I)V
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$1200(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)V

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    if-eqz v0, :cond_0

    .line 319
    new-instance v1, Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;

    invoke-direct {v1, p1}, Lcom/xiaopeng/lib/framework/account/exception/AuthInfoError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;->onFail(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 320
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    .line 321
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->dismiss()V

    :cond_0
    return-void
.end method

.method private notifySuccess(Ljava/lang/String;)V
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$1200(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)V

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    if-eqz v0, :cond_0

    .line 308
    new-instance v0, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;-><init>()V

    .line 309
    invoke-virtual {v0, p1}, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;->setAuthCode(Ljava/lang/String;)V

    .line 310
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;->onSuccess(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 311
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->mCallback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    .line 312
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->dismiss()V

    :cond_0
    return-void
.end method

.method private postpone()V
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$900(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)[B

    move-result-object v0

    monitor-enter v0

    .line 283
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$1000(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

    move-result-object v1

    if-nez v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$1002(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;)Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;

    .line 285
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$1100(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)V

    .line 286
    monitor-exit v0

    return-void

    .line 288
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x3

    .line 290
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->notifyFailed(I)V

    return-void

    :catchall_0
    move-exception v1

    .line 288
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 255
    check-cast p1, [Landroid/accounts/Account;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->doInBackground([Landroid/accounts/Account;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/accounts/Account;)Ljava/lang/Void;
    .locals 11

    .line 327
    array-length v0, p1

    const/4 v1, 0x0

    const-string v2, "AccountManagerProxy"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v0, v4, :cond_2

    aget-object v0, p1, v3

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 333
    :cond_0
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->mTargetAppId:Ljava/lang/String;

    const-string v4, "app_id"

    invoke-virtual {v7, v4, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$700(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Landroid/accounts/AccountManager;

    move-result-object v4

    aget-object v5, p1, v3

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v6, "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_CODE"

    invoke-virtual/range {v4 .. v10}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    .line 339
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v4, "authtoken"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 340
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 341
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->notifySuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 343
    :cond_1
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v4, "errorMessage"

    const-string v5, ""

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 344
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v4, "errorCode"

    const-string v5, "-1"

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 345
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RequestOAuthTask doRequest failed, code:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; msg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->notifyFailed(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RequestOAuthTask doRequest exception:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-direct {p0, v3}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->notifyFailed(I)V

    :goto_0
    return-object v1

    :cond_2
    :goto_1
    const-string p1, "RequestOAuthTask doRequest but account is null"

    .line 328
    invoke-static {v2, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    invoke-direct {p0, v3}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$RequestOAuthTask;->notifyFailed(I)V

    return-object v1
.end method
