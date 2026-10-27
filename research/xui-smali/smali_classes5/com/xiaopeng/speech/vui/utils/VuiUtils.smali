.class public Lcom/xiaopeng/speech/vui/utils/VuiUtils;
.super Ljava/lang/Object;
.source "VuiUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneBooleanTypeAdapter;,
        Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneIntegerTypeAdapter;
    }
.end annotation


# static fields
.field public static final CAR_PLATFORM_A1:Ljava/lang/String; = "A1"

.field public static final CAR_PLATFORM_A2:Ljava/lang/String; = "A2"

.field public static final CAR_PLATFORM_A3:Ljava/lang/String; = "A3"

.field public static final CAR_PLATFORM_Q1:Ljava/lang/String; = "Q1"

.field public static final CAR_PLATFORM_Q2:Ljava/lang/String; = "Q2"

.field public static final CAR_PLATFORM_Q3:Ljava/lang/String; = "Q3"

.field public static final CAR_PLATFORM_Q3A:Ljava/lang/String; = "Q3A"

.field public static final CAR_PLATFORM_Q5:Ljava/lang/String; = "Q5"

.field public static final CAR_PLATFORM_Q6:Ljava/lang/String; = "Q6"

.field public static final CAR_PLATFORM_Q7:Ljava/lang/String; = "Q7"

.field public static final CAR_PLATFORM_Q7A:Ljava/lang/String; = "Q7A"

.field public static final CAR_PLATFORM_Q8:Ljava/lang/String; = "Q8"

.field public static final CAR_PLATFORM_Q8B:Ljava/lang/String; = "Q8B"

.field public static final CAR_PLATFORM_Q9:Ljava/lang/String; = "Q9"

.field public static final CAR_PLATFORM_QB:Ljava/lang/String; = "QB"

.field public static final CAR_PLATFORM_QD:Ljava/lang/String; = "QD"

.field public static final CAR_PLATFORM_QE:Ljava/lang/String; = "QE"

.field public static final CAR_PLATFORM_QG:Ljava/lang/String; = "QG"

.field public static final CAR_PLATFORM_QI:Ljava/lang/String; = "QI"

.field public static final CAR_PLATFORM_QL:Ljava/lang/String; = "QL"

.field public static final CAR_TYPE_D10:Ljava/lang/String; = "D10"

.field public static final CAR_TYPE_D20P:Ljava/lang/String; = "D20P"

.field public static final CAR_TYPE_D21A:Ljava/lang/String; = "D21A"

.field public static final CAR_TYPE_D21B:Ljava/lang/String; = "D21B"

.field public static final CAR_TYPE_D22:Ljava/lang/String; = "D22"

.field public static final CAR_TYPE_D55:Ljava/lang/String; = "D55"

.field public static final CAR_TYPE_E28:Ljava/lang/String; = "E28"

.field public static final CAR_TYPE_E28A:Ljava/lang/String; = "E28a"

.field public static final CAR_TYPE_E38:Ljava/lang/String; = "E38"

.field public static final CAR_TYPE_F30:Ljava/lang/String; = "F30"

.field public static final CAR_TYPE_H93:Ljava/lang/String; = "H93"

.field public static LIST_VEDIO_TYPE:I

.field public static final VUI_ENABLE_APP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isDisableVuiFeature:Z

.field private static mAppAreaLocation:Ljava/lang/String;

.field private static mAppDisplayLocation:Ljava/lang/String;

.field private static mAttrExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

.field private static mExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

.field private static final mTopApp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sCarType:Ljava/lang/String;

.field private static sRegion:Ljava/lang/String;

.field private static sType:Ljava/lang/String;

.field private static support2DMultiScreenPlatform:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static support3DMultiScreenPlatform:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static unSupportType:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static userDisabledFeature:Z

.field private static viewMode:Lcom/xiaopeng/vui/commons/VuiMode;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .line 74
    const/4 v0, 0x1

    sput v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->LIST_VEDIO_TYPE:I

    .line 75
    const-string v0, "primary"

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    .line 162
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    .line 175
    const-string v1, "com.xiaopeng.montecarlo"

    const-string v2, "com.xiaopeng.musicradio"

    const-string v3, "com.xiaopeng.carcontrol"

    const-string v4, "com.xiaopeng.car.settings"

    const-string v5, "com.xiaopeng.chargecontrol"

    const-string v6, "com.xiaopeng.xmart.camera"

    const-string v7, "com.xiaopeng.btphone"

    const-string v8, "com.xiaopeng.aiassistant"

    const-string v9, "com.xiaopeng.carspeechservice"

    const-string v10, "com.xiaopeng.speech.scenedemo"

    const-string v11, "com.xiaopeng.vui.demo"

    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->VUI_ENABLE_APP:Ljava/util/List;

    .line 345
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    .line 429
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils$2;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils$2;-><init>()V

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAttrExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    .line 943
    const/4 v1, 0x0

    sput-boolean v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isDisableVuiFeature:Z

    .line 945
    sput-boolean v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->userDisabledFeature:Z

    .line 946
    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sRegion:Ljava/lang/String;

    .line 1064
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->NORMAL:Lcom/xiaopeng/vui/commons/VuiMode;

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->viewMode:Lcom/xiaopeng/vui/commons/VuiMode;

    .line 1608
    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sType:Ljava/lang/String;

    .line 1615
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->unSupportType:Ljava/util/List;

    .line 1616
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->unSupportType:Ljava/util/List;

    const-string v2, "A1"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1617
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->unSupportType:Ljava/util/List;

    const-string v2, "A2"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1618
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->unSupportType:Ljava/util/List;

    const-string v2, "A3"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1620
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support3DMultiScreenPlatform:Ljava/util/List;

    .line 1622
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    .line 1623
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    const-string v2, "Q7"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1624
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    const-string v2, "Q7A"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1625
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    const-string v2, "Q8"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1626
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    const-string v2, "Q8B"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1627
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    const-string v2, "Q9"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1628
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    const-string v2, "QB"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1629
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    const-string v2, "Q1"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1630
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    const-string v2, "QD"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1631
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    const-string v2, "QE"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1632
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    const-string v2, "QI"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1633
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    const-string v2, "QG"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1634
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    const-string v2, "QL"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1762
    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    .line 1896
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mTopApp:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCanVoiceControlProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V
    .locals 3
    .param p0, "vuiView"    # Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 1387
    if-eqz p0, :cond_1

    .line 1388
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    .line 1389
    .local v0, "props":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1390
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 1392
    :cond_0
    const-string v1, "canVoiceControl"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1393
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "props":Lorg/json/JSONObject;
    goto :goto_0

    .line 1395
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1397
    :cond_1
    :goto_0
    nop

    .line 1398
    :goto_1
    return-void
.end method

.method public static addDefaultPriorityValue(Lcom/xiaopeng/vui/commons/IVuiElement;I)V
    .locals 2
    .param p0, "vuiView"    # Lcom/xiaopeng/vui/commons/IVuiElement;
    .param p1, "value"    # I

    .line 1493
    if-eqz p0, :cond_1

    .line 1494
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    .line 1495
    .local v0, "props":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1496
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 1498
    :cond_0
    const-string v1, "defaultPriorityValue"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1499
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "props":Lorg/json/JSONObject;
    goto :goto_0

    .line 1501
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1503
    :cond_1
    :goto_0
    nop

    .line 1504
    :goto_1
    return-void
.end method

.method public static addDisableTplProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V
    .locals 3
    .param p0, "vuiView"    # Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 1447
    if-eqz p0, :cond_1

    .line 1448
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    .line 1449
    .local v0, "props":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1450
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 1452
    :cond_0
    const-string v1, "disableTpl"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1453
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "props":Lorg/json/JSONObject;
    goto :goto_0

    .line 1455
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1457
    :cond_1
    :goto_0
    nop

    .line 1458
    :goto_1
    return-void
.end method

.method public static addGeneralActProp(Lcom/xiaopeng/vui/commons/IVuiElement;Ljava/lang/String;)V
    .locals 2
    .param p0, "vuiView"    # Lcom/xiaopeng/vui/commons/IVuiElement;
    .param p1, "generalAct"    # Ljava/lang/String;

    .line 1402
    if-eqz p0, :cond_1

    .line 1403
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    .line 1404
    .local v0, "props":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1405
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 1407
    :cond_0
    const-string v1, "generalAct"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1408
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "props":Lorg/json/JSONObject;
    goto :goto_0

    .line 1410
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1412
    :cond_1
    :goto_0
    nop

    .line 1413
    :goto_1
    return-void
.end method

.method public static addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V
    .locals 3
    .param p0, "vuiView"    # Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 1372
    if-eqz p0, :cond_1

    .line 1373
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    .line 1374
    .local v0, "props":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1375
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 1377
    :cond_0
    const-string v1, "hasFeedback"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1378
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "props":Lorg/json/JSONObject;
    goto :goto_0

    .line 1380
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1382
    :cond_1
    :goto_0
    nop

    .line 1383
    :goto_1
    return-void
.end method

.method public static addMatchFirstProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V
    .locals 3
    .param p0, "vuiView"    # Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 1462
    if-eqz p0, :cond_1

    .line 1463
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    .line 1464
    .local v0, "props":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1465
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 1467
    :cond_0
    const-string v1, "matchedFirstPirority"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1468
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "props":Lorg/json/JSONObject;
    goto :goto_0

    .line 1470
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1472
    :cond_1
    :goto_0
    nop

    .line 1473
    :goto_1
    return-void
.end method

.method public static addProps(Lcom/xiaopeng/vui/commons/IVuiElement;Ljava/util/Map;)V
    .locals 6
    .param p0, "element"    # Lcom/xiaopeng/vui/commons/IVuiElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/vui/commons/IVuiElement;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1509
    .local p1, "propsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1510
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    .line 1511
    .local v0, "props":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1512
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 1514
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1515
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1516
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1517
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1515
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1519
    .end local v2    # "i":I
    :cond_1
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "props":Lorg/json/JSONObject;
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    goto :goto_1

    .line 1521
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1523
    :cond_2
    :goto_1
    nop

    .line 1524
    :goto_2
    return-void
