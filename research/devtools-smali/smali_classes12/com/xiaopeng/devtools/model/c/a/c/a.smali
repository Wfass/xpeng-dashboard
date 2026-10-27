.class public Lcom/xiaopeng/devtools/model/c/a/c/a;
.super Ljava/lang/Object;
.source "CameraModel.java"

# interfaces
.implements Landroid/hardware/Camera$PictureCallback;


# static fields
.field private static sS:Lcom/xiaopeng/devtools/model/c/a/c/a;


# instance fields
.field private sT:Ljava/lang/Object;

.field private sU:Landroid/media/MediaRecorder;

.field private sV:Landroid/hardware/Camera;

.field private sW:Landroid/view/SurfaceHolder;

.field private sX:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sT:Ljava/lang/Object;

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sX:I

    .line 39
    return-void
.end method

.method private getCameraParameters()Landroid/hardware/Camera$Parameters;
    .locals 2

    .line 169
    const-string v0, "CameraModel"

    const-string v1, "getCameraParameters"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    nop

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    goto :goto_0

    .line 173
    :catch_0
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 176
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getNumberOfCameras()I
    .locals 1

    .line 54
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public static gn()Lcom/xiaopeng/devtools/model/c/a/c/a;
    .locals 2

    .line 42
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sS:Lcom/xiaopeng/devtools/model/c/a/c/a;

    if-nez v0, :cond_0

    .line 43
    const-string v0, "CameraModel"

    const-string v1, "create CameraModel Instance"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/c/a;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/c/a/c/a;-><init>()V

    sput-object v0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sS:Lcom/xiaopeng/devtools/model/c/a/c/a;

    .line 46
    :cond_0
    sget-object v0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sS:Lcom/xiaopeng/devtools/model/c/a/c/a;

    return-object v0
.end method

