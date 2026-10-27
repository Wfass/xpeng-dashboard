.class public abstract Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;
.super Ljava/lang/Object;
.source "AtlBaseViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/light/IAtlViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;


# static fields
.field private static final MEDITATION_SINGLE_COLOR:I = 0x7

.field private static final TAG:Ljava/lang/String; = "AtlBaseViewModel"


# instance fields
.field private mAtlBrightness:I

.field mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

.field private mAtlDoubleColorFirst:I

.field private mAtlDoubleColorSecond:I

.field private mAtlEnable:Z

.field private mAtlSingleColor:I

.field private mAtlThemeColorMode:Z

.field private mAtlffectType:Ljava/lang/String;

.field mEffectType:Ljava/lang/String;

.field private mInMeditation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mInMeditation:Z

    .line 38
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_atl"

    .line 41
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    return-void
.end method


# virtual methods
.method public enterMeditationState()V
    .locals 1

    const/4 v0, 0x7

    .line 258
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->enterMeditationState(I)V

    return-void
.end method

.method public enterMeditationState(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlColor"
        }
    .end annotation

    .line 262
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enterMeditationState, mAtlEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enterMeditationState, atlColor: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 264
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mInMeditation:Z

    if-nez v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->isAtlSwEnabled()Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlEnable:Z

    .line 266
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlEffect()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlffectType:Ljava/lang/String;

    .line 267
    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v3, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->isAtlDualColor(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlThemeColorMode:Z

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAtlThemeColorMode, enterMeditation: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlThemeColorMode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 269
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlffectType:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlSingleColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlSingleColor:I

    .line 270
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlffectType:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlDualFirstColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlDoubleColorFirst:I

    .line 271
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlffectType:Ljava/lang/String;

    invoke-interface {v1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlDualSecondColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlDoubleColorSecond:I

    .line 272
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlBrightness()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlBrightness:I

    .line 276
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    const-string v3, "gentle_breathing"

    invoke-interface {v1, v3, v2, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlEffect(Ljava/lang/String;ZZ)V

    .line 277
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    const/4 v4, 0x1

    invoke-interface {v1, v3, v2, v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlDualColor(Ljava/lang/String;ZZ)V

    .line 278
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v1, v3, p1, v2, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlSingleColor(Ljava/lang/String;IZZ)V

    .line 280
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    const/16 v1, 0xa

    invoke-interface {p1, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlBrightness(IZ)V

    .line 282
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-static {}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->getMeditationAtlSw()Z

    move-result v1

    invoke-interface {p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlSwEnable(Z)V

    .line 283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mAtlThemeColorMode, onMeditation: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v1, v3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->isAtlDualColor(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 284
    iput-boolean v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mInMeditation:Z

    :cond_0
    return-void
.end method

.method public exitMeditationState()V
    .locals 12

    .line 290
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "exitMeditationState, mAtlEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 291
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mInMeditation:Z

    if-eqz v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlffectType:Ljava/lang/String;

    invoke-interface {v1, v3, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlEffect(Ljava/lang/String;Z)V

    .line 294
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlffectType:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlThemeColorMode:Z

    const/4 v5, 0x1

    invoke-interface {v1, v3, v4, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlDualColor(Ljava/lang/String;ZZ)V

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAtlThemeColorMode, beforeExitMeditation: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlThemeColorMode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 296
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlThemeColorMode:Z

    if-eqz v1, :cond_0

    .line 298
    iget-object v6, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iget-object v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlffectType:Ljava/lang/String;

    iget v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlDoubleColorFirst:I

    iget v9, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlDoubleColorSecond:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-interface/range {v6 .. v11}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlDualColor(Ljava/lang/String;IIZZ)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlffectType:Ljava/lang/String;

    iget v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlSingleColor:I

    invoke-interface {v1, v3, v4, v5, v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlSingleColor(Ljava/lang/String;IZZ)V

    .line 303
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAtlThemeColorMode, onExitMeditation: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlThemeColorMode:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlBrightness:I

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlBrightness(IZ)V

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlEnable:Z

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlSwEnable(Z)V

    .line 306
    iput-boolean v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mInMeditation:Z

    :cond_1
    return-void
.end method

.method public getAtlBrightnessValue()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlBrightness()I

    move-result v0

    return v0
.end method

.method public getAtlDualFirstColor()I
    .locals 2

    const-string v0, "isSupportAtlRgbColor"

    .line 206
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlDualFirstColor(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 208
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object v1

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 209
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->toAtlCmd()I

    move-result v0

    :cond_0
    return v0

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlDualFirstColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAtlDualSecondColor()I
    .locals 2

    const-string v0, "isSupportAtlRgbColor"

    .line 220
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlDualSecondColor(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 222
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object v1

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 223
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->toAtlCmd()I

    move-result v0

    :cond_0
    return v0

    .line 228
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlDualSecondColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAtlEffect()Ljava/lang/String;
    .locals 1

    const-string v0, "isSupportAtl"

    .line 109
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mEffectType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlEffect()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mEffectType:Ljava/lang/String;

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mEffectType:Ljava/lang/String;

    return-object v0
.end method

.method public getAtlRgbMemoryDualColor()Ljava/lang/String;
    .locals 3

    const-string v0, "isSupportAtl"

    .line 196
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isSupportAtlRgbColor"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlRgbMemoryDualColor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 199
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "getAtlRgbMemoryDualColor ATL feature not support"

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAtlRgbMemorySingleColor()Ljava/lang/String;
    .locals 3

    const-string v0, "isSupportAtl"

    .line 187
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isSupportAtlRgbColor"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlRgbMemorySingleColor()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 190
    :cond_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->TAG:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "getAtlRgbMemorySingleColor ATL feature not support"

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getAtlSingleColor()I
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->getAtlSingleColor(Ljava/lang/String;)I

    move-result v0

    const-string v1, "isSupportAtlRgbColor"

    .line 138
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-lez v0, :cond_0

    .line 140
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object v1

    array-length v1, v1

    if-gt v0, v1, :cond_0

    .line 141
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->values()[Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    move-result-object v1

    add-int/lit8 v0, v0, -0x1

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;->toAtlCmd()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method

.method public getAtlThemeColorMode()Z
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->isAtlDualColor(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isAtlAutoBrightness()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->isAtlAutoBrightEnabled()Z

    move-result v0

    return v0
.end method

.method public isAtlEnabled()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->isAtlSwEnabled()Z

    move-result v0

    return v0
.end method

.method public isAtlSpeakerSwEnabled()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->isAtlSpeakerSwEnabled()Z

    move-result v0

    return v0
.end method

.method public isSupportDoubleThemeColor(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectType"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->isSupportDoubleThemeColor(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setAtlAutoBrightness(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlAutoBrightEnable(Z)V

    return-void
.end method

.method public setAtlBrightnessValue(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation

    const-string v0, "isSupportAtl"

    .line 90
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->isAtlSwEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlSwEnable(Z)V

    :cond_0
    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p1

    :goto_0
    const/16 v2, 0x64

    if-le p1, v2, :cond_2

    move v0, v2

    .line 101
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlBrightness(IZ)V

    goto :goto_1

    .line 103
    :cond_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "setAtlBrightnessValue ATL feature is not support"

    invoke-static {p1, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method public setAtlDualColor(II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color1",
            "color2"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, p2, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlDualColor(Ljava/lang/String;IIZ)V

    return-void
.end method

.method public setAtlDualColor(IIZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "color1",
            "color2",
            "needSave"
        }
    .end annotation

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x1

    move v2, p1

    move v3, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlDualColor(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public setAtlEffect(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation

    const-string v0, "isSupportAtl"

    .line 119
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlEffect(Ljava/lang/String;Z)V

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mEffectType:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setAtlRgbDualColor(IIIZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "color1",
            "color2",
            "index",
            "force",
            "needSave"
        }
    .end annotation

    const-string v0, "isSupportAtl"

    .line 179
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isSupportAtlRgbColor"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlRgbDualColor(IIIZZ)V

    goto :goto_0

    .line 182
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "setAtlRgbDualColor ATL feature not support"

    invoke-static {p1, p3, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setAtlRgbSingleColor(IIZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "color",
            "index",
            "force",
            "needSave"
        }
    .end annotation

    const-string v0, "isSupportAtl"

    .line 171
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "isSupportAtlRgbColor"

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlRgbSingleColor(IIZZ)V

    goto :goto_0

    .line 174
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "setAtlRgbSingleColor ATL feature not support"

    invoke-static {p1, p3, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setAtlSingleColor(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "color"
        }
    .end annotation

    const/4 v0, 0x1

    .line 153
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->setAtlSingleColor(IZ)V

    return-void
.end method

.method public setAtlSingleColor(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "color",
            "force"
        }
    .end annotation

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->setAtlSingleColor(IZZ)V

    return-void
.end method

.method public setAtlSingleColor(IZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "color",
            "force",
            "needSave"
        }
    .end annotation

    const-string v0, "isSupportAtl"

    .line 163
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlSingleColor(Ljava/lang/String;IZZ)V

    goto :goto_0

    .line 166
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->TAG:Ljava/lang/String;

    const/4 p2, 0x0

    const-string p3, "setAtlSingleColor ATL feature not support"

    invoke-static {p1, p3, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setAtlSpeakerSwEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlSpeakerSwEnable(Z)V

    return-void
.end method

.method public setAtlSwitch(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    const-string v0, "isSupportAtl"

    .line 51
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 52
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mInMeditation:Z

    if-eqz v0, :cond_0

    .line 54
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/model/SharedPreferenceUtil;->setMeditationAtlSw(Z)V

    .line 55
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMeditationAtlSw = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlSwEnable(Z)V

    goto :goto_0

    .line 59
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->TAG:Ljava/lang/String;

    const-string v0, "ATL feature not support"

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setAtlThemeColorMode(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDualColor"
        }
    .end annotation

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->mAtlController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlBaseViewModel;->getAtlEffect()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, p1, v2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;->setAtlDualColor(Ljava/lang/String;ZZ)V

    return-void
.end method
