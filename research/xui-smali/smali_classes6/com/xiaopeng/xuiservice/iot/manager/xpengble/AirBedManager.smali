.class public Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;
.super Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;
.source "AirBedManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager$AirBedManagerHolder;
    }
.end annotation


# static fields
.field private static final CMD_HARDNESS_DOWN_PREFIX:Ljava/lang/String; = "/CX/AB0/004/"

.field private static final CMD_HARDNESS_RESTORE_PREFIX:Ljava/lang/String; = "/CX/AB0/006/"

.field private static final CMD_HARDNESS_SAVE_PREFIX:Ljava/lang/String; = "/CX/AB0/005/"

.field private static final CMD_HARDNESS_UP_PREFIX:Ljava/lang/String; = "/CX/AB0/002/"

.field private static final CMD_PUMP_PREFIX:Ljava/lang/String; = "/CX/AB0/001/"

.field private static final CMD_UN_PUMP_PREFIX:Ljava/lang/String; = "/CX/AB0/003/"

.field private static final NOTIFY_INSTANT_PREFIX:Ljava/lang/String; = "/R/AB0/"

.field private static final NOTIFY_PREFIX:Ljava/lang/String; = "/S/AB0/"

.field private static final SubTag:Ljava/lang/String; = "Airbed"

.field private static final TAG:Ljava/lang/String; = "AirBedManager"

.field private static final TARGET_MTU:I = 0x32

.field private static mAirBedDevice:Lcom/xiaopeng/xuimanager/iot/devices/AirBedDevice;

.field private static mBedStatus:Ljava/lang/String;

.field private static mHardnessStatus:Ljava/lang/String;

.field private static mPressure:Ljava/lang/String;

.field private static mPumpStatus:Ljava/lang/String;

.field private static mWorkCurrent:Ljava/lang/String;

.field private static mWorkedTime:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mPumpStatus:Ljava/lang/String;

    .line 49
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mPressure:Ljava/lang/String;

    .line 50
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mBedStatus:Ljava/lang/String;

    .line 51
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mWorkedTime:Ljava/lang/String;

    .line 52
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mHardnessStatus:Ljava/lang/String;

    .line 53
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mWorkCurrent:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/XPengBleManager;-><init>()V

    return-void
.end method

