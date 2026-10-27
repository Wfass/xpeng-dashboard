.class Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask$1;
.super Lcom/xiaopeng/lib/framework/account/IXpCallback$Stub;
.source "RequestOTPTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;

    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/account/IXpCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail(JLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    const/16 p1, 0x3ea

    if-eqz p4, :cond_0

    const-string p2, "code"

    .line 66
    invoke-virtual {p4, p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 68
    :cond_0
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->access$000(Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;I)V

    return-void
.end method

.method public onSuccess(JLjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    const/16 p1, 0x3ea

    const-string p2, "RequestOTPTask"

    if-nez p4, :cond_0

    const-string p3, "onSuccess but bundle is null"

    .line 47
    invoke-static {p2, p3}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->access$000(Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;I)V

    return-void

    .line 51
    :cond_0
    const-class p3, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;

    invoke-virtual {p3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    invoke-virtual {p4, p3}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string p3, "data"

    .line 52
    invoke-virtual {p4, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;

    if-nez p3, :cond_1

    const-string p3, "onSuccess but otpInfo is null"

    .line 54
    invoke-static {p2, p3}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->access$000(Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;I)V

    return-void

    .line 58
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "onSuccess "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask$1;->this$0:Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;

    invoke-static {p1}, Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;->access$100(Lcom/xiaopeng/lib/framework/account/client/RequestOTPTask;)Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;

    move-result-object p1

    invoke-interface {p1, p3}, Lcom/xiaopeng/lib/framework/moduleinterface/accountmodule/ICallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
