.class public Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;
.super Ljava/lang/Object;
.source "SmartAvmManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$SmartAvmEventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager; = null

.field private static final strLibraryName:Ljava/lang/String; = "opencv_java4"


# instance fields
.field public mCamera:Lcom/xiaopeng/xuiservice/cv/CameraManager;

.field private mListener:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$SmartAvmEventListener;

.field private mPreviewEventListener:Lcom/xiaopeng/xuiservice/cv/CameraManager$PreviewEventListener;

.field private mType:I

.field private prevImage:Lorg/opencv/core/Mat;

.field private prevPosition:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 23
    const-class v0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->TAG:Ljava/lang/String;

    .line 35
    :try_start_0
    const-string v0, "opencv_java4"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadLibrary Exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 36
    :catch_1
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native code library failed to load.\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    nop

    .line 41
    :goto_1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mType:I

    .line 29
    new-instance v1, Lorg/opencv/core/Mat;

    invoke-direct {v1}, Lorg/opencv/core/Mat;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->prevImage:Lorg/opencv/core/Mat;

    .line 30
    iput v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->prevPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    .line 22
    iget v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mType:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;[BLandroid/hardware/Camera;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;
    .param p1, "x1"    # [B
    .param p2, "x2"    # Landroid/hardware/Camera;

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->handleMotionTrackingEvent([BLandroid/hardware/Camera;)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;
    .locals 2

    .line 44
    sget-object v0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->sInstance:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    if-nez v0, :cond_1

    .line 45
    const-class v0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    monitor-enter v0

    .line 46
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->sInstance:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    if-nez v1, :cond_0

    .line 47
    new-instance v1, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->sInstance:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    .line 49
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 51
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->sInstance:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;

    return-object v0
.end method

.method private handleMotionTrackingEvent([BLandroid/hardware/Camera;)V
    .locals 16
    .param p1, "bytes"    # [B
    .param p2, "camera"    # Landroid/hardware/Camera;

    move-object/from16 v0, p0

    .line 123
    const/16 v8, 0x12c

    .line 124
    .local v8, "IMAGE_CROP_SIZE":I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 125
    .local v9, "previewSize":Landroid/hardware/Camera$Size;
    move-object/from16 v10, p1

    invoke-static {v10, v9}, Lcom/xiaopeng/xuiservice/cv/utils/ImageUtils;->ByteToBitmap([BLandroid/hardware/Camera$Size;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 127
    .local v11, "bitmap":Landroid/graphics/Bitmap;
    nop

    .line 129
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    mul-int/lit8 v2, v8, 0x2

    sub-int v4, v1, v2

    .line 130
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 127
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v11

    move v2, v8

    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 133
    .end local v11    # "bitmap":Landroid/graphics/Bitmap;
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_3

    .line 134
    new-instance v2, Lorg/opencv/core/Rect;

    invoke-direct {v2}, Lorg/opencv/core/Rect;-><init>()V

    .line 135
    .local v2, "maxRect":Lorg/opencv/core/Rect;
    new-instance v3, Lorg/opencv/core/Mat;

    invoke-direct {v3}, Lorg/opencv/core/Mat;-><init>()V

    .line 136
    .local v3, "inputFrame":Lorg/opencv/core/Mat;
    invoke-static {v1, v3}, Lorg/opencv/android/Utils;->bitmapToMat(Landroid/graphics/Bitmap;Lorg/opencv/core/Mat;)V

    .line 138
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 139
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 142
    :cond_0
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->prevImage:Lorg/opencv/core/Mat;

    invoke-static {v4, v3}, Lcom/xiaopeng/xuiservice/cv/algorithm/ImageCompare;->CompareAndMarkDiff(Lorg/opencv/core/Mat;Lorg/opencv/core/Mat;)Ljava/util/ArrayList;

    move-result-object v4

    .line 143
    .local v4, "arraysRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/opencv/core/Rect;>;"
    iput-object v3, v0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->prevImage:Lorg/opencv/core/Mat;

    .line 145
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 146
    const-wide/16 v5, 0x0

    .line 147
    .local v5, "maxRectArea":D
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/opencv/core/Rect;

    .line 148
    .local v11, "rect":Lorg/opencv/core/Rect;
    invoke-virtual {v11}, Lorg/opencv/core/Rect;->area()D

    move-result-wide v12

    .line 149
    .local v12, "tmp":D
    cmpl-double v14, v12, v5

    if-ltz v14, :cond_1

    .line 150
    move-wide v5, v12

    .line 151
    move-object v2, v11

    .line 153
    .end local v11    # "rect":Lorg/opencv/core/Rect;
    .end local v12    # "tmp":D
    :cond_1
    goto :goto_0

    .line 155
    :cond_2
    iget v7, v9, Landroid/hardware/Camera$Size;->width:I

    mul-int/lit8 v11, v8, 0x2

    sub-int/2addr v7, v11

    .line 156
    .local v7, "range":I
    iget v11, v2, Lorg/opencv/core/Rect;->x:I

    iget v12, v2, Lorg/opencv/core/Rect;->width:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    const/16 v12, 0x64

    mul-int/2addr v11, v12

    div-int/2addr v11, v7

    .line 157
    .local v11, "pos":I
    sget-object v13, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "position(0-100) is "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget v13, v0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->prevPosition:I

    sub-int v13, v11, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    const/4 v14, 0x5

    if-le v13, v14, :cond_3

    .line 160
    iput v11, v0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->prevPosition:I

    .line 161
    sub-int/2addr v12, v11

    invoke-direct {v0, v12}, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->onMotionTrackingEvent(I)V

    .line 165
    .end local v2    # "maxRect":Lorg/opencv/core/Rect;
    .end local v3    # "inputFrame":Lorg/opencv/core/Mat;
    .end local v4    # "arraysRect":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/opencv/core/Rect;>;"
    .end local v5    # "maxRectArea":D
    .end local v7    # "range":I
    .end local v11    # "pos":I
    :cond_3
    return-void
.end method

.method private onMotionTrackingEvent(I)V
    .locals 2
    .param p1, "position"    # I

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mListener:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$SmartAvmEventListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mListener:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$SmartAvmEventListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$SmartAvmEventListener;->onMotionTrackingCallBack(I)V

    .line 120
    return-void

    .line 117
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public initSmartAvmManager(I)V
    .locals 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    iput p1, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mType:I

    .line 57
    new-instance v0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$1;-><init>(Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mPreviewEventListener:Lcom/xiaopeng/xuiservice/cv/CameraManager$PreviewEventListener;

    .line 70
    invoke-static {}, Lcom/xiaopeng/xuiservice/cv/CameraManager;->getInstance()Lcom/xiaopeng/xuiservice/cv/CameraManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mCamera:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mCamera:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mPreviewEventListener:Lcom/xiaopeng/xuiservice/cv/CameraManager$PreviewEventListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/cv/CameraManager;->registerListener(Lcom/xiaopeng/xuiservice/cv/CameraManager$PreviewEventListener;)V

    .line 72
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$SmartAvmEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$SmartAvmEventListener;

    monitor-enter p0

    .line 108
    :try_start_0
    sget-object v0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->TAG:Ljava/lang/String;

    const-string v1, "register SmartAvmEventListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    if-eqz p1, :cond_0

    .line 112
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mListener:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$SmartAvmEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    monitor-exit p0

    return-void

    .line 110
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 107
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$SmartAvmEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;
    throw p1
.end method

.method public setSurfaceHolder(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mCamera:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mCamera:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/cv/CameraManager;->setSurfaceHolder(Landroid/view/SurfaceHolder;)V

    .line 78
    :cond_0
    return-void
.end method

.method public startSmartAvm()V
    .locals 3

    .line 81
    sget-object v0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->TAG:Ljava/lang/String;

    const-string v1, "startSmartAvm"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mCamera:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    if-eqz v0, :cond_0

    .line 84
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mCamera:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/cv/CameraManager;->openCamera()V

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mCamera:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/cv/CameraManager;->setCameraView(I)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mCamera:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/cv/CameraManager;->setSurfaceTexture()V

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mCamera:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/cv/CameraManager;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    goto :goto_0

    .line 88
    :catch_0
    move-exception v0

    .line 89
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->TAG:Ljava/lang/String;

    const-string v2, "startSmartAvm error"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public stopSmartAvm()V
    .locals 2

    .line 95
    sget-object v0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->TAG:Ljava/lang/String;

    const-string v1, "stopSmartAvm"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mCamera:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/cv/CameraManager;->stopPreview()V

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mCamera:Lcom/xiaopeng/xuiservice/cv/CameraManager;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/cv/CameraManager;->closeCamera()V

    .line 98
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->onMotionTrackingEvent(I)V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mType:I

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/cv/SmartAvmManager;->mListener:Lcom/xiaopeng/xuiservice/cv/SmartAvmManager$SmartAvmEventListener;

    .line 101
    return-void
.end method
