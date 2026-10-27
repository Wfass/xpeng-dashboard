.class public Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;
.super Ljava/lang/Object;
.source "DriveSubUitls.java"


# static fields
.field private static final DRIVE_MODE_ECO:Ljava/lang/String; = "-1_-1_-1_-1_1_-1_1_1_-1_-1_-1_-1_-1"

.field private static final DRIVE_MODE_NORMAL:Ljava/lang/String; = "-1_-1_-1_-1_1_-1_0_1_-1_-1_-1_-1_-1"

.field private static final DRIVE_MODE_SPORT:Ljava/lang/String; = "-1_-1_-1_-1_1_-1_2_1_-1_-1_-1_-1_-1"

.field private static final DRIVE_MODE_XPEDAL:Ljava/lang/String; = "-1_-1_-1_-1_3_-1_2_1_-1_-1_-1_-1_-1"

.field private static final DRIVING_MODE_STATUS_COMFORT_V2:Ljava/lang/String; = "-1_-1_-1_-1_1_-1_1_1_-1_-1_-1_-1_-1"

.field private static final TAG:Ljava/lang/String; = "DriveSubUitls"

.field private static mConfigMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCurDriveMode:I = 0xa

.field private static mDefaultSubItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mDriveSubItemMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mGeekConfig:Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mConfigMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    .line 31
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-1_-1_-1_-1_1_-1_0_1_-1_-1_-1_-1_-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mConfigMap:Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-1_-1_-1_-1_1_-1_2_1_-1_-1_-1_-1_-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mConfigMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-1_-1_-1_-1_1_-1_1_1_-1_-1_-1_-1_-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mConfigMap:Ljava/util/HashMap;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mConfigMap:Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "-1_-1_-1_-1_3_-1_2_1_-1_-1_-1_-1_-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDefaultSubItemMap:Ljava/util/HashMap;

    .line 39
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mConfigMap:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$DriveSubUitls$wBOUxz-4L3umc_gx4HW2_QP1uAQ;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$DriveSubUitls$wBOUxz-4L3umc_gx4HW2_QP1uAQ;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    .line 42
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDefaultSubItemMap:Ljava/util/HashMap;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$DriveSubUitls$bfiQRgyvRTsAOapTRxI99tm3x-w;->INSTANCE:Lcom/xiaopeng/carcontrol/viewmodel/vcu/-$$Lambda$DriveSubUitls$bfiQRgyvRTsAOapTRxI99tm3x-w;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static allToSavedStr()Ljava/lang/String;
    .locals 1

    .line 160
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->allToSavedStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static allToSavedStr(Ljava/util/Map;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveSubItemMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 172
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getDriveSubItemString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "allToSavedStr: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DriveSubUitls"

    invoke-static {v1, p0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static buildAndUpdateCache(Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "geekConfig"
        }
    .end annotation

    .line 193
    sput-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mGeekConfig:Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;

    .line 194
    invoke-static {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->geekConfigToSubItem(Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;)V

    return-void
.end method

.method public static buildGeekConfig(Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "geekConfig"
        }
    .end annotation

    .line 184
    sput-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mGeekConfig:Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;

    return-void
.end method

.method private static geekConfigToSubItem(Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "geekConfig"
        }
    .end annotation

    .line 249
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    if-eqz p0, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;->getSettings()Ljava/util/List;

    move-result-object p0

    .line 252
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;

    .line 253
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->getSettingId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 276
    :pswitch_0
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->getTargetValue()I

    move-result v2

    const-string v3, "AS_SOFT"

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 273
    :pswitch_1
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->getTargetValue()I

    move-result v2

    const-string v3, "EPS"

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 270
    :pswitch_2
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->getTargetValue()I

    move-result v2

    const-string v3, "AS_HEIGHT"

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 267
    :pswitch_3
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->getTargetValue()I

    move-result v2

    const-string v3, "CREEP_SPEED"

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 264
    :pswitch_4
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->getTargetValue()I

    move-result v2

    const-string v3, "AWD_SETTINGS"

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 261
    :pswitch_5
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->getTargetValue()I

    move-result v2

    const-string v3, "ESP_PLUS"

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 258
    :pswitch_6
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->getTargetValue()I

    move-result v2

    const-string v3, "ENERGY_RECOVERY_PLUS"

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 255
    :pswitch_7
    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->getTargetValue()I

    move-result v2

    const-string v3, "POWER_RESPONSE_PLUS"

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    goto :goto_0

    .line 283
    :cond_0
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getAllDefaultDriveSubItemString()Ljava/lang/String;
    .locals 1

    .line 292
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDefaultSubItemMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->allToSavedStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultDriveSubItem(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDefaultDriveSubItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveSubUitls"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDefaultSubItemMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    return-object p0
.end method

.method public static getDriveSubConfigWithDriveMode(I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDriveSubItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveSubUitls"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    .line 103
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getDriveSubItemString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDriveSubItem(I)Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDriveSubItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveSubUitls"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    return-object p0
.end method

.method public static getGeekConfig()Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;
    .locals 1

    .line 203
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mGeekConfig:Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDefaultSubItemMap:Ljava/util/HashMap;

    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    invoke-direct {v1, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    return-void
.end method

.method static synthetic lambda$static$1(Ljava/lang/Integer;Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 44
    :try_start_0
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mConfigMap:Ljava/util/HashMap;

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public static restoreDefaultConfig(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 296
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    .line 299
    :try_start_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDefaultSubItemMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 301
    :catch_0
    new-instance v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mConfigMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_0

    .line 305
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/16 v0, 0xf

    if-ne p0, v0, :cond_1

    .line 309
    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->setToGeekConfig(Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;)V

    :cond_1
    return-void
.end method

.method public static setAllDriveSubItemByStr(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allDriveSubItem"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, ","

    .line 65
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 66
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    const-string v4, ":"

    .line 67
    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 68
    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 69
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 70
    new-instance v5, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    const/4 v6, 0x1

    aget-object v3, v3, v6

    invoke-direct {v5, v3}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;-><init>(Ljava/lang/String;)V

    .line 71
    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static setCurDriveMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setCurDriveMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveSubUitls"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    sput p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mCurDriveMode:I

    return-void
.end method

.method private static setToGeekConfig(Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveSubItem"
        }
    .end annotation

    .line 212
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mGeekConfig:Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/drive/GeekConfig;->getSettings()Ljava/util/List;

    move-result-object v0

    .line 213
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;

    .line 214
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->getSettingId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "AS_SOFT"

    .line 237
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->setTargetValue(I)V

    goto :goto_0

    :pswitch_1
    const-string v2, "EPS"

    .line 234
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->setTargetValue(I)V

    goto :goto_0

    :pswitch_2
    const-string v2, "AS_HEIGHT"

    .line 231
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->setTargetValue(I)V

    goto :goto_0

    :pswitch_3
    const-string v2, "CREEP_SPEED"

    .line 228
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->setTargetValue(I)V

    goto :goto_0

    :pswitch_4
    const-string v2, "AWD_SETTINGS"

    .line 225
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->setTargetValue(I)V

    goto :goto_0

    :pswitch_5
    const-string v2, "ESP_PLUS"

    .line 222
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->setTargetValue(I)V

    goto :goto_0

    :pswitch_6
    const-string v2, "ENERGY_RECOVERY_PLUS"

    .line 219
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->setTargetValue(I)V

    goto :goto_0

    :pswitch_7
    const-string v2, "POWER_RESPONSE_PLUS"

    .line 216
    invoke-virtual {p0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getFunctionValue(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/bean/drive/GeekSetting;->setTargetValue(I)V

    goto :goto_0

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static updateAndGetAllSubItem(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "function",
            "functionValues"
        }
    .end annotation

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAndGetAllSubItem "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " needSave "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveSubUitls"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->updateDriveSubItemDetail(Ljava/lang/String;I)V

    .line 151
    sget-object p0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    invoke-static {p0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->allToSavedStr(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static updateDriveSubItem(Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveSubItem"
        }
    .end annotation

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDriveSubItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mCurDriveMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveSubUitls"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mCurDriveMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static updateDriveSubItemByDriveMode(ILcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "driveMode",
            "driveSubItem"
        }
    .end annotation

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDriveSubItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->getDriveSubItemStringForDebug()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveSubUitls"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0xf

    if-ne p0, v0, :cond_0

    .line 125
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->setToGeekConfig(Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;)V

    :cond_0
    return-void
.end method

.method public static updateDriveSubItemDetail(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "function",
            "functionValues"
        }
    .end annotation

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDriveSubItemDetail: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mCurDriveMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DriveSubUitls"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mDriveSubItemMap:Ljava/util/HashMap;

    sget v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveSubUitls;->mCurDriveMode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/bean/DriveSubItem;->setFunctionValue(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