.method private cbTest(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 219
    const-string v0, "callback test..."

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$AirBedManager$ZtDdBUdvYU16k7OR3hOzNmmDc4A;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$AirBedManager$ZtDdBUdvYU16k7OR3hOzNmmDc4A;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method private dumpAll(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 214
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->selfGetPropertyMap()V

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mDevice:Lcom/xiaopeng/xuimanager/iot/BaseDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;
    .locals 1

    .line 60
    invoke-static {}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager$AirBedManagerHolder;->access$000()Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;

    move-result-object v0

    return-object v0
.end method

.method private getPropNameFromRawCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "rawCmd"    # Ljava/lang/String;

    .line 343
    const-string v0, "invalid"

    .line 345
    .local v0, "prop":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0xdd19

    if-eq v1, v2, :cond_0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "009"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x8

    goto :goto_1

    :pswitch_1
    const-string v1, "008"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    goto :goto_1

    :pswitch_2
    const-string v1, "007"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    goto :goto_1

    :pswitch_3
    const-string v1, "006"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    goto :goto_1

    :pswitch_4
    const-string v1, "005"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x4

    goto :goto_1

    :pswitch_5
    const-string v1, "004"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    goto :goto_1

    :pswitch_6
    const-string v1, "003"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_1

    :pswitch_7
    const-string v1, "002"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :pswitch_8
    const-string v1, "001"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    const-string v1, "999"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x9

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_1

    goto :goto_2

    .line 374
    :pswitch_9
    const-string v0, "XpStopCmd"

    .line 375
    goto :goto_2

    .line 371
    :pswitch_a
    const-string v0, "physicalStop"

    .line 372
    goto :goto_2

    .line 368
    :pswitch_b
    const-string v0, "physicalUnPump"

    .line 369
    goto :goto_2

    .line 365
    :pswitch_c
    const-string v0, "physicalPump"

    .line 366
    goto :goto_2

    .line 362
    :pswitch_d
    const-string v0, "hardnessRestore"

    .line 363
    goto :goto_2

    .line 359
    :pswitch_e
    const-string v0, "hardnessSave"

    .line 360
    goto :goto_2

    .line 356
    :pswitch_f
    const-string v0, "bedHardnessDown"

    .line 357
    goto :goto_2

    .line 353
    :pswitch_10
    const-string v0, "bedUnPump"

    .line 354
    goto :goto_2

    .line 350
    :pswitch_11
    const-string v0, "bedHardnessUp"

    .line 351
    goto :goto_2

    .line 347
    :pswitch_12
    const-string v0, "bedPump"

    .line 348
    nop

    .line 380
    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0xba31
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private handleInstantData(Ljava/lang/String;)V
    .locals 8
    .param p1, "val"    # Ljava/lang/String;

    .line 323
    const-string v0, "AirBedManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleInstantData,data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    :try_start_0
    const-string v0, "/R/AB0/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "props":[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 327
    .local v1, "eventCount":I
    mul-int/lit8 v2, v1, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    .line 328
    .local v2, "elementCount":I
    const-string v4, "AirBedManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleInstantData,eventCount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",data:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 330
    .local v4, "jsonObject":Lorg/json/JSONObject;
    nop

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 331
    const-string v5, "AirBedManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "event:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v0, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v7, v3, 0x1

    aget-object v7, v0, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    aget-object v5, v0, v3

    invoke-direct {p0, v5}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->getPropNameFromRawCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v3, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 330
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 334
    .end local v3    # "i":I
    :cond_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 335
    .local v3, "notifyString":Ljava/lang/String;
    const-string v5, "AirBedManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notify InstantData str="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->notifyPropEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v0    # "props":[Ljava/lang/String;
    .end local v1    # "eventCount":I
    .end local v2    # "elementCount":I
    .end local v3    # "notifyString":Ljava/lang/String;
    .end local v4    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_1

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirBedManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleInstantData,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method

.method private handleTimedData(Ljava/lang/String;)V
    .locals 11
    .param p1, "val"    # Ljava/lang/String;

    .line 241
    const-string v0, "AirBedManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleTimedData,data="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    :try_start_0
    const-string v0, "/S/AB0/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 244
    .local v0, "props":[Ljava/lang/String;
    const-string v1, "AirBedManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get props length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",bedStatus="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    aget-object v5, v0, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",pump status="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    aget-object v6, v0, v5

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",work time="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v2

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "s,hardness="

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x3

    aget-object v7, v0, v6

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",pressure="

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x4

    aget-object v8, v0, v7

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",work current="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v8, 0x5

    aget-object v9, v0, v8

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ",error code="

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v9, 0x6

    aget-object v10, v0, v9

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    const/4 v1, 0x0

    .line 249
    .local v1, "jsonObject":Lorg/json/JSONObject;
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mBedStatus:Ljava/lang/String;

    aget-object v10, v0, v4

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 250
    aget-object v3, v0, v4

    sput-object v3, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mBedStatus:Ljava/lang/String;

    .line 251
    if-nez v1, :cond_0

    .line 252
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v3

    .line 254
    :cond_0
    const-string v3, "bedHardware"

    aget-object v4, v0, v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    :cond_1
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mPumpStatus:Ljava/lang/String;

    aget-object v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 257
    aget-object v3, v0, v5

    sput-object v3, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mPumpStatus:Ljava/lang/String;

    .line 258
    if-nez v1, :cond_2

    .line 259
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v3

    .line 261
    :cond_2
    const-string v3, "bedPumpStat"

    aget-object v4, v0, v5

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 263
    :cond_3
    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mWorkedTime:Ljava/lang/String;

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 264
    aget-object v3, v0, v2

    sput-object v3, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mWorkedTime:Ljava/lang/String;

    .line 265
    if-nez v1, :cond_4

    .line 266
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v3

    .line 268
    :cond_4
    const-string/jumbo v3, "workedTime"

    aget-object v2, v0, v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 270
    :cond_5
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mHardnessStatus:Ljava/lang/String;

    aget-object v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 271
    aget-object v2, v0, v6

    sput-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mHardnessStatus:Ljava/lang/String;

    .line 272
    if-nez v1, :cond_6

    .line 273
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 275
    :cond_6
    const-string v2, "bedHardware"

    aget-object v3, v0, v6

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    :cond_7
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mPressure:Ljava/lang/String;

    aget-object v3, v0, v7

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 278
    aget-object v2, v0, v7

    sput-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mPressure:Ljava/lang/String;

    .line 279
    if-nez v1, :cond_8

    .line 280
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 282
    :cond_8
    const-string v2, "pressure"

    aget-object v3, v0, v7

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 284
    :cond_9
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mWorkCurrent:Ljava/lang/String;

    aget-object v3, v0, v8

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 285
    aget-object v2, v0, v8

    sput-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mWorkCurrent:Ljava/lang/String;

    .line 286
    if-nez v1, :cond_a

    .line 287
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 289
    :cond_a
    const-string/jumbo v2, "workCurrent"

    aget-object v3, v0, v8

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    :cond_b
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mErrorCode:Ljava/lang/String;

    aget-object v3, v0, v9

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    .line 292
    aget-object v2, v0, v9

    sput-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mErrorCode:Ljava/lang/String;

    .line 293
    if-nez v1, :cond_c

    .line 294
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    move-object v1, v2

    .line 296
    :cond_c
    const-string v2, "errorCode"

    aget-object v3, v0, v9

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 298
    :cond_d
    if-eqz v1, :cond_e

    .line 299
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "notifyString":Ljava/lang/String;
    const-string v3, "AirBedManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onNotify str="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->notifyPropEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 305
    .end local v0    # "props":[Ljava/lang/String;
    .end local v1    # "jsonObject":Lorg/json/JSONObject;
    .end local v2    # "notifyString":Ljava/lang/String;
    :cond_e
    goto :goto_0

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "AirBedManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleTimedData,e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static synthetic lambda$cbTest$1(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;)V
    .locals 1

    .line 221
    const-string v0, "/S/AB0/1,02,010,08,12,40,000042/#"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->onNotify([B)V

    .line 222
    const-string v0, "/R/AB0/1,005,02/#"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->onNotify([B)V

    .line 223
    const-string v0, "/R/AB0/2,001,01,999,03/#"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->onNotify([B)V

    .line 224
    const-string v0, "/S/AB0/2,01,008,07,21,51,000014/#"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->onNotify([B)V

    .line 225
    return-void
.end method

.method public static synthetic lambda$init$0(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 69
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 70
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 75
    if-nez p2, :cond_0

    .line 76
    const-string v0, "please dump with args"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 77
    return-void

    .line 79
    :cond_0
    const-string v0, "dump-AirBedManager"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 80
    array-length v0, p2

    .line 81
    .local v0, "length":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_4

    .line 82
    aget-object v3, p2, v2

    const/4 v4, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/16 v6, 0x5d4

    if-eq v5, v6, :cond_2

    const v6, 0xb54c

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "-cb"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const-string v5, "-a"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    :goto_1
    move v3, v4

    :goto_2
    packed-switch v3, :pswitch_data_0

    .line 81
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 87
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->cbTest(Ljava/io/PrintWriter;)V

    .line 88
    return-void

    .line 84
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->dumpAll(Ljava/io/PrintWriter;)V

    .line 85
    return-void

    .line 93
    .end local v2    # "i":I
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getPropertyCommand(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 5
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 119
    const/4 v0, 0x0

    .line 120
    .local v0, "cmdBytes":[B
    const/4 v1, 0x0

    .line 121
    .local v1, "cmdString":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "XpStopCmd"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_1
    const-string v2, "bedHardnessDown"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "bedHardnessUp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_3
    const-string v2, "bedUnPump"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_4
    const-string v2, "bedPump"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_5
    const-string v2, "hardnessRestore"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "hardnessSave"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 144
    const-string v2, "AirBedManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyCommand,unknown command:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 141
    :pswitch_0
    const-string v1, "/CX/AB0/999/000/#"

    .line 142
    goto/16 :goto_2

    .line 138
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/CX/AB0/006/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 139
    goto :goto_2

    .line 135
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/CX/AB0/005/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 136
    goto :goto_2

    .line 132
    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/CX/AB0/004/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 133
    goto :goto_2

    .line 129
    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/CX/AB0/003/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 130
    goto :goto_2

    .line 126
    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/CX/AB0/002/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 127
    goto :goto_2

    .line 123
    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/CX/AB0/001/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/#"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    nop

    .line 149
    :goto_2
    if-eqz v1, :cond_1

    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 151
    const-string v2, "AirBedManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPropertyCommand="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    :cond_1
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x756d9da1 -> :sswitch_6
        -0x6d4f1194 -> :sswitch_5
        -0xddc8977 -> :sswitch_4
        -0xc77f7e -> :sswitch_3
        0x10d9eb5e -> :sswitch_2
        0x4204dca5 -> :sswitch_1
        0x5cf14ba0 -> :sswitch_0
    .end sparse-switch

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

.method public init()V
    .locals 4

    .line 65
    new-instance v0, Lcom/xiaopeng/xuimanager/iot/devices/AirBedDevice;

    const-string v1, "Airbed"

    const-string v2, "Airbed"

    const-string v3, "XPeng-airbed"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/xuimanager/iot/devices/AirBedDevice;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mAirBedDevice:Lcom/xiaopeng/xuimanager/iot/devices/AirBedDevice;

    .line 67
    const-string v0, "Airbed"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mAirBedDevice:Lcom/xiaopeng/xuimanager/iot/devices/AirBedDevice;

    const-string v2, "key_iot_airbed_address"

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->baseInit(Ljava/lang/String;Lcom/xiaopeng/xuimanager/iot/BaseDevice;Ljava/lang/String;)V

    .line 68
    const-string v0, "Airbed"

    new-instance v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$AirBedManager$fCut6p0yb_PpEZSC_-6xPrbntd8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/-$$Lambda$AirBedManager$fCut6p0yb_PpEZSC_-6xPrbntd8;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 71
    return-void
.end method

.method protected onGetPropMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 199
    .local p1, "propMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 200
    const-string v0, "AirBedManager"

    const-string v1, "onGetPropMap error,map is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    return-void

    .line 203
    :cond_0
    const-string v0, "connect_state"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mConnectState:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string v0, "errorCode"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mErrorCode:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string v0, "bedPumpStat"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mPumpStatus:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    const-string v0, "pressure"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mPressure:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    const-string v0, "bedHardware"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mBedStatus:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    const-string/jumbo v0, "workedTime"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mWorkedTime:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    const-string/jumbo v0, "workCurrent"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mWorkCurrent:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string v0, "hardnessLevel"

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mHardnessStatus:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    return-void
.end method

.method protected onNotify([B)V
    .locals 5
    .param p1, "bytes"    # [B

    .line 164
    if-nez p1, :cond_0

    .line 165
    const-string v0, "AirBedManager"

    const-string v1, "onNotify, data null!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    return-void

    .line 171
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 172
    .local v0, "val":Ljava/lang/String;
    const/4 v1, 0x0

    .line 173
    .local v1, "dataType":I
    const-string v2, "/S/AB0/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 174
    const-string v2, "/R/AB0/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 175
    const-string v2, "AirBedManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotify,not interested data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    return-void

    .line 178
    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    .line 181
    :cond_2
    const/4 v1, 0x1

    .line 184
    :goto_0
    const/4 v2, 0x1

    if-ne v2, v1, :cond_4

    .line 185
    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mNotifyString:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 186
    const-string v2, "AirBedManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNotify,repeated data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void

    .line 189
    :cond_3
    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mNotifyString:Ljava/lang/String;

    .line 190
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->handleTimedData(Ljava/lang/String;)V

    goto :goto_1

    .line 192
    :cond_4
    const/4 v2, 0x2

    if-ne v2, v1, :cond_5

    .line 193
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->handleInstantData(Ljava/lang/String;)V

    .line 195
    :cond_5
    :goto_1
    return-void
.end method

.method protected onResetStatus()V
    .locals 2

    .line 100
    const-string v0, "AirBedManager"

    const-string v1, "onResetStatus"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "-1"

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mConnectState:Ljava/lang/String;

    .line 102
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mPumpStatus:Ljava/lang/String;

    .line 103
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mPressure:Ljava/lang/String;

    .line 104
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mBedStatus:Ljava/lang/String;

    .line 105
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mWorkedTime:Ljava/lang/String;

    .line 106
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mHardnessStatus:Ljava/lang/String;

    .line 107
    const-string v0, "-1"

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/xpengble/AirBedManager;->mWorkCurrent:Ljava/lang/String;

    .line 108
    return-void
.end method
