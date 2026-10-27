.class public Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;
.super Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;
.source "AtlViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AtlViewModel"


# instance fields
.field private final mAtlAutoBrightness:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAtlBrightness:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAtlDualColor:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAtlEffectType:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mAtlFirstColor:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAtlRgbDoubleFirstColor:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAtlRgbDoubleSecondColor:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mAtlSecondColor:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;",
            ">;"
        }
    .end annotation
.end field

.field private final mAtlSpeakerSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mAtlSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;-><init>()V

    .line 24
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlSw:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlSpeakerSw:Landroidx/lifecycle/MutableLiveData;

    .line 28
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlAutoBrightness:Landroidx/lifecycle/MutableLiveData;

    .line 29
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlBrightness:Landroidx/lifecycle/MutableLiveData;

    .line 31
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlEffectType:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlDualColor:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlFirstColor:Landroidx/lifecycle/MutableLiveData;

    .line 34
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlSecondColor:Landroidx/lifecycle/MutableLiveData;

    .line 35
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlRgbDoubleFirstColor:Landroidx/lifecycle/MutableLiveData;

    .line 36
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlRgbDoubleSecondColor:Landroidx/lifecycle/MutableLiveData;

    .line 41
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    if-eqz v1, :cond_0

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v1, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    :cond_0
    const-string v1, "isSupportFullAtl"

    .line 44
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 45
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "isAmbientLightOpen"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 47
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get atl sw by provider: isAmbientLightOpen="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 48
    :goto_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public convertDoubleColor(I)[I
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorId"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [I

    const/16 v2, 0xf

    const/16 v3, 0xb

    const/4 v4, 0x5

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0x11

    aput p1, v1, v6

    const/16 p1, 0x14

    aput p1, v1, v7

    goto :goto_0

    :pswitch_1
    aput v2, v1, v6

    const/16 p1, 0x12

    aput p1, v1, v7

    goto :goto_0

    :pswitch_2
    aput v2, v1, v6

    aput v3, v1, v7

    goto :goto_0

    :pswitch_3
    const/16 p1, 0xe

    aput p1, v1, v6

    aput v5, v1, v7

    goto :goto_0

    :pswitch_4
    aput v4, v1, v6

    aput v3, v1, v7

    goto :goto_0

    :pswitch_5
    aput v0, v1, v6

    aput v4, v1, v7

    goto :goto_0

    :pswitch_6
    aput v7, v1, v6

    aput v5, v1, v7

    :goto_0
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAtlAutoBrightnessData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlAutoBrightness:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAtlBrightnessData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlBrightness:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAtlDualColorData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlDualColor:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "defValue"
        }
    .end annotation

    .line 134
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->fromAtlStatus(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 136
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-object p1
.end method

.method public getAtlEffectTypeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;",
            ">;"
        }
    .end annotation

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlEffectType:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAtlFirstColorData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlFirstColor:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAtlRgbDoubleFirstColor()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlRgbDoubleFirstColor:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAtlRgbDoubleSecondColor()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlRgbDoubleSecondColor:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAtlSecondColorData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlSecondColor:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAtlSpeakerSwitchData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlSpeakerSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAtlSwitchData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDoubleColor()I
    .locals 7

    .line 256
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlDualFirstColor()I

    move-result v0

    .line 257
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlDualSecondColor()I

    move-result v1

    .line 258
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoubleColor:first="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "second="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v2, 0x6

    const/4 v3, 0x2

    const/4 v5, 0x5

    if-ne v0, v3, :cond_0

    if-ne v1, v5, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/16 v6, 0xb

    if-ne v0, v5, :cond_1

    if-ne v1, v6, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    const/16 v3, 0xe

    if-ne v0, v3, :cond_2

    if-ne v1, v2, :cond_2

    const/4 v4, 0x3

    goto :goto_0

    :cond_2
    const/16 v3, 0xf

    if-ne v0, v3, :cond_3

    if-ne v1, v6, :cond_3

    const/4 v4, 0x4

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_4

    const/16 v3, 0x12

    if-ne v1, v3, :cond_4

    move v4, v5

    goto :goto_0

    :cond_4
    const/16 v3, 0x11

    if-ne v0, v3, :cond_5

    const/16 v0, 0x14

    if-ne v1, v0, :cond_5

    move v4, v2

    :cond_5
    :goto_0
    return v4
