.class public Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel;
.super Ljava/lang/Object;
.source "ScreenCalibrationModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$AsyncTaskCallback;
    }
.end annotation


# static fields
.field private static final EXEC_DO_CALIBRATION:Ljava/lang/String; = "echo 0,1 > /sys/bus/i2c/devices/1-0024/mfg_test/calibrate"

.field private static final EXEC_FILE_CALIBRATION:Ljava/lang/String; = "/sys/bus/i2c/devices/1-0024/mfg_test/calibrate"

.field private static final EXEC_READ_CALIBRATION:Ljava/lang/String; = "cat /sys/bus/i2c/devices/1-0024/mfg_test/calibrate"

.field public static final STATUS_DEFAULT:Ljava/lang/String; = "status 000"

.field public static final STATUS_SUCCESS:Ljava/lang/String; = "success"

.field private static final TAG:Ljava/lang/String; = "ScreenCalibrationModel"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalibrationResult(Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$AsyncTaskCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$AsyncTaskCallback;

    .line 29
    const-string v0, "ScreenCalibrationModel"

    const-string v1, "getCalibrationResult"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$1;-><init>(Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel;Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$AsyncTaskCallback;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 58
    return-void
.end method

.method public isXinLiDisplay()Z
    .locals 2

    .line 87
    const-string v0, "ScreenCalibrationModel"

    const-string v1, "initDisplayLevel"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    const-string v0, "sys.xiaopeng.display_type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 89
    .local v0, "info":Ljava/lang/String;
    const-string v1, "XinLi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public setCalibration()V
    .locals 2

    .line 61
    const-string v0, "ScreenCalibrationModel"

    const-string v1, "setCalibration"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel$2;-><init>(Lcom/xiaopeng/factory/model/factorytest/ScreenCalibrationModel;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 82
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 83
    return-void
.end method
