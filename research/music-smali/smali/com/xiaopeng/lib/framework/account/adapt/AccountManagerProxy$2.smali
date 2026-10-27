.class Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$2;
.super Ljava/lang/Object;
.source "AccountManagerProxy.java"

# interfaces
.implements Landroid/accounts/AccountManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->doLogin()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/accounts/AccountManagerCallback<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;)V
    .locals 0

    .line 382
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$2;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Landroid/accounts/AccountManagerFuture;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/accounts/AccountManagerFuture<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    const-string v0, "AccountManagerProxy"

    .line 386
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    const-string v1, "intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 388
    iget-object v1, p0, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy$2;->this$0:Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;->access$1400(Lcom/xiaopeng/lib/framework/account/adapt/AccountManagerProxy;Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "doLogin intent is null"

    .line 390
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doLogin exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
