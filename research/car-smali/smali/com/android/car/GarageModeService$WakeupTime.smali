.class final Lcom/android/car/GarageModeService$WakeupTime;
.super Ljava/lang/Object;
.source "GarageModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/GarageModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "WakeupTime"
.end annotation


# instance fields
.field mNumAttempts:I

.field mWakeupTime:I


# direct methods
.method constructor <init>(II)V
    .locals 0
    .param p1, "wakeupTime"    # I
    .param p2, "numAttempts"    # I

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p1, p0, Lcom/android/car/GarageModeService$WakeupTime;->mWakeupTime:I

    .line 291
    iput p2, p0, Lcom/android/car/GarageModeService$WakeupTime;->mNumAttempts:I

    .line 292
    return-void
.end method
