.class public interface abstract Lcom/xiaopeng/factory/utils/internal/IIndivInternal;
.super Ljava/lang/Object;
.source "IIndivInternal.java"


# virtual methods
.method public abstract buildIndivRequest(Landroid/content/Context;Lcom/xiaopeng/lib/security/ISecurityModule;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract buildIndivSavingRequest(Landroid/content/Context;Lcom/xiaopeng/lib/security/ISecurityModule;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract checkIndivSavingResult(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Z
.end method

.method public abstract getIndivDataFromResponse(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)Ljava/lang/String;
.end method

.method public abstract notifyIndivFinished(Landroid/content/Context;)V
.end method
