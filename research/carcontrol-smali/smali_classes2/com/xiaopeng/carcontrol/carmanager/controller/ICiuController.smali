.class public interface abstract Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController;
.super Ljava/lang/Object;
.source "ICiuController.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/carcontrol/carmanager/IBaseCarController<",
        "Lcom/xiaopeng/carcontrol/carmanager/controller/ICiuController$Callback;",
        ">;"
    }
.end annotation


# static fields
.field public static final CIU_RAIN_SW_AUTO:I = 0x0

.field public static final CIU_RAIN_SW_LEVEL1:I = 0x1

.field public static final CIU_RAIN_SW_LEVEL2:I = 0x2

.field public static final CIU_RAIN_SW_LEVEL3:I = 0x3

.field public static final CIU_RAIN_SW_LEVEL4:I = 0x4

.field public static final DISTRACTION_OFF:I = 0x0

.field public static final DISTRACTION_ON:I = 0x1

.field public static final DISTRACT_STATUS_OFF:I = 0x2

.field public static final DISTRACT_STATUS_ON:I = 0x1

.field public static final DMS_OFF:I = 0x0

.field public static final DMS_ON:I = 0x1

.field public static final DMS_STATUS_OFF:I = 0x1

.field public static final DMS_STATUS_ON:I = 0x2

.field public static final FACE_SW_STATUS_OFF:I = 0x0

.field public static final FACE_SW_STATUS_ON:I = 0x1

.field public static final FATIGUE_OFF:I = 0x0

.field public static final FATIGUE_ON:I = 0x1

.field public static final FATIGUE_STATUS_OFF:I = 0x2

.field public static final FATIGUE_STATUS_ON:I = 0x1


# virtual methods
.method public abstract controlDistractSwitch(ZZ)V
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

.method public abstract controlDmsSwitch(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract controlFaceIdSwitch(ZZ)V
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

.method public abstract controlFatigueSwitch(ZZ)V
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

.method public abstract getCiuWiperLevel()I
.end method

.method public abstract getDistractSw()Z
.end method

.method public abstract getDmsSw()Z
.end method

.method public abstract getFaceIdSw()Z
.end method

.method public abstract getFatigueSw()Z
.end method

.method public abstract isCiuRainEnable()Z
.end method

.method public abstract isCiuValid()Z
.end method

.method public abstract setCiuRainEnable(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setCiuWiperLevel(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation
.end method

.method public abstract setDistractSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setDmsSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setFaceIdSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setFatigueSw(Z)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation
.end method

.method public abstract setMultiDms(ZZZZ)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dmsSw",
            "faceIdSw",
            "fatigueSw",
            "distractSw"
        }
    .end annotation
.end method
