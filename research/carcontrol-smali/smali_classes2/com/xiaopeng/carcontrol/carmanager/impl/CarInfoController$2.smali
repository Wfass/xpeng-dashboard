.class Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;
.super Ljava/lang/Object;
.source "CarInfoController.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->requestCarLicensePlateImpl()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 175
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onSuccess$0$CarInfoController$2(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "body"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->access$300(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;Ljava/lang/String;)V

    return-void
.end method

.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iResponse"
        }
    .end annotation

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCarLicensePlateImpl onFailure: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->getException()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CarInfoController"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 195
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->access$202(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;J)J

    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iResponse"
        }
    .end annotation

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->access$202(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;J)J

    const/4 v0, 0x0

    const-string v1, "CarInfoController"

    if-nez p1, :cond_0

    const-string p1, "requestCarLicensePlateImpl response null"

    .line 180
    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 183
    :cond_0
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v2

    .line 184
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestCarLicensePlateImpl success, response:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 185
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_1

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->access$202(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;J)J

    .line 187
    invoke-static {}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->getInstance()Lcom/xiaopeng/carcontrol/model/FunctionModel;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;->this$0:Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;->access$200(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/model/FunctionModel;->setRequestCarPlateTs(J)V

    .line 188
    new-instance p1, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CarInfoController$2$6Z5_2cDa4YfazxBaVCvovhIh2ak;

    invoke-direct {p1, p0, v2}, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$CarInfoController$2$6Z5_2cDa4YfazxBaVCvovhIh2ak;-><init>(Lcom/xiaopeng/carcontrol/carmanager/impl/CarInfoController$2;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
