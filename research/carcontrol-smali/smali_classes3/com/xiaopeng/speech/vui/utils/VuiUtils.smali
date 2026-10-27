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

.field public static LIST_VEDIO_TYPE:I = 0x1

.field public static final VUI_ENABLE_APP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static isDisableVuiFeature:Z = false

.field private static mAppAreaLocation:Ljava/lang/String; = null

.field private static mAppDisplayLocation:Ljava/lang/String; = "primary"

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

    .line 162
    new-instance v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils$1;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

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

    .line 175
    filled-new-array/range {v1 .. v11}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->VUI_ENABLE_APP:Ljava/util/List;

    const/4 v0, 0x0

    .line 345
    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    .line 429
    new-instance v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils$2;

    invoke-direct {v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils$2;-><init>()V

    sput-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAttrExclusionStrategy:Lcom/google/gson/ExclusionStrategy;

    const/4 v1, 0x0

    .line 943
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

    const-string v2, "A1"

    .line 1616
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

    const-string v2, "Q7"

    .line 1623
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

    if-eqz p0, :cond_1

    .line 1388
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1390
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "canVoiceControl"

    const/4 v2, 0x1

    .line 1392
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1393
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static addDefaultPriorityValue(Lcom/xiaopeng/vui/commons/IVuiElement;I)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1494
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1496
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "defaultPriorityValue"

    .line 1498
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1499
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static addDisableTplProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1448
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1450
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "disableTpl"

    const/4 v2, 0x1

    .line 1452
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1453
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static addGeneralActProp(Lcom/xiaopeng/vui/commons/IVuiElement;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1403
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1405
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "generalAct"

    .line 1407
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1408
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1373
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1375
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "hasFeedback"

    const/4 v2, 0x1

    .line 1377
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1378
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static addMatchFirstProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1463
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1465
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "matchedFirstPirority"

    const/4 v2, 0x1

    .line 1467
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1468
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static addProps(Lcom/xiaopeng/vui/commons/IVuiElement;Ljava/util/Map;)V
    .locals 4
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

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1509
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1510
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1512
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1514
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 1515
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1516
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1517
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1519
    :cond_1
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static addProps(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/util/Map;)V
    .locals 4
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

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1353
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1354
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1356
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1358
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    .line 1359
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 1360
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1361
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v0, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 1363
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setProps(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static addSKipAlreadyProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1479
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1481
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "skipMultipleAlready"

    const/4 v2, 0x1

    .line 1483
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1484
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static addScrollProps(Lcom/xiaopeng/vui/commons/model/VuiElement;Landroid/view/View;)V
    .locals 6

    if-eqz p0, :cond_3

    .line 1325
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1327
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 1329
    :cond_0
    instance-of v1, p1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_2

    .line 1330
    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 1331
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getActions()Lcom/google/gson/JsonObject;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1332
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/xiaopeng/vui/commons/model/VuiElement;->actions:Lcom/google/gson/JsonObject;

    invoke-virtual {v2}, Lcom/google/gson/JsonObject;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1333
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1334
    sget-object v2, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v2, :cond_1

    const-string v1, "canScrollUp"

    .line 1335
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "canScrollDown"

    .line 1336
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 1337
    :cond_1
    sget-object v2, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYX:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "canScrollRight"

    .line 1338
    invoke-virtual {p1, v4}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "canScrollLeft"

    .line 1339
    invoke-virtual {p1, v5}, Landroidx/recyclerview/widget/RecyclerView;->canScrollVertically(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1344
    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setProps(Lcom/google/gson/JsonObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method

.method public static addUnitProp(Lcom/xiaopeng/vui/commons/IVuiElement;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    .line 1418
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1420
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "unit"

    .line 1422
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1423
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public static addUnsupportProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V
    .locals 3

    if-eqz p0, :cond_1

    .line 1433
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1435
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    const-string v1, "unsupported"

    const/4 v2, 0x1

    .line 1437
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1438
    invoke-interface {p0, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
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
    .locals 2

    .line 1026
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canUseVuiFeature:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->canUseVuiFeature()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFeatureDisabled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isFeatureDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

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

    if-eqz p1, :cond_1

    .line 645
    array-length v0, p1

    if-eqz v0, :cond_1

    if-ltz p0, :cond_1

    .line 647
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gt p0, v0, :cond_1

    .line 648
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 651
    :try_start_0
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 653
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 654
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 655
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 656
    aput-object v4, v1, v2

    .line 657
    aget-object v2, p1, v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 658
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v2, v5

    goto :goto_0

    :cond_0
    const-string p1, "states"

    .line 661
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "curState"

    .line 662
    aget-object p0, v1, p0

    invoke-virtual {p2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 665
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createStatefulButtonData(I[Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;)Lorg/json/JSONObject;
    .locals 6

    if-eqz p1, :cond_1

    .line 674
    array-length v0, p1

    if-eqz v0, :cond_1

    instance-of v0, p3, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_1

    if-ltz p0, :cond_1

    .line 676
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    if-gt p0, v0, :cond_1

    .line 677
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 680
    :try_start_0
    array-length v1, p1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 682
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    .line 683
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 684
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "state_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 685
    aput-object v4, v1, v2

    .line 686
    aget-object v2, p1, v2

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 687
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move v2, v5

    goto :goto_0

    :cond_0
    const-string p1, "states"

    .line 690
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 692
    move-object p1, p3

    check-cast p1, Lcom/xiaopeng/vui/commons/IVuiElement;

    aget-object p0, v1, p0

    invoke-interface {p1, p0, p3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiValue(Ljava/lang/Object;Landroid/view/View;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p0

    .line 695
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static disableVuiFeature()V
    .locals 1

    const/4 v0, 0x1

    .line 1037
    sput-boolean v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isDisableVuiFeature:Z

    return-void
.end method

.method public static enableVuiFeature()V
    .locals 1

    const/4 v0, 0x0

    .line 1041
    sput-boolean v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isDisableVuiFeature:Z

    return-void
.end method

.method public static findChildRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)Landroid/view/View;
    .locals 5

    if-eqz p0, :cond_3

    .line 1097
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 1098
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1099
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1101
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 1102
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 1103
    instance-of v2, p0, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v2, :cond_1

    return-object p0

    .line 1105
    :cond_1
    instance-of v2, p0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 1106
    check-cast p0, Landroid/view/ViewGroup;

    move v2, v1

    .line 1107
    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 1108
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 1109
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 1110
    invoke-interface {v0, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findRecyclerView(Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;
    .locals 4
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
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1076
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1077
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 1078
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/SoftReference;

    if-eqz p0, :cond_1

    .line 1079
    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    if-eqz p0, :cond_0

    .line 1081
    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1082
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-virtual {p0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    invoke-direct {v1, p0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    const/4 p0, 0x0

    .line 1083
    :goto_0
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge p0, v2, :cond_0

    .line 1084
    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 1085
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1086
    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static findViewPager(Landroid/view/View;)Landroidx/viewpager/widget/ViewPager;
    .locals 4

    .line 1131
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 1132
    invoke-interface {v0, p0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 1133
    :cond_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_3

    .line 1134
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 1135
    instance-of v1, p0, Landroidx/viewpager/widget/ViewPager;

    if-eqz v1, :cond_1

    .line 1136
    check-cast p0, Landroidx/viewpager/widget/ViewPager;

    return-object p0

    .line 1137
    :cond_1
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 1138
    check-cast p0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    .line 1139
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1140
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1141
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 1142
    invoke-interface {v0, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static generateCommonVuiElement(ILcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2

    .line 815
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateCommonVuiElement(ILcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2

    .line 804
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2, p3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1

    const/4 v0, 0x0

    .line 826
    invoke-static {p0, p1, p2, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 6

    .line 719
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-static/range {v0 .. v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1

    .line 734
    new-instance v0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;-><init>()V

    .line 735
    invoke-virtual {v0, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p0

    .line 736
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p0

    .line 737
    invoke-virtual {p0, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p0

    .line 738
    invoke-virtual {p0, p3}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->action(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p0

    .line 739
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->timestamp(J)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p0

    .line 740
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 742
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setLayoutLoadable(Ljava/lang/Boolean;)V

    .line 744
    :cond_0
    sget-object p2, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 745
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setLayoutLoadable(Ljava/lang/Boolean;)V

    .line 747
    :cond_1
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result p1

    invoke-virtual {p5}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 748
    invoke-virtual {p5}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setPriority(I)V

    :cond_2
    return-object p0
.end method

.method public static generateCommonVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;Ljava/lang/String;ZLcom/xiaopeng/vui/commons/VuiPriority;I)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1

    .line 767
    new-instance v0, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;-><init>()V

    .line 768
    invoke-virtual {v0, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p0

    .line 769
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p0

    .line 770
    invoke-virtual {p0, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p0

    .line 771
    invoke-virtual {p0, p3}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->action(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p0

    .line 772
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->timestamp(J)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p0

    .line 773
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    if-eqz p4, :cond_0

    .line 775
    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setLayoutLoadable(Ljava/lang/Boolean;)V

    .line 777
    :cond_0
    sget-object p2, Lcom/xiaopeng/vui/commons/VuiElementType;->RECYCLEVIEW:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 778
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setLayoutLoadable(Ljava/lang/Boolean;)V

    .line 779
    sget p2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->LIST_VEDIO_TYPE:I

    if-ne p2, p6, :cond_1

    .line 780
    new-instance p2, Lcom/google/gson/JsonObject;

    invoke-direct {p2}, Lcom/google/gson/JsonObject;-><init>()V

    .line 781
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    .line 782
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string p4, "matchedFirstPriority"

    invoke-virtual {p2, p4, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 783
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p3, "firstPriority"

    invoke-virtual {p2, p3, p1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string p1, "listType"

    const-string p3, "videoList"

    .line 784
    invoke-virtual {p2, p1, p3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    invoke-virtual {p0, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setProps(Lcom/google/gson/JsonObject;)V

    .line 788
    :cond_1
    sget-object p1, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result p1

    invoke-virtual {p5}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result p2

    if-eq p1, p2, :cond_2

    .line 789
    invoke-virtual {p5}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setPriority(I)V

    :cond_2
    return-object p0
.end method

.method public static generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    .line 230
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "value"

    .line 231
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 234
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "generateElementValueJSON e:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VuiUtils"

    invoke-static {p1, p0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;I)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 3

    .line 837
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, v0, p2, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2

    .line 848
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {p0, p1, v0, p2, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;I)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1, p2, p3, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1

    const-string v0, ""

    .line 860
    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p0

    return-object p0
.end method

.method public static generateStatefulButtonElement(I[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 8

    if-nez p2, :cond_0

    .line 886
    sget-object p2, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object p2

    .line 888
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 889
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

    move-result-object p4

    .line 893
    invoke-virtual {p4, v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->timestamp(J)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p4

    .line 894
    invoke-virtual {p4, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->action(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object p2

    .line 895
    invoke-virtual {p2}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object p2

    .line 896
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 897
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_4

    .line 898
    aget-object v4, p1, v3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :cond_1
    aget-object v4, p1, v3

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    .line 900
    new-instance v5, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    invoke-direct {v5}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;-><init>()V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_state_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 901
    invoke-virtual {v5, v6}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->id(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v5

    sget-object v6, Lcom/xiaopeng/vui/commons/VuiElementType;->STATE:Lcom/xiaopeng/vui/commons/VuiElementType;

    .line 902
    invoke-virtual {v6}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->type(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v5

    aget-object v6, v4, v2

    .line 903
    invoke-virtual {v5, v6}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->label(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v5

    .line 904
    invoke-virtual {v5, v0, v1}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->timestamp(J)Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;

    move-result-object v5

    .line 905
    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/model/VuiElement$Builder;->build()Lcom/xiaopeng/vui/commons/model/VuiElement;

    move-result-object v5

    .line 906
    array-length v6, v4

    const/4 v7, 0x1

    if-le v6, v7, :cond_2

    .line 907
    aget-object v4, v4, v7

    invoke-virtual {v5, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    goto :goto_2

    .line 909
    :cond_2
    aget-object v4, v4, v2

    invoke-virtual {v5, v4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    .line 911
    :goto_2
    invoke-interface {p4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 914
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonValues(I[Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;)V

    .line 915
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_5

    .line 916
    invoke-virtual {p2, p4}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setElements(Ljava/util/List;)V

    :cond_5
    return-object p2
.end method

.method public static getAppAreaLocation()Ljava/lang/String;
    .locals 4

    .line 347
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "VuiUtils"

    if-eqz v0, :cond_2

    .line 348
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v0

    const-string v2, "full"

    if-eqz v0, :cond_1

    .line 350
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "com.xiaopeng.systemui"

    .line 351
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 352
    sput-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    goto :goto_0

    .line 354
    :cond_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getScreenAreaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAppAreaLocation, screenId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 356
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getAreaLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 359
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 362
    :cond_1
    sput-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    .line 365
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAppAreaLocation, mAppAreaLocation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 366
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    return-object v0
.end method

.method public static getAppDisplayLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAppDisplayLocation, sceneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 313
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is3DMultiScreenPlatForm()Z

    move-result v0

    const-string v1, "primary"

    if-eqz v0, :cond_3

    .line 314
    invoke-static {}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->instance()Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 315
    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->getType()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;->getSceneCache(I)Lcom/xiaopeng/speech/vui/cache/VuiSceneCache;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/cache/VuiSceneBuildCache;->getDisplayCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 318
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    .line 322
    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "LF"

    goto :goto_1

    :cond_1
    const-string v0, "secondary"

    .line 324
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, "RF"

    :cond_2
    :goto_1
    move-object v1, p0

    goto :goto_2

    .line 327
    :cond_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 328
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.xiaopeng.systemui"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "fourth"

    return-object p0

    .line 331
    :cond_4
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getSourceDisplayLocation()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    return-object v1
.end method

.method public static getAreaLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAreaLocation, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primary"

    .line 389
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "secondary"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "full"

    :cond_0
    return-object p0
.end method

.method public static getCarPlatForm()Ljava/lang/String;
    .locals 1

    .line 1653
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sType:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 1656
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sType:Ljava/lang/String;

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

    const/4 v1, -0x1

    .line 1769
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

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x8

    goto :goto_0

    :pswitch_1
    const-string v2, "Q8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x6

    goto :goto_0

    :pswitch_2
    const-string v2, "Q7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x4

    goto :goto_0

    :pswitch_3
    const-string v2, "Q6"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const-string v2, "Q8B"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x7

    goto :goto_0

    :cond_2
    const-string v2, "Q7A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x5

    goto :goto_0

    :cond_3
    const-string v2, "Q3A"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x2

    goto :goto_0

    :cond_4
    const-string v2, "QB"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v1, 0x9

    goto :goto_0

    :cond_5
    const-string v2, "Q3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x1

    goto :goto_0

    :cond_6
    const-string v2, "Q1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    :cond_7
    :goto_0
    packed-switch v1, :pswitch_data_1

    .line 1795
    new-instance v0, Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    const-string v0, "H93"

    .line 1792
    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    goto :goto_2

    :pswitch_5
    const-string v0, "F30"

    .line 1789
    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    goto :goto_2

    :pswitch_6
    const-string v0, "E28a"

    .line 1786
    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    goto :goto_2

    :pswitch_7
    const-string v0, "E38"

    .line 1782
    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    goto :goto_2

    :pswitch_8
    const-string v0, "D22"

    .line 1778
    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    goto :goto_2

    :pswitch_9
    const-string v0, "D55"

    .line 1775
    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    goto :goto_2

    :pswitch_a
    const-string v0, "E28"

    .line 1771
    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;

    goto :goto_2

    .line 1795
    :goto_1
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getHardwareCarType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getHardwareCarStage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sCarType:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 1799
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1801
    :goto_2
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
    .locals 1
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

    .line 1308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    :goto_0
    const-class v0, Ljava/lang/Object;

    if-eq p0, v0, :cond_1

    .line 1310
    :try_start_0
    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    return-object v0

    .line 1308
    :catch_0
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getDisplayLocation(I)Ljava/lang/String;
    .locals 2

    .line 1736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayLocation, displayLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "primary"

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const-string p0, "secondary"

    return-object p0

    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    const-string p0, "fourth"

    return-object p0

    :cond_2
    return-object v0
.end method

.method public static getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayLocation, displayLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "0"

    .line 1823
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "primary"

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "1"

    .line 1825
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "secondary"

    if-eqz v0, :cond_1

    return-object v2

    :cond_1
    const-string v0, "3"

    .line 1827
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v3, "fourth"

    if-eqz v0, :cond_2

    return-object v3

    .line 1829
    :cond_2
    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1830
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1831
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    :cond_3
    return-object v1

    :cond_4
    :goto_0
    return-object p0
.end method

.method public static getDisplayLocationId(Ljava/lang/String;)I
    .locals 2

    .line 1749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDisplayLocationId, displayLocation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1750
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "fourth"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "secondary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0
.end method

.method public static getExtraPage(Lcom/xiaopeng/vui/commons/model/VuiElement;)I
    .locals 2

    .line 1120
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1121
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getProps()Lcom/google/gson/JsonObject;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "extraPage"

    .line 1122
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1124
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsInt()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public static getHardwareCarStage()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    .line 1816
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1817
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getHardwareCarType()Ljava/lang/String;
    .locals 3

    .line 1805
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getXpCduType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CAR.L"

    const-string v1, "throw CarUnSupportCduTypeException. Please use Car#getXpCduType() instead."

    .line 1806
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    .line 1809
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1810
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getHwVersion()Ljava/lang/String;
    .locals 2

    .line 1639
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-le v0, v1, :cond_0

    const-string v0, "ro.boot.hw_version"

    .line 1640
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "ro.xiaopeng.hardware"

    .line 1642
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1645
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Unknown"

    :cond_1
    return-object v0
.end method

.method public static getNewVuiScene(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 1

    .line 1890
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;-><init>()V

    .line 1891
    invoke-virtual {v0, p0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->sceneId(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->appVersion(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object p0

    .line 1892
    invoke-virtual {p0, p4}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->packageName(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->accessibility(Z)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object p0

    .line 1893
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->timestamp(J)Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/model/VuiScene$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object p0

    return-object p0
.end method

.method public static getOS5TopRunningPackageName()V
    .locals 7

    const-string v0, "component"

    const-string v1, "VuiEngine"

    .line 1902
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v2

    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getScreenId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getTopActivity(I)Ljava/lang/String;

    move-result-object v2

    .line 1903
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1904
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 1905
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 1906
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1907
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1908
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1909
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1910
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1911
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1916
    :cond_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1917
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mTopApp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1918
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1920
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOS5TopRunningPackageName:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mTopApp:Ljava/util/List;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "getOS5TopRunningPackageName"

    .line 1922
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public static getPackageNameFromSceneId(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1152
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "-"

    .line 1153
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 1154
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v1, p0, v3

    goto :goto_0

    :cond_1
    const-string v0, "_"

    .line 1155
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1156
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    aget-object v1, p0, v3

    :cond_2
    :goto_0
    return-object v1
.end method

.method public static getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;
    .locals 0
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
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/speech/vui/model/AppScreenNode;

    if-eqz p0, :cond_0

    .line 1854
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getPanelStack()Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getReflexMethod(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 1291
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDeclaredMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    .line 1295
    :try_start_0
    invoke-virtual {p1, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1296
    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1299
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getReflexMethod:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "VuiUtils"

    invoke-static {p1, p0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-object v0
.end method

.method public static getResourceName(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 1051
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v0

    .line 1052
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, ":"

    .line 1053
    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    const/4 v1, -0x1

    if-eq p0, v1, :cond_0

    add-int/lit8 p0, p0, 0x1

    .line 1055
    invoke-virtual {v0, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static getSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/List;
    .locals 0
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
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/speech/vui/model/AppScreenNode;

    if-eqz p0, :cond_0

    .line 1844
    invoke-virtual {p0}, Lcom/xiaopeng/speech/vui/model/AppScreenNode;->getSceneStack()Ljava/util/List;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static getScreenId()I
    .locals 3

    .line 397
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    const-string v1, "primary"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 399
    :cond_0
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    const-string v2, "secondary"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 401
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    const-string v2, "fourth"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x3

    .line 406
    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getScreenId, mAppDisplayLocation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", screenId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "VuiUtils"

    invoke-static {v2, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v1
.end method

.method public static getSourceDisplayLocation()Ljava/lang/String;
    .locals 4

    .line 1860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSourceDisplayLocation, mAppDisplayLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "primary"

    .line 1863
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

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/view/WindowManagerFactory;->getScreenId(Ljava/lang/String;)I

    move-result v0

    .line 1867
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    goto :goto_0

    .line 1868
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "com.xiaopeng.systemui"

    .line 1869
    invoke-static {}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->instance()Lcom/xiaopeng/speech/vui/VuiSceneManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/speech/vui/VuiSceneManager;->getmPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "fourth"

    .line 1870
    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    goto :goto_0

    .line 1872
    :cond_1
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1873
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getScreenId(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_2

    const-string v3, ":u10"

    .line 1874
    invoke-virtual {v0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x3

    .line 1877
    :cond_2
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 1881
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1884
    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSourceDisplayLocation, mAppDisplayLocation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1885
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    return-object v0
.end method

.method public static getTopRunningPackageName()Ljava/util/List;
    .locals 3
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

    const/4 v2, 0x1

    .line 1932
    invoke-virtual {v1, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1933
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 1934
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 1935
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getValueByName(Lcom/xiaopeng/vui/commons/model/VuiElement;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
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
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getEventValueByName"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->logDebug(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 504
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getResultActions()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 506
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getValues()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/gson/internal/LinkedTreeMap;

    if-eqz v2, :cond_3

    .line 507
    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getValues()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_3

    .line 509
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/google/gson/internal/LinkedTreeMap;

    if-eqz v2, :cond_2

    .line 510
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    if-eqz p0, :cond_3

    .line 512
    invoke-interface {p0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 513
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 514
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 519
    :cond_2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 520
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static getVersionInCountryCode()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    .line 1016
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1017
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x7

    const/16 v2, 0x9

    .line 1018
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

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

    const-string v1, "A1"

    .line 1706
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "D10"

    return-object v0

    :cond_0
    const-string v1, "A2"

    .line 1708
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "D20P"

    return-object v0

    :cond_1
    const-string v1, "A3"

    .line 1710
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "D21A"

    return-object v0

    :cond_2
    const-string v1, "Q1"

    .line 1712
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "E28"

    return-object v0

    :cond_3
    const-string v1, "Q2"

    .line 1714
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "D21B"

    return-object v0

    :cond_4
    const-string v1, "Q5"

    .line 1716
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1717
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getCarType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    const-string v1, "Q3"

    .line 1718
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "Q3A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, "Q6"

    .line 1720
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "D22"

    return-object v0

    :cond_7
    const-string v1, "Q7"

    .line 1722
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "Q7A"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_1

    :cond_8
    const-string v1, "Q8"

    .line 1724
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "Q8B"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_0

    :cond_9
    const-string v1, "Q9"

    .line 1726
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v0, "F30"

    return-object v0

    :cond_a
    const-string v1, "QB"

    .line 1728
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, "H93"

    :cond_b
    return-object v0

    :cond_c
    :goto_0
    const-string v0, "E28a"

    return-object v0

    :cond_d
    :goto_1
    const-string v0, "E38"

    return-object v0

    :cond_e
    :goto_2
    const-string v0, "D55"

    return-object v0
.end method

.method public static getXpCduType()Ljava/lang/String;
    .locals 3

    const-string v0, "ro.xiaopeng.software"

    const-string v1, ""

    .line 1661
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1662
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x5

    const/4 v2, 0x7

    .line 1665
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "persist.sys.xiaopeng.extendedCarType"

    .line 1666
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1669
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "Q3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Q7"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "Q7A"

    return-object v0

    :cond_2
    const-string v0, "Q3A"

    :cond_3
    :goto_0
    return-object v0
.end method

.method public static hasPopPanel()Z
    .locals 3

    .line 298
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 299
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 300
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 301
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 302
    sget-object v2, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 303
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentSkipListSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static is2DMultiScreenPlatForm()Z
    .locals 2

    .line 999
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getCarPlatForm()Ljava/lang/String;

    move-result-object v0

    .line 1000
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support2DMultiScreenPlatform:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static is3DApp(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.xiaopeng.napa"

    .line 268
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.DefaultCompany.VUIDemo"

    .line 269
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static is3DMultiScreenPlatForm()Z
    .locals 2

    .line 990
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getCarPlatForm()Ljava/lang/String;

    move-result-object v0

    .line 991
    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->support3DMultiScreenPlatform:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isActiveSceneId(Ljava/lang/String;)Z
    .locals 6

    .line 277
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->mActiveSceneIds:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 279
    sget-object v0, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    .line 280
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 282
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 283
    sget-object v5, Lcom/xiaopeng/speech/vui/VuiEngineImpl;->screenNodeMap:Ljava/util/Map;

    invoke-static {v4, v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getPanelSceneStack(Ljava/lang/String;Ljava/util/Map;)Ljava/util/concurrent/ConcurrentSkipListSet;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 284
    invoke-virtual {v4, p0}, Ljava/util/concurrent/ConcurrentSkipListSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    .line 288
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "allHas:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "VuiUtils"

    invoke-static {v0, p0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez v3, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public static isAppTop(Ljava/lang/String;)Z
    .locals 5

    .line 1942
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1945
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getTopRunningPackageName()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1946
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2

    move v2, v1

    .line 1947
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 1948
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1949
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static isDoubleOpenApp()Z
    .locals 4

    .line 1958
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1959
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getUserId(Landroid/content/Context;I)I

    move-result v0

    const/16 v2, 0xa

    if-le v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isFeatureDisabled()Z
    .locals 1

    .line 1033
    sget-boolean v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isDisableVuiFeature:Z

    return v0
.end method

.method public static isNumer(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "-?[0-9]+(\\.[0-9]+)?"

    .line 465
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const/4 v1, 0x0

    .line 468
    :try_start_0
    new-instance v2, Ljava/math/BigDecimal;

    invoke-direct {v2, p0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 473
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    .line 474
    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    if-nez p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    return v1
.end method

.method public static isNumeric(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "[0-9]*"

    .line 482
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 483
    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/regex/Matcher;->matches()Z

    move-result p0

    return p0
.end method

.method public static isOverseasVersion()Z
    .locals 2

    .line 1004
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sRegion:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 1005
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getVersionInCountryCode()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sRegion:Ljava/lang/String;

    .line 1006
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CountryCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sRegion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1008
    :cond_0
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sRegion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    .line 1011
    :cond_1
    sget-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->sRegion:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isPerformVuiAction(Landroid/view/View;)Z
    .locals 1

    .line 1694
    instance-of v0, p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_0

    .line 1695
    check-cast p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 1696
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->isPerformVuiAction()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isThirdApp(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "com.android.systemui"

    .line 1162
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

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

    if-nez v0, :cond_1

    const-string v0, "com.xiaopeng"

    .line 1165
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

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v1
.end method

.method public static isUseDisplayLocationPlatForm()Z
    .locals 2

    .line 972
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getCarPlatForm()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Q1"

    .line 973
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

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static platformIsSupport()Z
    .locals 4

    .line 952
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->isOverseasVersion()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 955
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getCarPlatForm()Ljava/lang/String;

    move-result-object v0

    .line 956
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v2, "com.xiaopeng.speechtesttools"

    invoke-static {v2}, Lcom/xiaopeng/speech/apirouter/Utils;->checkApkExist(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v3

    .line 959
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->unSupportType:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.xiaopeng.carspeechservice"

    .line 960
    invoke-static {v0}, Lcom/xiaopeng/speech/apirouter/Utils;->checkApkExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v3

    :cond_2
    return v1
.end method

.method public static setAppAreaLocation(Ljava/lang/String;)V
    .locals 2

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppAreaLocation, type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 371
    sput-object p0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    return-void
.end method

.method public static setAppResultAreaLocation(Ljava/lang/String;)V
    .locals 1

    .line 375
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->is2DMultiScreenPlatForm()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getScreenAreaType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 378
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getAreaLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 380
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "full"

    .line 383
    sput-object p0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppAreaLocation:Ljava/lang/String;

    :goto_0
    return-void
.end method

.method private static setPropsEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;Lorg/json/JSONObject;)V
    .locals 4

    .line 1250
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    if-eqz p0, :cond_0

    .line 1251
    instance-of v1, p0, Landroid/widget/CompoundButton;

    if-eqz v1, :cond_0

    .line 1252
    move-object v1, p0

    check-cast v1, Landroid/widget/CompoundButton;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 1254
    instance-of v1, p0, Landroid/widget/Checkable;

    if-eqz v1, :cond_1

    .line 1255
    move-object v1, p0

    check-cast v1, Landroid/widget/Checkable;

    invoke-interface {v1}, Landroid/widget/Checkable;->isChecked()Z

    move-result v1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_3

    .line 1257
    move-object v1, p0

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiValue()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1258
    instance-of v2, v1, Ljava/lang/Boolean;

    if-eqz v2, :cond_2

    .line 1259
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0

    .line 1261
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->isSelected()Z

    move-result v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 1264
    :goto_0
    sget-object v2, Lcom/xiaopeng/vui/commons/VuiAction;->SETCHECK:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v2}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {p2, v2, v3}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1265
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    const-class v2, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p2, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    .line 1266
    instance-of p2, p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz p2, :cond_4

    .line 1267
    check-cast p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-static {p0, p1, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setVuiPriority(Lcom/xiaopeng/vui/commons/IVuiElement;Lcom/xiaopeng/vui/commons/model/VuiElement;Z)V

    :cond_4
    return-void
.end method

.method public static setRecyclerViewItemVuiAttr(Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    .line 1536
    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)V

    return-void
.end method

.method public static setRecyclerViewItemVuiAttr(Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 1540
    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)V

    return-void
.end method

.method private static setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    .line 1529
    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)V

    return-void
.end method

.method private static setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1533
    invoke-static/range {v0 .. v6}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)V

    return-void
.end method

.method public static setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;Lcom/xiaopeng/vui/commons/VuiElementType;Ljava/lang/String;)V
    .locals 4

    if-eqz p2, :cond_2

    .line 1547
    invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "_"

    if-nez v0, :cond_0

    .line 1548
    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    move-object v2, p2

    check-cast v2, Landroid/view/View;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-virtual {v0, v2, p6}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    goto :goto_0

    .line 1550
    :cond_0
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p2

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p6

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-interface {p2, p6}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementId(Ljava/lang/String;)V

    .line 1552
    :goto_0
    invoke-interface {p2, p3}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiPosition(I)V

    .line 1553
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 1554
    invoke-interface {p2, p4}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiLabel(Ljava/lang/String;)V

    :cond_1
    if-eqz p5, :cond_2

    .line 1557
    invoke-interface {p2, p5}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    :cond_2
    if-nez p1, :cond_3

    return-void

    .line 1563
    :cond_3
    invoke-static {}, Lcom/xiaopeng/speech/vui/utils/HandlerManger;->getInstance()Lcom/xiaopeng/speech/vui/utils/HandlerManger;

    move-result-object p2

    new-instance p3, Lcom/xiaopeng/speech/vui/utils/VuiUtils$3;

    invoke-direct {p3, p0, p1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils$3;-><init>(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;)V

    const-wide/16 p0, 0x3e8

    invoke-virtual {p2, p3, p0, p1}, Lcom/xiaopeng/speech/vui/utils/HandlerManger;->submit(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public static setSourceDisplayLocation(I)V
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSourceDisplayLocation, screenId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiUtils"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 338
    invoke-static {p0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getDisplayLocation(I)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->mAppDisplayLocation:Ljava/lang/String;

    return-void
.end method

.method public static setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 641
    invoke-static {p0, p1, p2, v0, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 631
    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    if-eqz v1, :cond_f

    if-eqz v3, :cond_f

    .line 539
    array-length v0, v3

    if-lez v0, :cond_f

    if-gez v2, :cond_0

    array-length v0, v3

    if-lt v2, v0, :cond_0

    goto/16 :goto_6

    .line 540
    :cond_0
    instance-of v0, v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-nez v0, :cond_1

    return-void

    .line 541
    :cond_1
    move-object v5, v1

    check-cast v5, Lcom/xiaopeng/vui/commons/IVuiElement;

    .line 542
    invoke-interface {v5}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "SetValue"

    if-eqz v6, :cond_c

    const-string v0, "states"

    .line 543
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_c

    const-string v8, "curState"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "state_"

    if-nez p4, :cond_5

    .line 547
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v8, v2, 0x1

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_4

    .line 550
    invoke-interface {v5}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 553
    invoke-interface {v5, v0, v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiValue(Ljava/lang/Object;Landroid/view/View;)V

    .line 555
    :cond_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 556
    invoke-interface {v5, v7}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V

    goto :goto_0

    .line 558
    :cond_3
    invoke-interface {v5, v4}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V

    .line 560
    :goto_0
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-interface {v5, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    :cond_4
    return-void

    :catch_0
    move-exception v0

    goto/16 :goto_4

    .line 564
    :cond_5
    invoke-virtual {v6, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 565
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    array-length v12, v3

    if-ne v11, v12, :cond_c

    const/4 v11, 0x0

    move v12, v11

    .line 567
    :goto_1
    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v13
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v11, v13, :cond_7

    .line 568
    :try_start_1
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v13

    .line 569
    aget-object v14, v3, v11

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    add-int/lit8 v4, v11, 0x1

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_6

    .line 570
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aget-object v14, v3, v11

    invoke-virtual {v13, v12, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 571
    invoke-virtual {v10, v11, v13}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    const/4 v11, 0x1

    move v12, v11

    :cond_6
    move v11, v4

    move-object/from16 v4, p3

    goto :goto_1

    :catch_1
    move-exception v0

    move-object/from16 v4, p3

    goto :goto_4

    :cond_7
    if-eqz v12, :cond_8

    .line 576
    invoke-virtual {v6, v0, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v5, v0, v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiValue(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz v1, :cond_a

    .line 580
    invoke-interface {v5, v6}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V

    .line 581
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-interface {v5, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    goto :goto_2

    :cond_8
    const-string v0, ""

    .line 584
    invoke-virtual {v6, v8, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_a

    .line 587
    invoke-interface {v5}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 590
    invoke-interface {v5, v0, v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiValue(Ljava/lang/Object;Landroid/view/View;)V

    .line 592
    :cond_9
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-interface {v5, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 595
    :cond_a
    :goto_2
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 596
    invoke-interface {v5, v7}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :cond_b
    move-object/from16 v4, p3

    .line 598
    :try_start_2
    invoke-interface {v5, v4}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    return-void

    .line 605
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_c
    if-nez v6, :cond_d

    .line 609
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 611
    :cond_d
    invoke-static {v2, v3, v6, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->createStatefulButtonData(I[Ljava/lang/String;Lorg/json/JSONObject;Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    .line 613
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->STATEFULBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-interface {v5, v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 614
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 615
    invoke-interface {v5, v7}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V

    goto :goto_5

    .line 617
    :cond_e
    invoke-interface {v5, v4}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiAction(Ljava/lang/String;)V

    .line 619
    :goto_5
    invoke-interface {v5, v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiProps(Lorg/json/JSONObject;)V

    :cond_f
    :goto_6
    return-void
.end method

.method public static setStatefulButtonValue(Landroid/view/View;I)V
    .locals 3

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

    move-result-object v1

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->setVuiValue(Ljava/lang/Object;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public static setStatefulButtonValues(I[Ljava/lang/String;Lcom/xiaopeng/vui/commons/model/VuiElement;)V
    .locals 8

    .line 922
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 923
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

    .line 927
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    .line 928
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
    sget-object v6, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v6}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 931
    aget-object v5, p1, p0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    aget-object v5, p1, p0

    const-string v6, "-"

    .line 932
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_1

    .line 933
    array-length v6, v5

    const/4 v7, 0x1

    if-lt v6, v7, :cond_1

    .line 934
    aget-object v5, v5, v3

    const-string v6, "SetValue"

    invoke-static {v2, v6, v5}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 938
    :cond_2
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-class p1, Lcom/google/gson/JsonObject;

    invoke-virtual {v0, p0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public static setValueAttribute(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;)V
    .locals 8

    const-string v0, "getSelectedTabIndex"

    const-string v1, "getIndicatorValue"

    .line 1177
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    if-eqz p0, :cond_13

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 1179
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/vui/commons/model/VuiElement;->getType()Ljava/lang/String;

    move-result-object v3

    .line 1180
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    if-eqz v3, :cond_1

    .line 1182
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiElementType;->RADIOBUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1183
    invoke-static {p0, p1, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setPropsEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    :cond_1
    if-eqz v3, :cond_2

    .line 1185
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiElementType;->CHECKBOX:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1187
    invoke-static {p0, p1, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setPropsEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    :cond_2
    if-eqz v3, :cond_3

    .line 1189
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiElementType;->SWITCH:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1190
    invoke-static {p0, p1, v4}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setPropsEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiElement;Lorg/json/JSONObject;)V

    goto/16 :goto_5

    :cond_3
    if-eqz v3, :cond_5

    .line 1192
    sget-object v5, Lcom/xiaopeng/vui/commons/VuiElementType;->SEEKBAR:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v5}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz p0, :cond_4

    .line 1194
    instance-of v0, p0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_4

    .line 1195
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4, v0, p0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1197
    :cond_4
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_5
    const-string/jumbo v5, "xpui version is not correct"

    const/4 v6, 0x0

    if-eqz v3, :cond_e

    .line 1200
    sget-object v7, Lcom/xiaopeng/vui/commons/VuiElementType;->XSLIDER:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v7}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1201
    instance-of v0, p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-nez v0, :cond_6

    return-void

    .line 1204
    :cond_6
    :try_start_0
    instance-of v0, p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v0, :cond_7

    .line 1205
    move-object v0, p0

    check-cast v0, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiValue()Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_7
    if-nez v6, :cond_8

    .line 1211
    invoke-static {p0, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getReflexMethod(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    :cond_8
    if-eqz v6, :cond_9

    .line 1213
    instance-of p0, v6, Ljava/lang/Float;

    if-eqz p0, :cond_9

    .line 1214
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object p0

    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, p0, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1215
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_9
    if-eqz v6, :cond_13

    .line 1216
    instance-of p0, v6, Ljava/lang/Integer;

    if-eqz p0, :cond_13

    .line 1217
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object p0

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, p0, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1218
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 1208
    :catchall_0
    :try_start_1
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1211
    invoke-static {p0, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getReflexMethod(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_a

    .line 1213
    instance-of v0, p0, Ljava/lang/Float;

    if-eqz v0, :cond_a

    .line 1214
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4, v0, p0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_a
    if-eqz p0, :cond_13

    .line 1216
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 1217
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4, v0, p0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 1211
    invoke-static {p0, v1}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getReflexMethod(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 1213
    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_b

    goto :goto_2

    .line 1214
    :cond_b
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4, v1, p0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1215
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    goto :goto_3

    :cond_c
    :goto_2
    if-eqz p0, :cond_d

    .line 1216
    instance-of v1, p0, Ljava/lang/Integer;

    if-eqz v1, :cond_d

    .line 1217
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v1

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4, v1, p0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1218
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    .line 1220
    :cond_d
    :goto_3
    throw v0

    :cond_e
    if-eqz v3, :cond_13

    .line 1222
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->XTABLAYOUT:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiElementType;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 1223
    instance-of v1, p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-nez v1, :cond_f

    return-void

    .line 1226
    :cond_f
    :try_start_2
    instance-of v1, p0, Lcom/xiaopeng/vui/commons/IVuiElement;

    if-eqz v1, :cond_10

    .line 1227
    move-object v1, p0

    check-cast v1, Lcom/xiaopeng/vui/commons/IVuiElement;

    invoke-interface {v1}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiValue()Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_10
    if-nez v6, :cond_11

    .line 1233
    invoke-static {p0, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getReflexMethod(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    :cond_11
    if-eqz v6, :cond_13

    .line 1235
    instance-of p0, v6, Ljava/lang/Integer;

    if-eqz p0, :cond_13

    .line 1237
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiAction;->SELECTTAB:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object p0

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v4, p0, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1238
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    goto :goto_5

    .line 1230
    :catchall_2
    :try_start_3
    invoke-static {v5}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->w(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1233
    invoke-static {p0, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getReflexMethod(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_13

    .line 1235
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_13

    .line 1237
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SELECTTAB:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4, v0, p0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_4

    :catchall_3
    move-exception v1

    .line 1233
    invoke-static {p0, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->getReflexMethod(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_12

    .line 1235
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_12

    .line 1237
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SELECTTAB:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v4, v0, p0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->generateElementValueJSON(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1238
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-class v0, Lcom/google/gson/JsonObject;

    invoke-virtual {v2, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setValues(Ljava/lang/Object;)V

    .line 1241
    :cond_12
    throw v1

    :cond_13
    :goto_5
    return-void
.end method

.method private static setVuiPriority(Lcom/xiaopeng/vui/commons/IVuiElement;Lcom/xiaopeng/vui/commons/model/VuiElement;Z)V
    .locals 2

    const-string v0, "defaultPriorityValue"

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1274
    :try_start_0
    invoke-interface {p0}, Lcom/xiaopeng/vui/commons/IVuiElement;->getVuiProps()Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1275
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    .line 1277
    sget-object p0, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL1:Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-virtual {p0}, Lcom/xiaopeng/vui/commons/VuiPriority;->getLevel()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setPriority(I)V

    goto :goto_0

    .line 1279
    :cond_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/vui/commons/model/VuiElement;->setPriority(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1284
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static stringConvertToVuiElement(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 2

    .line 263
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 264
    :cond_0
    const-class v1, Lcom/xiaopeng/vui/commons/model/VuiElement;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/vui/commons/model/VuiElement;

    :goto_0
    return-object p0
.end method

.method public static stringConvertToVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;
    .locals 2

    .line 258
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 259
    :cond_0
    const-class v1, Lcom/xiaopeng/speech/vui/model/VuiScene;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/speech/vui/model/VuiScene;

    :goto_0
    return-object p0
.end method

.method public static test()V
    .locals 2

    const-string/jumbo v0, "{\n    \"id\": \"navigation_search\",\n    \"elements\": [\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u8fd4\u56de\",\n            \"id\": 10020,\n            \"position\": 2\n        },\n        {\n            \"type\": \"EditText\",\n            \"label\": \"\u8bf7\u8f93\u5165\u76ee\u7684\u5730\",\n            \"id\": 10030\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u91cd\u65b0\u8bbe\u7f6e\u5bb6\u7684\u4f4d\u7f6e\",\n            \"id\": 10050\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u6dfb\u52a0\u516c\u53f8\u4f4d\u7f6e\",\n            \"id\": 10056\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u6253\u5f00\u6536\u85cf\u5939\",\n            \"id\": 10062\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u5145\u7535\u7ad9\",\n            \"id\": 10098\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u7f8e\u98df\",\n            \"id\": 10034\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u6d17\u624b\u95f4\",\n            \"id\": 10089\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u505c\u8f66\u573a\",\n            \"id\": 10056\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u7ef4\u4fee\",\n            \"id\": 10065\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u5c0f\u9e4f4S\",\n            \"id\": 10035\n        },\n        {\n            \"type\": \"Button\",\n            \"label\": \"\u667a\u80fd\u6d17\u8f66\",\n            \"id\": 10076\n        },\n        {\n            \"type\": \"RecycleView\",\n            \"dynamic\": true,\n            \"id\": 10056,\n            \"elements\": [\n                {\n                    \"type\": \"Button\",\n                    \"label\": \"\u7ef4\u4fee\",\n                    \"id\": 10023\n                }\n            ]\n        }\n    ]\n}"

    .line 156
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->stringConvertToVuiScene(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiScene;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;

    move-result-object v0

    .line 158
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static updateRecyclerItemView(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1526
    invoke-static {p0, p1, v0, v1, v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setRecyclerViewItemVuiAttr(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;Lcom/xiaopeng/vui/commons/IVuiElement;ILjava/lang/String;)V

    return-void
.end method

.method public static userDisableViewMode()V
    .locals 1

    .line 1067
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    sput-object v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->viewMode:Lcom/xiaopeng/vui/commons/VuiMode;

    return-void
.end method

.method public static userSetFeatureState(Z)V
    .locals 0

    .line 1045
    sput-boolean p0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->userDisabledFeature:Z

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

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

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
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static vuiFeedBackConvertToString(Lcom/xiaopeng/speech/vui/model/VuiFeedback;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 189
    :cond_0
    new-instance v0, Lcom/google/gson/GsonBuilder;

    invoke-direct {v0}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 190
    invoke-virtual {v0}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v0

    .line 191
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized vuiSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 196
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
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "VuiUtils"

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vuiSceneConvertToString e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 209
    monitor-exit v0

    return-object v1

    .line 208
    :goto_0
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized vuiUpdateSceneConvertToString(Lcom/xiaopeng/speech/vui/model/VuiScene;)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/xiaopeng/speech/vui/utils/VuiUtils;

    monitor-enter v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 213
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
    :try_start_1
    invoke-virtual {v2, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string v2, "VuiUtils"

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "vuiSceneConvertToString e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaopeng/speech/vui/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 225
    monitor-exit v0

    return-object v1

    .line 224
    :goto_0
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method