.end method

.method public isSupportDoubleThemeColor(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlEffect"
        }
    .end annotation

    .line 205
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->toAtlCmd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->isSupportDoubleThemeColor(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onAtlAutoBrightSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlAutoBrightness:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlDoubleColorChanged(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "effectType",
            "first_color",
            "second_color"
        }
    .end annotation

    .line 85
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlSecondColor:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p3}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->fromAtlStatus(I)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlDoubleColorEnableChanged(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectType",
            "enable"
        }
    .end annotation

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlDualColor:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlEffectTypeChanged(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mEffectType:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlEffectType:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->fromAtlStatus(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlManualBrightChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlBrightness:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlMonoColorChanged(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effectType",
            "color"
        }
    .end annotation

    .line 80
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlFirstColor:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlRgbDoubleFirstColorChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "first_color"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlRgbDoubleFirstColor:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlRgbDoubleSecondColorChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "second_color"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlRgbDoubleSecondColor:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlSpeakerSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlSpeakerSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onAtlSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->mAtlSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setAtlColorChange(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 283
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlThemeColorMode()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    .line 286
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getDoubleColor()I

    move-result p1

    add-int/2addr p1, v2

    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-gt p1, v0, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->convertDoubleColor(I)[I

    move-result-object p1

    goto :goto_0

    .line 290
    :cond_0
    invoke-virtual {p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->convertDoubleColor(I)[I

    move-result-object p1

    :goto_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    if-ne p1, v1, :cond_3

    .line 293
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    const/4 v0, 0x7

    .line 294
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    .line 295
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getDoubleColor()I

    move-result v0

    if-eq p1, v0, :cond_2

    .line 296
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->convertDoubleColor(I)[I

    move-result-object v0

    goto :goto_1

    .line 298
    :cond_2
    invoke-virtual {p0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->convertDoubleColor(I)[I

    move-result-object v0

    :cond_3
    :goto_1
    if-eqz v0, :cond_8

    .line 302
    aget p1, v0, v3

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->fromAtlStatus(I)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object p1

    aget v0, v0, v2

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->fromAtlStatus(I)Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlDualColor(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;)V

    goto :goto_2

    :cond_4
    const/16 v0, 0x14

    if-ne p1, v2, :cond_6

    .line 306
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlSingleColor()I

    move-result p1

    add-int/2addr p1, v2

    if-lt p1, v2, :cond_5

    if-gt p1, v0, :cond_5

    .line 308
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSingleColor(I)V

    goto :goto_2

    .line 310
    :cond_5
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSingleColor(I)V

    goto :goto_2

    :cond_6
    if-ne p1, v1, :cond_8

    .line 313
    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    .line 314
    invoke-virtual {p1, v0}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    add-int/2addr p1, v2

    .line 315
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->getAtlSingleColor()I

    move-result v0

    if-eq p1, v0, :cond_7

    .line 316
    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSingleColor(I)V

    goto :goto_2

    .line 318
    :cond_7
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSingleColor(I)V

    :cond_8
    :goto_2
    return-void
.end method

.method public setAtlDualColor(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "atlColor1",
            "atlColor2"
        }
    .end annotation

    .line 201
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->toAtlCmd()I

    move-result p1

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->toAtlCmd()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlDualColor(II)V

    return-void
.end method

.method public setAtlEffect(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 147
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlEffect;->toAtlCmd()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlEffect(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setAtlSingleColor(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlColor"
        }
    .end annotation

    .line 177
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->toAtlCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlViewModel;->setAtlSingleColor(I)V

    return-void
.end method
