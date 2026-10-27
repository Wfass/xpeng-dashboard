.class Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$1;
.super Ljava/lang/Object;
.source "CameraSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mJ()V
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

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$1;->Jo:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 106
    invoke-static {}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mM()Landroid/hardware/Camera;

    move-result-object v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$1;->Jo:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;

    invoke-static {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;)V

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$1;->Jo:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mK()V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView$1;->Jo:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/camera/CameraSurfaceView;->mK()V

    .line 112
    :goto_0
    return-void
.end method
