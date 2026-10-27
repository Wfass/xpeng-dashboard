.class public Lcom/xiaopeng/lib/utils/g;
.super Ljava/lang/Object;
.source "SendBroadCastUtil.java"


# static fields
.field private static Wr:Lcom/xiaopeng/lib/utils/g;


# instance fields
.field private Ws:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/utils/g;->Ws:Ljava/lang/ref/WeakReference;

    .line 23
    return-void
.end method

.method public static declared-synchronized ax(Landroid/content/Context;)Lcom/xiaopeng/lib/utils/g;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/g;

    monitor-enter v0

    .line 31
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/g;->Wr:Lcom/xiaopeng/lib/utils/g;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaopeng/lib/utils/g;->Wr:Lcom/xiaopeng/lib/utils/g;

    invoke-direct {v1}, Lcom/xiaopeng/lib/utils/g;->oO()Z

    move-result v1

    if-nez v1, :cond_1

    .line 32
    :cond_0
    new-instance v1, Lcom/xiaopeng/lib/utils/g;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lib/utils/g;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/lib/utils/g;->Wr:Lcom/xiaopeng/lib/utils/g;

    .line 34
    :cond_1
    sget-object p0, Lcom/xiaopeng/lib/utils/g;->Wr:Lcom/xiaopeng/lib/utils/g;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 30
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private oO()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/g;->Ws:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/utils/g;->Ws:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 39
    const/4 v0, 0x1

    return v0

    .line 41
    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dK(Ljava/lang/String;)V
    .locals 3

    .line 50
    const-string v0, "SendBroadCastUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 52
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/lib/utils/g;->Ws:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    .line 54
    if-eqz p1, :cond_0

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 57
    :cond_0
    return-void
.end method
