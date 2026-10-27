.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController;
.super Ljava/lang/Object;
.source "IAtlController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/IAtlController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final ATL_ACTIVE:I = 0x1

.field public static final ATL_DUAL_COLOR_MAX:I = 0x6

.field public static final ATL_DUAL_COLOR_MIN:I = 0x0

.field public static final ATL_EFFECT_BREATH:Ljava/lang/String; = "gentle_breathing"

.field public static final ATL_EFFECT_MUSIC:Ljava/lang/String; = "music"

.field public static final ATL_EFFECT_NONE:Ljava/lang/String; = "stable_effect"

.field public static final ATL_EFFECT_SPEED:Ljava/lang/String; = "follow_speed"

.field public static final ATL_SINGLE_COLOR_MAX:I = 0x14

.field public static final ATL_SINGLE_COLOR_MIN:I = 0x1

.field public static final ATL_SPEAKER_SW_CLOSE:I = 0x0

.field public static final ATL_SPEAKER_SW_DEFAULT:I = 0x0

.field public static final ATL_SPEAKER_SW_OPEN:I = 0x1

.field public static final ATL_SW_KEY:Ljava/lang/String; = "isAmbientLightOpen"


# virtual methods
.method public abstract getAtlBrightness()I
.end method

.method public abstract getAtlDualFirstColor(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation
.end method

.method public abstract getAtlDualSecondColor(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation
.end method

.method public abstract getAtlEffect()Ljava/lang/String;
.end method

.method public abstract getAtlRgbMemoryDualColor()Ljava/lang/String;
.end method

.method public abstract getAtlRgbMemorySingleColor()Ljava/lang/String;
.end method

.method public abstract getAtlSingleColor(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation
.end method

.method public abstract isAtlAutoBrightEnabled()Z
.end method

.method public abstract isAtlDualColor(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effect"
        }
    .end annotation
.end method

.method public abstract isAtlSpeakerSwEnabled()Z
.end method

.method public abstract isAtlSwEnabled()Z
.end method

.method public abstract isSupportDoubleThemeColor(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectType"
        }
    .end annotation
.end method

.method public abstract setAtlAutoBrightEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAtlBrightness(IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "brightness",
            "force"
        }
    .end annotation
.end method

.method public abstract setAtlBrightness(IZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "brightness",
            "force",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setAtlDualColor(Ljava/lang/String;IIZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "color1",
            "color2",
            "force"
        }
    .end annotation
.end method

.method public abstract setAtlDualColor(Ljava/lang/String;IIZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "color1",
            "color2",
            "force",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setAtlDualColor(Ljava/lang/String;ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "dualColor",
            "force"
        }
    .end annotation
.end method

.method public abstract setAtlDualColor(Ljava/lang/String;ZZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "dualColor",
            "force",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setAtlEffect(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "effect",
            "force"
        }
    .end annotation
.end method

.method public abstract setAtlEffect(Ljava/lang/String;ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "force",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setAtlRgbDualColor(IIIZZ)V
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
.end method

.method public abstract setAtlRgbSingleColor(IIZZ)V
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
.end method

.method public abstract setAtlSingleColor(Ljava/lang/String;IZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "color",
            "force"
        }
    .end annotation
.end method

.method public abstract setAtlSingleColor(Ljava/lang/String;IZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "effect",
            "color",
            "force",
            "needSave"
        }
    .end annotation
.end method

.method public abstract setAtlSpeakerSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAtlSwEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setAtlSwEnable(ZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation
.end method
