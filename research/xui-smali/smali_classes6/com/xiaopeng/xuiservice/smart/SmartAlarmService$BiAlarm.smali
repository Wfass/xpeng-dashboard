.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiAlarm"
.end annotation


# instance fields
.field private bilog:Lcom/xiaopeng/biutil/BiLog;

.field private hasSound:Z

.field private hasTts:Z

.field private signal:I

.field private sound:Lorg/json/JSONObject;

.field private streamId:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

.field private tts:Lorg/json/JSONObject;

.field private ttsId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;IJ)V
    .locals 5
    .param p2, "signal"    # I
    .param p3, "ts"    # J

    .line 664
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 598
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->hasTts:Z

    .line 599
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->hasSound:Z

    .line 600
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->tts:Lorg/json/JSONObject;

    .line 601
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->sound:Lorg/json/JSONObject;

    .line 603
    const-string v0, "P10141"

    const-string v1, "B011"

    .line 604
    invoke-static {v0, v1}, Lcom/xiaopeng/biutil/BiLogFactory;->create(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/biutil/BiLog;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->bilog:Lcom/xiaopeng/biutil/BiLog;

    .line 665
    shr-int/lit8 v0, p2, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 666
    .local v0, "signalId":I
    and-int/2addr v1, p2

    .line 667
    .local v1, "signalVal":I
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)Ljava/util/Map;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 669
    .local p1, "name":Ljava/lang/String;
    iput p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->signal:I

    .line 671
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v3, "name"

    invoke-virtual {v2, v3, p1}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v3, "value"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v3, "ts"

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    const-string v2, "SmartAlarmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "create bilog "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 676
    return-void
.end method

.method static synthetic access$3400(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;

    .line 595
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->streamId:I

    return v0
.end method

.method static synthetic access$3402(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;I)I
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    .param p1, "x1"    # I

    .line 595
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->streamId:I

    return p1
.end method

.method static synthetic access$3500(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;

    .line 595
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->hasSound:Z

    return v0
.end method

.method static synthetic access$3600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;

    .line 595
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->signal:I

    return v0
.end method

.method static synthetic access$3700(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;)Z
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;

    .line 595
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->hasTts:Z

    return v0
.end method

.method static synthetic access$3800(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;

    .line 595
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->ttsId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3802(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    .param p1, "x1"    # Ljava/lang/String;

    .line 595
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->ttsId:Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method public addSound(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "source"    # Ljava/lang/String;
    .param p2, "priority"    # I
    .param p3, "type"    # Ljava/lang/String;

    .line 623
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->hasSound:Z

    if-nez v0, :cond_0

    .line 625
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->sound:Lorg/json/JSONObject;

    const-string v1, "source"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 626
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->sound:Lorg/json/JSONObject;

    const-string v1, "priority"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 627
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->sound:Lorg/json/JSONObject;

    const-string v1, "type"

    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 629
    goto :goto_0

    .line 628
    :catch_0
    move-exception v0

    .line 631
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->hasSound:Z

    .line 633
    :cond_0
    return-void
.end method

.method public addTts(Ljava/lang/String;I)V
    .locals 2
    .param p1, "content"    # Ljava/lang/String;
    .param p2, "priority"    # I

    .line 611
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->hasTts:Z

    if-nez v0, :cond_0

    .line 613
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->tts:Lorg/json/JSONObject;

    const-string v1, "content"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 614
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->tts:Lorg/json/JSONObject;

    const-string v1, "priority"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    goto :goto_0

    .line 615
    :catch_0
    move-exception v0

    .line 618
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->hasTts:Z

    .line 620
    :cond_0
    return-void
.end method

.method public addTtsStartTime()V
    .locals 4

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->tts:Lorg/json/JSONObject;

    const-string v1, "startTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    goto :goto_0

    .line 638
    :catch_0
    move-exception v0

    .line 640
    :goto_0
    return-void
.end method

.method public isCompleted()Z
    .locals 1

    .line 607
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->hasTts:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->hasSound:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public declared-synchronized submit(ILjava/lang/String;)V
    .locals 5
    .param p1, "type"    # I
    .param p2, "result"    # Ljava/lang/String;

    monitor-enter p0

    .line 644
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 645
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->tts:Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 646
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->hasTts:Z

    goto :goto_0

    .line 643
    .end local p1    # "type":I
    .end local p2    # "result":Ljava/lang/String;
    :catchall_0
    move-exception p1

    goto :goto_3

    .line 652
    .restart local p1    # "type":I
    .restart local p2    # "result":Ljava/lang/String;
    :catch_0
    move-exception v0

    goto :goto_1

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->sound:Lorg/json/JSONObject;

    const-string v2, "endTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 649
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->sound:Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 650
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->hasSound:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 653
    :goto_0
    goto :goto_2

    .line 652
    :goto_1
    nop

    .line 655
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->isCompleted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "sound"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->sound:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->bilog:Lcom/xiaopeng/biutil/BiLog;

    const-string v1, "tts"

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->tts:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/biutil/BiLog;->push(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-static {}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->getInstance()Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->bilog:Lcom/xiaopeng/biutil/BiLog;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/innerutils/BiLogTransmit;->submit(Lcom/xiaopeng/biutil/BiLog;)V

    .line 660
    const-string v0, "SmartAlarmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send bilog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;->bilog:Lcom/xiaopeng/biutil/BiLog;

    invoke-virtual {v2}, Lcom/xiaopeng/biutil/BiLog;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 662
    :cond_1
    monitor-exit p0

    return-void

    .line 643
    .end local p1    # "type":I
    .end local p2    # "result":Ljava/lang/String;
    :goto_3
    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$BiAlarm;
    throw p1
.end method
