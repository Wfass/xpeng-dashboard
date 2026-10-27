.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;
.super Ljava/lang/Object;
.source "CameraTestPresenter.java"


# instance fields
.field private wN:Lcom/xiaopeng/devtools/model/c/a/c/a;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a/c/a;->gn()Lcom/xiaopeng/devtools/model/c/a/c/a;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->wN:Lcom/xiaopeng/devtools/model/c/a/c/a;

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->wN:Lcom/xiaopeng/devtools/model/c/a/c/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/c/a;->a(Landroid/view/SurfaceHolder;)V

    .line 24
    return-void
.end method


# virtual methods
.method public cd(I)V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->wN:Lcom/xiaopeng/devtools/model/c/a/c/a;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/c/a;->cd(I)V

    .line 42
    return-void
.end method

.method public co(I)V
    .locals 1

    .line 27
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a$1;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;I)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 34
    return-void
.end method

.method public getNumberOfCameras()I
    .locals 1

    .line 37
    invoke-static {}, Lcom/xiaopeng/devtools/model/c/a/c/a;->getNumberOfCameras()I

    move-result v0

    return v0
.end method

.method public go()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->wN:Lcom/xiaopeng/devtools/model/c/a/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/c/a;->go()V

    .line 46
    return-void
.end method

.method public gp()V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->wN:Lcom/xiaopeng/devtools/model/c/a/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/c/a;->gp()V

    .line 50
    return-void
.end method

.method public gq()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->wN:Lcom/xiaopeng/devtools/model/c/a/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/c/a;->gq()Z

    move-result v0

    return v0
.end method

.method public gr()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->wN:Lcom/xiaopeng/devtools/model/c/a/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/c/a;->gr()Z

    move-result v0

    return v0
.end method

.method public gt()V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->wN:Lcom/xiaopeng/devtools/model/c/a/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/c/a;->gt()V

    .line 66
    return-void
.end method

.method public gu()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->wN:Lcom/xiaopeng/devtools/model/c/a/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/c/a;->gu()V

    .line 70
    return-void
.end method

.method public stopRecording()V
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c/a;->wN:Lcom/xiaopeng/devtools/model/c/a/c/a;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/c/a/c/a;->stopRecording()V

    .line 58
    return-void
.end method
