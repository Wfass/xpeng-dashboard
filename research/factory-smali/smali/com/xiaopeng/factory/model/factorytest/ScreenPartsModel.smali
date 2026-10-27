.class public Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;
.super Ljava/lang/Object;
.source "ScreenPartsModel.java"


# static fields
.field public static final DISPLAY_COLOR_BLACK:I = 0x2

.field public static final DISPLAY_COLOR_SILVERY:I = 0x0

.field public static final DISPLAY_LEVEL_HIGH:I = 0x1

.field public static final DISPLAY_LEVEL_HIGH_COLOR_BLACK:Ljava/lang/String; = "8610001DB100A1"

.field public static final DISPLAY_LEVEL_HIGH_COLOR_SILVERY:Ljava/lang/String; = "8610001DB100A3"

.field public static final DISPLAY_LEVEL_MIDDLE:I = 0x2

.field public static final DISPLAY_LEVEL_MIDDLE_COLOR_BLACK:Ljava/lang/String; = "8610001DA10003"

.field public static final DISPLAY_LEVEL_MIDDLE_COLOR_SILVERY:Ljava/lang/String; = "8610001DA10001"

.field public static final DISPLAY_TYPE_CHANGXIN:Ljava/lang/String; = "ChangXin"

.field public static final DISPLAY_TYPE_XINLI:Ljava/lang/String; = "XinLi"

.field public static final EXEC_FILE_CALIBRATION:Ljava/lang/String; = "/sys/bus/i2c/devices/1-0024/mfg_test/calibrate"

.field public static final SYSTEM_PROPS_DISPLAY_TYPE:Ljava/lang/String; = "sys.xiaopeng.display_type"

.field private static final TAG:Ljava/lang/String; = "ScreenPartsModel"


# instance fields
.field private mDisplayColor:I

.field private mDisplayLevel:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->mDisplayLevel:I

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->mDisplayColor:I

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->initDisplayLevel()V

    .line 37
    return-void
.end method

.method private initDisplayLevel()V
    .locals 2

    .line 92
    const-string v0, "ScreenPartsModel"

    const-string v1, "initDisplayLevel"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    const-string v0, "sys.xiaopeng.display_type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "info":Ljava/lang/String;
    const-string v1, "XinLi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->setDisplayLevel(I)V

    .line 96
    return-void

    .line 98
    :cond_0
    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->setDisplayLevel(I)V

    .line 99
    return-void
.end method


# virtual methods
.method public getDisplayColor()I
    .locals 1

    .line 48
    iget v0, p0, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->mDisplayColor:I

    return v0
.end method

.method public getDisplayLevel()I
    .locals 1

    .line 40
    iget v0, p0, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->mDisplayLevel:I

    return v0
.end method

.method public getPartsNumber()Ljava/lang/String;
    .locals 4

    .line 79
    invoke-static {}, Lcom/xiaopeng/factory/model/car/McuModel;->getInstance()Lcom/xiaopeng/factory/model/car/McuModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/factory/model/car/McuModel;->getFactoryDisplayTypeMsgToMcu()Ljava/lang/String;

    move-result-object v0

    .line 80
    .local v0, "data":Ljava/lang/String;
    const-string v1, "ScreenPartsModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPartsNumber data = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .line 103
    return-void
.end method

.method public setDisplayColor(I)V
    .locals 0
    .param p1, "color"    # I

    .line 52
    iput p1, p0, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->mDisplayColor:I

    .line 53
    return-void
.end method

.method public setDisplayLevel(I)V
    .locals 0
    .param p1, "level"    # I

    .line 44
    iput p1, p0, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->mDisplayLevel:I

    .line 45
    return-void
.end method

.method public setDisplaySpec(Ljava/lang/String;)V
    .locals 5
    .param p1, "config"    # Ljava/lang/String;

    .line 57
    const-string v0, "ScreenPartsModel"

    const-string v1, "setDisplaySpec"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x17990b61

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq v0, v1, :cond_3

    const v1, 0x17990b63

    if-eq v0, v1, :cond_2

    const v1, 0x194de60f

    if-eq v0, v1, :cond_1

    const v1, 0x194de611

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "8610001DB100A3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v0, "8610001DB100A1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_2
    const-string v0, "8610001DA10003"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const-string v0, "8610001DA10001"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 72
    :pswitch_0
    invoke-virtual {p0, v4}, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->setDisplayColor(I)V

    .line 73
    invoke-virtual {p0, v4}, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->setDisplayLevel(I)V

    goto :goto_2

    .line 68
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->setDisplayColor(I)V

    .line 69
    invoke-virtual {p0, v2}, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->setDisplayLevel(I)V

    .line 70
    goto :goto_2

    .line 64
    :pswitch_2
    invoke-virtual {p0, v3}, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->setDisplayColor(I)V

    .line 65
    invoke-virtual {p0, v4}, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->setDisplayLevel(I)V

    .line 66
    goto :goto_2

    .line 60
    :pswitch_3
    invoke-virtual {p0, v3}, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->setDisplayColor(I)V

    .line 61
    invoke-virtual {p0, v2}, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->setDisplayLevel(I)V

    .line 62
    nop

    .line 76
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setPartsNumber()V
    .locals 3

    .line 86
    const-string v0, "ScreenPartsModel"

    const-string v1, "setPartsNumber"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->v(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    invoke-static {}, Lcom/xiaopeng/factory/model/car/McuModel;->getInstance()Lcom/xiaopeng/factory/model/car/McuModel;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->mDisplayColor:I

    iget v2, p0, Lcom/xiaopeng/factory/model/factorytest/ScreenPartsModel;->mDisplayLevel:I

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/xiaopeng/factory/model/car/McuModel;->sendFactoryDisplayTypeMsgToMcu(I)V

    .line 88
    return-void
.end method
