.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;
.super Ljava/lang/Object;
.source "SoundPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/a;


# instance fields
.field private xm:Lcom/xiaopeng/devtools/model/c/a/h/a;

.field private xn:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/h/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/c/a/h/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;->xm:Lcom/xiaopeng/devtools/model/c/a/h/a;

    .line 24
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/a;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/h/b;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/c/a/h/b;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;->xm:Lcom/xiaopeng/devtools/model/c/a/h/a;

    .line 19
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;->xn:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/a;

    .line 20
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;)Lcom/xiaopeng/devtools/model/c/a/h/a;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;->xm:Lcom/xiaopeng/devtools/model/c/a/h/a;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;)Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/a;
    .locals 0

    .line 12
    iget-object p0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;->xn:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/sound/a;

    return-object p0
.end method


# virtual methods
.method public cg(I)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;->xm:Lcom/xiaopeng/devtools/model/c/a/h/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/h/a;->cg(I)V

    .line 67
    return-void
.end method

.method public destroy(I)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;->xm:Lcom/xiaopeng/devtools/model/c/a/h/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/h/a;->destroy(I)V

    .line 72
    return-void
.end method

.method public getCurrentMediaVolume()I
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;->xm:Lcom/xiaopeng/devtools/model/c/a/h/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/h/a;->getCurrentMediaVolume()I

    move-result v0

    return v0
.end method

.method public getMediaMaxVolume()I
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;->xm:Lcom/xiaopeng/devtools/model/c/a/h/a;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/h/a;->getMediaMaxVolume()I

    move-result v0

    return v0
.end method

.method public js()V
    .locals 1

    .line 48
    new-instance v0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b$1;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;)V

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;)V

    .line 57
    return-void
.end method

.method public onVolumeChanged(II)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/j/b;->xm:Lcom/xiaopeng/devtools/model/c/a/h/a;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/devtools/model/c/a/h/a;->onVolumeChanged(II)V

    .line 62
    return-void
.end method
