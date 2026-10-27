.class public Lcom/xiaopeng/logictree/handler/j;
.super Lcom/xiaopeng/logictree/handler/h;
.source "Security.java"


# instance fields
.field private final YD:Lcom/xiaopeng/commonfunc/b/f/e;

.field private final YE:Lcom/xiaopeng/commonfunc/b/d/a;

.field private mStep:I

.field private nY:Lcom/xiaopeng/commonfunc/a/c;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/h;-><init>(Landroid/app/Application;)V

    .line 17
    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaopeng/logictree/handler/j;->mStep:I

    .line 19
    new-instance p1, Lcom/xiaopeng/logictree/handler/-$$Lambda$j$5HWREDyrVuz-ToHGjSLFuTk6vPU;

    invoke-direct {p1, p0}, Lcom/xiaopeng/logictree/handler/-$$Lambda$j$5HWREDyrVuz-ToHGjSLFuTk6vPU;-><init>(Lcom/xiaopeng/logictree/handler/j;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->nY:Lcom/xiaopeng/commonfunc/a/c;

    .line 32
    const-string p1, "Security"

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->CLASS_NAME:Ljava/lang/String;

    .line 33
    new-instance p1, Lcom/xiaopeng/commonfunc/b/f/e;

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/j;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/j;->nY:Lcom/xiaopeng/commonfunc/a/c;

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/commonfunc/b/f/e;-><init>(Landroid/content/Context;Lcom/xiaopeng/commonfunc/a/c;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YD:Lcom/xiaopeng/commonfunc/b/f/e;

    .line 34
    new-instance p1, Lcom/xiaopeng/commonfunc/b/d/a;

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/j;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/j;->nY:Lcom/xiaopeng/commonfunc/a/c;

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/commonfunc/b/d/a;-><init>(Landroid/content/Context;Lcom/xiaopeng/commonfunc/a/c;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YE:Lcom/xiaopeng/commonfunc/b/d/a;

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YE:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/d/a;->init()V

    .line 36
    return-void
.end method

.method public static synthetic lambda$5HWREDyrVuz-ToHGjSLFuTk6vPU(Lcom/xiaopeng/logictree/handler/j;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/logictree/handler/j;->w(II)V

    return-void
.end method

.method private synthetic w(II)V
    .locals 1

    .line 20
    iget v0, p0, Lcom/xiaopeng/logictree/handler/j;->mStep:I

    if-ne v0, p1, :cond_1

    .line 21
    const/4 p1, -0x1

    iput p1, p0, Lcom/xiaopeng/logictree/handler/j;->mStep:I

    .line 22
    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    .line 23
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V

    .line 28
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 40
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/logictree/handler/h;->a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YB:[Ljava/lang/String;

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/j;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->CLASS_NAME:Ljava/lang/String;

    const-string v0, "verifyCduKey"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    const/4 p1, 0x1

    iput p1, p0, Lcom/xiaopeng/logictree/handler/j;->mStep:I

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YD:Lcom/xiaopeng/commonfunc/b/f/e;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/f/e;->eh()V

    goto/16 :goto_0

    .line 45
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YB:[Ljava/lang/String;

    const-string v0, "2"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/j;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->CLASS_NAME:Ljava/lang/String;

    const-string v0, "verifyV18CduKey"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    const/4 p1, 0x5

    iput p1, p0, Lcom/xiaopeng/logictree/handler/j;->mStep:I

    .line 48
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YD:Lcom/xiaopeng/commonfunc/b/f/e;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/f/e;->ei()V

    goto/16 :goto_0

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YB:[Ljava/lang/String;

    const-string v0, "3"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/j;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 50
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->CLASS_NAME:Ljava/lang/String;

    const-string v0, "verifyWifiKey"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    const/4 p1, 0x3

    iput p1, p0, Lcom/xiaopeng/logictree/handler/j;->mStep:I

    .line 52
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YD:Lcom/xiaopeng/commonfunc/b/f/e;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/f/e;->eg()V

    goto/16 :goto_0

    .line 53
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YB:[Ljava/lang/String;

    const-string v0, "4"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/j;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->CLASS_NAME:Ljava/lang/String;

    const-string v0, "verifyPsuKey"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    const/4 p1, 0x2

    iput p1, p0, Lcom/xiaopeng/logictree/handler/j;->mStep:I

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YD:Lcom/xiaopeng/commonfunc/b/f/e;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/f/e;->ee()V

    goto/16 :goto_0

    .line 57
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YB:[Ljava/lang/String;

    const-string v0, "5"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/j;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->CLASS_NAME:Ljava/lang/String;

    const-string v0, "changeV18CaCert"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YD:Lcom/xiaopeng/commonfunc/b/f/e;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/f/e;->dX()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 60
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    goto/16 :goto_0

    .line 62
    :cond_4
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V

    goto/16 :goto_0

    .line 64
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YB:[Ljava/lang/String;

    const-string v0, "6"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/j;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 65
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->CLASS_NAME:Ljava/lang/String;

    const-string v0, "changeChnCaCert"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YD:Lcom/xiaopeng/commonfunc/b/f/e;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/f/e;->dY()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 67
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    goto :goto_0

    .line 69
    :cond_6
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V

    goto :goto_0

    .line 71
    :cond_7
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YB:[Ljava/lang/String;

    const-string v0, "7"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/j;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->CLASS_NAME:Ljava/lang/String;

    const-string v0, "checkIndiv"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/logictree/handler/j;->mStep:I

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YE:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/d/a;->dR()V

    goto :goto_0

    .line 75
    :cond_8
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YB:[Ljava/lang/String;

    const-string v0, "8"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/j;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->CLASS_NAME:Ljava/lang/String;

    const-string v0, "asyncInitIndivService"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    const/4 p1, 0x6

    iput p1, p0, Lcom/xiaopeng/logictree/handler/j;->mStep:I

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YE:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/d/a;->dP()V

    .line 79
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YE:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/d/a;->dQ()V

    goto :goto_0

    .line 80
    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YB:[Ljava/lang/String;

    const-string v0, "9"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/j;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->CLASS_NAME:Ljava/lang/String;

    const-string v0, "isTeeInitSuccess"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/j;->YE:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-virtual {p1}, Lcom/xiaopeng/commonfunc/b/d/a;->dO()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 83
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    goto :goto_0

    .line 85
    :cond_a
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_b
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 39
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public destroy()V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/j;->YD:Lcom/xiaopeng/commonfunc/b/f/e;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/f/e;->onDestroy()V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/j;->YE:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/d/a;->dN()V

    .line 95
    invoke-super {p0}, Lcom/xiaopeng/logictree/handler/h;->destroy()V

    .line 96
    return-void
.end method
