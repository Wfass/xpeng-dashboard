.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$2;
.super Ljava/lang/Object;
.source "CameraSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mK()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Jo:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$2;->Jo:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 120
    const-string v0, "CameraSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsPreview-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$2;->Jo:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;

    invoke-static {v2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    const-string v0, "CameraSurfaceView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sCamera-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mM()Landroid/hardware/Camera;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$2;->Jo:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 123
    invoke-static {}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mM()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 125
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mM()Landroid/hardware/Camera;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$2;->Jo:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;

    invoke-static {v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->c(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;)Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V

    .line 126
    invoke-static {}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mM()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 127
    const-string v0, "CameraSurfaceView"

    const-string v1, "Camera startPreview success"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$2;->Jo:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v0, "CameraSurfaceView"

    const-string v1, "Camera startPreview Exception"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    :goto_0
    goto :goto_1

    .line 134
    :cond_0
    invoke-static {}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mM()Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 135
    invoke-static {}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mM()Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 137
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$2;->Jo:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;Z)Z

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$2;->Jo:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mK()V

    .line 153
    :cond_2
    :goto_1
    return-void
.end method
