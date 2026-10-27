.class final Lcom/android/car/CarStorageMonitoringService$Configuration;
.super Ljava/lang/Object;
.source "CarStorageMonitoringService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/CarStorageMonitoringService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Configuration"
.end annotation


# instance fields
.field final acceptableBytesWrittenPerSample:J

.field final acceptableFsyncCallsPerSample:I

.field final acceptableHoursPerOnePercentFlashWear:I

.field final activityHandlerForFlashWearChanges:Ljava/lang/String;

.field final intentReceiverForUnacceptableIoMetrics:Ljava/lang/String;

.field final ioStatsNumSamplesToStore:I

.field final ioStatsRefreshRateMs:I

.field final maxExcessiveIoSamplesInWindow:I

.field final uptimeIntervalBetweenUptimeDataWriteMs:J


# direct methods
.method constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 608
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 609
    const v0, 0x7f0a0004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->ioStatsNumSamplesToStore:I

    .line 610
    nop

    .line 611
    const v0, 0x7f0a0005

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0x400

    mul-int/2addr v1, v0

    int-to-long v0, v1

    iput-wide v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableBytesWrittenPerSample:J

    .line 612
    nop

    .line 613
    const v0, 0x7f0a0006

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableFsyncCallsPerSample:I

    .line 614
    nop

    .line 615
    const v0, 0x7f0a0007

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->maxExcessiveIoSamplesInWindow:I

    .line 616
    nop

    .line 618
    const v0, 0x7f0a0002

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v1, 0x36ee80

    mul-int/2addr v1, v0

    int-to-long v0, v1

    iput-wide v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->uptimeIntervalBetweenUptimeDataWriteMs:J

    .line 619
    nop

    .line 620
    const v0, 0x7f0a0001

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableHoursPerOnePercentFlashWear:I

    .line 621
    nop

    .line 622
    const v0, 0x7f0a0003

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/16 v1, 0x3e8

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->ioStatsRefreshRateMs:I

    .line 623
    nop

    .line 624
    const v0, 0x7f060008

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->activityHandlerForFlashWearChanges:Ljava/lang/String;

    .line 625
    nop

    .line 626
    const v0, 0x7f060009

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->intentReceiverForUnacceptableIoMetrics:Ljava/lang/String;

    .line 627
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 631
    const-string v0, "acceptableBytesWrittenPerSample = %d, acceptableFsyncCallsPerSample = %d, acceptableHoursPerOnePercentFlashWear = %d, activityHandlerForFlashWearChanges = %s, intentReceiverForUnacceptableIoMetrics = %s, ioStatsNumSamplesToStore = %d, ioStatsRefreshRateMs = %d, maxExcessiveIoSamplesInWindow = %d, uptimeIntervalBetweenUptimeDataWriteMs = %d"

    const/16 v1, 0x9

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableBytesWrittenPerSample:J

    .line 641
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableFsyncCallsPerSample:I

    .line 642
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->acceptableHoursPerOnePercentFlashWear:I

    .line 643
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->activityHandlerForFlashWearChanges:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->intentReceiverForUnacceptableIoMetrics:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->ioStatsNumSamplesToStore:I

    .line 646
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->ioStatsRefreshRateMs:I

    .line 647
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x6

    aput-object v2, v1, v3

    iget v2, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->maxExcessiveIoSamplesInWindow:I

    .line 648
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x7

    aput-object v2, v1, v3

    iget-wide v2, p0, Lcom/android/car/CarStorageMonitoringService$Configuration;->uptimeIntervalBetweenUptimeDataWriteMs:J

    .line 649
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 631
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
