.class public Lcom/xiaopeng/logictree/handler/a;
.super Lcom/xiaopeng/logictree/handler/h;
.source "BluetoothLogicAction.java"


# static fields
.field private static final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field


# instance fields
.field private Yg:Lcom/xiaopeng/commonfunc/b/c/a/a;

.field private Yh:I

.field private oF:Lcom/xiaopeng/commonfunc/b/g/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/xiaopeng/logictree/handler/a$1;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/xiaopeng/lib/utils/j;->dR(I)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/logictree/handler/a$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/xiaopeng/logictree/handler/a;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/h;-><init>(Landroid/app/Application;)V

    .line 28
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/logictree/handler/a;->Yh:I

    .line 49
    new-instance p1, Lcom/xiaopeng/logictree/handler/a$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/logictree/handler/a$2;-><init>(Lcom/xiaopeng/logictree/handler/a;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/a;->oF:Lcom/xiaopeng/commonfunc/b/g/a/a;

    .line 32
    const-string p1, "BluetoothLogicAction"

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/a;->CLASS_NAME:Ljava/lang/String;

    .line 33
    new-instance p1, Lcom/xiaopeng/commonfunc/b/c/a/a;

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/a;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/a;->oF:Lcom/xiaopeng/commonfunc/b/g/a/a;

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/commonfunc/b/c/a/a;-><init>(Landroid/content/Context;Lcom/xiaopeng/commonfunc/b/g/a/a;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/a;->Yg:Lcom/xiaopeng/commonfunc/b/c/a/a;

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/logictree/handler/a;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/xiaopeng/logictree/handler/a;->Yh:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/logictree/handler/a;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/xiaopeng/logictree/handler/a;->Yh:I

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/logictree/handler/a;)Lcom/xiaopeng/commonfunc/b/c/a/a;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/xiaopeng/logictree/handler/a;->Yg:Lcom/xiaopeng/commonfunc/b/c/a/a;

    return-object p0
.end method

.method static synthetic qa()Landroid/os/Handler;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/logictree/handler/a;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;
    .locals 4

    monitor-enter p0

    .line 97
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/logictree/handler/h;->a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/a;->YB:[Ljava/lang/String;

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/a;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/a;->Yg:Lcom/xiaopeng/commonfunc/b/c/a/a;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/c/a/a;->dM()I

    move-result p1

    const/16 v0, 0xa

    const-wide/16 v1, 0x2710

    const v3, 0x186a1

    if-eq p1, v0, :cond_1

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    .line 111
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V

    goto :goto_0

    .line 101
    :cond_0
    const/16 p1, 0x3e9

    iput p1, p0, Lcom/xiaopeng/logictree/handler/a;->Yh:I

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/a;->Yg:Lcom/xiaopeng/commonfunc/b/c/a/a;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/c/a/a;->dL()V

    .line 103
    sget-object p1, Lcom/xiaopeng/logictree/handler/a;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 104
    goto :goto_0

    .line 106
    :cond_1
    const/16 p1, 0x3e8

    iput p1, p0, Lcom/xiaopeng/logictree/handler/a;->Yh:I

    .line 107
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/a;->Yg:Lcom/xiaopeng/commonfunc/b/c/a/a;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/c/a/a;->dK()V

    .line 108
    sget-object p1, Lcom/xiaopeng/logictree/handler/a;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    nop

    .line 115
    :cond_2
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 96
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 120
    invoke-super {p0}, Lcom/xiaopeng/logictree/handler/h;->destroy()V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/a;->Yg:Lcom/xiaopeng/commonfunc/b/c/a/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/c/a/a;->onDestroy()V

    .line 122
    return-void
.end method
