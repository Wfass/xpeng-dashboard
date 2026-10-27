.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;
.super Landroid/view/SurfaceView;
.source "CameraSurfaceView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# static fields
.field private static Jm:Landroid/hardware/Camera;


# instance fields
.field private Jn:I

.field private mHandler:Landroid/os/Handler;

.field private mIsPreview:Z

.field private sW:Landroid/view/SurfaceHolder;


# direct methods
.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;)V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mI()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;Z)Z
    .locals 0

    .line 17
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mIsPreview:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;)Z
    .locals 0

    .line 17
    iget-boolean p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mIsPreview:Z

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 17
    iget-object p0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->sW:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method private getBestSupportedSize()Landroid/hardware/Camera$Size;
    .locals 6

    .line 200
    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->Jm:Landroid/hardware/Camera;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 201
    return-object v1

    .line 204
    :cond_0
    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->Jm:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v0

    .line 205
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Camera$Size;

    .line 206
    const-string v3, "CameraSurfaceView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SupportedPreviewSizes-->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v2, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v2, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 207
    goto :goto_0

    .line 209
    :cond_1
    return-object v1
.end method

.method public static getCamera()Landroid/hardware/Camera;
    .locals 1

    .line 186
    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->Jm:Landroid/hardware/Camera;

    return-object v0
.end method

.method private mI()V
    .locals 4

    .line 44
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->Jn:I

    invoke-static {v0}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->Jm:Landroid/hardware/Camera;

    .line 45
    const-string v0, "CameraSurfaceView"

    const-string v1, "Camera open success"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v1, "CameraSurfaceView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Camera open Exception-->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void
.end method

.method static synthetic mM()Landroid/hardware/Camera;
    .locals 1

    .line 17
    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->Jm:Landroid/hardware/Camera;

    return-object v0
.end method


# virtual methods
.method public mJ()V
    .locals 2

    .line 103
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$1;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 113
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 114
    return-void
.end method

.method public mK()V
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$2;-><init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 155
    return-void
.end method

.method public mL()V
    .locals 2

    .line 190
    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->Jm:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->Jm:Landroid/hardware/Camera;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 192
    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->Jm:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mIsPreview:Z

    .line 194
    sget-object v0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->Jm:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 195
    sput-object v1, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->Jm:Landroid/hardware/Camera;

    .line 197
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 181
    const-string v0, "CameraSurfaceView"

    const-string v1, "onMeasure"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 182
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onMeasure(II)V

    .line 183
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 165
    const-string p1, "CameraSurfaceView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged:format="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",width="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",height="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->sW:Landroid/view/SurfaceHolder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    if-nez p1, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mJ()V

    .line 171
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 159
    const-string p1, "CameraSurfaceView"

    const-string v0, "surfaceCreated"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mJ()V

    .line 161
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 175
    const-string p1, "CameraSurfaceView"

    const-string v0, "surfaceDestroyed"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mL()V

    .line 177
    return-void
.end method
