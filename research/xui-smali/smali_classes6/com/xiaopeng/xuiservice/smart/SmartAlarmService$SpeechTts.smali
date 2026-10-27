.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpeechTts"
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field private delay:I

.field private hasLoop:Z

.field private hasOnlyOnce:Z

.field private hasShutUp:Z

.field private nightDelay:I

.field private priority:I

.field private signal:I

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

.field private ts:J


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;J)V
    .locals 0
    .param p2, "ts"    # J

    .line 520
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 521
    iput-wide p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->ts:J

    .line 522
    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;

    .line 445
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->nightDelay:I

    return v0
.end method

.method static synthetic access$1200(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;

    .line 445
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->delay:I

    return v0
.end method

.method static synthetic access$1300(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)I
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;

    .line 445
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->signal:I

    return v0
.end method

.method static synthetic access$4100(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;)J
    .locals 2
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;

    .line 445
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->ts:J

    return-wide v0
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 469
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getDelay()I
    .locals 1

    .line 485
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->delay:I

    return v0
.end method

.method public getLoop()Z
    .locals 1

    .line 501
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->hasLoop:Z

    return v0
.end method

.method public getNightDelay()I
    .locals 1

    .line 493
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->nightDelay:I

    return v0
.end method

.method public getOnlyOnce()Z
    .locals 1

    .line 517
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->hasOnlyOnce:Z

    return v0
.end method

.method public getPriority()I
    .locals 1

    .line 477
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->priority:I

    return v0
.end method

.method public getShutUp()Z
    .locals 1

    .line 509
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->hasShutUp:Z

    return v0
.end method

.method public getSignal()I
    .locals 1

    .line 461
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->signal:I

    return v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "content"    # Ljava/lang/String;

    .line 465
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->content:Ljava/lang/String;

    .line 466
    return-void
.end method

.method public setDelay(I)V
    .locals 0
    .param p1, "delay"    # I

    .line 481
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->delay:I

    .line 482
    return-void
.end method

.method public setLoop(Z)V
    .locals 0
    .param p1, "hasLoop"    # Z

    .line 497
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->hasLoop:Z

    .line 498
    return-void
.end method

.method public setNightDelay(I)V
    .locals 0
    .param p1, "nightDelay"    # I

    .line 489
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->nightDelay:I

    .line 490
    return-void
.end method

.method public setOnlyOnce(Z)V
    .locals 0
    .param p1, "hasOnlyOnce"    # Z

    .line 513
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->hasOnlyOnce:Z

    .line 514
    return-void
.end method

.method public setPriority(I)V
    .locals 0
    .param p1, "priority"    # I

    .line 473
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->priority:I

    .line 474
    return-void
.end method

.method public setShutUp(Z)V
    .locals 0
    .param p1, "hasShutUp"    # Z

    .line 505
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->hasShutUp:Z

    .line 506
    return-void
.end method

.method public setSignal(I)V
    .locals 0
    .param p1, "signal"    # I

    .line 457
    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$SpeechTts;->signal:I

    .line 458
    return-void
.end method