.method private gs()Z
    .locals 7

    .line 132
    nop

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sT:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    const-string v1, "CameraModel"

    const-string v2, "prepareMediaRecorder"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    const/4 v1, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 137
    new-instance v2, Landroid/media/MediaRecorder;

    invoke-direct {v2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    .line 138
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/c/a/c/a;->getCameraParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v2

    .line 139
    iget-object v4, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    invoke-virtual {v4}, Landroid/hardware/Camera;->unlock()V

    .line 140
    iget-object v4, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    iget-object v5, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    invoke-virtual {v4, v5}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    .line 141
    iget-object v4, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v3}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    .line 142
    const-string v4, "CameraModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareMediaRecorder mCurrentState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget v4, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sX:I

    const/4 v5, 0x5

    invoke-static {v4, v5}, Landroid/media/CamcorderProfile;->get(II)Landroid/media/CamcorderProfile;

    move-result-object v4

    .line 144
    iget-object v5, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v5, v4}, Landroid/media/MediaRecorder;->setProfile(Landroid/media/CamcorderProfile;)V

    .line 145
    const-string v4, "CameraModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareMediaRecorder width:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget v6, v6, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", height:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Camera$Size;

    iget v6, v6, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 146
    iget-object v4, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    iget v5, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v5, v2}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    .line 147
    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    iget-object v4, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sW:Landroid/view/SurfaceHolder;

    invoke-interface {v4}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    .line 148
    invoke-static {}, Lcom/xiaopeng/devtools/utils/g;->kX()Ljava/lang/String;

    move-result-object v2

    .line 149
    if-eqz v2, :cond_0

    .line 150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "VideoRecorderTest/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 151
    invoke-static {v2}, Lcom/xiaopeng/devtools/utils/g;->aW(Ljava/lang/String;)Z

    .line 152
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/devtools/utils/t;->eH()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".mp4"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 153
    const-string v4, "CameraModel"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "prepareMediaRecorder path = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v4, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v4, v2}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    nop

    .line 162
    move v1, v3

    :cond_0
    goto :goto_0

    .line 159
    :catch_0
    move-exception v2

    .line 160
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 161
    nop

    .line 163
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 164
    const-string v0, "CameraModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "prepareMediaRecorder ret:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 165
    return v1

    .line 163
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public static synthetic lambda$ku74awA3haLmrJRCSQsRwdo8_G8(Lcom/xiaopeng/devtools/model/c/a/c/a;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/c/a/c/a;->v([B)V

    return-void
.end method

.method private u([B)V
    .locals 4

    .line 207
    invoke-static {}, Lcom/xiaopeng/devtools/utils/g;->kX()Ljava/lang/String;

    move-result-object v0

    .line 208
    if-eqz v0, :cond_0

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Pictures/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "yyyy-MM-dd HH.mm.ss"

    invoke-static {v0}, Lcom/xiaopeng/devtools/utils/t;->cN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".jpg"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    const-string v1, "CameraModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "savePicToSd path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 212
    invoke-static {v0, p1}, Lcom/xiaopeng/devtools/utils/g;->c(Ljava/lang/String;[B)Z

    .line 214
    :cond_0
    return-void
.end method

.method private synthetic v([B)V
    .locals 0

    .line 203
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/c/a/c/a;->u([B)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sW:Landroid/view/SurfaceHolder;

    .line 51
    return-void
.end method

.method public cd(I)V
    .locals 4

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sT:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    const-string v1, "CameraModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "openCamera state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput p1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sX:I

    .line 61
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 62
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    .line 64
    :cond_0
    monitor-exit v0

    .line 65
    return-void

    .line 64
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public go()V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sT:Ljava/lang/Object;

    monitor-enter v0

    .line 74
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sW:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "CameraModel"

    const-string v2, "setPreviewSurface before"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sW:Landroid/view/SurfaceHolder;

    invoke-interface {v2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setPreviewSurface(Landroid/view/Surface;)V

    .line 78
    const-string v1, "CameraModel"

    const-string v2, "setPreviewSurface after"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->startPreview()V

    .line 80
    const-string v1, "CameraModel"

    const-string v2, "startPreview after"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :cond_0
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 83
    :catch_0
    move-exception v1

    .line 84
    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 86
    :goto_0
    monitor-exit v0

    .line 87
    return-void

    .line 86
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public gp()V
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sT:Ljava/lang/Object;

    monitor-enter v0

    .line 94
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 95
    const-string v1, "CameraModel"

    const-string v2, "stopPreview before"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->stopPreview()V

    .line 97
    const-string v1, "CameraModel"

    const-string v2, "stopPreview after"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->release()V

    .line 99
    const-string v1, "CameraModel"

    const-string v2, "release after"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    .line 101
    const/4 v1, -0x1

    iput v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sX:I

    .line 103
    :cond_0
    monitor-exit v0

    .line 104
    return-void

    .line 103
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public gq()Z
    .locals 2

    .line 107
    const-string v0, "CameraModel"

    const-string v1, "startRecording"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/xiaopeng/devtools/model/c/a/c/a;->gs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->start()V

    .line 110
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/c/a/c/a;->gt()V

    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method public gr()Z
    .locals 4

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 127
    :goto_0
    const-string v1, "CameraModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRecording = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    return v0
.end method

.method public gt()V
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sT:Ljava/lang/Object;

    monitor-enter v0

    .line 181
    :try_start_0
    const-string v1, "CameraModel"

    const-string v2, "releaseMediaRecorder"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_0

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->reset()V

    .line 184
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 185
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    .line 186
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->lock()V

    .line 188
    :cond_0
    monitor-exit v0

    .line 189
    return-void

    .line 188
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public gu()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sT:Ljava/lang/Object;

    monitor-enter v0

    .line 193
    :try_start_0
    const-string v1, "CameraModel"

    const-string v2, "takePicture"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 195
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sV:Landroid/hardware/Camera;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, p0}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 197
    :cond_0
    monitor-exit v0

    .line 198
    return-void

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPictureTaken([BLandroid/hardware/Camera;)V
    .locals 1

    .line 202
    const-string p2, "CameraModel"

    const-string v0, "onPictureTaken"

    invoke-static {p2, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 203
    new-instance p2, Lcom/xiaopeng/devtools/model/c/a/c/-$$Lambda$a$ku74awA3haLmrJRCSQsRwdo8_G8;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/devtools/model/c/a/c/-$$Lambda$a$ku74awA3haLmrJRCSQsRwdo8_G8;-><init>(Lcom/xiaopeng/devtools/model/c/a/c/a;[B)V

    invoke-static {p2}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 204
    return-void
.end method

.method public stopRecording()V
    .locals 2

    .line 118
    const-string v0, "CameraModel"

    const-string v1, "stopRecording"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/c/a;->sU:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/model/c/a/c/a;->gt()V

    .line 123
    return-void
.end method
