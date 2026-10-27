.class Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$4;
.super Ljava/lang/Object;
.source "TestSecurityPresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/http/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->verifyWifiKey()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/lib/http/ICallback<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    .line 409
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$4;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 409
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$4;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .line 432
    const/16 v0, 0xe9

    const/16 v1, 0x46

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$4;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$200(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/ISecurityView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$4;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$200(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/ISecurityView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateWifiKeyVerifiedView(Z)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$4;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$4;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_02:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 439
    :cond_1
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 409
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$4;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 412
    const/4 v0, 0x0

    move v1, v0

    .line 414
    .local v1, "code":I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    .line 417
    goto :goto_0

    .line 415
    :catch_0
    move-exception v2

    .line 416
    .local v2, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 418
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    const/16 v2, 0xe9

    const/16 v3, 0xc8

    if-ne v1, v3, :cond_0

    .line 419
    const/16 v4, 0x50

    goto :goto_1

    :cond_0
    const/16 v4, 0x46

    .line 418
    :goto_1
    invoke-static {v2, v4}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    .line 420
    iget-object v2, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$4;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v2}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$200(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/ISecurityView;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 421
    iget-object v2, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$4;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v2}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$200(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/ISecurityView;

    move-result-object v2

    if-ne v1, v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    invoke-interface {v2, v0}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updateWifiKeyVerifiedView(Z)V

    .line 423
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$4;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$4;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    if-ne v1, v3, :cond_3

    .line 425
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_02:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v2

    goto :goto_2

    .line 426
    :cond_3
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_02:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v2

    .line 424
    :goto_2
    invoke-virtual {v0, v2}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 428
    :cond_4
    return-void
.end method
