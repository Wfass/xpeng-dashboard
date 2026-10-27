.class public Lbxd;
.super Lbvt$a;
.source "VADEngineProxy.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private a:Lcom/xiaopeng/speech/common/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/b<",
            "Lbvt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 19
    invoke-direct {p0}, Lbvt$a;-><init>()V

    .line 17
    new-instance v0, Lcom/xiaopeng/speech/common/util/b;

    const-string v1, "VADEngineProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbxd;->a:Lcom/xiaopeng/speech/common/util/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 35
    iget-object v0, p0, Lbxd;->a:Lcom/xiaopeng/speech/common/util/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lbun;)V
    .locals 1

    .line 26
    :try_start_0
    iget-object v0, p0, Lbxd;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-interface {p1}, Lbun;->p()Lbvt;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 27
    iget-object p1, p0, Lbxd;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/b;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onConnect exception "

    .line 29
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/speech/common/util/f;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lbxd;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Lcom/xiaopeng/speech/common/util/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lbxd;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxd$1;

    invoke-direct {v1, p0, p1}, Lbxd$1;-><init>(Lbxd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 50
    iget-object v0, p0, Lbxd;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxd$2;

    invoke-direct {v1, p0}, Lbxd$2;-><init>(Lbxd;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 60
    iget-object v0, p0, Lbxd;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxd$3;

    invoke-direct {v1, p0}, Lbxd$3;-><init>(Lbxd;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method
