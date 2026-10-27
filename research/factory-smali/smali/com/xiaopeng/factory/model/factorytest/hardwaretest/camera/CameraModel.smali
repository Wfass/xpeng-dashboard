.class public Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;
.super Ljava/lang/Object;
.source "CameraModel.java"


# static fields
.field public static final PATH_PICTURE_DIR:Ljava/lang/String; = "Pictures/"

.field private static final PATH_RECORDER_DIR:Ljava/lang/String; = "VideoRecorderTest/"

.field public static final SUFFIX_PICTURE_FORMAT:Ljava/lang/String; = ".jpg"

.field private static final SUFFIX_VIDEO_MP4_FORMAT:Ljava/lang/String; = ".mp4"

.field private static final TAG:Ljava/lang/String; = "CameraModel"

.field private static sCameraModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;

.field private static sChipAddress1:I

.field private static sChipAddress2:I

.field private static sChipId1:Ljava/lang/String;

.field private static sChipId2:Ljava/lang/String;

.field private static sDataAddress1:I

.field private static sDataAddress2:I

.field private static sI2cBus:I


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCurrentState:I

.field private mMediaRecorder:Landroid/media/MediaRecorder;

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSwitchCamera:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 38
    const/16 v0, 0x8

    sput v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sI2cBus:I

    .line 39
    const/16 v0, 0x3d

    sput v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sChipAddress1:I

    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sDataAddress1:I

    .line 41
    const-string v1, "0x7a"

    sput-object v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sChipId1:Ljava/lang/String;

    .line 42
    const/16 v1, 0x30

    sput v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sChipAddress2:I

    .line 43
    sput v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sDataAddress2:I

    .line 44
    const-string v0, "0x60"

    sput-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sChipId2:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mSwitchCamera:Ljava/lang/Object;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCurrentState:I

    .line 47
    return-void
.end method

.method private getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .line 194
    const-string v0, "CameraModel"

    const-string v1, "getCameraParameters"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    const/4 v0, 0x0

    .line 197
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 200
    goto :goto_0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 201
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;
    .locals 2

    .line 50
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sCameraModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;

    if-nez v0, :cond_0

    .line 51
    const-string v0, "CameraModel"

    const-string v1, "create CameraModel Instance"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;-><init>()V

    sput-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sCameraModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;

    .line 54
    :cond_0
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sCameraModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;

    return-object v0
.end method

.method public static getNumberOfCameras()I
    .locals 1

    .line 78
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method private prepareMediaRecorder()Z
    .locals 9

    .line 156
    const/4 v0, 0x0

    .line 157
    .local v0, "ret":Z
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mSwitchCamera:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    const-string v2, "CameraModel"

    const-string v3, "prepareMediaRecorder"

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_0

    .line 161
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 162
    invoke-direct {p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v2

    .line 163
    .local v2, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    iget-object v3, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3}, Landroid/hardware/Camera;->unlock()V

    .line 164
    iget-object v3, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 165
    iget-object v3, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 166
    const-string v3, "CameraModel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "prepareMediaRecorder mCurrentState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCurrentState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    iget v3, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCurrentState:I

    const/4 v4, 0x5

    invoke-static {v3, v4}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v3

    .line 168
    .local v3, "ccp":Landroid/media/CamcorderProfile;
    iget-object v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v3}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 169
    const-string v4, "CameraModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareMediaRecorder width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", height:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    iget v7, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    iget-object v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5, v6}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 171
    iget-object v4, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v5}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 172
    invoke-static {}, Lcom/xiaopeng/factory/utils/FileUtil;->getSDPath()Ljava/lang/String;

    move-result-object v4

    .line 173
    .local v4, "path":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "VideoRecorderTest/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    .local v5, "dir":Ljava/lang/String;
    invoke-static {v5}, Lcom/xiaopeng/factory/utils/FileUtil;->mkDir(Ljava/lang/String;)Z

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/factory/utils/TimeUtil;->getDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ".mp4"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 178
    const-string v6, "CameraModel"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "prepareMediaRecorder path = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v6, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6, v4}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 180
    iget-object v6, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v6}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    const/4 v0, 0x1

    .line 187
    .end local v2    # "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v3    # "ccp":Landroid/media/CamcorderProfile;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "dir":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 184
    :catch_0
    move-exception v2

    .line 185
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 186
    const/4 v0, 0x0

    .line 188
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    const-string v1, "CameraModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareMediaRecorder ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    return v0

    .line 188
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method


