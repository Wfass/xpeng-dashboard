.class public Lcom/xiaopeng/musicradio/player/m;
.super Ljava/lang/Object;
.source "PlayerClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/player/m$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/player/e;

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/xiaopeng/musicradio/player/n;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/xiaopeng/musicradio/player/k;

.field private d:I

.field private e:Landroid/os/IBinder$DeathRecipient;

.field private f:Lcom/xiaopeng/musicradio/player/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->b:Landroid/util/SparseArray;

    .line 316
    new-instance v0, Lcom/xiaopeng/musicradio/player/m$7;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/player/m$7;-><init>(Lcom/xiaopeng/musicradio/player/m;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->e:Landroid/os/IBinder$DeathRecipient;

    .line 383
    new-instance v0, Lcom/xiaopeng/musicradio/player/m$8;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/player/m$8;-><init>(Lcom/xiaopeng/musicradio/player/m;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->f:Lcom/xiaopeng/musicradio/player/c;

    .line 38
    new-instance v0, Lcom/xiaopeng/musicradio/player/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/player/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->c:Lcom/xiaopeng/musicradio/player/k;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/player/m;)Lcom/xiaopeng/musicradio/player/e;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/player/m;Lcom/xiaopeng/musicradio/player/e;)Lcom/xiaopeng/musicradio/player/e;
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/player/m;I)Lcom/xiaopeng/musicradio/player/l;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/player/m;->n(I)Lcom/xiaopeng/musicradio/player/l;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/xiaopeng/musicradio/player/m;
    .locals 1

    .line 34
    sget-object v0, Lcom/xiaopeng/musicradio/player/m$a;->a:Lcom/xiaopeng/musicradio/player/m;

    return-object v0
.end method

