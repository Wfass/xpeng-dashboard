.class public Lbwu;
.super Lbuh$a;
.source "CarSystemPropertyProxy.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private a:Lcom/xiaopeng/speech/common/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/b<",
            "Lbuh;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Lbuh$a;-><init>()V

    .line 15
    new-instance v0, Lcom/xiaopeng/speech/common/util/b;

    const-string v1, "CarSystemPropertyProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbwu;->a:Lcom/xiaopeng/speech/common/util/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "CarSystemPropertyProxy"

    const-string v1, "onDisconnect."

    .line 30
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lbwu;->a:Lcom/xiaopeng/speech/common/util/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lbun;)V
    .locals 2

    :try_start_0
    const-string v0, "CarSystemPropertyProxy"

    const-string v1, "onConnect."

    .line 20
    invoke-static {v0, v1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v0, p0, Lbwu;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-interface {p1}, Lbun;->o()Lbuh;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 22
    iget-object p1, p0, Lbwu;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/b;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 3

    .line 36
    iget-object v0, p0, Lbwu;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwu$1;

    invoke-direct {v1, p0}, Lbwu$1;-><init>(Lbwu;)V

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 46
    iget-object v0, p0, Lbwu;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwu$2;

    invoke-direct {v1, p0}, Lbwu$2;-><init>(Lbwu;)V

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
