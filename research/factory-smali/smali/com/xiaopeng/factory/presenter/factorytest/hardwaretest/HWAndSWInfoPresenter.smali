.class public Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;
.super Ljava/lang/Object;
.source "HWAndSWInfoPresenter.java"

# interfaces
.implements Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/IHWAndSWInfoPresenter;


# static fields
.field private static final KEY_SN:Ljava/lang/String; = "SN:"


# instance fields
.field private mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

.field private mIHWAndSWInfoModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;

.field private mView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;)V
    .locals 1
    .param p1, "responseWriter"    # Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel;

    invoke-direct {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mIHWAndSWInfoModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    .line 34
    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;)V
    .locals 1
    .param p1, "view"    # Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel;

    invoke-direct {v0, p0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/HWAndSWInfoModel;-><init>(Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/IHWAndSWInfoPresenter;)V

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mIHWAndSWInfoModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;)Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;

    .line 19
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mDmResponseWriter:Lcom/xiaopeng/factory/dmcommand/DmResponseWriter;

    return-object v0
.end method


# virtual methods
.method public generateCarCodeBitmap(I)V
    .locals 1
    .param p1, "width"    # I

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mIHWAndSWInfoModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;

    invoke-interface {v0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;->generateCarCodeBitmap(I)V

    .line 68
    return-void
.end method

.method public generateCodeBitmap(I)V
    .locals 1
    .param p1, "width"    # I

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mIHWAndSWInfoModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;

    invoke-interface {v0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;->generateCodeBitmap(I)V

    .line 58
    return-void
.end method

.method public generateNumBitmap(I)V
    .locals 1
    .param p1, "width"    # I

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mIHWAndSWInfoModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;

    invoke-interface {v0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;->generateNumBitmap(I)V

    .line 63
    return-void
.end method

.method public getDeviceCode()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mIHWAndSWInfoModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;

    invoke-interface {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;->getDeviceCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHWInfo()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mIHWAndSWInfoModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;

    invoke-interface {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;->getHWInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPsuVersion()V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mIHWAndSWInfoModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;

    invoke-interface {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;->getPsuVersion()V

    .line 73
    return-void
.end method

.method public getSWInfo()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mIHWAndSWInfoModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;

    invoke-interface {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;->getSWInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVehicleId()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mIHWAndSWInfoModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;

    invoke-interface {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;->getVehicleId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mIHWAndSWInfoModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;

    invoke-interface {v0, p1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;->init(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 132
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mIHWAndSWInfoModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;

    invoke-interface {v0}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;->onDestroy()V

    .line 134
    return-void
.end method

.method public requestCarCode()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mIHWAndSWInfoModel:Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;

    new-instance v1, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter$1;-><init>(Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/factory/model/factorytest/hardwaretest/IHWAndSWInfoModel;->requestCarCode(Lcom/xiaopeng/lib/http/ICallback;)V

    .line 128
    return-void
.end method

.method public setCarCodeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;

    invoke-interface {v0, p1}, Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;->setCarCodeBitmap(Landroid/graphics/Bitmap;)V

    .line 100
    :cond_0
    return-void
.end method

.method public setDeviceCodeBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;

    invoke-interface {v0, p1}, Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;->setDeviceCodeBitmap(Landroid/graphics/Bitmap;)V

    .line 86
    :cond_0
    return-void
.end method

.method public setDeviceNumBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;

    invoke-interface {v0, p1}, Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;->setDeviceNumBitmap(Landroid/graphics/Bitmap;)V

    .line 93
    :cond_0
    return-void
.end method

.method public setPsuVersionTextView(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/factory/presenter/factorytest/hardwaretest/HWAndSWInfoPresenter;->mView:Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;

    invoke-interface {v0, p1}, Lcom/xiaopeng/factory/view/factorytest/hardwaretest/IHWAndSWView;->setPsuVersionTextView(Ljava/lang/String;)V

    .line 107
    :cond_0
    return-void
.end method
