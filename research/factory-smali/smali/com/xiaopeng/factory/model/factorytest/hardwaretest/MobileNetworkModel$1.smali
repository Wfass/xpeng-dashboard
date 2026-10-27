.class Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$1;
.super Ljava/lang/Object;
.source "MobileNetworkModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->lambda$getConnectInfo$0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    .line 165
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$600(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 2
    .param p1, "iResponse"    # Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    .line 168
    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v0

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    invoke-interface {p1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->body()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$600(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;Ljava/lang/String;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel$1;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;->access$600(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/MobileNetworkModel;Ljava/lang/String;)V

    .line 173
    :goto_0
    return-void
.end method
