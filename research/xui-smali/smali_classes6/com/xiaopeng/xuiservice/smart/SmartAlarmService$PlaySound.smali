.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlaySound"
.end annotation


# instance fields
.field public signal:I

.field public sound:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

.field public ts:J


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;IJ)V
    .locals 0
    .param p2, "sound"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;
    .param p3, "signal"    # I
    .param p4, "ts"    # J

    .line 438
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 439
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->sound:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$Sound;

    .line 440
    iput p3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->signal:I

    .line 441
    iput-wide p4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$PlaySound;->ts:J

    .line 442
    return-void
.end method
