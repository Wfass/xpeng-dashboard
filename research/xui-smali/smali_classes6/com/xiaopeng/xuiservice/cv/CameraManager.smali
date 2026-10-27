.class public Lcom/xiaopeng/xuiservice/cv/CameraManager;
.super Ljava/lang/Object;
.source "CameraManager.java"

# interfaces
.implements Landroid/hardware/Camera$PreviewCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/cv/CameraManager$PreviewEventListener;
    }
.end annotation


# static fields
.field private static final IMAGE_CROP_SIZE:I = 0x12c

.field private static final MAGIC_TEXTURE_ID:I = 0xa

.field private static final PREVIEW_FRAME_COUNT:I = 0x3

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/xiaopeng/xuiservice/cv/CameraManager;


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private cameraInfo:Landroid/hardware/Camera$CameraInfo;

.field private cameraPosition:I

.field private initialized:Z

.field private mContext:Landroid/content/Context;

.field private mListener:Lcom/xiaopeng/xuiservice/cv/CameraManager$PreviewEventListener;

.field private mPreviewCount:I

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private numCameras:I

.field private parameters:Landroid/hardware/Camera$Parameters;

.field private previewing:Z

.field private requestedCameraId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-class v0, Lcom/xiaopeng/xuiservice/cv/CameraManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->requestedCameraId:I

    .line 29
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->numCameras:I

    .line 30
    new-instance v1, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v1}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    .line 40
    iput v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->mPreviewCount:I

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/cv/CameraManager;
    .locals 2

    .line 55
    sget-object v0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->sInstance:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    if-nez v0, :cond_1

    .line 56
    const-class v0, Lcom/xiaopeng/xuiservice/cv/CameraManager;

    monitor-enter v0

    .line 57
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/cv/CameraManager;->sInstance:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    if-nez v1, :cond_0

    .line 58
    new-instance v1, Lcom/xiaopeng/xuiservice/cv/CameraManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/cv/CameraManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/cv/CameraManager;->sInstance:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    .line 60
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 62
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->sInstance:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    return-object v0
.end method

.method private open(I)Landroid/hardware/Camera;
    .locals 6
    .param p1, "cameraId"    # I

    .line 66
    iget v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->numCameras:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    .line 67
    sget-object v0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->TAG:Ljava/lang/String;

    const-string v2, "No cameras!"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    return-object v1

    .line 71
    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    if-ltz p1, :cond_1

    iget v3, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->numCameras:I

    if-ge p1, v3, :cond_1

    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v0

    .line 73
    .local v3, "explicitRequest":Z
    :goto_0
    const/4 v4, 0x0

    .line 74
    .local v4, "index":I
    if-nez v3, :cond_4

    .line 75
    :goto_1
    iget v5, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->numCameras:I

    if-ge v4, v5, :cond_4

    .line 76
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    invoke-static {v4, v5}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 77
    move p1, v4

    .line 78
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v5, :cond_2

    .line 79
    iput v2, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->cameraPosition:I

    .line 80
    goto :goto_2

    .line 82
    :cond_2
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->cameraInfo:Landroid/hardware/Camera$CameraInfo;

    iget v5, v5, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v2, :cond_3

    .line 83
    iput v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->cameraPosition:I

    .line 84
    goto :goto_1

    .line 87
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 92
    :cond_4
    :goto_2
    iget v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->numCameras:I

    if-ge v4, v0, :cond_5

    .line 93
    sget-object v0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Opeing camera #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-static {p1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    .local v1, "camera":Landroid/hardware/Camera;
    goto :goto_3

    .line 96
    .end local v1    # "camera":Landroid/hardware/Camera;
    :cond_5
    sget-object v0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Requested camera does not exist:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    nop

    .restart local v1    # "camera":Landroid/hardware/Camera;
    :goto_3
    move-object v0, v1

    .line 100
    .end local v1    # "camera":Landroid/hardware/Camera;
    .local v0, "camera":Landroid/hardware/Camera;
    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 102
    return-object v0
.end method

