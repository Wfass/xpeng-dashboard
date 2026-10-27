.class public Lcom/xiaopeng/musicradio/model/car/c;
.super Ljava/lang/Object;
.source "MusicCarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/model/car/c$a;,
        Lcom/xiaopeng/musicradio/model/car/c$b;
    }
.end annotation


# instance fields
.field private a:Landroid/car/Car;

.field private volatile b:Z

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/model/car/c$a;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/car/c;->b:Z

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/car/c;->c:Ljava/util/List;

    .line 29
    new-instance v0, Lcom/xiaopeng/musicradio/model/car/c$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/car/c$1;-><init>(Lcom/xiaopeng/musicradio/model/car/c;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/car/c;->d:Landroid/content/ServiceConnection;

    return-void
.end method

.method public static a()Lcom/xiaopeng/musicradio/model/car/c;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/musicradio/model/car/c$b;->a:Lcom/xiaopeng/musicradio/model/car/c;

    return-object v0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/car/c;)Ljava/util/List;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/car/c;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/car/c;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/car/c;->b:Z

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/model/car/c;)Landroid/car/Car;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/car/c;->a:Landroid/car/Car;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/car/c;->c:Ljava/util/List;

    new-instance v1, Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/model/car/MusicIcmManager;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public b()V
    .locals 2

    const-string v0, "MusicCarManager"

    const-string v1, "initCar: "

    .line 47
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/car/c;->c()V

    .line 49
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/car/c;->d:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Landroid/car/Car;->createCar(Landroid/content/Context;Landroid/content/ServiceConnection;)Landroid/car/Car;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/car/c;->a:Landroid/car/Car;

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/car/c;->a:Landroid/car/Car;

    invoke-virtual {v0}, Landroid/car/Car;->connect()V

    return-void
.end method
