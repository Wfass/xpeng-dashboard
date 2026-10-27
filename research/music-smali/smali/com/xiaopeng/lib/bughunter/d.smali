.class public Lcom/xiaopeng/lib/bughunter/d;
.super Ljava/lang/Object;
.source "SystemStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/bughunter/d$b;,
        Lcom/xiaopeng/lib/bughunter/d$a;,
        Lcom/xiaopeng/lib/bughunter/d$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "d"

.field private static g:Landroid/os/Handler;


# instance fields
.field private b:I

.field private c:J

.field private d:I

.field private e:J

.field private final f:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 28
    iput v0, p0, Lcom/xiaopeng/lib/bughunter/d;->b:I

    const-wide/16 v1, 0x0

    .line 29
    iput-wide v1, p0, Lcom/xiaopeng/lib/bughunter/d;->c:J

    .line 30
    iput v0, p0, Lcom/xiaopeng/lib/bughunter/d;->d:I

    .line 31
    iput-wide v1, p0, Lcom/xiaopeng/lib/bughunter/d;->e:J

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/bughunter/d;->f:Ljava/lang/Object;

    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BugHunterSystemStateMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/bughunter/d;->g:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/bughunter/d$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/lib/bughunter/d;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/lib/bughunter/d;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/xiaopeng/lib/bughunter/d;->b:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/lib/bughunter/d;J)J
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/xiaopeng/lib/bughunter/d;->c:J

    return-wide p1
.end method

.method public static a()Lcom/xiaopeng/lib/bughunter/d;
    .locals 1

    .line 44
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/d$c;->a()Lcom/xiaopeng/lib/bughunter/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/xiaopeng/lib/bughunter/d;)Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/lib/bughunter/d;->f:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/lib/bughunter/d;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/xiaopeng/lib/bughunter/d;->d:I

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/lib/bughunter/d;J)J
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/xiaopeng/lib/bughunter/d;->e:J

    return-wide p1
.end method

.method static synthetic g()I
    .locals 1

    .line 20
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/d;->j()I

    move-result v0

    return v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/lib/bughunter/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic i()Landroid/os/Handler;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/lib/bughunter/d;->g:Landroid/os/Handler;

    return-object v0
.end method

.method private static j()I
    .locals 2

    const-string v0, "sys.xiaopeng.ig_status"

    const/4 v1, 0x1

    .line 114
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method


# virtual methods
.method public b()V
    .locals 4

    .line 118
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 119
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 121
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/BugHunter;->getApp()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/lib/bughunter/d$b;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/lib/bughunter/d$b;-><init>(Lcom/xiaopeng/lib/bughunter/d;Lcom/xiaopeng/lib/bughunter/d$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 123
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xiaopeng.action.ig_status"

    .line 124
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/BugHunter;->getApp()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/lib/bughunter/d$a;

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/lib/bughunter/d$a;-><init>(Lcom/xiaopeng/lib/bughunter/d;Lcom/xiaopeng/lib/bughunter/d$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public c()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/xiaopeng/lib/bughunter/d;->b:I

    return v0
.end method

.method public d()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/xiaopeng/lib/bughunter/d;->c:J

    return-wide v0
.end method

.method public e()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/xiaopeng/lib/bughunter/d;->d:I

    return v0
.end method

.method public f()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/xiaopeng/lib/bughunter/d;->e:J

    return-wide v0
.end method
