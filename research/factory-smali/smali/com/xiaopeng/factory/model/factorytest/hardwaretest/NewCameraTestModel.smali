.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;
.super Ljava/lang/Object;
.source "NewCameraTestModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$NewCameraSingle;
    }
.end annotation


# static fields
.field private static final CAMERA_FILE_NODE:Ljava/lang/String; = "/sys/ds90ub954a/channel"

.field private static final TAG:Ljava/lang/String; = "NewCameraTestModel"

.field private static mCamera:Landroid/hardware/Camera;

.field private static mCameraPreviewFps:I

.field private static mOrientation:I


# instance fields
.field private mSwitchCamera:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->mOrientation:I

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->mSwitchCamera:Ljava/lang/Object;

    .line 28
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$1;

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    .line 18
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->mSwitchCamera:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Landroid/hardware/Camera;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$202(Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Landroid/hardware/Camera;

    .line 18
    sput-object p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->mCamera:Landroid/hardware/Camera;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;Landroid/hardware/Camera;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;
    .param p1, "x1"    # Landroid/hardware/Camera;
    .param p2, "x2"    # I

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->initCameraPreview(Landroid/hardware/Camera;I)V

    return-void
.end method

.method private getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;
    .locals 5
    .param p1, "camera"    # Landroid/hardware/Camera;

    .line 111
    const-string v0, "NewCameraTestModel"

    const-string v1, "getCameraParameters"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    .line 114
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 118
    goto :goto_0

    .line 115
    :catch_0
    move-exception v1

    .line 116
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    const-string v2, "getCameraParameters"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initCameraPreview getParameters error, msg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;
    .locals 1

    .line 31
    invoke-static {}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$NewCameraSingle;->access$000()Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;

    move-result-object v0

    return-object v0
.end method

.method private initCameraPreview(Landroid/hardware/Camera;I)V
    .locals 6
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "cameraType"    # I

    .line 124
    const-string v0, "NewCameraTestModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initCameraPreview cameraType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-direct {p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->getCameraParameters(Landroid/hardware/Camera;)Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 126
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    if-nez v0, :cond_0

    .line 127
    return-void

    .line 130
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v1

    iget v1, v1, Landroid/hardware/Camera$Size;->width:I

    .line 131
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v2

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    .line 133
    .local v2, "height":I
    if-nez p2, :cond_1

    .line 134
    const/16 v1, 0x780

    .line 135
    const/16 v2, 0x438

    goto :goto_0

    .line 136
    :cond_1
    const/4 v3, 0x1

    if-ne v3, p2, :cond_2

    .line 137
    const/16 v1, 0x500

    .line 138
    const/16 v2, 0x2d0

    .line 141
    :cond_2
    :goto_0
    const-string v3, "initCameraPreview"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initCameraPreview width="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "; height="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 144
    const/16 v3, 0x100

    invoke-virtual {v0, v3}, Landroid/hardware/Camera$Parameters;->setPictureFormat(I)V

    .line 145
    invoke-virtual {p1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 146
    return-void
.end method

.method public static openCamera(I)V
    .locals 3
    .param p0, "cameraID"    # I

    .line 76
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 79
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->mCamera:Landroid/hardware/Camera;

    .line 80
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 83
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 84
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 85
    sget-object v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 86
    sget-object v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->mCamera:Landroid/hardware/Camera;

    sget v2, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->mOrientation:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 87
    return-void

    .line 81
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to open camera"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "camera already initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private switchCameraType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 50
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$1;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 72
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 73
    return-void
.end method


# virtual methods
.method public changeCameraTo360()V
    .locals 1

    .line 41
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->switchCameraType(I)V

    .line 42
    return-void
.end method

.method public changeCameraToBack()V
    .locals 1

    .line 46
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->switchCameraType(I)V

    .line 47
    return-void
.end method

.method public changeCameraToTop()V
    .locals 1

    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;->switchCameraType(I)V

    .line 37
    return-void
.end method

.method public declared-synchronized releaseCamera()V
    .locals 2

    monitor-enter p0

    .line 188
    :try_start_0
    const-string v0, "NewCameraTestModel"

    const-string v1, "releaseCamera"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$4;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 200
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    monitor-exit p0

    return-void

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;
    throw v0
.end method

.method public declared-synchronized resetCameraParameters(I)V
    .locals 3
    .param p1, "cameraType"    # I

    monitor-enter p0

    .line 149
    :try_start_0
    const-string v0, "NewCameraTestModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resetCameraParameters cameraType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$3;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 184
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    monitor-exit p0

    return-void

    .line 148
    .end local p1    # "cameraType":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;
    throw p1
.end method

.method public declared-synchronized startPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    monitor-enter p0

    .line 90
    :try_start_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$2;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel$2;-><init>(Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;Landroid/view/SurfaceHolder;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 106
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    monitor-exit p0

    return-void

    .line 89
    .end local p1    # "holder":Landroid/view/SurfaceHolder;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/factory/model/factorytest/hardwaretest/NewCameraTestModel;
    throw p1
.end method
