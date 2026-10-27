.class Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$5;
.super Ljava/lang/Object;
.source "TestSecurityPresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->lambda$verifyCduKey$7()V
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

    .line 462
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$5;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 485
    const-string v0, "TestSecurityPresenter"

    const-string v1, "verifyCduKey fail:"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 486
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$5;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$200(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/ISecurityView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$5;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$200(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/ISecurityView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateCduKeyVerifiedView(Z)V

    .line 489
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$5;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$5;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_00:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 492
    :cond_1
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 4
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 465
    const/4 v0, 0x0

    move v1, v0

    .line 467
    .local v1, "result":Z
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "code"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    move v1, v0

    .line 470
    goto :goto_0

    .line 468
    :catch_0
    move-exception v0

    .line 469
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 471
    .end local v0    # "e":Lorg/json/JSONException;
    :goto_0
    const/16 v0, 0xe7

    if-eqz v1, :cond_1

    .line 472
    const/16 v2, 0x50

    goto :goto_1

    :cond_1
    const/16 v2, 0x46

    .line 471
    :goto_1
    invoke-static {v0, v2}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$5;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$200(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/ISecurityView;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$5;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$200(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/ISecurityView;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateCduKeyVerifiedView(Z)V

    .line 476
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$5;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$5;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    if-eqz v1, :cond_3

    .line 478
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_00:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v2

    goto :goto_2

    .line 479
    :cond_3
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_00:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v2

    .line 477
    :goto_2
    invoke-virtual {v0, v2}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 481
    :cond_4
    return-void
.end method
