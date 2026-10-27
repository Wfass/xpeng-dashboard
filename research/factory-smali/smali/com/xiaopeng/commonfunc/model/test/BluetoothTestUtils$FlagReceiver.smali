.class abstract Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothTestUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "FlagReceiver"
.end annotation


# instance fields
.field private mCompletedTime:J

.field private mExpectedFlags:I

.field private mFiredFlags:I

.field final synthetic this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;I)V
    .locals 2
    .param p2, "expectedFlags"    # I

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;->this$0:Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 80
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;->mExpectedFlags:I

    .line 81
    iput p1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;->mFiredFlags:I

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;->mCompletedTime:J

    .line 85
    iput p2, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;->mExpectedFlags:I

    .line 86
    return-void
.end method


# virtual methods
.method public getCompletedTime()J
    .locals 2

    .line 95
    monitor-enter p0

    .line 96
    :try_start_0
    iget-wide v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;->mCompletedTime:J

    monitor-exit p0

    return-wide v0

    .line 97
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFiredFlags()I
    .locals 1

    .line 89
    monitor-enter p0

    .line 90
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;->mFiredFlags:I

    monitor-exit p0

    return v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected setFiredFlag(I)V
    .locals 2
    .param p1, "flag"    # I

    .line 101
    monitor-enter p0

    .line 102
    :try_start_0
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;->mFiredFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;->mFiredFlags:I

    .line 103
    iget v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;->mFiredFlags:I

    iget v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;->mExpectedFlags:I

    and-int/2addr v0, v1

    iget v1, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;->mExpectedFlags:I

    if-ne v0, v1, :cond_0

    .line 104
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/commonfunc/model/test/BluetoothTestUtils$FlagReceiver;->mCompletedTime:J

    .line 106
    :cond_0
    monitor-exit p0

    .line 107
    return-void

    .line 106
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
