.class Lcom/xiaopeng/factory/utils/IndivHelper$2;
.super Ljava/lang/Object;
.source "IndivHelper.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/utils/IndivHelper;->postIndivService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 234
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/factory/utils/IndivHelper;->access$302(Z)Z

    .line 235
    const-string v0, "IndivHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Get individual info failed:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 3
    .param p1, "response"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 218
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->access$000()Lcom/xiaopeng/factory/utils/internal/IIndivInternal;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/xiaopeng/factory/utils/internal/IIndivInternal;->getIndivDataFromResponse(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Ljava/lang/String;

    move-result-object v0

    .line 219
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 221
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->access$100()Lcom/xiaopeng/lib/security/ISecurityModule;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/xiaopeng/lib/security/ISecurityModule;->individualWithData(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    const-string v1, "IndivHelper"

    const-string v2, "\u4e2a\u6027\u5316\u6570\u636e\u5904\u7406\u5b8c\u6210\uff01"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/xiaopeng/factory/utils/IndivHelper;->access$200()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_0
    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    .line 226
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 229
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    :goto_0
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/xiaopeng/factory/utils/IndivHelper;->access$302(Z)Z

    .line 230
    return-void
.end method
