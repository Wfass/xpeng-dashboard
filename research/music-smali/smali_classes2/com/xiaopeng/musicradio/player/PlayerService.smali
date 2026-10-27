.class public Lcom/xiaopeng/musicradio/player/PlayerService;
.super Landroid/app/Service;
.source "PlayerService.java"


# static fields
.field public static a:Landroid/content/Context;


# instance fields
.field private b:Lcom/xiaopeng/musicradio/player/g;

.field private c:Lcom/xiaopeng/musicradio/player/c;

.field private final d:Lcom/xiaopeng/musicradio/player/e$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 27
    new-instance v0, Lcom/xiaopeng/musicradio/player/PlayerService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/player/PlayerService$1;-><init>(Lcom/xiaopeng/musicradio/player/PlayerService;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService;->d:Lcom/xiaopeng/musicradio/player/e$a;

    return-void
.end method

.method private a(I)Lbld;
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService;->b:Lcom/xiaopeng/musicradio/player/g;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/PlayerService;->c:Lcom/xiaopeng/musicradio/player/c;

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/player/g;->a(ILcom/xiaopeng/musicradio/player/c;)Lbld;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/player/PlayerService;I)Lbld;
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/player/PlayerService;->a(I)Lbld;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/player/PlayerService;)Lcom/xiaopeng/musicradio/player/c;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/PlayerService;->c:Lcom/xiaopeng/musicradio/player/c;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/player/PlayerService;Lcom/xiaopeng/musicradio/player/c;)Lcom/xiaopeng/musicradio/player/c;
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/PlayerService;->c:Lcom/xiaopeng/musicradio/player/c;

    return-object p1
.end method

.method private a()V
    .locals 1

    .line 411
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/player/PlayerService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/player/PlayerService;->a:Landroid/content/Context;

    .line 412
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/player/PlayerService;->b()V

    .line 413
    invoke-static {}, Lcom/xiaopeng/musicradio/player/g;->a()Lcom/xiaopeng/musicradio/player/g;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService;->b:Lcom/xiaopeng/musicradio/player/g;

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/player/PlayerService;)Lcom/xiaopeng/musicradio/player/g;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/PlayerService;->b:Lcom/xiaopeng/musicradio/player/g;

    return-object p0
.end method

.method private b()V
    .locals 0

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 437
    iget-object p1, p0, Lcom/xiaopeng/musicradio/player/PlayerService;->d:Lcom/xiaopeng/musicradio/player/e$a;

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 404
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "PlayerService"

    const-string v1, "onCreate: "

    .line 406
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/player/PlayerService;->a()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 423
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    const-string v0, "PlayerService"

    const-string v1, "onDestroy: "

    .line 424
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/PlayerService;->b:Lcom/xiaopeng/musicradio/player/g;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/player/g;->b()V

    const/4 v0, 0x0

    .line 426
    sput-object v0, Lcom/xiaopeng/musicradio/player/PlayerService;->a:Landroid/content/Context;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
