.class public Lbwr;
.super Lbvj$a;
.source "ASREngineProxy.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private a:Lcom/xiaopeng/speech/common/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/b<",
            "Lbvj;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-direct {p0}, Lbvj$a;-><init>()V

    .line 18
    new-instance v0, Lcom/xiaopeng/speech/common/util/b;

    const-string v1, "ASREngineProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbwr;->a:Lcom/xiaopeng/speech/common/util/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 36
    iget-object v0, p0, Lbwr;->a:Lcom/xiaopeng/speech/common/util/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(J)V
    .locals 2

    .line 116
    iget-object v0, p0, Lbwr;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwr$8;

    invoke-direct {v1, p0, p1, p2}, Lbwr$8;-><init>(Lbwr;J)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lbun;)V
    .locals 1

    .line 27
    :try_start_0
    iget-object v0, p0, Lbwr;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-interface {p1}, Lbun;->i()Lbvj;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 28
    iget-object p1, p0, Lbwr;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/b;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onConnect exception "

    .line 30
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/speech/common/util/f;)V
    .locals 1

    .line 21
    iget-object v0, p0, Lbwr;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Lcom/xiaopeng/speech/common/util/f;)V

    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 41
    iget-object v0, p0, Lbwr;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwr$1;

    invoke-direct {v1, p0, p1}, Lbwr$1;-><init>(Lbwr;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(J)V
    .locals 2

    .line 127
    iget-object v0, p0, Lbwr;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwr$9;

    invoke-direct {v1, p0, p1, p2}, Lbwr$9;-><init>(Lbwr;J)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 2

    .line 72
    iget-object v0, p0, Lbwr;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwr$4;

    invoke-direct {v1, p0, p1}, Lbwr$4;-><init>(Lbwr;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .locals 3

    .line 52
    iget-object v0, p0, Lbwr;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwr$2;

    invoke-direct {v1, p0}, Lbwr$2;-><init>(Lbwr;)V

    const/4 v2, 0x0

    .line 57
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c()Z
    .locals 3

    .line 62
    iget-object v0, p0, Lbwr;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwr$3;

    invoke-direct {v1, p0}, Lbwr$3;-><init>(Lbwr;)V

    const/4 v2, 0x0

    .line 67
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 62
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d()V
    .locals 2

    .line 83
    iget-object v0, p0, Lbwr;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwr$5;

    invoke-direct {v1, p0}, Lbwr$5;-><init>(Lbwr;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public e()V
    .locals 2

    .line 94
    iget-object v0, p0, Lbwr;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwr$6;

    invoke-direct {v1, p0}, Lbwr$6;-><init>(Lbwr;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public f()V
    .locals 2

    .line 105
    iget-object v0, p0, Lbwr;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwr$7;

    invoke-direct {v1, p0}, Lbwr$7;-><init>(Lbwr;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method
