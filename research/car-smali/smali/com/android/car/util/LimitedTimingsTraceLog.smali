.class public final Lcom/android/car/util/LimitedTimingsTraceLog;
.super Landroid/util/TimingsTraceLog;
.source "LimitedTimingsTraceLog.java"


# instance fields
.field private final mMinDurationMs:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "traceTag"    # J
    .param p4, "minDurationMs"    # I

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/util/TimingsTraceLog;-><init>(Ljava/lang/String;J)V

    .line 37
    iput p4, p0, Lcom/android/car/util/LimitedTimingsTraceLog;->mMinDurationMs:I

    .line 38
    return-void
.end method


# virtual methods
.method public logDuration(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "timeMs"    # J

    .line 42
    iget v0, p0, Lcom/android/car/util/LimitedTimingsTraceLog;->mMinDurationMs:I

    int-to-long v0, v0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 43
    invoke-super {p0, p1, p2, p3}, Landroid/util/TimingsTraceLog;->logDuration(Ljava/lang/String;J)V

    .line 45
    :cond_0
    return-void
.end method
