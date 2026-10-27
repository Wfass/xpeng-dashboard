.class public Landroid/os/PowerManager$WakeData;
.super Ljava/lang/Object;
.source "PowerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/PowerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeData"
.end annotation


# instance fields
.field public sleepDuration:J

.field public wakeReason:I

.field public wakeTime:J


# direct methods
.method public constructor <init>(JIJ)V
    .locals 0

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-wide p1, p0, Landroid/os/PowerManager$WakeData;->wakeTime:J

    .line 780
    iput p3, p0, Landroid/os/PowerManager$WakeData;->wakeReason:I

    .line 781
    iput-wide p4, p0, Landroid/os/PowerManager$WakeData;->sleepDuration:J

    return-void
.end method
