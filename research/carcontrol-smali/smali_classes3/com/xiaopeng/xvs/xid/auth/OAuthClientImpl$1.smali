.class Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$1;
.super Ljava/lang/Object;
.source "OAuthClientImpl.java"

# interfaces
.implements Lcom/xiaopeng/xvs/xid/base/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;->requestOAuth(Landroid/app/Activity;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/xvs/xid/base/ICallback<",
        "Ljava/lang/String;",
        "Lcom/xiaopeng/xvs/xid/base/IException;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$callback:Lcom/xiaopeng/xvs/xid/base/ICallback;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;Lcom/xiaopeng/xvs/xid/base/ICallback;Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$activity",
            "val$callback"
        }
    .end annotation

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$1;->this$0:Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl;

    iput-object p2, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$1;->val$callback:Lcom/xiaopeng/xvs/xid/base/ICallback;

    iput-object p3, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(Lcom/xiaopeng/xvs/xid/base/IException;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error"
        }
    .end annotation

    .line 65
    invoke-interface {p1}, Lcom/xiaopeng/xvs/xid/base/IException;->getCode()I

    move-result p1

    const/16 v0, 0x2713

    if-ne p1, v0, :cond_1

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$1;->val$activity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 68
    invoke-static {}, Lcom/xiaopeng/xvs/xid/XId;->getAccountApi()Lcom/xiaopeng/xvs/xid/account/api/IAccount;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$1;->val$activity:Landroid/app/Activity;

    invoke-interface {p1, v1}, Lcom/xiaopeng/xvs/xid/account/api/IAccount;->login(Landroid/app/Activity;)V

    .line 70
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$1;->val$callback:Lcom/xiaopeng/xvs/xid/base/ICallback;

    new-instance v1, Lcom/xiaopeng/xvs/xid/auth/api/OAuthException;

    invoke-direct {v1, v0}, Lcom/xiaopeng/xvs/xid/auth/api/OAuthException;-><init>(I)V

    invoke-interface {p1, v1}, Lcom/xiaopeng/xvs/xid/base/ICallback;->onFail(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public bridge synthetic onFail(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "error"
        }
    .end annotation

    .line 56
    check-cast p1, Lcom/xiaopeng/xvs/xid/base/IException;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$1;->onFail(Lcom/xiaopeng/xvs/xid/base/IException;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "resp"
        }
    .end annotation

    .line 56
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$1;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resp"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xvs/xid/auth/OAuthClientImpl$1;->val$callback:Lcom/xiaopeng/xvs/xid/base/ICallback;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xvs/xid/base/ICallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
