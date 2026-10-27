.class public Lcom/xiaopeng/factory/utils/CameraUtils;
.super Ljava/lang/Object;
.source "CameraUtils.java"


# static fields
.field public static final CAMERA_360_OR_BACK:I = 0x1

.field public static final CAMERA_DRIVING_RECORDER:I = 0x2

.field public static final CAMERA_STOP:I = -0x1

.field public static final CAMERA_TOP:I = 0x0

.field public static final DEFAULT_HEIGHT:I = 0x2d0

.field public static final DEFAULT_WIDTH:I = 0x500

.field public static final DESIRED_PREVIEW_FPS:I = 0x19

.field public static final DRIVING_RECORDER_STOP:I = -0x2

.field public static final HIGH_HEIGHT:I = 0x438

.field public static final HIGH_WIDTH:I = 0x780

.field private static final TAG:Ljava/lang/String; = "CameraUtils"

.field private static mCamera:Landroid/hardware/Camera;

.field private static mCameraID:I

.field private static mCameraPreviewFps:I

.field private static mOrientation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    const/4 v0, 0x1

    sput v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCameraID:I

    .line 38
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mOrientation:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateCameraPreviewOrientation(Landroid/app/Activity;)I
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .line 336
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 337
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    sget v1, Lcom/xiaopeng/factory/utils/CameraUtils;->mCameraID:I

    invoke-static {v1, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 338
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 339
    invoke-virtual {v1}, Landroid/view/Display;->getRotation()I

    move-result v1

    .line 340
    .local v1, "rotation":I
    const/4 v2, 0x0

    .line 341
    .local v2, "degrees":I
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 352
    :pswitch_0
    const/16 v2, 0x10e

    goto :goto_0

    .line 349
    :pswitch_1
    const/16 v2, 0xb4

    .line 350
    goto :goto_0

    .line 346
    :pswitch_2
    const/16 v2, 0x5a

    .line 347
    goto :goto_0

    .line 343
    :pswitch_3
    const/4 v2, 0x0

    .line 344
    nop

    .line 357
    :goto_0
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 358
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    add-int/2addr v3, v2

    rem-int/lit16 v3, v3, 0x168

    .line 359
    .local v3, "result":I
    rsub-int v4, v3, 0x168

    rem-int/lit16 v4, v4, 0x168

    .end local v3    # "result":I
    .local v4, "result":I
    goto :goto_1

    .line 361
    .end local v4    # "result":I
    :cond_0
    iget v3, v0, Landroid/hardware/Camera$CameraInfo;->orientation:I

    sub-int/2addr v3, v2

    add-int/lit16 v3, v3, 0x168

    rem-int/lit16 v4, v3, 0x168

    .restart local v4    # "result":I
    :goto_1
    move v3, v4

    .line 363
    .end local v4    # "result":I
    .restart local v3    # "result":I
    sput v3, Lcom/xiaopeng/factory/utils/CameraUtils;->mOrientation:I

    .line 364
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static calculatePerfectSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 6
    .param p1, "expectWidth"    # I
    .param p2, "expectHeight"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .line 243
    .local p0, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-static {p0}, Lcom/xiaopeng/factory/utils/CameraUtils;->sortList(Ljava/util/List;)V

    .line 244
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/Camera$Size;

    .line 245
    .local v0, "result":Landroid/hardware/Camera$Size;
    const/4 v1, 0x0

    .line 247
    .local v1, "widthOrHeight":Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/Camera$Size;

    .line 249
    .local v3, "size":Landroid/hardware/Camera$Size;
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v4, p1, :cond_0

    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    if-ne v4, p2, :cond_0

    .line 250
    move-object v0, v3

    .line 251
    goto :goto_2

    .line 254
    :cond_0
    iget v4, v3, Landroid/hardware/Camera$Size;->width:I

    if-ne v4, p1, :cond_1

    .line 255
    const/4 v1, 0x1

    .line 256
    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v4, p2

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v5, p2

    .line 257
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_3

    .line 258
    move-object v0, v3

    goto :goto_1

    .line 262
    :cond_1
    iget v4, v3, Landroid/hardware/Camera$Size;->height:I

    if-ne v4, p2, :cond_2

    .line 263
    const/4 v1, 0x1

    .line 264
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v5, p1

    .line 265
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_3

    .line 266
    move-object v0, v3

    goto :goto_1

    .line 270
    :cond_2
    if-nez v1, :cond_3

    .line 271
    iget v4, v0, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v4, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v3, Landroid/hardware/Camera$Size;->width:I

    sub-int/2addr v5, p1

    .line 272
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_3

    iget v4, v0, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v4, p2

    .line 273
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, v3, Landroid/hardware/Camera$Size;->height:I

    sub-int/2addr v5, p2

    .line 274
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-le v4, v5, :cond_3

    .line 275
    move-object v0, v3

    .line 278
    .end local v3    # "size":Landroid/hardware/Camera$Size;
    :cond_3
    :goto_1
    goto :goto_0

    .line 279
    :cond_4
    :goto_2
    return-object v0
.end method

.method public static chooseFixedPreviewFps(Landroid/hardware/Camera$Parameters;I)I
    .locals 7
    .param p0, "parameters"    # Landroid/hardware/Camera$Parameters;
    .param p1, "expectedThoudandFps"    # I

    .line 309
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 310
    .local v0, "supportedFps":Ljava/util/List;, "Ljava/util/List<[I>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 311
    .local v2, "entry":[I
    aget v5, v2, v4

    aget v6, v2, v3

    if-ne v5, v6, :cond_0

    aget v5, v2, v4

    if-ne v5, p1, :cond_0

    .line 312
    aget v1, v2, v4

    aget v3, v2, v3

    invoke-virtual {p0, v1, v3}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 313
    aget v1, v2, v4

    return v1

    .line 315
    .end local v2    # "entry":[I
    :cond_0
    goto :goto_0

    .line 316
    :cond_1
    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 318
    .local v2, "temp":[I
    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->getPreviewFpsRange([I)V

    .line 319
    aget v5, v2, v4

    aget v6, v2, v3

    if-ne v5, v6, :cond_2

    .line 320
    aget v1, v2, v4

    .local v1, "guess":I
    goto :goto_1

    .line 322
    .end local v1    # "guess":I
    :cond_2
    aget v3, v2, v3

    div-int/lit8 v1, v3, 0x2

    .line 324
    .restart local v1    # "guess":I
    :goto_1
    return v1
.end method

.method public static getCameraID()I
    .locals 1

    .line 374
    sget v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCameraID:I

    return v0
.end method

.method public static getCameraPreviewThousandFps()I
    .locals 1

    .line 392
    sget v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCameraPreviewFps:I

    return v0
.end method

.method public static getPictureSize()Landroid/hardware/Camera$Size;
    .locals 1

    .line 227
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 228
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0

    .line 230
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPreviewOrientation()I
    .locals 1

    .line 383
    sget v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mOrientation:I

    return v0
.end method

.method public static getPreviewSize()Landroid/hardware/Camera$Size;
    .locals 1

    .line 200
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 201
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static openCamera(IIII)V
    .locals 3
    .param p0, "cameraID"    # I
    .param p1, "expectFps"    # I
    .param p2, "width"    # I
    .param p3, "height"    # I

    .line 86
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_1

    .line 89
    invoke-static {p0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    .line 90
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 93
    sput p0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCameraID:I

    .line 94
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 95
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    mul-int/lit16 v1, p1, 0x3e8

    invoke-static {v0, v1}, Lcom/xiaopeng/factory/utils/CameraUtils;->chooseFixedPreviewFps(Landroid/hardware/Camera$Parameters;I)I

    move-result v1

    sput v1, Lcom/xiaopeng/factory/utils/CameraUtils;->mCameraPreviewFps:I

    .line 96
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 97
    sget-object v1, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 98
    sget-object v1, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-static {v1, p2, p3}, Lcom/xiaopeng/factory/utils/CameraUtils;->setPreviewSize(Landroid/hardware/Camera;II)V

    .line 99
    sget-object v1, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-static {v1, p2, p3}, Lcom/xiaopeng/factory/utils/CameraUtils;->setPictureSize(Landroid/hardware/Camera;II)V

    .line 100
    sget-object v1, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    sget v2, Lcom/xiaopeng/factory/utils/CameraUtils;->mOrientation:I

    invoke-virtual {v1, v2}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 101
    return-void

    .line 91
    .end local v0    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Unable to open camera"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "camera already initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static openFrontCamera(I)V
    .locals 6
    .param p0, "expectFps"    # I

    .line 47
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    if-nez v0, :cond_4

    .line 50
    new-instance v0, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v0}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 51
    .local v0, "info":Landroid/hardware/Camera$CameraInfo;
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v1

    .line 52
    .local v1, "numCameras":I
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    .line 53
    invoke-static {v3, v0}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 54
    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-ne v5, v4, :cond_0

    .line 55
    invoke-static {v3}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v5

    sput-object v5, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    .line 56
    iget v5, v0, Landroid/hardware/Camera$CameraInfo;->facing:I

    sput v5, Lcom/xiaopeng/factory/utils/CameraUtils;->mCameraID:I

    .line 57
    goto :goto_1

    .line 52
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 61
    .end local v3    # "i":I
    :cond_1
    :goto_1
    sget-object v3, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    if-nez v3, :cond_2

    .line 62
    invoke-static {}, Landroid/hardware/Camera;->open()Landroid/hardware/Camera;

    move-result-object v3

    sput-object v3, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    .line 63
    sput v2, Lcom/xiaopeng/factory/utils/CameraUtils;->mCameraID:I

    .line 66
    :cond_2
    sget-object v2, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    if-eqz v2, :cond_3

    .line 70
    sget-object v2, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 71
    .local v2, "parameters":Landroid/hardware/Camera$Parameters;
    mul-int/lit16 v3, p0, 0x3e8

    invoke-static {v2, v3}, Lcom/xiaopeng/factory/utils/CameraUtils;->chooseFixedPreviewFps(Landroid/hardware/Camera$Parameters;I)I

    move-result v3

    sput v3, Lcom/xiaopeng/factory/utils/CameraUtils;->mCameraPreviewFps:I

    .line 72
    invoke-virtual {v2, v4}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    .line 73
    sget-object v3, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v3, v2}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 74
    sget-object v3, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    const/16 v4, 0x2d0

    const/16 v5, 0x500

    invoke-static {v3, v5, v4}, Lcom/xiaopeng/factory/utils/CameraUtils;->setPreviewSize(Landroid/hardware/Camera;II)V

    .line 75
    sget-object v3, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-static {v3, v5, v4}, Lcom/xiaopeng/factory/utils/CameraUtils;->setPictureSize(Landroid/hardware/Camera;II)V

    .line 76
    sget-object v3, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    sget v4, Lcom/xiaopeng/factory/utils/CameraUtils;->mOrientation:I

    invoke-virtual {v3, v4}, Landroid/hardware/Camera;->setDisplayOrientation(I)V

    .line 77
    return-void

    .line 67
    .end local v2    # "parameters":Landroid/hardware/Camera$Parameters;
    :cond_3
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unable to open camera"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 48
    .end local v0    # "info":Landroid/hardware/Camera$CameraInfo;
    .end local v1    # "numCameras":I
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "camera already initialized!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static releaseCamera()V
    .locals 1

    .line 142
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 143
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 144
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    .line 147
    :cond_0
    return-void
.end method

.method public static setPictureSize(Landroid/hardware/Camera;II)V
    .locals 4
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "expectWidth"    # I
    .param p2, "expectHeight"    # I

    .line 214
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 215
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lcom/xiaopeng/factory/utils/CameraUtils;->calculatePerfectSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v1

    .line 217
    .local v1, "size":Landroid/hardware/Camera$Size;
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    iget v3, v1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v0, v2, v3}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 218
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 219
    return-void
.end method

.method public static setPreviewSize(Landroid/hardware/Camera;II)V
    .locals 1
    .param p0, "camera"    # Landroid/hardware/Camera;
    .param p1, "expectWidth"    # I
    .param p2, "expectHeight"    # I

    .line 186
    invoke-virtual {p0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 190
    .local v0, "parameters":Landroid/hardware/Camera$Parameters;
    invoke-virtual {v0, p1, p2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 191
    invoke-virtual {p0, v0}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 192
    return-void
.end method

.method private static sortList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;)V"
        }
    .end annotation

    .line 288
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    new-instance v0, Lcom/xiaopeng/factory/utils/CameraUtils$1;

    invoke-direct {v0}, Lcom/xiaopeng/factory/utils/CameraUtils$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 299
    return-void
.end method

.method public static startPreview()V
    .locals 1

    .line 153
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 154
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 156
    :cond_0
    return-void
.end method

.method public static startPreviewDisplay(Landroid/view/SurfaceHolder;)V
    .locals 2
    .param p0, "holder"    # Landroid/view/SurfaceHolder;

    .line 109
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 113
    :try_start_0
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 114
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Camera must be set when start preview"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static stopPreview()V
    .locals 1

    .line 162
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 165
    :cond_0
    return-void
.end method

.method public static switchCamera(ILandroid/view/SurfaceHolder;)V
    .locals 3
    .param p0, "cameraID"    # I
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 126
    sget v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCameraID:I

    if-ne v0, p0, :cond_0

    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 127
    return-void

    .line 129
    :cond_0
    sput p0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCameraID:I

    .line 131
    invoke-static {}, Lcom/xiaopeng/factory/utils/CameraUtils;->releaseCamera()V

    .line 133
    const/16 v0, 0x19

    const/16 v1, 0x500

    const/16 v2, 0x2d0

    invoke-static {p0, v0, v1, v2}, Lcom/xiaopeng/factory/utils/CameraUtils;->openCamera(IIII)V

    .line 135
    invoke-static {p1}, Lcom/xiaopeng/factory/utils/CameraUtils;->startPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 136
    return-void
.end method

.method public static takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V
    .locals 1
    .param p0, "shutterCallback"    # Landroid/hardware/Camera$ShutterCallback;
    .param p1, "rawCallback"    # Landroid/hardware/Camera$PictureCallback;
    .param p2, "pictureCallback"    # Landroid/hardware/Camera$PictureCallback;

    .line 173
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 174
    sget-object v0, Lcom/xiaopeng/factory/utils/CameraUtils;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0, p0, p1, p2}, Landroid/hardware/Camera;->takePicture(Landroid/hardware/Camera$ShutterCallback;Landroid/hardware/Camera$PictureCallback;Landroid/hardware/Camera$PictureCallback;)V

    .line 176
    :cond_0
    return-void
.end method
