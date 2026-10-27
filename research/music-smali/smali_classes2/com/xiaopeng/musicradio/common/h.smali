.class public Lcom/xiaopeng/musicradio/common/h;
.super Ljava/lang/Object;
.source "NetChangeObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/common/h$a;
    }
.end annotation


# instance fields
.field private volatile a:Z

.field private b:I

.field private c:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/common/h;->a:Z

    .line 25
    iput v0, p0, Lcom/xiaopeng/musicradio/common/h;->b:I

    .line 54
    new-instance v0, Lcom/xiaopeng/musicradio/common/h$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/common/h$1;-><init>(Lcom/xiaopeng/musicradio/common/h;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/common/h;->c:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/common/h;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/xiaopeng/musicradio/common/h;->b:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/common/h;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/xiaopeng/musicradio/common/h;->b:I

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/common/h;)I
    .locals 2

    .line 22
    iget v0, p0, Lcom/xiaopeng/musicradio/common/h;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/musicradio/common/h;->b:I

    return v0
.end method

.method public static b()Lcom/xiaopeng/musicradio/common/h;
    .locals 1

    .line 78
    sget-object v0, Lcom/xiaopeng/musicradio/common/h$a;->a:Lcom/xiaopeng/musicradio/common/h;

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/common/h;->a:Z

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 39
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/common/h;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/common/h;->a:Z

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
