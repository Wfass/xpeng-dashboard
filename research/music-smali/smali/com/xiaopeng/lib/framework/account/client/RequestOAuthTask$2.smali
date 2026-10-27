.class Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$2;
.super Lcom/xiaopeng/lib/framework/account/IXpCallback$Stub;
.source "RequestOAuthTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$2;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/IXpCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(JLjava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const/16 p1, 0x2715

    if-eqz p4, :cond_0

    .line 92
    const-class p2, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p2, "errCode"

    .line 93
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const-string p2, "err"

    .line 94
    invoke-virtual {p4, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 96
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onFail errCode="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, "; err="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "RequestOAuthTask"

    invoke-static {p4, p3}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object p3, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$2;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;

    invoke-static {p3}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->access$100(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;

    move-result-object p3

    const-wide/16 v0, 0x0

    invoke-virtual {p3, p1, p2, v0, v1}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->dispatchMessage(ILjava/lang/String;J)V

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$2;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->access$400(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)V

    return-void
.end method

.method public onSuccess(JLjava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    if-nez p4, :cond_0

    const/4 p4, 0x0

    .line 72
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$2;->onFail(JLjava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 76
    :cond_0
    const-class v0, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "data"

    .line 77
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;

    if-nez v0, :cond_1

    .line 79
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$2;->onFail(JLjava/lang/String;Landroid/os/Bundle;)V

    return-void

    .line 82
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onSuccess.authInfo="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RequestOAuthTask"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/framework/account/utils/L;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$2;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->access$100(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;

    move-result-object p1

    const-wide/16 p2, 0x0

    invoke-virtual {p1, v0, p2, p3}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthCallback;->dispatchMessage(Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/IAuthInfo;J)V

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask$2;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;->access$400(Lcom/xiaopeng/lib/framework/account/client/RequestOAuthTask;)V

    return-void
.end method
