.class public Laoz;
.super Ljava/lang/Object;
.source "Caton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laoz$b;,
        Laoz$c;,
        Laoz$a;
    }
.end annotation


# static fields
.field static a:Laoz$c;

.field private static volatile b:Laoz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    sget-object v0, Laoz$c;->LOOPER:Laoz$c;

    sput-object v0, Laoz;->a:Laoz$c;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;JJLaoz$c;ZLaoz$b;)V
    .locals 4

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0xc8

    .line 26
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p2

    const-wide/16 v2, 0x190

    invoke-static {p2, p3, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    .line 27
    invoke-static {p4, p5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p4

    invoke-static {p4, p5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p4

    .line 28
    sput-boolean p7, Lapb;->b:Z

    .line 29
    sput-wide p2, Lapb;->a:J

    .line 31
    new-instance p2, Lcom/xiaopeng/lib/bughunter/c;

    invoke-direct {p2, p4, p5}, Lcom/xiaopeng/lib/bughunter/c;-><init>(J)V

    .line 32
    new-instance p3, Laoy;

    invoke-direct {p3, p1, p2, p8}, Laoy;-><init>(Landroid/content/Context;Lapa;Laoz$b;)V

    .line 33
    sget-object p2, Laoz$c;->LOOPER:Laoz$c;

    if-ne p6, p2, :cond_0

    .line 34
    new-instance p1, Lapd;

    invoke-direct {p1, p3}, Lapd;-><init>(Laoy;)V

    goto :goto_0

    .line 35
    :cond_0
    sget-object p2, Laoz$c;->FRAME:Laoz$c;

    if-ne p6, p2, :cond_2

    .line 36
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x10

    if-lt p2, p4, :cond_1

    .line 37
    new-instance p2, Lapc;

    invoke-direct {p2, p1, p3}, Lapc;-><init>(Landroid/content/Context;Laoy;)V

    .line 38
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Lapd;

    invoke-direct {p1, p3}, Lapd;-><init>(Laoy;)V

    :cond_2
    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;JJLaoz$c;ZLaoz$b;Laoz$1;)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p8}, Laoz;-><init>(Landroid/content/Context;JJLaoz$c;ZLaoz$b;)V

    return-void
.end method

.method public static a(Laoz$a;)V
    .locals 2

    .line 50
    sget-object v0, Laoz;->b:Laoz;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Laoz;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Laoz;->b:Laoz;

    if-nez v1, :cond_0

    .line 53
    invoke-virtual {p0}, Laoz$a;->a()Laoz;

    move-result-object p0

    sput-object p0, Laoz;->b:Laoz;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
