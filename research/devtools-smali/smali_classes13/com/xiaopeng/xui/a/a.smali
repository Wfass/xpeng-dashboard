.class public Lcom/xiaopeng/xui/a/a;
.super Ljava/lang/Object;
.source "XFpsMonitor.java"


# instance fields
.field private final aaO:J

.field private aaP:J

.field private aaQ:J

.field private aaR:I

.field private aaS:I

.field private aaT:F

.field private aaU:Ljava/lang/String;

.field private start:J

.field private tag:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 19
    const-string v0, "XFpsMonitor"

    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/a/a;-><init>(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/xui/a/a;->tag:Ljava/lang/String;

    .line 24
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/xiaopeng/xui/a/a;->aaP:J

    .line 25
    const-wide/16 v2, 0x3e8

    iput-wide v2, p0, Lcom/xiaopeng/xui/a/a;->aaO:J

    .line 26
    iput-wide v0, p0, Lcom/xiaopeng/xui/a/a;->start:J

    .line 27
    const-string p1, ""

    iput-object p1, p0, Lcom/xiaopeng/xui/a/a;->aaU:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public final qI()V
    .locals 4

    .line 31
    iget-wide v0, p0, Lcom/xiaopeng/xui/a/a;->start:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xui/a/a;->start:J

    .line 35
    iget-wide v0, p0, Lcom/xiaopeng/xui/a/a;->aaP:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 36
    iget-wide v0, p0, Lcom/xiaopeng/xui/a/a;->start:J

    iput-wide v0, p0, Lcom/xiaopeng/xui/a/a;->aaP:J

    .line 39
    :cond_0
    return-void

    .line 32
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do you forget to call frameEnd? "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final qJ()Ljava/lang/String;
    .locals 10

    .line 42
    iget-wide v0, p0, Lcom/xiaopeng/xui/a/a;->start:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 45
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 46
    iget-wide v4, p0, Lcom/xiaopeng/xui/a/a;->aaQ:J

    iget-wide v6, p0, Lcom/xiaopeng/xui/a/a;->start:J

    sub-long v6, v0, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/xiaopeng/xui/a/a;->aaQ:J

    .line 47
    iget v4, p0, Lcom/xiaopeng/xui/a/a;->aaR:I

    const/4 v5, 0x1

    add-int/2addr v4, v5

    iput v4, p0, Lcom/xiaopeng/xui/a/a;->aaR:I

    .line 48
    iget-wide v6, p0, Lcom/xiaopeng/xui/a/a;->aaP:J

    sub-long v6, v0, v6

    iget-wide v8, p0, Lcom/xiaopeng/xui/a/a;->aaO:J

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    .line 49
    iget v4, p0, Lcom/xiaopeng/xui/a/a;->aaR:I

    iput v4, p0, Lcom/xiaopeng/xui/a/a;->aaS:I

    .line 50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, p0, Lcom/xiaopeng/xui/a/a;->aaR:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " FPS\t\t"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    iget-wide v6, p0, Lcom/xiaopeng/xui/a/a;->aaQ:J

    long-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/xiaopeng/xui/a/a;->aaR:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    iput v6, p0, Lcom/xiaopeng/xui/a/a;->aaT:F

    .line 52
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    const-string v7, "%.2f"

    new-array v5, v5, [Ljava/lang/Object;

    iget v8, p0, Lcom/xiaopeng/xui/a/a;->aaT:F

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v5, v9

    invoke-static {v6, v7, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ms/f"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/xiaopeng/xui/a/a;->aaU:Ljava/lang/String;

    .line 54
    iget-object v4, p0, Lcom/xiaopeng/xui/a/a;->tag:Ljava/lang/String;

    iget-object v5, p0, Lcom/xiaopeng/xui/a/a;->aaU:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/xiaopeng/xui/a/a;->aaQ:J

    .line 56
    iput v9, p0, Lcom/xiaopeng/xui/a/a;->aaR:I

    .line 57
    iput-wide v0, p0, Lcom/xiaopeng/xui/a/a;->aaP:J

    .line 60
    :cond_0
    iput-wide v2, p0, Lcom/xiaopeng/xui/a/a;->start:J

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/xui/a/a;->aaU:Ljava/lang/String;

    return-object v0

    .line 43
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Do you forget to call frameStart? "

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
