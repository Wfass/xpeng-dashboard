.class Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;
.super Ljava/lang/Object;
.source "SmartTestDriveService.java"

# interfaces
.implements Landroid/car/hardware/srs/CarSrsManager$CarSrsEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->addSrsManagerCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 264
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onChangeEvent$0(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;J)V
    .locals 9
    .param p1, "ts"    # J

    .line 289
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "sex"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 290
    .local v0, "sexVal":I
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 291
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v3

    const-string v4, "test_drive_men"

    invoke-virtual {v3, v4}, Lcom/xiaopeng/util/LocaleStrings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 292
    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v3

    const-string v4, "test_drive_women"

    invoke-virtual {v3, v4}, Lcom/xiaopeng/util/LocaleStrings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, ""

    .line 294
    .local v3, "title":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isInternationalEnable()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 295
    .local v4, "appellation":Ljava/lang/String;
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v6

    const-string v7, "test_drive_welcome_prefix"

    invoke-virtual {v6, v7}, Lcom/xiaopeng/util/LocaleStrings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1300()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v6

    const-string v7, "test_drive_welcome_suffix"

    invoke-virtual {v6, v7}, Lcom/xiaopeng/util/LocaleStrings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 299
    .local v5, "context":Ljava/lang/String;
    const-string v6, "SmartTestDriveService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enter STATE_READY, speak: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v6

    const/16 v7, 0xa

    const/4 v8, 0x7

    invoke-virtual {v6, v5, v2, v7, v8}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speakByUrgent(Ljava/lang/String;ZII)Ljava/lang/String;

    .line 304
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    const/4 v6, 0x0

    invoke-static {v2, v6}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1102(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Z)Z

    .line 305
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v2, v6}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$902(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Z)Z

    .line 306
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v2, p1, p2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1502(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;J)J

    .line 307
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    sget-object v6, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->STATE_READY:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    invoke-static {v2, v6}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$402(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    .line 308
    return-void
.end method

.method public static synthetic lambda$onChangeEvent$1(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;)V
    .locals 5

    .line 322
    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v0

    const-string v1, "test_drive_ending"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/util/LocaleStrings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 324
    .local v0, "context":Ljava/lang/String;
    const-string v1, "SmartTestDriveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enter STATE_IDLE, speak: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->getInstance()Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0xa

    const/4 v4, 0x7

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/xiaopeng/xuiservice/capabilities/XpSpeechTtsService;->speakByUrgent(Ljava/lang/String;ZII)Ljava/lang/String;

    .line 329
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$200(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)V

    .line 330
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$302(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    .line 331
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->STATE_IDLE:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$402(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    .line 332
    return-void
.end method


# virtual methods
.method public onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
    .locals 13
    .param p1, "value"    # Landroid/car/hardware/CarPropertyValue;

    .line 267
    const-string v0, "SmartTestDriveService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSrsEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    const v1, 0x21401c0c

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_5

    const v1, 0x21401c4f

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 271
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    move v0, v2

    .line 272
    .local v0, "hasPassengerOnSeat":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 273
    .local v1, "now":J
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lorg/json/JSONObject;

    move-result-object v5

    const-wide/16 v6, 0x0

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v8, "timestamp"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_0

    :cond_2
    move-wide v8, v6

    :goto_0
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    .line 275
    .local v5, "timestamp":Ljava/lang/Long;
    const-string v8, "SmartTestDriveService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v10}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ": onChangeEvent, hasPassengerOnSeat="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", hasTestDrive="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 276
    invoke-static {v10}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", hasIgOn="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v10}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$500(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", hasGearP="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v10}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", now = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long v10, v1, v3

    .line 277
    invoke-static {v10, v11}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$600(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v10}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lorg/json/JSONObject;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 278
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ", orderTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v11

    mul-long/2addr v11, v3

    invoke-static {v11, v12}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$600(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_3
    const-string v3, ""

    :goto_1
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 275
    invoke-static {v8, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->STATE_IDLE:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    if-eqz v0, :cond_7

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 282
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$500(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 283
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long v3, v1, v3

    const-wide/16 v8, 0x708

    cmp-long v3, v3, v8

    if-gez v3, :cond_7

    .line 285
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 286
    .local v3, "ts":J
    iget-object v8, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v8}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$700(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)J

    move-result-wide v8

    sub-long v8, v3, v8

    const-wide/16 v10, 0xfa0

    cmp-long v8, v8, v10

    if-lez v8, :cond_4

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v6}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$700(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)J

    move-result-wide v6

    sub-long v6, v3, v6

    sub-long v6, v10, v6

    .line 288
    .local v6, "delay":J
    :goto_2
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v8

    new-instance v9, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$6$upNP2oT74lobGTiXPdObg6GcUQ4;

    invoke-direct {v9, p0, v3, v4}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$6$upNP2oT74lobGTiXPdObg6GcUQ4;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;J)V

    invoke-virtual {v8, v9, v6, v7}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 309
    .end local v3    # "ts":J
    .end local v6    # "delay":J
    goto/16 :goto_3

    .line 312
    .end local v0    # "hasPassengerOnSeat":Z
    .end local v1    # "now":J
    .end local v5    # "timestamp":Ljava/lang/Long;
    :cond_5
    invoke-virtual {p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_6

    move v2, v3

    nop

    :cond_6
    move v0, v2

    .line 314
    .local v0, "hasDriverBeltUnBuckled":Z
    const-string v1, "SmartTestDriveService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": onChangeEvent, hasDriverBeltUnBuckled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", hasGearP="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    .line 315
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 314
    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    move-result-object v1

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->STATE_CHANGE_HANDS:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$TestDriveState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 319
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1500(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)J

    move-result-wide v3

    sub-long/2addr v1, v3

    const v3, 0xea60

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService;)I

    move-result v4

    mul-int/2addr v3, v4

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_7

    .line 321
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$6$hLTA1xQssaK0vMJ50zi0ldisjig;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartTestDriveService$6$hLTA1xQssaK0vMJ50zi0ldisjig;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartTestDriveService$6;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 336
    .end local v0    # "hasDriverBeltUnBuckled":Z
    :cond_7
    :goto_3
    return-void
.end method

.method public onErrorEvent(II)V
    .locals 0
    .param p1, "propertyId"    # I
    .param p2, "zone"    # I

    .line 340
    return-void
.end method
