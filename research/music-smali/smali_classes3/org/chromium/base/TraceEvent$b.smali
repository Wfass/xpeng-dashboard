.class final Lorg/chromium/base/TraceEvent$b;
.super Lorg/chromium/base/TraceEvent$a;
.source "TraceEvent.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/base/TraceEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private b:J

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 130
    invoke-direct {p0, v0}, Lorg/chromium/base/TraceEvent$a;-><init>(Lorg/chromium/base/TraceEvent$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/base/TraceEvent$1;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lorg/chromium/base/TraceEvent$b;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 4

    .line 159
    invoke-static {}, Lorg/chromium/base/TraceEvent;->b()Z

    move-result v0

    const-string v1, "TraceEvent.LooperMonitor"

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/chromium/base/TraceEvent$b;->g:Z

    if-nez v0, :cond_0

    .line 161
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/chromium/base/TraceEvent$b;->b:J

    .line 162
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const/4 v0, 0x1

    .line 163
    iput-boolean v0, p0, Lorg/chromium/base/TraceEvent$b;->g:Z

    const-string v0, "attached idle handler"

    .line 164
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 165
    :cond_0
    iget-boolean v0, p0, Lorg/chromium/base/TraceEvent$b;->g:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lorg/chromium/base/TraceEvent;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 166
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/MessageQueue;->removeIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lorg/chromium/base/TraceEvent$b;->g:Z

    const-string v0, "detached idle handler"

    .line 168
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static a(ILjava/lang/String;)V
    .locals 1

    const-string v0, "TraceEvent.LooperMonitor:IdleStats"

    .line 198
    invoke-static {v0, p1}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "TraceEvent.LooperMonitor"

    .line 199
    invoke-static {p0, v0, p1}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method final a(Ljava/lang/String;)V
    .locals 2

    .line 175
    iget v0, p0, Lorg/chromium/base/TraceEvent$b;->f:I

    if-nez v0, :cond_0

    const-string v0, "Looper.queueIdle"

    .line 176
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->b(Ljava/lang/String;)V

    .line 178
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/chromium/base/TraceEvent$b;->c:J

    .line 179
    invoke-direct {p0}, Lorg/chromium/base/TraceEvent$b;->a()V

    .line 180
    invoke-super {p0, p1}, Lorg/chromium/base/TraceEvent$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method final b(Ljava/lang/String;)V
    .locals 5

    .line 185
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/chromium/base/TraceEvent$b;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x10

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x5

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "observed a task that took "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "ms: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lorg/chromium/base/TraceEvent$b;->a(ILjava/lang/String;)V

    .line 191
    :cond_0
    invoke-super {p0, p1}, Lorg/chromium/base/TraceEvent$a;->b(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lorg/chromium/base/TraceEvent$b;->a()V

    .line 193
    iget p1, p0, Lorg/chromium/base/TraceEvent$b;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/chromium/base/TraceEvent$b;->d:I

    .line 194
    iget p1, p0, Lorg/chromium/base/TraceEvent$b;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/chromium/base/TraceEvent$b;->f:I

    return-void
.end method

.method public final queueIdle()Z
    .locals 8

    .line 204
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 205
    iget-wide v2, p0, Lorg/chromium/base/TraceEvent$b;->b:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iput-wide v0, p0, Lorg/chromium/base/TraceEvent$b;->b:J

    .line 206
    :cond_0
    iget-wide v2, p0, Lorg/chromium/base/TraceEvent$b;->b:J

    sub-long v2, v0, v2

    .line 207
    iget v4, p0, Lorg/chromium/base/TraceEvent$b;->e:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lorg/chromium/base/TraceEvent$b;->e:I

    .line 208
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lorg/chromium/base/TraceEvent$b;->f:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " tasks since last idle."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "Looper.queueIdle"

    invoke-static {v6, v4}, Lorg/chromium/base/TraceEvent;->c(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v6, 0x30

    cmp-long v4, v2, v6

    if-lez v4, :cond_1

    .line 211
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lorg/chromium/base/TraceEvent$b;->d:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " tasks and "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/chromium/base/TraceEvent$b;->e:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " idles processed so far, "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lorg/chromium/base/TraceEvent$b;->f:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " tasks bursted and "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms elapsed since last idle"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    .line 215
    invoke-static {v3, v2}, Lorg/chromium/base/TraceEvent$b;->a(ILjava/lang/String;)V

    .line 217
    :cond_1
    iput-wide v0, p0, Lorg/chromium/base/TraceEvent$b;->b:J

    const/4 v0, 0x0

    .line 218
    iput v0, p0, Lorg/chromium/base/TraceEvent$b;->f:I

    return v5
.end method
