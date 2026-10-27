.class public Lapc;
.super Ljava/lang/Object;
.source "FPSFrameCallBack.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation


# static fields
.field private static a:J

.field private static b:J


# instance fields
.field private c:J

.field private d:J

.field private e:Laoy;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Laoy;)V
    .locals 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0, p1}, Lapc;->a(Landroid/content/Context;)F

    move-result p1

    const v0, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, p1

    float-to-long v0, v0

    .line 26
    iput-wide v0, p0, Lapc;->d:J

    .line 27
    sget-wide v0, Lapb;->a:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    iget-wide v2, p0, Lapc;->d:J

    div-long/2addr v0, v2

    sput-wide v0, Lapc;->b:J

    const-wide v0, 0x12a05f200L

    .line 28
    div-long/2addr v0, v2

    sput-wide v0, Lapc;->a:J

    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SKIPPED_FRAME_WARNING_LIMIT : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lapc;->b:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ,SKIPPED_FRAME_ANR_TRIGGER : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lapc;->a:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FPSFrameCallBack"

    invoke-static {v0, p1}, Lapb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    iput-object p2, p0, Lapc;->e:Laoy;

    return-void
.end method

.method private a(Landroid/content/Context;)F
    .locals 1

    const-string v0, "window"

    .line 34
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/view/Display;->getRefreshRate()F

    move-result p1

    return p1
.end method


# virtual methods
.method public doFrame(J)V
    .locals 6

    .line 40
    iget-wide v0, p0, Lapc;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 41
    iput-wide p1, p0, Lapc;->c:J

    .line 42
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void

    :cond_0
    sub-long v0, p1, v0

    .line 46
    iget-wide v2, p0, Lapc;->d:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_2

    .line 47
    div-long/2addr v0, v2

    .line 48
    sget-wide v2, Lapc;->b:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipped "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " frames!  The application may be doing too much work on its main thread."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FPSFrameCallBack"

    invoke-static {v3, v2}, Lapb;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v2, p0, Lapc;->e:Laoy;

    sget-wide v3, Lapc;->a:J

    cmp-long v3, v0, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ltz v3, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v5

    :goto_0
    new-array v4, v4, [J

    aput-wide v0, v4, v5

    invoke-virtual {v2, v3, v4}, Laoy;->a(Z[J)V

    .line 54
    :cond_2
    iput-wide p1, p0, Lapc;->c:J

    .line 55
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method