.method private reSize([B)Landroid/graphics/Bitmap;
    .locals 9
    .param p1, "data"    # [B

    .line 219
    sget-object v0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "myJpegCallback:onPictureTaken..."

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 221
    .local v0, "cutMap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 222
    .local v1, "matrix":Landroid/graphics/Matrix;
    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 223
    nop

    .line 224
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 223
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move-object v7, v1

    invoke-static/range {v2 .. v8}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 227
    .local v2, "rotaBitmap":Landroid/graphics/Bitmap;
    const/16 v3, 0x21c

    const/16 v4, 0x320

    const/4 v5, 0x1

    invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 228
    .local v3, "sizeBitmap":Landroid/graphics/Bitmap;
    const/16 v4, 0x12c

    const/16 v5, 0x64

    const/16 v6, 0xc8

    invoke-static {v3, v5, v6, v4, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 229
    .local v4, "rectBitmap":Landroid/graphics/Bitmap;
    return-object v4
.end method


# virtual methods
.method public declared-synchronized closeCamera()V
    .locals 2

    monitor-enter p0

    .line 173
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "closeCamera"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 176
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    .line 177
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->mListener:Lcom/xiaopeng/xuiservice/cv/CameraManager$PreviewEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    :cond_0
    monitor-exit p0

    return-void

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/cv/CameraManager;
    throw v0
.end method

.method public declared-synchronized isOpen()Z
    .locals 1

    monitor-enter p0

    .line 169
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/cv/CameraManager;
    throw v0
.end method

.method public onPreviewFrame([BLandroid/hardware/Camera;)V
    .locals 1
    .param p1, "bytes"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    .line 161
    iget v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->mPreviewCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->mPreviewCount:I

    rem-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    .line 162
    return-void

    .line 164
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->mPreviewCount:I

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->mListener:Lcom/xiaopeng/xuiservice/cv/CameraManager$PreviewEventListener;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuiservice/cv/CameraManager$PreviewEventListener;->onPreviewCallBack([BLandroid/hardware/Camera;)V

    .line 166
    return-void
.end method

.method public openCamera()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    .line 132
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-nez v0, :cond_1

    .line 133
    iget v1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->requestedCameraId:I

    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/cv/CameraManager;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_0

    .line 137
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    goto :goto_0

    .line 135
    :cond_0
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1}, Ljava/io/IOException;-><init>()V

    throw v1

    .line 140
    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->initialized:Z

    if-nez v1, :cond_3

    .line 141
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->initialized:Z

    .line 142
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->parameters:Landroid/hardware/Camera$Parameters;

    .line 143
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 145
    .local v1, "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/16 v2, 0x320

    .line 146
    .local v2, "w":I
    const/16 v3, 0x258

    .line 147
    .local v3, "h":I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 148
    .local v5, "size":Landroid/hardware/Camera$Size;
    const-string v6, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "previewSizes width:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v6, "TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "previewSizes height:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v6, v2

    const/16 v7, 0xc8

    if-gt v6, v7, :cond_2

    iget v6, v5, Landroid/hardware/Camera$Size;->width:I

    if-lt v6, v2, :cond_2

    .line 151
    iget v2, v5, Landroid/hardware/Camera$Size;->width:I

    .line 152
    iget v3, v5, Landroid/hardware/Camera$Size;->height:I

    .line 153
    goto :goto_2

    .line 155
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    goto :goto_1

    .line 157
    .end local v1    # "previewSizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v2    # "w":I
    .end local v3    # "h":I
    :cond_3
    :goto_2
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuiservice/cv/CameraManager$PreviewEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/cv/CameraManager$PreviewEventListener;

    monitor-enter p0

    .line 48
    if-eqz p1, :cond_0

    .line 51
    :try_start_0
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->mListener:Lcom/xiaopeng/xuiservice/cv/CameraManager$PreviewEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    monitor-exit p0

    return-void

    .line 49
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 47
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/cv/CameraManager$PreviewEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/cv/CameraManager;
    throw p1
.end method

.method public setCameraView(I)V
    .locals 2
    .param p1, "type"    # I

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getCmdControlParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 108
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1}, Landroid/hardware/Camera$Parameters;->setAvmDisplayMode(I)V

    .line 109
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAvmOverlayWorkSt(I)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setAvmTransparentChassisWorkSt(I)V

    .line 111
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setCmdControlParameters(Landroid/hardware/Camera$Parameters;)V

    .line 113
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    return-void
.end method

.method public setPreviewDisplay()V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    goto :goto_0

    .line 123
    :catch_0
    move-exception v0

    .line 124
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/xiaopeng/xuiservice/cv/CameraManager;->TAG:Ljava/lang/String;

    const-string v2, "setPreviewDisplay error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    return-void
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 0
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 117
    return-void
.end method

.method public setSurfaceTexture()V
    .locals 3

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Landroid/graphics/SurfaceTexture;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 186
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    goto :goto_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaopeng/xuiservice/cv/CameraManager;->TAG:Ljava/lang/String;

    const-string v2, "setPreviewTexture error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public declared-synchronized startPreview()V
    .locals 2

    monitor-enter p0

    .line 193
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "startPreview"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    .line 195
    .local v0, "theCamera":Landroid/hardware/Camera;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->previewing:Z

    if-nez v1, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    :cond_0
    monitor-exit p0

    return-void

    .line 192
    .end local v0    # "theCamera":Landroid/hardware/Camera;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/cv/CameraManager;
    throw v0
.end method

.method public declared-synchronized stopPreview()V
    .locals 2

    monitor-enter p0

    .line 202
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->TAG:Ljava/lang/String;

    const-string v1, "stopPreview"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->previewing:Z

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->previewing:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 208
    :cond_0
    monitor-exit p0

    return-void

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/cv/CameraManager;
    throw v0
.end method

.method public declared-synchronized takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .param p1, "shutter"    # Landroid/hardware/Camera$ShutterCallback;
    .param p2, "raw"    # Landroid/hardware/Camera$PictureCallback;
    .param p3, "jpeg"    # Landroid/hardware/Camera$PictureCallback;

    monitor-enter p0

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/CameraManager;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    monitor-exit p0

    return-void

    .line 214
    .end local p1    # "shutter":Landroid/hardware/Camera$ShutterCallback;
    .end local p2    # "raw":Landroid/hardware/Camera$PictureCallback;
    .end local p3    # "jpeg":Landroid/hardware/Camera$PictureCallback;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/cv/CameraManager;
    throw p1
.end method
