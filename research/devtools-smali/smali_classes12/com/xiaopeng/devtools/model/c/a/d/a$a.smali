.class final Lcom/xiaopeng/devtools/model/c/a/d/a$a;
.super Ljava/lang/Thread;
.source "GPSModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/c/a/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic tj:Lcom/xiaopeng/devtools/model/c/a/d/a;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/devtools/model/c/a/d/a;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$a;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/model/c/a/d/a;Lcom/xiaopeng/devtools/model/c/a/d/a$1;)V
    .locals 0

    .line 280
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/c/a/d/a$a;-><init>(Lcom/xiaopeng/devtools/model/c/a/d/a;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 283
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$a;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    new-instance v1, Lcom/xiaopeng/devtools/model/c/a/d/a$b;

    iget-object v2, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$a;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-direct {v1, v2}, Lcom/xiaopeng/devtools/model/c/a/d/a$b;-><init>(Lcom/xiaopeng/devtools/model/c/a/d/a;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/model/c/a/d/a;->a(Lcom/xiaopeng/devtools/model/c/a/d/a;Lcom/xiaopeng/devtools/model/c/a/d/a$b;)Lcom/xiaopeng/devtools/model/c/a/d/a$b;

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$a;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/c/a/d/a;->c(Lcom/xiaopeng/devtools/model/c/a/d/a;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/model/c/a/d/a$a;->tj:Lcom/xiaopeng/devtools/model/c/a/d/a;

    invoke-static {v1}, Lcom/xiaopeng/devtools/model/c/a/d/a;->b(Lcom/xiaopeng/devtools/model/c/a/d/a;)Lcom/xiaopeng/devtools/model/c/a/d/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 286
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 287
    return-void
.end method
