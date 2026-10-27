.class Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$3;
.super Ljava/lang/Object;
.source "TestSecurityPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->verifyPsuKey()V
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

    .line 344
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$3;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 347
    const/16 v0, 0xea

    const/16 v1, 0x45

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    .line 348
    iget-object v1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$3;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$100(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/model/security/PsuKeyModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/factory/model/security/PsuKeyModel;->verifyPsuKey()Z

    move-result v1

    .line 349
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 350
    const/16 v2, 0x50

    goto :goto_0

    :cond_0
    const/16 v2, 0x46

    .line 349
    :goto_0
    invoke-static {v0, v2}, Lcom/xiaopeng/factory/utils/TestResultUtil;->writeTestResult(IB)Z

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$3;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$200(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/ISecurityView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$3;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$200(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/view/security/ISecurityView;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/xiaopeng/factory/view/security/ISecurityView;->updatePsuKeyVerifiedView(Z)V

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$3;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 355
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$3;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    if-eqz v1, :cond_2

    .line 356
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_03:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v2

    goto :goto_1

    .line 357
    :cond_2
    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v3, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_03:[B

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v2

    .line 355
    :goto_1
    invoke-virtual {v0, v2}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 359
    :cond_3
    return-void
.end method