.end method

.method public static addProps(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/Map;)V
    .locals 6
    .param p0, "element"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1353
    .local p1, "propsMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1354
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1355
    .local v0, "props":Lcom/google/gson/JsonObject;
    if-nez v0, :cond_0

    .line 1356
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    move-object v0, v1

    .line 1358
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1359
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 1360
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1361
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1359
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1363
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setProps(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "props":Lcom/google/gson/JsonObject;
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Boolean;>;>;"
    goto :goto_1

    .line 1365
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1367
    :cond_2
    :goto_1
    nop

    .line 1368
    :goto_2
    return-void
.end method

.method public static addSKipAlreadyProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V
    .locals 3
    .param p0, "vuiView"    # Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 1478
    if-eqz p0, :cond_1

    .line 1479
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    .line 1480
    .local v0, "props":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1481
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 1483
    :cond_0
    const-string v1, "skipMultipleAlready"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1484
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "props":Lorg/json/JSONObject;
    goto :goto_0

    .line 1486
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1488
    :cond_1
    :goto_0
    nop

    .line 1489
    :goto_1
    return-void
.end method

.method public static addScrollProps(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)V
    .locals 7
    .param p0, "element"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p1, "view"    # Landroid/view/View;

    .line 1324
    if-eqz p0, :cond_3

    .line 1325
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1326
    .local v0, "props":Lcom/google/gson/JsonObject;
    if-nez v0, :cond_0

    .line 1327
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    move-object v0, v1

    .line 1329
    :cond_0
    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    .line 1330
    move-object v1, p1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView;

    .line 1331
    .local v1, "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getActions()Lcom/google/gson/JsonObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1332
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    invoke-virtual {v3}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1333
    .local v2, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1334
    sget-object v3, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v5, 0x1

    const/4 v6, -0x1

    if-eqz v3, :cond_1

    .line 1335
    const-string v3, "canScrollUp"

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1336
    const-string v3, "canScrollDown"

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1337
    :cond_1
    sget-object v3, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYX:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1338
    const-string v3, "canScrollRight"

    invoke-virtual {v1, v5}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1339
    const-string v3, "canScrollLeft"

    invoke-virtual {v1, v6}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1344
    .end local v1    # "recyclerView":Landroidx/recyclerview/widget/RecyclerView;
    .end local v2    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setProps(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "props":Lcom/google/gson/JsonObject;
    goto :goto_1

    .line 1346
    :catch_0
    move-exception v0

    goto :goto_2

    .line 1348
    :cond_3
    :goto_1
    nop

    .line 1349
    :goto_2
    return-void
.end method

.method public static addUnitProp(Lcom/xiaopeng/vui/commons/IVuiElement;Ljava/lang/String;)V
    .locals 2
    .param p0, "vuiView"    # Lcom/xiaopeng/vui/commons/IVuiElement;
    .param p1, "unit"    # Ljava/lang/String;

    .line 1417
    if-eqz p0, :cond_1

    .line 1418
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    .line 1419
    .local v0, "props":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1420
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 1422
    :cond_0
    const-string v1, "unit"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1423
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "props":Lorg/json/JSONObject;
    goto :goto_0

    .line 1425
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1427
    :cond_1
    :goto_0
    nop

    .line 1428
    :goto_1
    return-void
.end method

.method public static addUnsupportProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V
    .locals 3
    .param p0, "vuiView"    # Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 1432
    if-eqz p0, :cond_1

    .line 1433
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    .line 1434
    .local v0, "props":Lorg/json/JSONObject;
    if-nez v0, :cond_0

    .line 1435
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    move-object v0, v1

    .line 1437
    :cond_0
    const-string v1, "unsupported"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1438
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "props":Lorg/json/JSONObject;
    goto :goto_0

    .line 1440
    :catch_0
    move-exception v0

    goto :goto_1

    .line 1442
    :cond_1
    :goto_0
    nop

    .line 1443
    :goto_1
    return-void
.end method

.method public static canUseVuiFeature()Z
    .locals 1

    .line 948
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->platformIsSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->userDisabledFeature:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static cannotUpload()Z
    .locals 3

    .line 1026
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    const-string v0, "VuiUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "canUseVuiFeature:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isFeatureDisabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isFeatureDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1029
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static createStatefulButtonData(I[Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "currIndex"    # I
    .param p1, "vuilabels"    # [Ljava/lang/String;
    .param p2, "props"    # Lorg/json/JSONObject;

    .line 645
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    .line 646
    const/4 v0, 0x0

    .line 647
    .local v0, "stateNames":[Ljava/lang/String;
    if-ltz p0, :cond_1

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-gt p0, v1, :cond_1

    .line 648
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 651
    .local v1, "states":Lorg/json/JSONArray;
    :try_start_0
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/String;

    move-object v0, v2

    .line 653
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 654
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 655
    .local v3, "state":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 656
    .local v4, "stateName":Ljava/lang/String;
    aput-object v4, v0, v2

    .line 657
    aget-object v5, p1, v2

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 653
    .end local v3    # "state":Lorg/json/JSONObject;
    .end local v4    # "stateName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 661
    .end local v2    # "i":I
    :cond_0
    const-string v2, "states"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 662
    const-string v2, "curState"

    aget-object v3, v0, p0

    invoke-virtual {p2, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 663
    return-object p2

    .line 664
    :catch_0
    move-exception v2

    .line 665
    .local v2, "var8":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 670
    .end local v0    # "stateNames":[Ljava/lang/String;
    .end local v1    # "states":Lorg/json/JSONArray;
    .end local v2    # "var8":Lorg/json/JSONException;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static createStatefulButtonData(I[Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;)Lorg/json/JSONObject;
    .locals 6
    .param p0, "currIndex"    # I
    .param p1, "vuilabels"    # [Ljava/lang/String;
    .param p2, "props"    # Lorg/json/JSONObject;
    .param p3, "view"    # Landroid/view/View;

    .line 674
    if-eqz p1, :cond_1

    array-length v0, p1

    if-eqz v0, :cond_1

    instance-of v0, p3, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_1

    .line 675
    const/4 v0, 0x0

    .line 676
    .local v0, "stateNames":[Ljava/lang/String;
    if-ltz p0, :cond_1

    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-gt p0, v1, :cond_1

    .line 677
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 680
    .local v1, "states":Lorg/json/JSONArray;
    :try_start_0
    array-length v2, p1

    new-array v2, v2, [Ljava/lang/String;

    move-object v0, v2

    .line 682
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 683
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 684
    .local v3, "state":Lorg/json/JSONObject;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 685
    .local v4, "stateName":Ljava/lang/String;
    aput-object v4, v0, v2

    .line 686
    aget-object v5, p1, v2

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 687
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 682
    .end local v3    # "state":Lorg/json/JSONObject;
    .end local v4    # "stateName":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 690
    .end local v2    # "i":I
    :cond_0
    const-string v2, "states"

    invoke-virtual {p2, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    move-object v2, p3

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    aget-object v3, v0, p0

    invoke-interface {v2, v3, p3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiValue(Ljava/lang/Object;Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 693
    return-object p2

    .line 694
    :catch_0
    move-exception v2

    .line 695
    .local v2, "var8":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 700
    .end local v0    # "stateNames":[Ljava/lang/String;
    .end local v1    # "states":Lorg/json/JSONArray;
    .end local v2    # "var8":Lorg/json/JSONException;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static disableVuiFeature()V
    .locals 1

    .line 1037
    const/4 v0, 0x1

    sput-boolean v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isDisableVuiFeature:Z

    .line 1038
    return-void
.end method

.method public static enableVuiFeature()V
    .locals 1

    .line 1041
    const/4 v0, 0x0

    sput-boolean v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isDisableVuiFeature:Z

    .line 1042
    return-void
.end method

.method public static findChildRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 7
    .param p0, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 1096
    if-eqz p0, :cond_4

    .line 1097
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1098
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/View;>;"
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1099
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1098
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1101
    .end local v2    # "i":I
    :cond_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1102
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 1103
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v3, :cond_1

    .line 1104
    return-object v2

    .line 1105
    :cond_1
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_3

    .line 1106
    move-object v3, v2

    check-cast v3, Landroid/view/ViewGroup;

    .line 1107
    .local v3, "group":Landroid/view/ViewGroup;
    move v4, v1

    .local v4, "i":I
    :goto_2
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 1108
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 1109
    .local v5, "child":Landroid/view/View;
    instance-of v6, v5, Landroid/view/ViewGroup;

    if-eqz v6, :cond_2

    .line 1110
    invoke-interface {v0, v5}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1107
    .end local v5    # "child":Landroid/view/View;
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 1114
    .end local v2    # "view":Landroid/view/View;
    .end local v3    # "group":Landroid/view/ViewGroup;
    .end local v4    # "i":I
    :cond_3
    goto :goto_1

    .line 1116
    .end local v0    # "queue":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/View;>;"
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public static findRecyclerView(Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/lang/ref/SoftReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1075
    .local p0, "rootView":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1076
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/ref/SoftReference<Landroid/view/View;>;>;"
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1077
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1078
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 1079
    .local v1, "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_0

    .line 1080
    return-object v1

    .line 1081
    :cond_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 1082
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 1083
    .local v2, "group":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/ViewGroup;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1084
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 1085
    .local v4, "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    invoke-virtual {v4}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 1086
    invoke-interface {v0, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1083
    .end local v4    # "child":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1090
    .end local v1    # "view":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/View;>;"
    .end local v2    # "group":Ljava/lang/ref/SoftReference;, "Ljava/lang/ref/SoftReference<Landroid/view/ViewGroup;>;"
    .end local v3    # "i":I
    :cond_2
    goto :goto_0

    .line 1091
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public static findViewPager(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager;
    .locals 6
    .param p0, "rootView"    # Landroid/view/View;

    .line 1131
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1132
    .local v0, "queue":Ljava/util/Queue;, "Ljava/util/Queue<Landroid/view/View;>;"
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1133
    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1134
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1135
    .local v1, "view":Landroid/view/View;
    instance-of v2, v1, Landroidx/viewpager/widget/ViewPager;

    if-eqz v2, :cond_0

    .line 1136
    move-object v2, v1

    check-cast v2, Landroidx/viewpager/widget/ViewPager;

    return-object v2

    .line 1137
    :cond_0
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_2

    .line 1138
    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    .line 1139
    .local v2, "group":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 1140
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 1141
    .local v4, "child":Landroid/view/View;
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-eqz v5, :cond_1

    .line 1142
    invoke-interface {v0, v4}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1139
    .end local v4    # "child":Landroid/view/View;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1146
    .end local v1    # "view":Landroid/view/View;
    .end local v2    # "group":Landroid/view/ViewGroup;
    .end local v3    # "i":I
    :cond_2
    goto :goto_0

    .line 1147
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public static generateCommonVuiElement(ILcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2
    .param p0, "id"    # I
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, p2, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateCommonVuiElement(ILcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2
    .param p0, "id"    # I
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;

    .line 826
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 719
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 3
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "isLayoutLoadable"    # Z
    .param p5, "priority"    # Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 734
    new-instance v0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;-><init>()V

    .line 735
    invoke-virtual {v0, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v0

    .line 736
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v0

    .line 737
    invoke-virtual {v0, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v0

    .line 738
    invoke-virtual {v0, p3}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->action(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v0

    .line 739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->timestamp(J)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v0

    .line 740
    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    .line 741
    .local v0, "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz p4, :cond_0

    .line 742
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setLayoutLoadable(Ljava/lang/Boolean;)V

    .line 744
    :cond_0
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 745
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setLayoutLoadable(Ljava/lang/Boolean;)V

    .line 747
    :cond_1
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result v1

    invoke-virtual {p5}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 748
    invoke-virtual {p5}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setPriority(I)V

    .line 751
    :cond_2
    return-object v0
.end method

.method public static generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;I)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6
    .param p0, "id"    # Ljava/lang/String;
    .param p1, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "isLayoutLoadable"    # Z
    .param p5, "priority"    # Lcom/xiaopeng/vui/commons/VuiPriority;
    .param p6, "listType"    # I

    .line 767
    new-instance v0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;-><init>()V

    .line 768
    invoke-virtual {v0, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v0

    .line 769
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v0

    .line 770
    invoke-virtual {v0, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v0

    .line 771
    invoke-virtual {v0, p3}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->action(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v0

    .line 772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->timestamp(J)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v0

    .line 773
    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    .line 774
    .local v0, "vuiElement":Lcom/xiaopeng/vui/commons/model/VuiElement;
    if-eqz p4, :cond_0

    .line 775
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setLayoutLoadable(Ljava/lang/Boolean;)V

    .line 777
    :cond_0
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 778
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setLayoutLoadable(Ljava/lang/Boolean;)V

    .line 779
    sget v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->LIST_VEDIO_TYPE:I

    if-ne v2, p6, :cond_1

    .line 780
    new-instance v2, Lcom/google/gson/JsonObject;

    invoke-direct {v2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 781
    .local v2, "obj":Lcom/google/gson/JsonObject;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 782
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "matchedFirstPriority"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 783
    const-string v4, "firstPriority"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 784
    const-string v1, "listType"

    const-string v4, "videoList"

    invoke-virtual {v2, v1, v4}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-virtual {v0, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setProps(Lcom/google/gson/JsonObject;)V

    .line 788
    .end local v2    # "obj":Lcom/google/gson/JsonObject;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result v1

    invoke-virtual {p5}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result v2

    if-eq v1, v2, :cond_2

    .line 789
    invoke-virtual {p5}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setPriority(I)V

    .line 792
    :cond_2
    return-object v0
.end method

.method public static generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "actionObjs"    # Lorg/json/JSONObject;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 230
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 231
    .local v0, "valueObj":Lorg/json/JSONObject;
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v0    # "valueObj":Lorg/json/JSONObject;
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VuiUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "generateElementValueJSON e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 236
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;I)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 3
    .param p0, "currIndex"    # I
    .param p1, "vuilabels"    # [Ljava/lang/String;
    .param p2, "id"    # I

    .line 837
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p0, p1, v0, v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2
    .param p0, "currIndex"    # I
    .param p1, "vuilabels"    # [Ljava/lang/String;
    .param p2, "id"    # Ljava/lang/String;

    .line 848
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, p1, v0, p2, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2
    .param p0, "currIndex"    # I
    .param p1, "vuilabels"    # [Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "id"    # I

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1
    .param p0, "currIndex"    # I
    .param p1, "vuilabels"    # [Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;

    .line 860
    const-string v0, ""

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v0

    return-object v0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 10
    .param p0, "currIndex"    # I
    .param p1, "vuilabels"    # [Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;
    .param p3, "id"    # Ljava/lang/String;
    .param p4, "label"    # Ljava/lang/String;

    .line 885
    if-nez p2, :cond_0

    .line 886
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object p2

    .line 888
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 889
    .local v0, "time":J
    new-instance v2, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    invoke-direct {v2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;-><init>()V

    .line 890
    invoke-virtual {v2, p3}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v2

    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 891
    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v2

    .line 892
    invoke-virtual {v2, p4}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v2

    .line 893
    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->timestamp(J)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v2

    .line 894
    invoke-virtual {v2, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->action(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v2

    .line 895
    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v2

    .line 896
    .local v2, "element":Lcom/xiaopeng/vui/commons/model/VuiElement;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 897
    .local v3, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_0
    array-length v6, p1

    if-ge v5, v6, :cond_4

    .line 898
    aget-object v6, p1, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    aget-object v6, p1, v5

    const-string v7, "-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 899
    .local v6, "value_lbs":[Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_3

    .line 900
    new-instance v7, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    invoke-direct {v7}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;-><init>()V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "_state_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 901
    invoke-virtual {v7, v8}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v7

    sget-object v8, Lcom/xiaopeng/vui/commons/VuiElementType;->STATE:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 902
    invoke-virtual {v8}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v7

    aget-object v8, v6, v4

    .line 903
    invoke-virtual {v7, v8}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v7

    .line 904
    invoke-virtual {v7, v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->timestamp(J)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v7

    .line 905
    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v7

    .line 906
    .local v7, "childEle":Lcom/xiaopeng/vui/commons/model/VuiElement;
    array-length v8, v6

    const/4 v9, 0x1

    if-le v8, v9, :cond_2

    .line 907
    aget-object v8, v6, v9

    invoke-virtual {v7, v8}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    goto :goto_2

    .line 909
    :cond_2
    aget-object v8, v6, v4

    invoke-virtual {v7, v8}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    .line 911
    :goto_2
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 897
    .end local v6    # "value_lbs":[Ljava/lang/String;
    .end local v7    # "childEle":Lcom/xiaopeng/vui/commons/model/VuiElement;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 914
    .end local v5    # "i":I
    :cond_4
    invoke-static {p0, p1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonValues(I[Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    .line 915
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 916
    invoke-virtual {v2, v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    .line 918
    :cond_5
    return-object v2
.end method

.method public static getAppAreaLocation()Ljava/lang/String;
    .locals 5

    .line 347
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "packageName":Ljava/lang/String;
    const-string v1, "com.xiaopeng.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 352
    const-string v1, "full"

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    goto :goto_0

    .line 354
    :cond_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getScreenAreaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 355
    .local v1, "screenId":Ljava/lang/String;
    const-string v2, "VuiUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppAreaLocation, screenId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getAreaLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "screenId":Ljava/lang/String;
    goto :goto_0

    .line 358
    :catch_0
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 360
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 362
    :cond_1
    const-string v0, "full"

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    .line 365
    :cond_2
    :goto_1
    const-string v0, "VuiUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppAreaLocation, mAppAreaLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppDisplayLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "sceneId"    # Ljava/lang/String;

    .line 311
    const-string v0, "VuiUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppDisplayLocation, sceneId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    const-string v0, "primary"

    .line 313
    .local v0, "displayLocation":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DMultiScreenPlatForm()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 314
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 315
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    .line 316
    .local v1, "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    if-eqz v1, :cond_0

    .line 317
    invoke-virtual {v1, p0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 318
    .local v2, "cacheLocation":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 319
    move-object v0, v2

    .line 322
    .end local v2    # "cacheLocation":Ljava/lang/String;
    :cond_0
    const-string v2, "primary"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    const-string v0, "LF"

    goto :goto_0

    .line 324
    :cond_1
    const-string v2, "secondary"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 325
    const-string v0, "RF"

    .line 327
    .end local v1    # "buildCache":Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;
    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 328
    const-string v1, "com.xiaopeng.systemui"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 329
    const-string v1, "fourth"

    return-object v1

    .line 331
    :cond_4
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 333
    :cond_5
    :goto_1
    return-object v0
.end method

.method public static getAreaLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .line 388
    const-string v0, "VuiUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAreaLocation, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 389
    const-string v0, "primary"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "secondary"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 390
    const-string p0, "full"

    .line 392
    :cond_0
    return-object p0
.end method

.method public static getCarPlatForm()Ljava/lang/String;
    .locals 1

    .line 1653
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1654
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sType:Ljava/lang/String;

    return-object v0

    .line 1656
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sType:Ljava/lang/String;

    .line 1657
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sType:Ljava/lang/String;

    return-object v0
.end method

.method public static getCarType()Ljava/lang/String;
    .locals 4

    .line 1765
    :try_start_0
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1766
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    return-object v0

    .line 1768
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getCarPlatForm()Ljava/lang/String;

    move-result-object v0

    .line 1769
    .local v0, "carPlatForm":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0xa00

    if-eq v2, v3, :cond_6

    const/16 v3, 0xa02

    if-eq v2, v3, :cond_5

    const/16 v3, 0xa11

    if-eq v2, v3, :cond_4

    const v3, 0x1367f

    if-eq v2, v3, :cond_3

    const v3, 0x136fb

    if-eq v2, v3, :cond_2

    const v3, 0x1371b

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v2, "Q9"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v1, 0x8

    goto :goto_0

    :pswitch_1
    const-string v2, "Q8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x6

    goto :goto_0

    :pswitch_2
    const-string v2, "Q7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x4

    goto :goto_0

    :pswitch_3
    const-string v2, "Q6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const-string v2, "Q8B"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x7

    goto :goto_0

    :cond_2
    const-string v2, "Q7A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x5

    goto :goto_0

    :cond_3
    const-string v2, "Q3A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const-string v2, "QB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 v1, 0x9

    goto :goto_0

    :cond_5
    const-string v2, "Q3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const-string v2, "Q1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v1, 0x0

    :cond_7
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 1795
    new-instance v1, Ljava/lang/StringBuilder;

    goto :goto_1

    .line 1792
    :pswitch_4
    const-string v1, "H93"

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    .line 1793
    goto :goto_2

    .line 1789
    :pswitch_5
    const-string v1, "F30"

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    .line 1790
    goto :goto_2

    .line 1786
    :pswitch_6
    const-string v1, "E28a"

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    .line 1787
    goto :goto_2

    .line 1782
    :pswitch_7
    const-string v1, "E38"

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    .line 1783
    goto :goto_2

    .line 1778
    :pswitch_8
    const-string v1, "D22"

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    .line 1779
    goto :goto_2

    .line 1775
    :pswitch_9
    const-string v1, "D55"

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    .line 1776
    goto :goto_2

    .line 1771
    :pswitch_a
    const-string v1, "E28"

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    .line 1772
    goto :goto_2

    .line 1795
    :goto_1
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getHardwareCarType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getHardwareCarStage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1800
    .end local v0    # "carPlatForm":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 1798
    :catch_0
    move-exception v0

    .line 1799
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1801
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa05
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public static getCurrentDisplayLocation()Ljava/lang/String;
    .locals 1

    .line 342
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    return-object v0
.end method

.method private static varargs getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1306
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1308
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_1

    .line 1310
    :try_start_0
    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1311
    if-eqz v0, :cond_0

    return-object v0

    .line 1316
    :cond_0
    goto :goto_1

    .line 1312
    :catch_0
    move-exception v2

    .line 1308
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 1319
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getDisplayLocation(I)Ljava/lang/String;
    .locals 3
    .param p0, "displayLocation"    # I

    .line 1736
    const-string v0, "VuiUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayLocation, displayLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1737
    if-nez p0, :cond_0

    .line 1738
    const-string v0, "primary"

    return-object v0

    .line 1739
    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 1740
    const-string v0, "secondary"

    return-object v0

    .line 1741
    :cond_1
    const/4 v0, 0x3

    if-ne p0, v0, :cond_2

    .line 1742
    const-string v0, "fourth"

    return-object v0

    .line 1744
    :cond_2
    const-string v0, "primary"

    return-object v0
.end method

.method public static getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "displayLocation"    # Ljava/lang/String;

    .line 1822
    const-string v0, "VuiUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayLocation, displayLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1823
    const-string v0, "0"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1824
    const-string v0, "primary"

    return-object v0

    .line 1825
    :cond_0
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1826
    const-string v0, "secondary"

    return-object v0

    .line 1827
    :cond_1
    const-string v0, "3"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1828
    const-string v0, "fourth"

    return-object v0

    .line 1829
    :cond_2
    const-string v0, "secondary"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "primary"

    .line 1830
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "fourth"

    .line 1831
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "LF"

    .line 1832
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "RF"

    .line 1833
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 1836
    :cond_3
    const-string v0, "primary"

    return-object v0

    .line 1834
    :cond_4
    :goto_0
    return-object p0
.end method

.method public static getDisplayLocationId(Ljava/lang/String;)I
    .locals 4
    .param p0, "displayLocation"    # Ljava/lang/String;

    .line 1749
    const-string v0, "VuiUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDisplayLocationId, displayLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1750
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4b9e95e6

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const v1, -0x30bb8e8c    # -3.2957696E9f

    if-eq v0, v1, :cond_1

    const v1, -0x12c2f1fe

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "primary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v0, "secondary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_2
    const-string v0, "fourth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 1758
    return v3

    .line 1756
    :pswitch_0
    const/4 v0, 0x3

    return v0

    .line 1754
    :pswitch_1
    return v2

    .line 1752
    :pswitch_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getExtraPage(Lcom/xiaopeng/vui/commons/model/VuiElement;)I
    .locals 2
    .param p0, "vui"    # Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 1120
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    .line 1122
    .local v0, "props":Lcom/google/gson/JsonObject;
    if-eqz v0, :cond_0

    const-string v1, "extraPage"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    const-string v1, "extraPage"

    invoke-virtual {v0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result v1

    return v1

    .line 1127
    .end local v0    # "props":Lcom/google/gson/JsonObject;
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public static getHardwareCarStage()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1816
    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1817
    .local v0, "versionFinger":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getHardwareCarType()Ljava/lang/String;
    .locals 3

    .line 1805
    const-string v0, "Q8"

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getXpCduType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1806
    const-string v0, "CAR.L"

    const-string v1, "throw CarUnSupportCduTypeException. Please use Car#getXpCduType() instead."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1807
    const/4 v0, 0x0

    return-object v0

    .line 1809
    :cond_0
    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1810
    .local v0, "versionFinger":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getHwVersion()Ljava/lang/String;
    .locals 2

    .line 1639
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    .line 1640
    const-string v0, "ro.boot.hw_version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "info":Ljava/lang/String;
    goto :goto_0

    .line 1642
    .end local v0    # "info":Ljava/lang/String;
    :cond_0
    const-string v0, "ro.xiaopeng.hardware"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1645
    .restart local v0    # "info":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Unknown"

    goto :goto_1

    :cond_1
    move-object v1, v0

    :goto_1
    return-object v1
.end method

.method public static getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 1
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "timeStemp"    # J
    .param p3, "isAccessibilityScene"    # Z
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "packageVersion"    # Ljava/lang/String;

    .line 1890
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;-><init>()V

    .line 1891
    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->sceneId(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->appVersion(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object v0

    .line 1892
    invoke-virtual {v0, p4}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->packageName(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->accessibility(Z)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object v0

    .line 1893
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->timestamp(J)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    .line 1890
    return-object v0
.end method

.method public static getOS5TopRunningPackageName()V
    .locals 7

    .line 1902
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getScreenId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopActivity(I)Ljava/lang/String;

    move-result-object v0

    .line 1903
    .local v0, "topActivity":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1904
    .local v1, "array":Lorg/json/JSONArray;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1905
    .local v2, "topAppComponentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1906
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1907
    .local v4, "objectStr":Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1908
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1909
    .local v5, "object":Lorg/json/JSONObject;
    const-string v6, "component"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1910
    const-string v6, "component"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1911
    .local v6, "component":Ljava/lang/String;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1905
    .end local v4    # "objectStr":Ljava/lang/String;
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v6    # "component":Ljava/lang/String;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1916
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 1917
    sget-object v3, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mTopApp:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 1918
    sget-object v3, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mTopApp:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1920
    :cond_2
    const-string v3, "VuiEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOS5TopRunningPackageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mTopApp:Ljava/util/List;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1923
    .end local v0    # "topActivity":Ljava/lang/String;
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v2    # "topAppComponentList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    goto :goto_1

    .line 1921
    :catch_0
    move-exception v0

    .line 1922
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "VuiEngine"

    const-string v2, "getOS5TopRunningPackageName"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1924
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method public static getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "sceneId"    # Ljava/lang/String;

    .line 1151
    const/4 v0, 0x0

    .line 1152
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1153
    :cond_0
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1154
    const-string v1, "-"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v2

    goto :goto_0

    .line 1155
    :cond_1
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1156
    const-string v1, "_"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v0, v1, v2

    .line 1158
    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;
    .locals 2
    .param p0, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/model/AppScreenNode;",
            ">;)",
            "Ljava/util/concurrent/ConcurrentSkipListSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1851
    .local p1, "screenNodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/model/AppScreenNode;

    .line 1852
    .local v0, "appScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    const/4 v1, 0x0

    .line 1853
    .local v1, "panelSceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1854
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getPanelStack()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v1

    .line 1856
    :cond_0
    return-object v1
.end method

.method private static getReflexMethod(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "methodName"    # Ljava/lang/String;

    .line 1290
    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1291
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 1294
    .local v1, "method":Ljava/lang/reflect/Method;
    if-eqz v1, :cond_1

    .line 1295
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1296
    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 1298
    :catch_0
    move-exception v2

    .line 1299
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "VuiUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getReflexMethod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1300
    return-object v0

    .line 1301
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_1
    nop

    .line 1302
    return-object v0
.end method

.method public static getResourceName(I)Ljava/lang/String;
    .locals 3
    .param p0, "id"    # I

    .line 1049
    const/4 v0, 0x0

    .line 1051
    .local v0, "resourceName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 1052
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1053
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 1054
    .local v1, "index":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1055
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 1060
    .end local v1    # "index":I
    :cond_0
    goto :goto_0

    .line 1058
    :catch_0
    move-exception v1

    .line 1061
    :goto_0
    return-object v0
.end method

.method public static getSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 2
    .param p0, "screenName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/speech/vui/model/AppScreenNode;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1841
    .local p1, "screenNodeMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/model/AppScreenNode;

    .line 1842
    .local v0, "appScreenNode":Lcom/xiaopeng/speech/vui/model/AppScreenNode;
    const/4 v1, 0x0

    .line 1843
    .local v1, "sceneStack":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_0

    .line 1844
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getSceneStack()Ljava/util/List;

    move-result-object v1

    .line 1846
    :cond_0
    return-object v1
.end method

.method public static getScreenId()I
    .locals 4

    .line 396
    const/4 v0, 0x0

    .line 397
    .local v0, "screenId":I
    const-string v1, "primary"

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    const/4 v0, 0x0

    goto :goto_0

    .line 399
    :cond_0
    const-string v1, "secondary"

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    const/4 v0, 0x1

    goto :goto_0

    .line 401
    :cond_1
    const-string v1, "fourth"

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 402
    const/4 v0, 0x3

    goto :goto_0

    .line 404
    :cond_2
    const/4 v0, 0x0

    .line 406
    :goto_0
    const-string v1, "VuiUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScreenId, mAppDisplayLocation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", screenId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 408
    return v0
.end method

.method public static getSourceDisplayLocation()Ljava/lang/String;
    .locals 3

    .line 1860
    const-string v0, "VuiUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSourceDisplayLocation, mAppDisplayLocation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1863
    :try_start_0
    const-string v0, "primary"

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    .line 1864
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DMultiScreenPlatForm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1865
    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/view/WindowManagerFactory;->create(Landroid/content/Context;)Lcom/xiaopeng/view/WindowManagerFactory;

    move-result-object v0

    .line 1866
    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/view/WindowManagerFactory;->getScreenId(Ljava/lang/String;)I

    move-result v0

    .line 1867
    .local v0, "screenId":I
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    .line 1868
    .end local v0    # "screenId":I
    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1869
    const-string v0, "com.xiaopeng.systemui"

    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1870
    const-string v0, "fourth"

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    goto :goto_0

    .line 1872
    :cond_1
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1873
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getScreenId(Ljava/lang/String;)I

    move-result v1

    .line 1874
    .local v1, "screenId":I
    if-nez v1, :cond_2

    const-string v2, ":u10"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1875
    const/4 v1, 0x3

    .line 1877
    :cond_2
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1882
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "screenId":I
    :cond_3
    :goto_0
    goto :goto_1

    .line 1880
    :catch_0
    move-exception v0

    .line 1881
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1884
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1
    const-string v0, "VuiUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSourceDisplayLocation, mAppDisplayLocation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1885
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    return-object v0
.end method

.method public static getTopRunningPackageName()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1926
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1927
    .local v0, "topApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1928
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getOS5TopRunningPackageName()V

    .line 1929
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mTopApp:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1931
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 1932
    .local v1, "activityManager":Landroid/app/ActivityManager;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v2

    .line 1933
    .local v2, "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1934
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v3, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1935
    .local v3, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1938
    .end local v1    # "activityManager":Landroid/app/ActivityManager;
    .end local v2    # "runningTaskInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getValueByName(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "vuiElement"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 494
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 495
    .local v0, "mGson":Lcom/google/gson/Gson;
    const-string v1, "getEventValueByName"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 498
    return-object v1

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 506
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getValues()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lcom/google/gson/internal/LinkedTreeMap;

    if-eqz v3, :cond_4

    .line 507
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getValues()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 508
    .local v3, "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v3, :cond_4

    .line 509
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/google/gson/internal/LinkedTreeMap;

    if-eqz v4, :cond_3

    .line 510
    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 511
    .local v4, "insideValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v4, :cond_2

    .line 512
    invoke-interface {v4, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 513
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 514
    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 518
    .end local v4    # "insideValue":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_2
    goto :goto_0

    .line 519
    :cond_3
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 520
    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 527
    .end local v3    # "value":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    :goto_0
    return-object v1

    .line 502
    .end local v2    # "key":Ljava/lang/String;
    :cond_5
    :goto_1
    return-object v1
.end method

.method public static getVersionInCountryCode()Ljava/lang/String;
    .locals 3

    .line 1016
    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, "versionFinger":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 1018
    const/4 v1, 0x7

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1019
    .local v1, "countryCode":Ljava/lang/String;
    return-object v1

    .line 1021
    .end local v1    # "countryCode":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static getViewMode()Lcom/xiaopeng/vui/commons/VuiMode;
    .locals 1

    .line 1071
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->viewMode:Lcom/xiaopeng/vui/commons/VuiMode;

    return-object v0
.end method

.method public static getVuiCarType()Ljava/lang/String;
    .locals 2

    .line 1705
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getCarPlatForm()Ljava/lang/String;

    move-result-object v0

    .line 1706
    .local v0, "type":Ljava/lang/String;
    const-string v1, "A1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1707
    const-string v1, "D10"

    return-object v1

    .line 1708
    :cond_0
    const-string v1, "A2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1709
    const-string v1, "D20P"

    return-object v1

    .line 1710
    :cond_1
    const-string v1, "A3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1711
    const-string v1, "D21A"

    return-object v1

    .line 1712
    :cond_2
    const-string v1, "Q1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1713
    const-string v1, "E28"

    return-object v1

    .line 1714
    :cond_3
    const-string v1, "Q2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1715
    const-string v1, "D21B"

    return-object v1

    .line 1716
    :cond_4
    const-string v1, "Q5"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1717
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getCarType()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1718
    :cond_5
    const-string v1, "Q3"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "Q3A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    .line 1720
    :cond_6
    const-string v1, "Q6"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1721
    const-string v1, "D22"

    return-object v1

    .line 1722
    :cond_7
    const-string v1, "Q7"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "Q7A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    .line 1724
    :cond_8
    const-string v1, "Q8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "Q8B"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    .line 1726
    :cond_9
    const-string v1, "Q9"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1727
    const-string v1, "F30"

    return-object v1

    .line 1728
    :cond_a
    const-string v1, "QB"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 1729
    const-string v1, "H93"

    return-object v1

    .line 1731
    :cond_b
    return-object v0

    .line 1725
    :cond_c
    :goto_0
    const-string v1, "E28a"

    return-object v1

    .line 1723
    :cond_d
    :goto_1
    const-string v1, "E38"

    return-object v1

    .line 1719
    :cond_e
    :goto_2
    const-string v1, "D55"

    return-object v1
.end method

.method public static getXpCduType()Ljava/lang/String;
    .locals 6

    .line 1661
    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1662
    .local v0, "versionFinger":Ljava/lang/String;
    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1663
    return-object v0

    .line 1665
    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1666
    .local v1, "type":Ljava/lang/String;
    const-string v2, "persist.sys.xiaopeng.extendedCarType"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 1667
    .local v2, "extendCarType":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    .line 1668
    const/4 v3, -0x1

    .line 1669
    .local v3, "var4":B
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/16 v5, 0xa02

    if-eq v4, v5, :cond_2

    const/16 v5, 0xa06

    if-eq v4, v5, :cond_1

    goto :goto_0

    .line 1676
    :cond_1
    const-string v4, "Q7"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1677
    const/4 v3, 0x1

    goto :goto_0

    .line 1671
    :cond_2
    const-string v4, "Q3"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1672
    const/4 v3, 0x0

    .line 1681
    :cond_3
    :goto_0
    packed-switch v3, :pswitch_data_0

    .end local v3    # "var4":B
    goto :goto_1

    .line 1685
    .restart local v3    # "var4":B
    :pswitch_0
    const-string v4, "Q7A"

    return-object v4

    .line 1683
    :pswitch_1
    const-string v4, "Q3A"

    return-object v4

    .line 1689
    .end local v3    # "var4":B
    :cond_4
    :goto_1
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static hasPopPanel()Z
    .locals 6

    .line 297
    const/4 v0, 0x0

    .line 298
    .local v0, "hasPopPanel":Z
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 299
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 300
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 301
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 302
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v4

    .line 303
    .local v4, "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    .line 304
    const/4 v5, 0x1

    return v5

    .line 306
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 307
    :cond_1
    return v0
.end method

.method public static is2DMultiScreenPlatForm()Z
    .locals 2

    .line 999
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getCarPlatForm()Ljava/lang/String;

    move-result-object v0

    .line 1000
    .local v0, "type":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static is3DApp(Ljava/lang/String;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;

    .line 268
    const-string v0, "com.xiaopeng.napa"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.DefaultCompany.VUIDemo"

    .line 269
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 271
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static is3DMultiScreenPlatForm()Z
    .locals 2

    .line 990
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getCarPlatForm()Ljava/lang/String;

    move-result-object v0

    .line 991
    .local v0, "type":Ljava/lang/String;
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support3DMultiScreenPlatform:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static isActiveSceneId(Ljava/lang/String;)Z
    .locals 6
    .param p0, "sceneId"    # Ljava/lang/String;

    .line 277
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 278
    const/4 v0, 0x0

    .line 279
    .local v0, "allHas":Z
    sget-object v1, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 280
    .local v1, "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 281
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 282
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 283
    .local v3, "key":Ljava/lang/String;
    sget-object v4, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v4

    .line 284
    .local v4, "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    if-eqz v4, :cond_0

    invoke-virtual {v4, p0}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 285
    const/4 v0, 0x1

    .line 287
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;"
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "sceneStack":Ljava/util/concurrent/ConcurrentSkipListSet;, "Ljava/util/concurrent/ConcurrentSkipListSet<Ljava/lang/String;>;"
    :cond_0
    goto :goto_0

    .line 288
    :cond_1
    const-string v2, "VuiUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "allHas:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 289
    if-nez v0, :cond_2

    .line 290
    const/4 v2, 0x0

    return v2

    .line 293
    .end local v0    # "allHas":Z
    .end local v1    # "entries":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/xiaopeng/speech/vui/model/AppScreenNode;>;>;"
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static isAppTop(Ljava/lang/String;)Z
    .locals 5
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1942
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1943
    return v1

    .line 1945
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getTopRunningPackageName()Ljava/util/List;

    move-result-object v0

    .line 1946
    .local v0, "topApp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 1947
    move v2, v1

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1948
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1949
    .local v3, "name":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1950
    const/4 v1, 0x1

    return v1

    .line 1947
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1954
    .end local v2    # "i":I
    :cond_2
    return v1
.end method

.method public static isDoubleOpenApp()Z
    .locals 4

    .line 1958
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1959
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getUserId(Landroid/content/Context;I)I

    move-result v0

    .line 1960
    .local v0, "userId":I
    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1

    .line 1962
    .end local v0    # "userId":I
    :cond_1
    return v1
.end method

.method public static isFeatureDisabled()Z
    .locals 1

    .line 1033
    sget-boolean v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isDisableVuiFeature:Z

    return v0
.end method

.method public static isNumer(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .line 465
    const-string v0, "-?[0-9]+(\\.[0-9]+)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 468
    .local v0, "pattern":Ljava/util/regex/Pattern;
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 471
    .local v2, "bigStr":Ljava/lang/String;
    nop

    .line 470
    nop

    .line 473
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 474
    .local v3, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    .line 475
    return v1

    .line 477
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 469
    .end local v2    # "bigStr":Ljava/lang/String;
    .end local v3    # "isNum":Ljava/util/regex/Matcher;
    :catch_0
    move-exception v2

    .line 470
    .local v2, "e":Ljava/lang/Exception;
    return v1
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .line 482
    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 483
    .local v0, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method

.method public static isOverseasVersion()Z
    .locals 3

    .line 1004
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sRegion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1005
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getVersionInCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sRegion:Ljava/lang/String;

    .line 1006
    const-string v0, "VuiUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CountryCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sRegion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    :cond_0
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sRegion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1009
    const/4 v0, 0x0

    return v0

    .line 1011
    :cond_1
    const-string v0, "EU"

    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sRegion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPerformVuiAction(Landroid/view/View;)Z
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .line 1694
    instance-of v0, p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_0

    .line 1695
    move-object v0, p0

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 1696
    .local v0, "vuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->isPerformVuiAction()Z

    move-result v1

    return v1

    .line 1698
    .end local v0    # "vuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isThirdApp(Ljava/lang/String;)Z
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;

    .line 1162
    const-string v0, "com.android.systemui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const-string v0, "com.xiaopeng.systemui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1164
    :cond_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 1165
    const-string v0, "com.xiaopeng"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "com.xiaopeng.xpdemo"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.xiaopeng.VuiDemo"

    .line 1166
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1167
    return v1

    .line 1169
    :cond_1
    return v2

    .line 1172
    :cond_2
    return v2

    .line 1163
    :cond_3
    :goto_0
    return v1
.end method

.method public static isUseDisplayLocationPlatForm()Z
    .locals 2

    .line 972
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getCarPlatForm()Ljava/lang/String;

    move-result-object v0

    .line 973
    .local v0, "type":Ljava/lang/String;
    const-string v1, "Q1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Q2"

    .line 974
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Q3"

    .line 975
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Q3A"

    .line 976
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Q5"

    .line 977
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Q6"

    .line 978
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 979
    const/4 v1, 0x1

    return v1

    .line 982
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public static platformIsSupport()Z
    .locals 4

    .line 952
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isOverseasVersion()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 953
    return v1

    .line 955
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getCarPlatForm()Ljava/lang/String;

    move-result-object v0

    .line 956
    .local v0, "type":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v2, "com.xiaopeng.speechtesttools"

    invoke-static {v2}, Lcom/xiaopeng/speech/apirouter/Utils;->checkApkExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 957
    return v3

    .line 959
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->unSupportType:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.xiaopeng.carspeechservice"

    .line 960
    invoke-static {v2}, Lcom/xiaopeng/speech/apirouter/Utils;->checkApkExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 961
    return v3

    .line 964
    :cond_2
    return v1
.end method

.method public static setAppAreaLocation(Ljava/lang/String;)V
    .locals 3
    .param p0, "type"    # Ljava/lang/String;

    .line 370
    const-string v0, "VuiUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAppAreaLocation, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    sput-object p0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    .line 372
    return-void
.end method

.method public static setAppResultAreaLocation(Ljava/lang/String;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    .line 375
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getScreenAreaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 378
    .local v0, "screenId":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getAreaLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "screenId":Ljava/lang/String;
    goto :goto_0

    .line 379
    :catch_0
    move-exception v0

    .line 380
    .local v0, "e":Ljava/lang/Throwable;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 381
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    goto :goto_1

    .line 383
    :cond_0
    const-string v0, "full"

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    .line 385
    :goto_1
    return-void
.end method

.method private static setPropsEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;Lorg/json/JSONObject;)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "element"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p2, "actionObj"    # Lorg/json/JSONObject;

    .line 1248
    const/4 v0, 0x0

    .line 1250
    .local v0, "isChecked":Z
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 1251
    .local v1, "mGson":Lcom/google/gson/Gson;
    if-eqz p0, :cond_0

    instance-of v2, p0, Landroid/widget/CompoundButton;

    if-eqz v2, :cond_0

    .line 1252
    move-object v2, p0

    check-cast v2, Landroid/widget/CompoundButton;

    invoke-virtual {v2}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    goto :goto_0

    .line 1254
    :cond_0
    if-eqz p0, :cond_1

    instance-of v2, p0, Landroid/widget/Checkable;

    if-eqz v2, :cond_1

    .line 1255
    move-object v2, p0

    check-cast v2, Landroid/widget/Checkable;

    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v0

    goto :goto_0

    .line 1256
    :cond_1
    if-eqz p0, :cond_3

    .line 1257
    move-object v2, p0

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiValue()Ljava/lang/Object;

    move-result-object v2

    .line 1258
    .local v2, "value":Ljava/lang/Object;
    if-eqz v2, :cond_2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 1259
    move-object v3, v2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 1261
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v0

    .line 1264
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    :goto_0
    sget-object v2, Lcom/xiaopeng/vui/commons/VuiAction;->SETCHECK:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1265
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/google/gson/JsonObject;

    invoke-virtual {v1, v2, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    .line 1266
    instance-of v2, p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v2, :cond_4

    .line 1267
    move-object v2, p0

    check-cast v2, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-static {v2, p1, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setVuiPriority(Lcom/xiaopeng/vui/commons/IVuiElement;Lcom/xiaopeng/vui/commons/model/VuiElement;Z)V

    .line 1269
    :cond_4
    return-void
.end method

.method public static setRecyclerViewItemVuiAttr(Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;)V
    .locals 7
    .param p0, "vuiElement"    # Lcom/xiaopeng/vui/commons/IVuiElement;
    .param p1, "position"    # I
    .param p2, "label"    # Ljava/lang/String;

    .line 1536
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)V

    .line 1537
    return-void
.end method

.method public static setRecyclerViewItemVuiAttr(Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;)V
    .locals 7
    .param p0, "vuiElement"    # Lcom/xiaopeng/vui/commons/IVuiElement;
    .param p1, "position"    # I
    .param p2, "label"    # Ljava/lang/String;
    .param p3, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 1540
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)V

    .line 1541
    return-void
.end method

.method private static setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;)V
    .locals 7
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "vuiElement"    # Lcom/xiaopeng/vui/commons/IVuiElement;
    .param p3, "position"    # I
    .param p4, "label"    # Ljava/lang/String;

    .line 1529
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)V

    .line 1530
    return-void
.end method

.method private static setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;)V
    .locals 7
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "vuiElement"    # Lcom/xiaopeng/vui/commons/IVuiElement;
    .param p3, "position"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 1533
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)V

    .line 1534
    return-void
.end method

.method public static setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)V
    .locals 4
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;
    .param p2, "vuiElement"    # Lcom/xiaopeng/vui/commons/IVuiElement;
    .param p3, "position"    # I
    .param p4, "label"    # Ljava/lang/String;
    .param p5, "type"    # Lcom/xiaopeng/vui/commons/VuiElementType;
    .param p6, "tag"    # Ljava/lang/String;

    .line 1546
    if-eqz p2, :cond_2

    .line 1547
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1548
    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/view/View;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 1550
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p2

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementId(Ljava/lang/String;)V

    .line 1552
    :goto_0
    invoke-interface {p2, p3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiPosition(I)V

    .line 1553
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1554
    invoke-interface {p2, p4}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiLabel(Ljava/lang/String;)V

    .line 1556
    :cond_1
    if-eqz p5, :cond_2

    .line 1557
    invoke-interface {p2, p5}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 1560
    :cond_2
    if-nez p1, :cond_3

    .line 1561
    return-void

    .line 1563
    :cond_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/HandlerManger;->getInstance()Lcom/xiaopeng/speech/vui/utils/HandlerManger;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils$3;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/speech/vui/utils/HandlerManger;->submit(Ljava/lang/Runnable;J)V

    .line 1569
    return-void
.end method

.method public static setSourceDisplayLocation(I)V
    .locals 3
    .param p0, "screenId"    # I

    .line 337
    const-string v0, "VuiUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSourceDisplayLocation, screenId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    .line 339
    return-void
.end method

.method public static setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;)V
    .locals 2
    .param p0, "view"    # Landroid/view/View;
    .param p1, "currIndex"    # I
    .param p2, "vuilabels"    # [Ljava/lang/String;

    .line 641
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 642
    return-void
.end method

.method public static setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "currIndex"    # I
    .param p2, "vuilabels"    # [Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;

    .line 631
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;Z)V

    .line 632
    return-void
.end method

.method public static setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 9
    .param p0, "view"    # Landroid/view/View;
    .param p1, "currIndex"    # I
    .param p2, "vuilabels"    # [Ljava/lang/String;
    .param p3, "action"    # Ljava/lang/String;
    .param p4, "hardUpdate"    # Z

    .line 539
    if-eqz p0, :cond_11

    if-eqz p2, :cond_11

    array-length v0, p2

    if-lez v0, :cond_11

    if-gez p1, :cond_0

    array-length v0, p2

    if-lt p1, v0, :cond_0

    goto/16 :goto_7

    .line 540
    :cond_0
    instance-of v0, p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-nez v0, :cond_1

    return-void

    .line 541
    :cond_1
    move-object v0, p0

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 542
    .local v0, "vuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v1

    .line 543
    .local v1, "obj":Lorg/json/JSONObject;
    if-eqz v1, :cond_d

    const-string v2, "states"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "curState"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 545
    if-nez p4, :cond_5

    .line 547
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "state_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 548
    .local v2, "stateName":Ljava/lang/String;
    if-eqz p0, :cond_4

    .line 550
    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 553
    invoke-interface {v0, v2, p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiValue(Ljava/lang/Object;Landroid/view/View;)V

    .line 555
    :cond_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 556
    const-string v3, "SetValue"

    invoke-interface {v0, v3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_3
    invoke-interface {v0, p3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V

    .line 560
    :goto_0
    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-interface {v0, v3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 562
    :cond_4
    return-void

    .line 604
    .end local v2    # "stateName":Ljava/lang/String;
    :catch_0
    move-exception v2

    goto/16 :goto_4

    .line 564
    :cond_5
    const-string v2, "states"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 565
    .local v2, "states":Lorg/json/JSONArray;
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    array-length v4, p2

    if-ne v3, v4, :cond_c

    .line 566
    const/4 v3, 0x0

    .line 567
    .local v3, "changeState":Z
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_7

    .line 568
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 569
    .local v5, "object":Lorg/json/JSONObject;
    aget-object v6, p2, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "state_"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    .line 570
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "state_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aget-object v7, p2, v4

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    invoke-virtual {v2, v4, v5}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    .line 572
    const/4 v3, 0x1

    .line 567
    .end local v5    # "object":Lorg/json/JSONObject;
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 575
    .end local v4    # "i":I
    :cond_7
    if-eqz v3, :cond_8

    .line 576
    const-string v4, "states"

    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiValue(Ljava/lang/Object;Landroid/view/View;)V

    .line 579
    if-eqz p0, :cond_a

    .line 580
    invoke-interface {v0, v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V

    .line 581
    sget-object v4, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-interface {v0, v4}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    goto :goto_2

    .line 584
    :cond_8
    const-string v4, "curState"

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 585
    .local v4, "curLabel":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "state_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, p1, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 586
    .local v5, "stateName":Ljava/lang/String;
    if-eqz p0, :cond_a

    .line 587
    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 590
    invoke-interface {v0, v5, p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiValue(Ljava/lang/Object;Landroid/view/View;)V

    .line 592
    :cond_9
    sget-object v6, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-interface {v0, v6}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 595
    .end local v4    # "curLabel":Ljava/lang/String;
    .end local v5    # "stateName":Ljava/lang/String;
    :cond_a
    :goto_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 596
    const-string v4, "SetValue"

    invoke-interface {v0, v4}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V

    goto :goto_3

    .line 598
    :cond_b
    invoke-interface {v0, p3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    :goto_3
    return-void

    .line 606
    .end local v2    # "states":Lorg/json/JSONArray;
    .end local v3    # "changeState":Z
    :cond_c
    goto :goto_5

    .line 604
    :goto_4
    nop

    .line 605
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 608
    .end local v2    # "e":Lorg/json/JSONException;
    :cond_d
    :goto_5
    if-nez v1, :cond_e

    .line 609
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 611
    :cond_e
    invoke-static {p1, p2, v1, p0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->createStatefulButtonData(I[Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 612
    .local v2, "props":Lorg/json/JSONObject;
    if-eqz v2, :cond_10

    if-eqz p0, :cond_10

    .line 613
    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-interface {v0, v3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 614
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 615
    const-string v3, "SetValue"

    invoke-interface {v0, v3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V

    goto :goto_6

    .line 617
    :cond_f
    invoke-interface {v0, p3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V

    .line 619
    :goto_6
    invoke-interface {v0, v2}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V

    .line 621
    :cond_10
    return-void

    .line 539
    .end local v0    # "vuiElement":Lcom/xiaopeng/vui/commons/IVuiElement;
    .end local v1    # "obj":Lorg/json/JSONObject;
    .end local v2    # "props":Lorg/json/JSONObject;
    :cond_11
    :goto_7
    return-void
.end method

.method public static setStatefulButtonValue(Landroid/view/View;I)V
    .locals 3
    .param p0, "view"    # Landroid/view/View;
    .param p1, "currIndex"    # I

    .line 704
    instance-of v0, p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_0

    .line 705
    move-object v0, p0

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiValue(Ljava/lang/Object;Landroid/view/View;)V

    .line 708
    :cond_0
    return-void
.end method

.method public static setStatefulButtonValues(I[Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;)V
    .locals 9
    .param p0, "currIndex"    # I
    .param p1, "vuilabels"    # [Ljava/lang/String;
    .param p2, "element"    # Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 922
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 923
    .local v0, "mGson":Lcom/google/gson/Gson;
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getActions()Lcom/google/gson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_3

    if-ltz p0, :cond_3

    array-length v1, p1

    if-ge p0, v1, :cond_3

    .line 924
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p2, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 926
    .local v1, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    nop

    .line 927
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 928
    .local v2, "actionObj":Lorg/json/JSONObject;
    const/4 v3, 0x0

    move v4, v3

    .local v4, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 929
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 930
    .local v5, "actionKey":Ljava/lang/String;
    sget-object v6, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v6}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 931
    aget-object v6, p1, p0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    aget-object v6, p1, p0

    const-string v7, "-"

    .line 932
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 933
    .local v6, "value_lbs":[Ljava/lang/String;
    :goto_1
    if-eqz v6, :cond_1

    array-length v7, v6

    const/4 v8, 0x1

    if-lt v7, v8, :cond_1

    .line 934
    const-string v7, "SetValue"

    aget-object v8, v6, v3

    invoke-static {v2, v7, v8}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 928
    .end local v5    # "actionKey":Ljava/lang/String;
    .end local v6    # "value_lbs":[Ljava/lang/String;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 938
    .end local v4    # "i":I
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    .line 941
    .end local v1    # "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/google/gson/JsonElement;>;>;"
    .end local v2    # "actionObj":Lorg/json/JSONObject;
    :cond_3
    return-void
.end method

.method public static setValueAttribute(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)V
    .locals 7
    .param p0, "view"    # Landroid/view/View;
    .param p1, "element"    # Lcom/xiaopeng/vui/commons/model/VuiElement;

    .line 1177
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 1178
    .local v0, "mGson":Lcom/google/gson/Gson;
    if-eqz p0, :cond_19

    if-nez p1, :cond_0

    goto/16 :goto_9

    .line 1179
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v1

    .line 1180
    .local v1, "type":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1182
    .local v2, "actionObj":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1183
    invoke-static {p0, p1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setPropsEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;Lorg/json/JSONObject;)V

    goto/16 :goto_8

    .line 1185
    :cond_1
    if-eqz v1, :cond_2

    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->CHECKBOX:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1187
    invoke-static {p0, p1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setPropsEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;Lorg/json/JSONObject;)V

    goto/16 :goto_8

    .line 1189
    :cond_2
    if-eqz v1, :cond_3

    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->SWITCH:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1190
    invoke-static {p0, p1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setPropsEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;Lorg/json/JSONObject;)V

    goto/16 :goto_8

    .line 1192
    :cond_3
    if-eqz v1, :cond_5

    sget-object v3, Lcom/xiaopeng/vui/commons/VuiElementType;->SEEKBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1194
    if-eqz p0, :cond_4

    instance-of v3, p0, Landroid/widget/ProgressBar;

    if-eqz v3, :cond_4

    .line 1195
    sget-object v3, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v3}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v3

    move-object v4, p0

    check-cast v4, Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1197
    :cond_4
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    goto/16 :goto_8

    .line 1200
    :cond_5
    const/4 v3, 0x0

    if-eqz v1, :cond_11

    sget-object v4, Lcom/xiaopeng/vui/commons/VuiElementType;->XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1201
    instance-of v4, p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-nez v4, :cond_6

    return-void

    .line 1202
    :cond_6
    nop

    .line 1204
    .local v3, "obj":Ljava/lang/Object;
    :try_start_0
    instance-of v4, p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v4, :cond_7

    .line 1205
    move-object v4, p0

    check-cast v4, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v4}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiValue()Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v4

    .line 1210
    :cond_7
    if-nez v3, :cond_8

    .line 1211
    const-string v4, "getIndicatorValue"

    invoke-static {p0, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getReflexMethod(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1213
    :cond_8
    if-eqz v3, :cond_9

    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_9

    .line 1214
    :goto_0
    sget-object v4, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1215
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    goto :goto_2

    .line 1216
    :cond_9
    if-eqz v3, :cond_c

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_c

    .line 1217
    :goto_1
    sget-object v4, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1218
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    goto :goto_2

    .line 1210
    :catchall_0
    move-exception v4

    goto :goto_3

    .line 1207
    :catch_0
    move-exception v4

    .line 1208
    .local v4, "e":Ljava/lang/Throwable;
    :try_start_1
    const-string v5, "xpui version is not correct"

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1210
    .end local v4    # "e":Ljava/lang/Throwable;
    if-nez v3, :cond_a

    .line 1211
    const-string v4, "getIndicatorValue"

    invoke-static {p0, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getReflexMethod(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1213
    :cond_a
    if-eqz v3, :cond_b

    instance-of v4, v3, Ljava/lang/Float;

    if-eqz v4, :cond_b

    goto :goto_0

    .line 1216
    :cond_b
    if-eqz v3, :cond_c

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_c

    goto :goto_1

    .line 1222
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_c
    :goto_2
    goto/16 :goto_8

    .line 1210
    .restart local v3    # "obj":Ljava/lang/Object;
    :goto_3
    if-nez v3, :cond_d

    .line 1211
    const-string v5, "getIndicatorValue"

    invoke-static {p0, v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getReflexMethod(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1213
    :cond_d
    if-eqz v3, :cond_f

    instance-of v5, v3, Ljava/lang/Float;

    if-nez v5, :cond_e

    goto :goto_4

    .line 1214
    :cond_e
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1215
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    goto :goto_5

    .line 1216
    :cond_f
    :goto_4
    if-eqz v3, :cond_10

    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_10

    .line 1217
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1218
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    .line 1220
    :cond_10
    :goto_5
    throw v4

    .line 1222
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_11
    if-eqz v1, :cond_18

    sget-object v4, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1223
    instance-of v4, p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-nez v4, :cond_12

    return-void

    .line 1224
    :cond_12
    nop

    .line 1226
    .restart local v3    # "obj":Ljava/lang/Object;
    :try_start_2
    instance-of v4, p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v4, :cond_13

    .line 1227
    move-object v4, p0

    check-cast v4, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v4}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiValue()Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v3, v4

    .line 1232
    :cond_13
    if-nez v3, :cond_14

    .line 1233
    const-string v4, "getSelectedTabIndex"

    invoke-static {p0, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getReflexMethod(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1235
    :cond_14
    if-eqz v3, :cond_18

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_18

    .line 1237
    :goto_6
    sget-object v4, Lcom/xiaopeng/vui/commons/VuiAction;->SELECTTAB:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v4

    move-object v5, v3

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v4, v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1238
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    const-class v5, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v4, v5}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    goto :goto_8

    .line 1232
    :catchall_1
    move-exception v4

    goto :goto_7

    .line 1229
    :catch_1
    move-exception v4

    .line 1230
    .restart local v4    # "e":Ljava/lang/Throwable;
    :try_start_3
    const-string v5, "xpui version is not correct"

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1232
    .end local v4    # "e":Ljava/lang/Throwable;
    if-nez v3, :cond_15

    .line 1233
    const-string v4, "getSelectedTabIndex"

    invoke-static {p0, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getReflexMethod(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1235
    :cond_15
    if-eqz v3, :cond_18

    instance-of v4, v3, Ljava/lang/Integer;

    if-eqz v4, :cond_18

    goto :goto_6

    .line 1232
    :goto_7
    if-nez v3, :cond_16

    .line 1233
    const-string v5, "getSelectedTabIndex"

    invoke-static {p0, v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getReflexMethod(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 1235
    :cond_16
    if-eqz v3, :cond_17

    instance-of v5, v3, Ljava/lang/Integer;

    if-eqz v5, :cond_17

    .line 1237
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiAction;->SELECTTAB:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v6, v3

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2, v5, v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1238
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    const-class v6, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, v5, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    .line 1241
    :cond_17
    throw v4

    .line 1245
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_18
    :goto_8
    return-void

    .line 1178
    .end local v1    # "type":Ljava/lang/String;
    .end local v2    # "actionObj":Lorg/json/JSONObject;
    :cond_19
    :goto_9
    return-void
.end method

.method private static setVuiPriority(Lcom/xiaopeng/vui/commons/IVuiElement;Lcom/xiaopeng/vui/commons/model/VuiElement;Z)V
    .locals 2
    .param p0, "vuiElement"    # Lcom/xiaopeng/vui/commons/IVuiElement;
    .param p1, "element"    # Lcom/xiaopeng/vui/commons/model/VuiElement;
    .param p2, "isChecked"    # Z

    .line 1273
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1274
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    .line 1275
    .local v0, "props":Lorg/json/JSONObject;
    if-eqz v0, :cond_1

    const-string v1, "defaultPriorityValue"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1276
    if-eqz p2, :cond_0

    .line 1277
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL1:Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setPriority(I)V

    goto :goto_0

    .line 1279
    :cond_0
    const-string v1, "defaultPriorityValue"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setPriority(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "props":Lorg/json/JSONObject;
    goto :goto_0

    .line 1283
    :catch_0
    move-exception v0

    .line 1284
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .end local v0    # "e":Lorg/json/JSONException;
    goto :goto_1

    .line 1285
    :cond_1
    :goto_0
    nop

    .line 1287
    :goto_1
    return-void
.end method

.method public static stringConvertToVuiElement(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 263
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 264
    .local v0, "mGson":Lcom/google/gson/Gson;
    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-class v1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    :goto_0
    return-object v1
.end method

.method public static stringConvertToVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 2
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 258
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 259
    .local v0, "mGson":Lcom/google/gson/Gson;
    if-nez p0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const-class v1, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/speech/vui/model/VuiScene;

    :goto_0
    return-object v1
.end method

.method public static test()V
    .locals 4

    .line 77
    const-string v0, "{\n    \"id\": \"navigation_search\",\n    \"elements\": [\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u8fd4\u56de\",\n            \"id\": 10020,\n            \"position\": 2\n        },\n        {\n            \"type\": \"EditText\",\n            \"label\": \"\u8bf7\u8f93\u5165\u76ee\u7684\u5730\",\n            \"id\": 10030\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u91cd\u65b0\u8bbe\u7f6e\u5bb6\u7684\u4f4d\u7f6e\",\n            \"id\": 10050\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u6dfb\u52a0\u516c\u53f8\u4f4d\u7f6e\",\n            \"id\": 10056\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u6253\u5f00\u6536\u85cf\u5939\",\n            \"id\": 10062\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u5145\u7535\u7ad9\",\n            \"id\": 10098\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u7f8e\u98df\",\n            \"id\": 10034\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u6d17\u624b\u95f4\",\n            \"id\": 10089\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u505c\u8f66\u573a\",\n            \"id\": 10056\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u7ef4\u4fee\",\n            \"id\": 10065\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u5c0f\u9e4f4S\",\n            \"id\": 10035\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u667a\u80fd\u6d17\u8f66\",\n            \"id\": 10076\n        },\n        {\n            \"type\": \"RecycleView\",\n            \"dynamic\": true,\n            \"id\": 10056,\n            \"elements\": [\n                {\n                    \"type\": \"Button\",\n                    \"label\": \"\u7ef4\u4fee\",\n                    \"id\": 10023\n                }\n            ]\n        }\n    ]\n}"

    .line 156
    .local v0, "jsonStr":Ljava/lang/String;
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->stringConvertToVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v1

    .line 157
    .local v1, "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    invoke-static {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "str":Ljava/lang/String;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public static updateRecyclerItemView(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .param p0, "sceneId"    # Ljava/lang/String;
    .param p1, "recyclerView"    # Landroidx/recyclerview/widget/RecyclerView;

    .line 1526
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, p1, v0, v1, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;)V

    .line 1527
    return-void
.end method

.method public static userDisableViewMode()V
    .locals 1

    .line 1067
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->viewMode:Lcom/xiaopeng/vui/commons/VuiMode;

    .line 1068
    return-void
.end method

.method public static userSetFeatureState(Z)V
    .locals 0
    .param p0, "isDisable"    # Z

    .line 1045
    sput-boolean p0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->userDisabledFeature:Z

    .line 1046
    return-void
.end method

.method public static vuiElementGroupConvertToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 249
    .local p0, "elements":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 250
    :cond_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v1, Ljava/lang/Integer;

    new-instance v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneIntegerTypeAdapter;

    invoke-direct {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneIntegerTypeAdapter;-><init>()V

    .line 251
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const-class v1, Ljava/lang/Boolean;

    new-instance v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneBooleanTypeAdapter;

    invoke-direct {v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneBooleanTypeAdapter;-><init>()V

    .line 252
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/google/gson/ExclusionStrategy;

    const/4 v2, 0x0

    sget-object v3, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    aput-object v3, v1, v2

    .line 253
    invoke-virtual {v0, v1}, Lcom/google/gson/GsonBuilder;->setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 254
    .local v0, "mGsonExclsionBuild":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static vuiFeedBackConvertToString(Lcom/xiaopeng/speech/vui/model/VuiFeedback;)Ljava/lang/String;
    .locals 2
    .param p0, "feedBack"    # Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    .line 188
    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 189
    :cond_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 190
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 191
    .local v0, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static declared-synchronized vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;
    .locals 7
    .param p0, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;

    const-class v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;

    monitor-enter v0

    .line 196
    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object v1

    .line 197
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v3, Ljava/lang/Integer;

    new-instance v4, Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneIntegerTypeAdapter;

    invoke-direct {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneIntegerTypeAdapter;-><init>()V

    .line 198
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    new-instance v4, Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneBooleanTypeAdapter;

    invoke-direct {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneBooleanTypeAdapter;-><init>()V

    .line 199
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v2

    .line 200
    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 203
    .local v2, "mGsonBuild":Lcom/google/gson/Gson;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    const/4 v1, 0x0

    .line 203
    .end local v2    # "mGsonBuild":Lcom/google/gson/Gson;
    .local v1, "mGsonBuild":Lcom/google/gson/Gson;
    monitor-exit v0

    return-object v3

    .line 207
    .end local v1    # "mGsonBuild":Lcom/google/gson/Gson;
    .restart local v2    # "mGsonBuild":Lcom/google/gson/Gson;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 204
    :catch_0
    move-exception v3

    .line 205
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "VuiUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vuiSceneConvertToString e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    .end local v3    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 208
    nop

    .line 209
    monitor-exit v0

    return-object v1

    .line 207
    :goto_0
    const/4 v2, 0x0

    .line 208
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 195
    .end local v2    # "mGsonBuild":Lcom/google/gson/Gson;
    .end local p0    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized vuiUpdateSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;
    .locals 7
    .param p0, "vuiScene"    # Lcom/xiaopeng/speech/vui/model/VuiScene;

    const-class v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;

    monitor-enter v0

    .line 213
    const/4 v1, 0x0

    if-nez p0, :cond_0

    monitor-exit v0

    return-object v1

    .line 214
    :cond_0
    :try_start_0
    new-instance v2, Lcom/google/gson/GsonBuilder;

    invoke-direct {v2}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-class v3, Ljava/lang/Integer;

    new-instance v4, Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneIntegerTypeAdapter;

    invoke-direct {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneIntegerTypeAdapter;-><init>()V

    .line 215
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    new-instance v4, Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneBooleanTypeAdapter;

    invoke-direct {v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils$SceneBooleanTypeAdapter;-><init>()V

    .line 216
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/GsonBuilder;->registerTypeAdapter(Ljava/lang/reflect/Type;Ljava/lang/Object;)Lcom/google/gson/GsonBuilder;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/google/gson/ExclusionStrategy;

    const/4 v4, 0x0

    sget-object v5, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    aput-object v5, v3, v4

    .line 217
    invoke-virtual {v2, v3}, Lcom/google/gson/GsonBuilder;->setExclusionStrategies([Lcom/google/gson/ExclusionStrategy;)Lcom/google/gson/GsonBuilder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 219
    .local v2, "mGsonExclsionBuild":Lcom/google/gson/Gson;
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 223
    const/4 v1, 0x0

    .line 219
    .end local v2    # "mGsonExclsionBuild":Lcom/google/gson/Gson;
    .local v1, "mGsonExclsionBuild":Lcom/google/gson/Gson;
    monitor-exit v0

    return-object v3

    .line 223
    .end local v1    # "mGsonExclsionBuild":Lcom/google/gson/Gson;
    .restart local v2    # "mGsonExclsionBuild":Lcom/google/gson/Gson;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 220
    :catch_0
    move-exception v3

    .line 221
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v4, "VuiUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "vuiSceneConvertToString e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 223
    .end local v3    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    .line 224
    nop

    .line 225
    monitor-exit v0

    return-object v1

    .line 223
    :goto_0
    const/4 v2, 0x0

    .line 224
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 212
    .end local v2    # "mGsonExclsionBuild":Lcom/google/gson/Gson;
    .end local p0    # "vuiScene":Lcom/xiaopeng/speech/vui/model/VuiScene;
    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
