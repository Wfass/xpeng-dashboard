.class public interface abstract Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;
.super Ljava/lang/Object;
.source "ILampViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;


# static fields
.field public static final ALL_DOME_LIGHT:I = 0x4

.field public static final ALL_FRONT_DOME_LIGHT:I = 0x5

.field public static final ALL_REAR_DOME_LIGHT:I = 0x6

.field public static final ALL_THIRD_ROW_DOME_LIGHT:I = 0x9

.field public static final DOME_LIGHT_BRIGHT_LEVEL_HIGH:I

.field public static final DOME_LIGHT_BRIGHT_LEVEL_LOW:I

.field public static final DOME_LIGHT_BRIGHT_LEVEL_MEDIUM:I

.field public static final DOME_LIGHT_BRIGHT_SELECTED_HIGH:I = 0x2

.field public static final DOME_LIGHT_BRIGHT_SELECTED_LOW:I = 0x0

.field public static final DOME_LIGHT_BRIGHT_SELECTED_MEDIUM:I = 0x1

.field public static final FL_DOME_LIGHT:I = 0x0

.field public static final FR_DOME_LIGHT:I = 0x1

.field public static final RL_DOME_LIGHT:I = 0x2

.field public static final RR_DOME_LIGHT:I = 0x3

.field public static final SETTING_KEY_WAIT_MODE:Ljava/lang/String; = "wait_mode"

.field public static final TL_DOME_LIGHT:I = 0x7

.field public static final TR_DOME_LIGHT:I = 0x8

.field public static final WAIT_MODE_OFF:I = 0x0

.field public static final WAIT_MODE_ON:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "getDomeLightBrightLevelLow"

    .line 32
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;->DOME_LIGHT_BRIGHT_LEVEL_LOW:I

    const-string v0, "getDomeLightBrightLevelMEDIUM"

    .line 33
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;->DOME_LIGHT_BRIGHT_LEVEL_MEDIUM:I

    const-string v0, "getDomeLightBrightLevelHigh"

    .line 34
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;->DOME_LIGHT_BRIGHT_LEVEL_HIGH:I

    return-void
.end method


# virtual methods
.method public abstract getCacheLightMeHomeTime()I
.end method

.method public abstract getCarpetLightWelcomeMode()Z
.end method

.method public abstract getDaytimeRunningLightsOutputStatus()I
.end method

.method public abstract getDomeLightBrightness()I
.end method

.method public abstract getDomeLightState()I
.end method

.method public abstract getDomeLightSw(I)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lightType"
        }
    .end annotation
.end method

.method public abstract getHeadLampGroup()I
.end method

.method public abstract getHeadLampGroupSp()I
.end method

.method public abstract getHighBeamState()Z
.end method

.method public abstract getInnerParkingLampStates()I
.end method

.method public abstract getLampHeightLevel()I
.end method

.method public abstract getLightMeHomeTime()I
.end method

.method public abstract getLowBeamState()Z
.end method

.method public abstract getOuterParkingLampStates()I
.end method

.method public abstract getParkLampState()Z
.end method

.method public abstract getParkingLampStates()[I
.end method

.method public abstract getPollingLightWelcomeMode()Z
.end method

.method public abstract getRearFogLampState()Z
.end method

.method public abstract getRearLogoLightStatus()Z
.end method

.method public abstract getRearLogoLightSw()Z
.end method

.method public abstract getTurnLampState()Lcom/xiaopeng/carcontrol/viewmodel/lamp/TurnLampState;
.end method

.method public abstract isAutoLampHeight()Z
.end method

.method public abstract isLedDrlEnabled()Z
.end method

.method public abstract isLightMeHomeEnable()Z
.end method

.method public abstract isParkLampIncludeFmB()Z
.end method

.method public abstract isTurnLampOn()Z
.end method

.method public abstract setAutoLampHeight(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation
.end method

.method public abstract setAutoLampHeight(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "auto",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setCarpetLightWelcomeMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setDomeLight(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation
.end method

.method public abstract setDomeLightBrightness(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation
.end method

.method public abstract setDomeLightBrightness(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "brightness",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setDomeLightBrightnessRaw(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brightness"
        }
    .end annotation
.end method

.method public abstract setDomeLightBrightnessRaw(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "brightness",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setDomeLightSw(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lightType",
            "enable"
        }
    .end annotation
.end method

.method public abstract setHeadLampGroup(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "groupId"
        }
    .end annotation
.end method

.method public abstract setHeadLampGroup(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "groupId",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setLampHeightLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setLampHeightLevel(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "level",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setLedDrlEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLightMeHome(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setLightMeHomeTime(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "timeCfg"
        }
    .end annotation
.end method

.method public abstract setLowBeamOffConfirmSt(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "confirmSt"
        }
    .end annotation
.end method

.method public abstract setParkLampIncludeFmB(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setPollingLightWelcomeMode(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRearFogLamp(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setRearLogoLightSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract showRearLogoLightConfirmDialog()V
.end method
