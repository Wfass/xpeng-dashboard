.class public final synthetic Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$1$BKZjacQqtwAOwirVCKqFZQF48aM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/factory/model/security/PsuKeyModel$1;

.field private final synthetic f$1:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/factory/model/security/PsuKeyModel$1;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$1$BKZjacQqtwAOwirVCKqFZQF48aM;->f$0:Lcom/xiaopeng/factory/model/security/PsuKeyModel$1;

    iput-object p2, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$1$BKZjacQqtwAOwirVCKqFZQF48aM;->f$1:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$1$BKZjacQqtwAOwirVCKqFZQF48aM;->f$0:Lcom/xiaopeng/factory/model/security/PsuKeyModel$1;

    iget-object v1, p0, Lcom/xiaopeng/factory/model/security/-$$Lambda$PsuKeyModel$1$BKZjacQqtwAOwirVCKqFZQF48aM;->f$1:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/security/PsuKeyModel$1;->lambda$onSuccess$0(Lcom/xiaopeng/factory/model/security/PsuKeyModel$1;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V

    return-void
.end method
