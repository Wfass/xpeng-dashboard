.class Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;
.super Landroid/os/AsyncTask;
.source "AccountManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->requestOTP(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

.field final synthetic val$callback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    iput-object p2, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->val$callback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 170
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$400(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Landroid/accounts/Account;

    move-result-object p1

    const/4 v7, 0x0

    if-nez p1, :cond_0

    const-string p1, "AccountManagerProxy"

    const-string v0, "Current account is null; Always requestOTP after login"

    .line 176
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->val$callback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    new-instance v0, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;

    const/16 v1, 0x3e9

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;->onFail(Ljava/lang/Object;)V

    return-object v7

    .line 181
    :cond_0
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$500(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "app_id"

    invoke-virtual {v3, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$600(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)[B

    move-result-object v8

    monitor-enter v8

    .line 186
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$700(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Landroid/accounts/AccountManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$700(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Landroid/accounts/AccountManager;

    move-result-object v0

    const-string v2, "com.xiaopeng.accountservice.AUTH_TYPE_AUTH_OTP"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$700(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)Landroid/accounts/AccountManager;

    move-result-object v1

    const-string v2, "uid"

    invoke-virtual {v1, p1, v2}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 194
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    :try_start_1
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const-string v2, "authtoken"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 198
    new-instance v0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;-><init>()V

    .line 199
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IOTPInfo;->setUid(J)V

    .line 200
    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IOTPInfo;->setOTP(Ljava/lang/String;)V

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->val$callback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    .line 203
    :cond_1
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "errorMessage"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-interface {v0}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string v1, "errorCode"

    const-string v2, "-1"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccountManagerProxy"

    .line 205
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestOTP failed, code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->val$callback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    new-instance v1, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v0}, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;->onFail(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestOTP exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AccountManagerProxy"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->val$callback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    new-instance v0, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;->onFail(Ljava/lang/Object;)V

    :goto_0
    return-object v7

    :cond_2
    :try_start_2
    const-string p1, "AccountManagerProxy"

    const-string v0, "requestOTP without accountManager"

    .line 190
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$1;->val$callback:Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    new-instance v0, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/account/exception/OTPInfoError;-><init>(I)V

    invoke-interface {p1, v0}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;->onFail(Ljava/lang/Object;)V

    .line 192
    monitor-exit v8

    return-object v7

    :catchall_0
    move-exception p1

    .line 194
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method
