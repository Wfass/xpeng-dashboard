.class public Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;
.super Ljava/lang/Object;
.source "SystemStatusMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;,
        Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver;,
        Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$SingletonHolder;
    }
.end annotation


# static fields
.field private static final IG_STATE_ACTION:Ljava/lang/String; = "com.xiaopeng.action.ig_status"

.field private static final IG_STATE_KEY:Ljava/lang/String; = "ig_status"

.field private static final SYSTEM_PROPERTY_IG_STATE:Ljava/lang/String; = "sys.xiaopeng.ig_status"

.field private static final TAG:Ljava/lang/String; = "SystemStatusMonitor"

.field private static mSystemStatusHandler:Landroid/os/Handler;


# instance fields
.field private final mAccessLock:Ljava/lang/Object;

.field private mIgOnState:I

.field private mIgOnStateChangeTime:J

.field private mScreenDisplayChangeTime:J

.field private mScreenDisplayStatus:I


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
    iput v0, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mIgOnState:I

    const-wide/16 v1, 0x0

    .line 29
    iput-wide v1, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mIgOnStateChangeTime:J

    .line 30
    iput v0, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mScreenDisplayStatus:I

    .line 31
    iput-wide v1, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mScreenDisplayChangeTime:J

    .line 33
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mAccessLock:Ljava/lang/Object;

    .line 38
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "BugHunterSystemStateMonitor"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 40
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mSystemStatusHandler:Landroid/os/Handler;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$1;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;-><init>()V

    return-void
.end method

.method static synthetic access$200()I
    .locals 1

    .line 20
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->getIgStateFromSystem()I

    move-result v0

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;)Ljava/lang/Object;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mAccessLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$502(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mIgOnState:I

    return p1
.end method

.method static synthetic access$602(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;J)J
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mIgOnStateChangeTime:J

    return-wide p1
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .locals 1

    .line 20
    sget-object v0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mSystemStatusHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;I)I
    .locals 0

    .line 20
    iput p1, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mScreenDisplayStatus:I

    return p1
.end method

.method static synthetic access$902(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;J)J
    .locals 0

    .line 20
    iput-wide p1, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mScreenDisplayChangeTime:J

    return-wide p1
.end method

.method private static getIgStateFromSystem()I
    .locals 2

    const-string v0, "sys.xiaopeng.ig_status"

    const/4 v1, 0x1

    .line 114
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInstance()Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;
    .locals 1

    .line 44
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$SingletonHolder;->access$000()Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getIgOnState()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mIgOnState:I

    return v0
.end method

.method public getIgOnStateChangeTime()J
    .locals 2

    .line 133
    iget-wide v0, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mIgOnStateChangeTime:J

    return-wide v0
.end method

.method public getScreenDisplayChangeTime()J
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mScreenDisplayChangeTime:J

    return-wide v0
.end method

.method public getScreenDisplayStatus()I
    .locals 1

    .line 137
    iget v0, p0, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;->mScreenDisplayStatus:I

    return v0
.end method

.method public registerReceiver()V
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

    new-instance v2, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$ScreenDisplayReceiver;-><init>(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$1;)V

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

    new-instance v2, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver;

    invoke-direct {v2, p0, v3}, Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$IgOnReceiver;-><init>(Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor;Lcom/xiaopeng/lib/bughunter/SystemStatusMonitor$1;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
