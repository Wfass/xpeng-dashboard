.class Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$2;
.super Ljava/lang/Object;
.source "NewCameraTestModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->startPreviewDisplay(Landroid/view/SurfaceHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

.field final synthetic val$holder:Landroid/view/SurfaceHolder;


# direct methods
.method constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$2;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    iput-object p2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$2;->val$holder:Landroid/view/SurfaceHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$2;->this$0:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    invoke-static {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$100(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 94
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$200()Landroid/hardware/Camera;

    move-result-object v1

    if-nez v1, :cond_0

    .line 95
    const-string v1, "NewCameraTestModel"

    const-string v2, "Camera must be set when start preview"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 99
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$200()Landroid/hardware/Camera;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$2;->val$holder:Landroid/view/SurfaceHolder;

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 100
    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->access$200()Landroid/hardware/Camera;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .line 102
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 104
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 105
    return-void

    .line 104
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
