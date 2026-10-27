.class public Lbwv;
.super Lbvn$a;
.source "HotwordEngineProxy.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private a:Lcom/xiaopeng/speech/common/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/b<",
            "Lbvn;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lbvn;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Lbvn$a;-><init>()V

    .line 19
    new-instance v0, Lcom/xiaopeng/speech/common/util/b;

    const-string v1, "HotwordEngineProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbwv;->a:Lcom/xiaopeng/speech/common/util/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 46
    iget-object v0, p0, Lbwv;->a:Lcom/xiaopeng/speech/common/util/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 47
    iput-object v1, p0, Lbwv;->b:Lbvn;

    return-void
.end method

.method public a(Lbun;)V
    .locals 1

    .line 32
    :try_start_0
    invoke-interface {p1}, Lbun;->n()Lbvn;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    invoke-interface {p1}, Lbun;->n()Lbvn;

    move-result-object p1

    iput-object p1, p0, Lbwv;->b:Lbvn;

    .line 34
    iget-object p1, p0, Lbwv;->a:Lcom/xiaopeng/speech/common/util/b;

    iget-object v0, p0, Lbwv;->b:Lbvn;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 35
    iget-object p1, p0, Lbwv;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/b;->b()V

    goto :goto_0

    :cond_0
    const-string p1, "HotwordEngineProxy"

    const-string v0, "mHotwordEngine = null"

    .line 37
    invoke-static {p1, v0}, Lcom/xiaopeng/speech/common/util/c;->c(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onConnect exception "

    .line 40
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/speech/common/util/f;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lbwv;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Lcom/xiaopeng/speech/common/util/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    const-string p1, "abandoned function: enjectHotwords."

    .line 52
    invoke-static {p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 89
    iget-object v0, p0, Lbwv;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwv$2;

    invoke-direct {v1, p0, p1, p2}, Lbwv$2;-><init>(Lbwv;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 2

    .line 100
    iget-object v0, p0, Lbwv;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwv$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lbwv$3;-><init>(Lbwv;Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 1

    const-string v0, "abandoned function: removeHotwords."

    .line 57
    invoke-static {v0}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lbwv;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwv$1;

    invoke-direct {v1, p0, p1}, Lbwv$1;-><init>(Lbwv;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c()I
    .locals 1

    .line 62
    iget-object v0, p0, Lbwv;->b:Lbvn;

    if-eqz v0, :cond_0

    .line 64
    :try_start_0
    invoke-interface {v0}, Lbvn;->c()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 66
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, -0x1

    return v0
.end method
