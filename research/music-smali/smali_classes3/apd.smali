.class public Lapd;
.super Ljava/lang/Object;
.source "UILooperObserver.java"

# interfaces
.implements Landroid/util/Printer;


# instance fields
.field private a:J

.field private b:J

.field private c:Laoy;


# direct methods
.method public constructor <init>(Laoy;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 32
    iput-wide v0, p0, Lapd;->a:J

    .line 33
    iput-wide v0, p0, Lapd;->b:J

    .line 37
    iput-object p1, p0, Lapd;->c:Laoy;

    .line 39
    invoke-direct {p0}, Lapd;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lapd$1;

    invoke-direct {v1, p0}, Lapd$1;-><init>(Lapd;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic a(Lapd;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lapd;->b()V

    return-void
.end method

.method private b()V
    .locals 2

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lapd;->a:J

    .line 115
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lapd;->b:J

    .line 117
    iget-object v0, p0, Lapd;->c:Laoy;

    invoke-virtual {v0}, Laoy;->a()V

    return-void
.end method

.method static synthetic b(Lapd;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lapd;->c()V

    return-void
.end method

.method private c()V
    .locals 9

    .line 121
    iget-wide v0, p0, Lapd;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 123
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lapd;->a:J

    sub-long/2addr v0, v2

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lapd;->b:J

    sub-long/2addr v2, v4

    .line 126
    iget-object v4, p0, Lapd;->c:Laoy;

    invoke-virtual {v4}, Laoy;->b()V

    .line 129
    sget-wide v4, Lapb;->a:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_1

    .line 130
    iget-object v4, p0, Lapd;->c:Laoy;

    const-wide/16 v5, 0x1388

    cmp-long v5, v0, v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v5, :cond_0

    move v5, v6

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    const/4 v8, 0x2

    new-array v8, v8, [J

    aput-wide v0, v8, v7

    aput-wide v2, v8, v6

    invoke-virtual {v4, v5, v8}, Laoy;->a(Z[J)V

    :cond_1
    return-void
.end method


# virtual methods
.method public println(Ljava/lang/String;)V
    .locals 1

    const-string v0, ">>>>> Dispatching to"

    .line 138
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    invoke-direct {p0}, Lapd;->b()V

    goto :goto_0

    :cond_0
    const-string v0, "<<<<< Finished to"

    .line 140
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 141
    invoke-direct {p0}, Lapd;->c()V

    :cond_1
    :goto_0
    return-void
.end method