# virtual methods
.method public closeCamera()V
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mSwitchCamera:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 119
    const-string v1, "CameraModel"

    const-string v2, "stopPreview before"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 121
    const-string v1, "CameraModel"

    const-string v2, "stopPreview after"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 123
    const-string v1, "CameraModel"

    const-string v2, "release after"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 124
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    .line 125
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCurrentState:I

    .line 127
    :cond_0
    monitor-exit v0

    .line 128
    return-void

    .line 127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getChipId1()Ljava/lang/String;
    .locals 1

    .line 66
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sChipId1:Ljava/lang/String;

    return-object v0
.end method

.method public getChipId2()Ljava/lang/String;
    .locals 1

    .line 70
    sget-object v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sChipId2:Ljava/lang/String;

    return-object v0
.end method

.method public getI2cCmd1()Ljava/lang/String;
    .locals 2

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sI2cBus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sChipAddress1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sDataAddress1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getI2cCmd2()Ljava/lang/String;
    .locals 2

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sI2cBus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sChipAddress2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->sDataAddress2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isRecording()Z
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 151
    .local v0, "isRecording":Z
    :goto_0
    const-string v1, "CameraModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRecording = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    return v0
.end method

.method public openCamera(I)V
    .locals 4
    .param p1, "state"    # I

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mSwitchCamera:Ljava/lang/Object;

    monitor-enter v0

    .line 83
    :try_start_0
    const-string v1, "CameraModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    iput p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCurrentState:I

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 86
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    .line 88
    :cond_0
    monitor-exit v0

    .line 89
    return-void

    .line 88
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openPreView()V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mSwitchCamera:Ljava/lang/Object;

    monitor-enter v0

    .line 98
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 100
    const-string v1, "CameraModel"

    const-string v2, "setPreviewSurface before"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    .line 102
    const-string v1, "CameraModel"

    const-string v2, "setPreviewSurface after"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 104
    const-string v1, "CameraModel"

    const-string v2, "startPreview after"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_0
    goto :goto_0

    .line 110
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 110
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    monitor-exit v0

    .line 111
    return-void

    .line 110
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public releaseMediaRecorder()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mSwitchCamera:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    const-string v1, "CameraModel"

    const-string v2, "releaseMediaRecorder"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 209
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 210
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 211
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    .line 213
    :cond_0
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 75
    return-void
.end method

.method public startRecording()Z
    .locals 2

    .line 131
    const-string v0, "CameraModel"

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    invoke-direct {p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->prepareMediaRecorder()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 134
    const/4 v0, 0x1

    return v0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->releaseMediaRecorder()V

    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public stopRecording()V
    .locals 2

    .line 142
    const-string v0, "CameraModel"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mMediaRecorder:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 146
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->releaseMediaRecorder()V

    .line 147
    return-void
.end method

.method public takePicture(Landroid/hardware/Camera$PictureCallback;)V
    .locals 3
    .param p1, "callback"    # Landroid/hardware/Camera$PictureCallback;

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mSwitchCamera:Ljava/lang/Object;

    monitor-enter v0

    .line 218
    :try_start_0
    const-string v1, "CameraModel"

    const-string v2, "takePicture"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 220
    iget-object v1, p0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/camera/CameraModel;->mCamera:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p1}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 222
    :cond_0
    monitor-exit v0

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
