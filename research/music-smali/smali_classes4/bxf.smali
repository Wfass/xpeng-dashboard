.class public Lbxf;
.super Lbup$a;
.source "WindowEngineProxy.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private a:Lbup;

.field private b:Lcom/xiaopeng/speech/common/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/b<",
            "Lbup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 22
    invoke-direct {p0}, Lbup$a;-><init>()V

    .line 20
    new-instance v0, Lcom/xiaopeng/speech/common/util/b;

    const-string v1, "WindowEngineProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbxf;->b:Lcom/xiaopeng/speech/common/util/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 119
    iget-object v0, p0, Lbxf;->b:Lcom/xiaopeng/speech/common/util/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 120
    iput-object v1, p0, Lbxf;->a:Lbup;

    return-void
.end method

.method public a(II)V
    .locals 2

    .line 95
    iget-object v0, p0, Lbxf;->b:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxf$3;

    invoke-direct {v1, p0, p1, p2}, Lbxf$3;-><init>(Lbxf;II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 84
    iget-object v0, p0, Lbxf;->a:Lbup;

    if-eqz v0, :cond_0

    .line 86
    :try_start_0
    invoke-interface {v0, p1, p2}, Lbup;->a(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "WindowEngineProxy"

    invoke-static {p2, p1}, Lcom/xiaopeng/speech/common/util/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(Lbun;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 108
    :try_start_0
    invoke-interface {p1}, Lbun;->l()Lbup;

    move-result-object p1

    iput-object p1, p0, Lbxf;->a:Lbup;

    .line 109
    iget-object p1, p0, Lbxf;->b:Lcom/xiaopeng/speech/common/util/b;

    iget-object v0, p0, Lbxf;->a:Lbup;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 110
    iget-object p1, p0, Lbxf;->b:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/b;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 112
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowEngineProxy"

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/common/util/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public a(I)Z
    .locals 1

    .line 39
    iget-object v0, p0, Lbxf;->a:Lbup;

    if-eqz v0, :cond_0

    .line 41
    :try_start_0
    invoke-interface {v0, p1}, Lbup;->a(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 43
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowEngineProxy"

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/common/util/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 2

    .line 27
    iget-object v0, p0, Lbxf;->a:Lbup;

    if-eqz v0, :cond_0

    .line 29
    :try_start_0
    invoke-interface {v0}, Lbup;->b()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowEngineProxy"

    invoke-static {v1, v0}, Lcom/xiaopeng/speech/common/util/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 1

    .line 51
    iget-object v0, p0, Lbxf;->a:Lbup;

    if-eqz v0, :cond_0

    .line 53
    :try_start_0
    invoke-interface {v0, p1}, Lbup;->b(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 55
    invoke-virtual {p1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "WindowEngineProxy"

    invoke-static {v0, p1}, Lcom/xiaopeng/speech/common/util/c;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 2

    .line 62
    iget-object v0, p0, Lbxf;->b:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxf$1;

    invoke-direct {v1, p0, p1}, Lbxf$1;-><init>(Lbxf;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public d(I)V
    .locals 2

    .line 73
    iget-object v0, p0, Lbxf;->b:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbxf$2;

    invoke-direct {v1, p0, p1}, Lbxf$2;-><init>(Lbxf;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method
