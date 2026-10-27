.class Lcom/xiaopeng/factory/utils/IndivHelper$3;
.super Ljava/lang/Object;
.source "IndivHelper.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/utils/IndivHelper;->postSaveIndiv()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 273
    const-string v0, "IndivHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed save individual info to server:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2
    .param p1, "response"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 255
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->access$000()Lcom/xiaopeng/factory/utils/internal/IIndivInternal;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/factory/utils/internal/IIndivInternal;->checkIndivSavingResult(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->access$500()Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/factory/utils/IndivHelper$3$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/factory/utils/IndivHelper$3$1;-><init>(Lcom/xiaopeng/factory/utils/IndivHelper$3;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/utils/IndivHelper$ThreadHandler;->post(Ljava/lang/Runnable;)Z

    .line 269
    :cond_0
    return-void
.end method
