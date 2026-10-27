.class Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$4;
.super Ljava/lang/Object;
.source "NewCameraTestModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->releaseCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    .line 189
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$4;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$4;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$100(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 193
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$200()Landroid/hardware/Camera;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 194
    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$200()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 195
    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$200()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 196
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$202(Landroid/hardware/Camera;)Landroid/hardware/Camera;

    .line 198
    :cond_0
    monitor-exit v0

    .line 199
    return-void

    .line 198
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
