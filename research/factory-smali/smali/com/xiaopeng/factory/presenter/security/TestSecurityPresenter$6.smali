.class Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$6;
.super Ljava/lang/Object;
.source "TestSecurityPresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->lambda$verifyV18CduKey$8()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    .line 513
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$6;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 532
    const-string v0, "TestSecurityPresenter"

    const-string v1, "verifyCduKey fail:"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 533
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$6;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$6;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_04:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 536
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$6;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$400(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/IV18CdukeyView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 537
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$6;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$400(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/IV18CdukeyView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/factory/view/security/IV18CdukeyView;->updateCheckView(I)V

    .line 539
    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 4
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 516
    const-string v0, "TestSecurityPresenter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iResponse.body() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ok"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 518
    .local v0, "result":Z
    if-eqz v0, :cond_0

    .line 519
    const/16 v1, 0x50

    goto :goto_0

    :cond_0
    const/16 v1, 0x46

    .line 518
    :goto_0
    const/16 v2, 0xec

    invoke-static {v2, v1}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    .line 520
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$6;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 521
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$6;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 522
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_04:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v2

    goto :goto_1

    .line 523
    :cond_1
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_04:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v2

    .line 521
    :goto_1
    invoke-virtual {v1, v2}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 525
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$6;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$400(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/IV18CdukeyView;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 526
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$6;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$400(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/IV18CdukeyView;

    move-result-object v1

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v1, v2}, Lcom/xiaopeng/factory/view/security/IV18CdukeyView;->updateCheckView(I)V

    .line 528
    :cond_4
    return-void
.end method