.method private a(Lcom/xiaopeng/musicradio/player/k$a;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->c:Lcom/xiaopeng/musicradio/player/k;

    new-instance v1, Lcom/xiaopeng/musicradio/player/m$6;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/player/m$6;-><init>(Lcom/xiaopeng/musicradio/player/m;Lcom/xiaopeng/musicradio/player/k$a;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/player/k;->a(Lcom/xiaopeng/musicradio/player/k$a;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/player/m;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/xiaopeng/musicradio/player/m;->e:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method private c()V
    .locals 9

    const/4 v0, 0x0

    .line 351
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/m;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_4

    .line 352
    iget-object v1, p0, Lcom/xiaopeng/musicradio/player/m;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 353
    iget-object v2, p0, Lcom/xiaopeng/musicradio/player/m;->b:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lcom/xiaopeng/musicradio/player/n;

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "recoveryPlayerData: type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " start = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/n;->a()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/n;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pos = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/n;->b()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "PlayerClient"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v8, :cond_3

    .line 355
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/n;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 356
    iget v2, p0, Lcom/xiaopeng/musicradio/player/m;->d:I

    if-ne v2, v1, :cond_1

    .line 357
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/n;->f()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/n;->f()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 358
    :cond_0
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/n;->g()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/player/m;->a(ILjava/lang/String;ZZZ)V

    goto :goto_1

    .line 360
    :cond_1
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/n;->g()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v2, p0

    move v3, v1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/player/m;->a(ILjava/lang/String;ZZZ)V

    .line 363
    :goto_1
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/n;->b()I

    move-result v2

    .line 364
    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/musicradio/player/m;->a(II)V

    .line 365
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/n;->c()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 366
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/n;->c()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/musicradio/player/m;->b(IF)V

    .line 368
    :cond_2
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/n;->d()F

    move-result v2

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/n;->e()F

    move-result v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/xiaopeng/musicradio/player/m;->a(IFF)V

    .line 369
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/player/n;->h()F

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/xiaopeng/musicradio/player/m;->a(IF)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_4
    return-void
.end method

.method private n(I)Lcom/xiaopeng/musicradio/player/l;
    .locals 1

    .line 474
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/player/n;

    return-object p1
.end method


# virtual methods
.method a(I)V
    .locals 1

    .line 58
    iput p1, p0, Lcom/xiaopeng/musicradio/player/m;->d:I

    .line 59
    new-instance v0, Lcom/xiaopeng/musicradio/player/m$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/player/m$1;-><init>(Lcom/xiaopeng/musicradio/player/m;I)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/k$a;)V

    return-void
.end method

.method a(IF)V
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    if-eqz v0, :cond_0

    .line 139
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/e;->b(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PlayerClient"

    const-string v0, "setSonicVolume error = "

    .line 141
    invoke-static {p2, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method a(IFF)V
    .locals 1

    .line 128
    new-instance v0, Lcom/xiaopeng/musicradio/player/m$15;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/player/m$15;-><init>(Lcom/xiaopeng/musicradio/player/m;IFF)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/k$a;)V

    return-void
.end method

.method a(II)V
    .locals 1

    .line 119
    new-instance v0, Lcom/xiaopeng/musicradio/player/m$14;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/player/m$14;-><init>(Lcom/xiaopeng/musicradio/player/m;II)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/k$a;)V

    return-void
.end method

.method a(ILandroid/os/Bundle;)V
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    if-eqz v0, :cond_0

    .line 286
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/e;->a(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PlayerClient"

    const-string v0, "setData error = "

    .line 288
    invoke-static {p2, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public a(ILcom/xiaopeng/musicradio/player/n;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method a(ILjava/lang/String;)V
    .locals 1

    .line 77
    iput p1, p0, Lcom/xiaopeng/musicradio/player/m;->d:I

    .line 78
    new-instance v0, Lcom/xiaopeng/musicradio/player/m$10;

    invoke-direct {v0, p0, p2, p1}, Lcom/xiaopeng/musicradio/player/m$10;-><init>(Lcom/xiaopeng/musicradio/player/m;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/k$a;)V

    return-void
.end method

.method a(ILjava/lang/String;Z)V
    .locals 1

    .line 88
    iput p1, p0, Lcom/xiaopeng/musicradio/player/m;->d:I

    .line 89
    new-instance v0, Lcom/xiaopeng/musicradio/player/m$11;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/player/m$11;-><init>(Lcom/xiaopeng/musicradio/player/m;ILjava/lang/String;Z)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/k$a;)V

    return-void
.end method

.method a(ILjava/lang/String;ZZ)V
    .locals 7

    .line 98
    iput p1, p0, Lcom/xiaopeng/musicradio/player/m;->d:I

    .line 99
    new-instance v6, Lcom/xiaopeng/musicradio/player/m$12;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/musicradio/player/m$12;-><init>(Lcom/xiaopeng/musicradio/player/m;ILjava/lang/String;ZZ)V

    invoke-direct {p0, v6}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/k$a;)V

    return-void
.end method

.method a(ILjava/lang/String;ZZZ)V
    .locals 8

    .line 108
    iput p1, p0, Lcom/xiaopeng/musicradio/player/m;->d:I

    .line 109
    new-instance v7, Lcom/xiaopeng/musicradio/player/m$13;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move v3, p1

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/musicradio/player/m$13;-><init>(Lcom/xiaopeng/musicradio/player/m;Ljava/lang/String;IZZZ)V

    invoke-direct {p0, v7}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/k$a;)V

    return-void
.end method

.method public b()V
    .locals 3

    const-string v0, "PlayerClient"

    const-string v1, "startService: "

    .line 43
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const-class v2, Lcom/xiaopeng/musicradio/player/PlayerService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 45
    sget-object v1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/app/Application;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method b(I)V
    .locals 1

    .line 68
    new-instance v0, Lcom/xiaopeng/musicradio/player/m$9;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/player/m$9;-><init>(Lcom/xiaopeng/musicradio/player/m;I)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/k$a;)V

    return-void
.end method

.method b(IF)V
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    if-eqz v0, :cond_0

    .line 296
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/e;->a(IF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "PlayerClient"

    const-string v0, "setData error = "

    .line 298
    invoke-static {p2, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method b(ILjava/lang/String;)Z
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    const-string v1, "PlayerClient"

    if-eqz v0, :cond_0

    .line 197
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/musicradio/player/e;->b(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string p2, "isCacheComplete error = "

    .line 199
    invoke-static {v1, p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string p1, "isCacheComplete: "

    .line 202
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method c(I)V
    .locals 1

    .line 147
    new-instance v0, Lcom/xiaopeng/musicradio/player/m$16;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/player/m$16;-><init>(Lcom/xiaopeng/musicradio/player/m;I)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/k$a;)V

    return-void
.end method

.method c(ILjava/lang/String;)V
    .locals 1

    .line 207
    new-instance v0, Lcom/xiaopeng/musicradio/player/m$5;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/player/m$5;-><init>(Lcom/xiaopeng/musicradio/player/m;ILjava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/k$a;)V

    return-void
.end method

.method d(I)V
    .locals 1

    .line 156
    new-instance v0, Lcom/xiaopeng/musicradio/player/m$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/player/m$2;-><init>(Lcom/xiaopeng/musicradio/player/m;I)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/k$a;)V

    return-void
.end method

.method e(I)V
    .locals 1

    .line 165
    new-instance v0, Lcom/xiaopeng/musicradio/player/m$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/player/m$3;-><init>(Lcom/xiaopeng/musicradio/player/m;I)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/k$a;)V

    return-void
.end method

.method f(I)V
    .locals 1

    .line 174
    new-instance v0, Lcom/xiaopeng/musicradio/player/m$4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/player/m$4;-><init>(Lcom/xiaopeng/musicradio/player/m;I)V

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/player/m;->a(Lcom/xiaopeng/musicradio/player/k$a;)V

    return-void
.end method

.method g(I)Z
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    const-string v1, "PlayerClient"

    if-eqz v0, :cond_0

    .line 185
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/e;->g(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "isIdle error = "

    .line 187
    invoke-static {v1, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string p1, "isIdle: "

    .line 190
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method h(I)I
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    if-eqz v0, :cond_0

    .line 218
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/e;->h(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "PlayerClient"

    const-string v1, "getCurrentPosition error = "

    .line 220
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method i(I)I
    .locals 2

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    if-eqz v0, :cond_0

    .line 229
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/e;->i(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "PlayerClient"

    const-string v1, "getSecondPosition error = "

    .line 231
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method j(I)Z
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    if-eqz v0, :cond_0

    .line 240
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/e;->j(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "PlayerClient"

    const-string v1, "isPlaying error = "

    .line 242
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method k(I)I
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    if-eqz v0, :cond_0

    .line 251
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/e;->k(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "PlayerClient"

    const-string v1, "getDuration error = "

    .line 253
    invoke-static {v0, v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method l(I)I
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    const-string v1, "PlayerClient"

    if-eqz v0, :cond_0

    .line 262
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/e;->l(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "getPlaybackState error = "

    .line 264
    invoke-static {v1, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string p1, "getPlaybackState: "

    .line 267
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1
.end method

.method m(I)I
    .locals 2

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    const-string v1, "PlayerClient"

    if-eqz v0, :cond_0

    .line 274
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/player/e;->m(I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "getPlaybackState error = "

    .line 276
    invoke-static {v1, v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string p1, "getPlaybackState: "

    .line 279
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string p1, "PlayerClient"

    const-string v0, "onServiceConnected: "

    .line 336
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    invoke-static {p2}, Lcom/xiaopeng/musicradio/player/e$a;->a(Landroid/os/IBinder;)Lcom/xiaopeng/musicradio/player/e;

    move-result-object p2

    iput-object p2, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    .line 338
    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    if-eqz p2, :cond_0

    .line 340
    :try_start_0
    invoke-interface {p2}, Lcom/xiaopeng/musicradio/player/e;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->e:Landroid/os/IBinder$DeathRecipient;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 341
    iget-object p2, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/player/m;->f:Lcom/xiaopeng/musicradio/player/c;

    invoke-interface {p2, v0}, Lcom/xiaopeng/musicradio/player/e;->a(Lcom/xiaopeng/musicradio/player/c;)V

    .line 343
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/player/m;->c()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string v0, "onServiceConnected: e = "

    .line 345
    invoke-static {p1, v0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "PlayerClient"

    const-string v0, "onServiceDisconnected: "

    .line 376
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 377
    iput-object p1, p0, Lcom/xiaopeng/musicradio/player/m;->a:Lcom/xiaopeng/musicradio/player/e;

    .line 378
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/d;->d(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/player/m;->b()V

    :cond_0
    return-void
.end method
