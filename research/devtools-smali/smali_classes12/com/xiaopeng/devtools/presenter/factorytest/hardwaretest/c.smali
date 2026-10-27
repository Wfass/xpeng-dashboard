.class public Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;
.super Ljava/lang/Object;
.source "HWAndSWInfoPresenter.java"

# interfaces
.implements Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;


# instance fields
.field private wu:Lcom/xiaopeng/devtools/model/c/a/d;

.field private wv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Lcom/xiaopeng/devtools/model/c/a/c;

    invoke-direct {v0, p0}, Lcom/xiaopeng/devtools/model/c/a/c;-><init>(Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/e;)V

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wu:Lcom/xiaopeng/devtools/model/c/a/d;

    .line 21
    iput-object p1, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;

    .line 22
    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;->b(Landroid/graphics/Bitmap;)V

    .line 73
    :cond_0
    return-void
.end method

.method public c(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;->c(Landroid/graphics/Bitmap;)V

    .line 80
    :cond_0
    return-void
.end method

.method public ca(I)V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wu:Lcom/xiaopeng/devtools/model/c/a/d;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/d;->ca(I)V

    .line 46
    return-void
.end method

.method public cb(I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wu:Lcom/xiaopeng/devtools/model/c/a/d;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/d;->cb(I)V

    .line 51
    return-void
.end method

.method public cc(I)V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wu:Lcom/xiaopeng/devtools/model/c/a/d;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/d;->cc(I)V

    .line 56
    return-void
.end method

.method public d(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;->d(Landroid/graphics/Bitmap;)V

    .line 87
    :cond_0
    return-void
.end method

.method public fO()Ljava/lang/String;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wu:Lcom/xiaopeng/devtools/model/c/a/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/d;->fO()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fP()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wu:Lcom/xiaopeng/devtools/model/c/a/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/d;->fP()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fQ()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wu:Lcom/xiaopeng/devtools/model/c/a/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/d;->fQ()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public fR()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wu:Lcom/xiaopeng/devtools/model/c/a/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/d;->fR()V

    .line 61
    return-void
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wu:Lcom/xiaopeng/devtools/model/c/a/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/d;->getVehicleId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wu:Lcom/xiaopeng/devtools/model/c/a/d;

    invoke-interface {v0, p1}, Lcom/xiaopeng/devtools/model/c/a/d;->init(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 98
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wv:Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/a;

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/devtools/presenter/factorytest/hardwaretest/c;->wu:Lcom/xiaopeng/devtools/model/c/a/d;

    invoke-interface {v0}, Lcom/xiaopeng/devtools/model/c/a/d;->onDestroy()V

    .line 100
    return-void
.end method
