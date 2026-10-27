.class Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel$2;
.super Ljava/lang/Object;
.source "HWAndSWInfoModel.java"

# interfaces
.implements Lcom/xiaopeng/lib/http/ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel;->generateCarCodeBitmap(I)V
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
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel;

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel$2;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel;

    iput p2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel$2;->val$width:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onError(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel$2;->onError(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3
    .param p1, "err"    # Ljava/lang/String;

    .line 137
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/factory/bean/event/HWAndSWInfoEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/xiaopeng/factory/bean/event/HWAndSWInfoEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 138
    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 129
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel$2;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 8
    .param p1, "data"    # Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;

    iget-object v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel$2;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel;

    iget v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel$2;->val$width:I

    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel$2;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel;

    invoke-static {v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel;->access$100(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel;)Landroid/os/Handler;

    move-result-object v6

    const/4 v3, 0x3

    move-object v1, v7

    move-object v5, p1

    invoke-direct/range {v1 .. v6}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel$GenerateRunnable;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel;IILjava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 133
    return-void
.end method
