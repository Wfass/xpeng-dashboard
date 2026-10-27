.class public Lcom/xiaopeng/xui/graphics/XFpsMonitor;
.super Ljava/lang/Object;
.source "XFpsMonitor.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# instance fields
.field private currentFps:I

.field private currentFpsInfo:Ljava/lang/String;

.field private currentTfp:F

.field private lastLog:J

.field private final logInterval:J

.field private start:J

.field private sumFrames:I

.field private sumTime:J

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    const-string v0, "XFpsMonitor"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/graphics/XFpsMonitor;-><init>(Ljava/lang/String;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->tag:Ljava/lang/String;

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->lastLog:J

    .line 28
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->logInterval:J

    .line 29
    iput-wide v0, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->start:J

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->currentFpsInfo:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method public final frameEnd()Ljava/lang/String;
    .locals 10

    .line 45
    iget-wide v0, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->start:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 49
    .local v0, "end":J
    iget-wide v4, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->sumTime:J

    iget-wide v6, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->start:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->sumTime:J

    .line 50
    iget v4, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->sumFrames:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->sumFrames:I

    .line 51
    iget-wide v6, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->lastLog:J

    sub-long v6, v0, v6

    iget-wide v8, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->logInterval:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    .line 52
    iget v4, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->sumFrames:I

    iput v4, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->currentFps:I

    .line 53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->sumFrames:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " FPS\t\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 54
    .local v4, "stringBuilder":Ljava/lang/StringBuilder;
    iget-wide v6, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->sumTime:J

    long-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->sumFrames:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->currentTfp:F

    .line 55
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "%.2f"

    new-array v5, v5, [Ljava/lang/Object;

    iget v8, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->currentTfp:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "s":Ljava/lang/String;
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ms/f"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->currentFpsInfo:Ljava/lang/String;

    .line 57
    iget-object v6, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->tag:Ljava/lang/String;

    iget-object v7, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->currentFpsInfo:Ljava/lang/String;

    invoke-static {v6, v7}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->sumTime:J

    .line 59
    iput v9, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->sumFrames:I

    .line 60
    iput-wide v0, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->lastLog:J

    .line 63
    .end local v4    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v5    # "s":Ljava/lang/String;
    :cond_0
    iput-wide v2, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->start:J

    .line 64
    iget-object v2, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->currentFpsInfo:Ljava/lang/String;

    return-object v2

    .line 46
    .end local v0    # "end":J
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do you forget to call frameStart? "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final frameStart()V
    .locals 4

    .line 34
    iget-wide v0, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->start:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 37
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->start:J

    .line 38
    iget-wide v0, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->lastLog:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 39
    iget-wide v0, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->start:J

    iput-wide v0, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->lastLog:J

    .line 42
    :cond_0
    return-void

    .line 35
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do you forget to call frameEnd? "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getCurrentFps()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->currentFps:I

    return v0
.end method

.method public final getCurrentFpsInfo()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->currentFpsInfo:Ljava/lang/String;

    return-object v0
.end method

.method public final getCurrentTfp()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/xiaopeng/xui/graphics/XFpsMonitor;->currentTfp:F

    return v0
.end method
