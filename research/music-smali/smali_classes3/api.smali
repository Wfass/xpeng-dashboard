.class public Lapi;
.super Ljava/lang/Object;
.source "XBluetoothAdapter.java"


# static fields
.field private static volatile d:Lapi;


# instance fields
.field a:Z

.field b:Z

.field c:I

.field private e:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lapi;->a:Z

    .line 46
    iput-boolean v0, p0, Lapi;->b:Z

    .line 47
    iput v0, p0, Lapi;->c:I

    return-void
.end method

.method public static a()Lapi;
    .locals 2

    .line 50
    sget-object v0, Lapi;->d:Lapi;

    if-nez v0, :cond_1

    .line 51
    const-class v0, Lapi;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lapi;->d:Lapi;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lapi;

    invoke-direct {v1}, Lapi;-><init>()V

    sput-object v1, Lapi;->d:Lapi;

    .line 55
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 57
    :cond_1
    :goto_0
    sget-object v0, Lapi;->d:Lapi;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/lib_xpbt/bluetooth/a;I)Lcom/xiaopeng/lib_xpbt/bluetooth/b;
    .locals 1

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 p1, 0x0

    move-object p2, p1

    goto :goto_0

    .line 121
    :cond_0
    new-instance p2, Lcom/xiaopeng/lib_xpbt/bluetooth/f;

    iget-object v0, p0, Lapi;->e:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/f;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V

    goto :goto_0

    .line 124
    :cond_1
    new-instance p2, Lcom/xiaopeng/lib_xpbt/bluetooth/h;

    iget-object v0, p0, Lapi;->e:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/h;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V

    goto :goto_0

    .line 110
    :cond_2
    iget p2, p0, Lapi;->c:I

    if-nez p2, :cond_4

    .line 111
    sget-boolean p2, Lapm;->a:Z

    if-eqz p2, :cond_3

    .line 112
    new-instance p2, Lcom/xiaopeng/lib_xpbt/bluetooth/d;

    iget-object v0, p0, Lapi;->e:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/d;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V

    goto :goto_0

    .line 114
    :cond_3
    new-instance p2, Lcom/xiaopeng/lib_xpbt/bluetooth/c;

    iget-object v0, p0, Lapi;->e:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/c;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V

    goto :goto_0

    .line 117
    :cond_4
    new-instance p2, Lcom/xiaopeng/lib_xpbt/bluetooth/e;

    iget-object v0, p0, Lapi;->e:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lcom/xiaopeng/lib_xpbt/bluetooth/e;-><init>(Landroid/content/Context;Lcom/xiaopeng/lib_xpbt/bluetooth/a;)V

    :goto_0
    return-object p2
.end method

.method public a(I)V
    .locals 1

    .line 87
    iput p1, p0, Lapi;->c:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 89
    iget-object p1, p0, Lapi;->e:Landroid/content/Context;

    if-eqz p1, :cond_0

    .line 90
    invoke-static {p1}, Lanw;->a(Landroid/content/Context;)Lanw;

    move-result-object p1

    invoke-virtual {p1}, Lanw;->b()V

    .line 91
    iput-boolean v0, p0, Lapi;->b:Z

    .line 93
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "context:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lapi;->e:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lapl;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_1
    iput-boolean v0, p0, Lapi;->b:Z

    :goto_0
    return-void
.end method

.method public declared-synchronized a(Landroid/content/Context;)V
    .locals 1

    monitor-enter p0

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lapi;->a:Z

    if-nez v0, :cond_1

    .line 69
    iput-object p1, p0, Lapi;->e:Landroid/content/Context;

    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lapi;->a:Z

    .line 71
    iget-boolean p1, p0, Lapi;->b:Z

    if-nez p1, :cond_0

    const-string p1, "setSdkMode: "

    .line 72
    invoke-static {p1}, Lapl;->a(Ljava/lang/String;)V

    .line 73
    iget p1, p0, Lapi;->c:I

    invoke-virtual {p0, p1}, Lapi;->a(I)V

    :cond_0
    const-string p1, "init finish"

    .line 75
    invoke-static {p1}, Lapl;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "already init,pass"

    .line 77
    invoke-static {p1}, Lapl;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
