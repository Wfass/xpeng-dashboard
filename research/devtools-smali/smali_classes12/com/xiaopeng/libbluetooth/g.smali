.class public Lcom/xiaopeng/libbluetooth/g;
.super Lcom/xiaopeng/libbluetooth/a;
.source "PhoneControlBox.java"


# instance fields
.field private XG:Lcom/xiaopeng/b/c/a;

.field private XH:Lcom/xiaopeng/libbluetooth/c;

.field private XI:Lcom/xiaopeng/b/c/b;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/libbluetooth/c;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/libbluetooth/a;-><init>()V

    .line 63
    new-instance v0, Lcom/xiaopeng/libbluetooth/g$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/libbluetooth/g$1;-><init>(Lcom/xiaopeng/libbluetooth/g;)V

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/g;->XI:Lcom/xiaopeng/b/c/b;

    .line 24
    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/g;->mContext:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/xiaopeng/libbluetooth/g;->XH:Lcom/xiaopeng/libbluetooth/c;

    .line 26
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/libbluetooth/g;Ljava/lang/Exception;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/g;->c(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/libbluetooth/g;)Lcom/xiaopeng/libbluetooth/c;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xiaopeng/libbluetooth/g;->XH:Lcom/xiaopeng/libbluetooth/c;

    return-object p0
.end method

.method private c(Ljava/lang/Exception;)V
    .locals 1

    .line 710
    const-string v0, "PhoneControlBox"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, "null"

    :goto_0
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    return-void
.end method


# virtual methods
.method protected a(Lcom/xiaopeng/b/a;)V
    .locals 1

    .line 32
    :try_start_0
    invoke-interface {p1}, Lcom/xiaopeng/b/a;->qk()Lcom/xiaopeng/b/c/a;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/libbluetooth/g;->XG:Lcom/xiaopeng/b/c/a;

    .line 33
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/g;->XG:Lcom/xiaopeng/b/c/a;

    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/g;->XI:Lcom/xiaopeng/b/c/b;

    invoke-interface {p1, v0}, Lcom/xiaopeng/b/c/a;->a(Lcom/xiaopeng/b/c/b;)V

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/g;->XH:Lcom/xiaopeng/libbluetooth/c;

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/libbluetooth/g;->XH:Lcom/xiaopeng/libbluetooth/c;

    invoke-virtual {p1}, Lcom/xiaopeng/libbluetooth/c;->onBindSuccess()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :cond_0
    goto :goto_0

    .line 37
    :catch_0
    move-exception p1

    .line 38
    invoke-direct {p0, p1}, Lcom/xiaopeng/libbluetooth/g;->c(Ljava/lang/Exception;)V

    .line 40
    :goto_0
    return-void
.end method

.method protected pp()V
    .locals 1

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/libbluetooth/g;->XG:Lcom/xiaopeng/b/c/a;

    .line 45
    return-void
.end method

.method protected pq()V
    .locals 0

    .line 50
    return-void
.end method

.method protected release()V
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/g;->XG:Lcom/xiaopeng/b/c/a;

    if-eqz v0, :cond_0

    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/libbluetooth/g;->XG:Lcom/xiaopeng/b/c/a;

    iget-object v1, p0, Lcom/xiaopeng/libbluetooth/g;->XI:Lcom/xiaopeng/b/c/b;

    invoke-interface {v0, v1}, Lcom/xiaopeng/b/c/a;->b(Lcom/xiaopeng/b/c/b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    invoke-direct {p0, v0}, Lcom/xiaopeng/libbluetooth/g;->c(Ljava/lang/Exception;)V

    .line 61
    :cond_0
    :goto_0
    return-void
.end method
