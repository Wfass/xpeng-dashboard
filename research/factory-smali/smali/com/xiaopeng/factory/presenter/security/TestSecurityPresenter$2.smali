.class Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$2;
.super Ljava/lang/Object;
.source "TestSecurityPresenter.java"

# interfaces
.implements Lcom/xiaopeng/lib/http/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->lambda$onEvent$0(Ljava/lang/String;Ljava/lang/String;)V
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

    .line 225
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$2;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 225
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$2;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "err"    # Ljava/lang/String;

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$2;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$500(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;Z)V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$2;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$2;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_01:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseNG([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 242
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 225
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$2;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$500(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;Z)V

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$2;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter$2;->this$0:Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;

    invoke-static {v0}, Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;->access$300(Lcom/xiaopeng/factory/presenter/security/TestSecurityPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/factory/utils/DmUtil$SecurityTest;->CMD_NAME:[B

    sget-object v2, Lcom/xiaopeng/factory/utils/DmUtil;->ARGU_01_01:[B

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/utils/DmUtil;->responseOK([B[B)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;->write([B)Z

    .line 233
    :cond_0
    return-void
.end method
