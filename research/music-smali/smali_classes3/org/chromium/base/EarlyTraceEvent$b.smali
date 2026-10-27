.class public final Lorg/chromium/base/EarlyTraceEvent$b;
.super Ljava/lang/Object;
.source "EarlyTraceEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/EarlyTraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field static final synthetic g:Z


# instance fields
.field final a:Ljava/lang/String;

.field final b:I

.field final c:J

.field final d:J

.field e:J

.field f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    const-class v0, Lorg/chromium/base/EarlyTraceEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lorg/chromium/base/EarlyTraceEvent$b;->g:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/chromium/base/EarlyTraceEvent$b;->a:Ljava/lang/String;

    .line 58
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result p1

    iput p1, p0, Lorg/chromium/base/EarlyTraceEvent$b;->b:I

    .line 59
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent$b;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/EarlyTraceEvent$b;->c:J

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/EarlyTraceEvent$b;->d:J

    return-void
.end method

.method static b()J
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .line 73
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    .line 74
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    return-wide v0

    .line 76
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    mul-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public a()V
    .locals 5

    .line 64
    sget-boolean v0, Lorg/chromium/base/EarlyTraceEvent$b;->g:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lorg/chromium/base/EarlyTraceEvent$b;->e:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 65
    :cond_1
    :goto_0
    sget-boolean v0, Lorg/chromium/base/EarlyTraceEvent$b;->g:Z

    if-nez v0, :cond_3

    iget-wide v3, p0, Lorg/chromium/base/EarlyTraceEvent$b;->f:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 66
    :cond_3
    :goto_1
    invoke-static {}, Lorg/chromium/base/EarlyTraceEvent$b;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/EarlyTraceEvent$b;->e:J

    .line 67
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/EarlyTraceEvent$b;->f:J

    return-void
.end method
