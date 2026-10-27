.class Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$3;
.super Ljava/lang/Object;
.source "NewCameraTestModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->resetCameraParameters(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

.field final synthetic val$cameraType:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$3;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    iput p2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$3;->val$cameraType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$3;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$100(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 154
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$200()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 155
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$3;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$200()Landroid/hardware/Camera;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$300(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 156
    .local v1, "parameters":Landroid/hardware/Camera$Parameters;
    if-eqz v1, :cond_3

    .line 157
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->width:I

    .line 158
    .local v2, "width":I
    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v3

    iget v3, v3, Landroid/hardware/Camera$Size;->height:I

    .line 160
    .local v3, "height":I
    const/4 v4, 0x0

    .line 161
    .local v4, "targetWidth":I
    const/4 v5, 0x0

    .line 162
    .local v5, "targetHeight":I
    iget v6, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$3;->val$cameraType:I

    if-nez v6, :cond_0

    .line 163
    const/16 v4, 0x780

    .line 164
    const/16 v5, 0x438

    goto :goto_0

    .line 165
    :cond_0
    const/4 v6, 0x1

    iget v7, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$3;->val$cameraType:I

    if-ne v6, v7, :cond_1

    .line 166
    const/16 v4, 0x500

    .line 167
    const/16 v5, 0x2d0

    .line 170
    :cond_1
    :goto_0
    if-ne v2, v4, :cond_2

    if-ne v3, v5, :cond_2

    .line 171
    const-string v6, "resetCameraParameters"

    const-string v7, "initCameraPreview cancel for same size."

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 172
    monitor-exit v0

    return-void

    .line 175
    :cond_2
    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$200()Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera;->stopPreview()V

    .line 176
    iget-object v6, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$3;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$200()Landroid/hardware/Camera;

    move-result-object v7

    iget v8, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$3;->val$cameraType:I

    invoke-static {v6, v7, v8}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$400(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;Landroid/hardware/Camera;I)V

    .line 177
    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$200()Landroid/hardware/Camera;

    move-result-object v6

    invoke-virtual {v6}, Landroid/hardware/Camera;->startPreview()V

    .line 179
    .end local v1    # "parameters":Landroid/hardware/Camera$Parameters;
    .end local v2    # "width":I
    .end local v3    # "height":I
    .end local v4    # "targetWidth":I
    .end local v5    # "targetHeight":I
    :cond_3
    goto :goto_1

    .line 180
    :cond_4
    const-string v1, "resetCameraParameters"

    const-string v2, "camera is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    :goto_1
    monitor-exit v0

    .line 183
    return-void

    .line 182
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
