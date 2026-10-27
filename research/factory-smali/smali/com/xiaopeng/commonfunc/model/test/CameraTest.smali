.class public Lcom/xiaopeng/commonfunc/model/test/CameraTest;
.super Ljava/lang/Object;
.source "CameraTest.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field public mCameraIdList:[Ljava/lang/String;

.field mCm:Landroid/hardware/camera2/CameraManager;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "CameraTest"

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CameraTest;->TAG:Ljava/lang/String;

    .line 18
    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/CameraManager;

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CameraTest;->mCm:Landroid/hardware/camera2/CameraManager;

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CameraTest;->mCm:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CameraTest;->mCameraIdList:[Ljava/lang/String;
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "e":Landroid/hardware/camera2/CameraAccessException;
    iget-object v1, p0, Lcom/xiaopeng/commonfunc/model/test/CameraTest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get camera id list failed!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .end local v0    # "e":Landroid/hardware/camera2/CameraAccessException;
    :goto_0
    return-void
.end method


# virtual methods
.method public getCameraIdList()[Ljava/lang/String;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/commonfunc/model/test/CameraTest;->mCameraIdList:[Ljava/lang/String;

    return-object v0
.end method
