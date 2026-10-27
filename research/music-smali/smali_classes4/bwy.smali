.class public Lbwy;
.super Lbvo$a;
.source "RecordEngineProxy.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private a:Lcom/xiaopeng/speech/common/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/b<",
            "Lbvo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Lbvo$a;-><init>()V

    .line 18
    new-instance v0, Lcom/xiaopeng/speech/common/util/b;

    const-string v1, "RecordEngineProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbwy;->a:Lcom/xiaopeng/speech/common/util/b;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 39
    iget-object v0, p0, Lbwy;->a:Lcom/xiaopeng/speech/common/util/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lbun;)V
    .locals 1

    .line 30
    :try_start_0
    iget-object v0, p0, Lbwy;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-interface {p1}, Lbun;->k()Lbvo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 31
    iget-object p1, p0, Lbwy;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/b;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onConnect exception "

    .line 33
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/speech/common/util/f;)V
    .locals 1

    .line 24
    iget-object v0, p0, Lbwy;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Lcom/xiaopeng/speech/common/util/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 2

    .line 44
    iget-object v0, p0, Lbwy;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwy$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lbwy$1;-><init>(Lbwy;Ljava/lang/String;II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lbwy;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwy$3;

    invoke-direct {v1, p0, p1, p2}, Lbwy$3;-><init>(Lbwy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    .line 77
    iget-object v0, p0, Lbwy;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwy$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lbwy$4;-><init>(Lbwy;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 p1, 0x0

    .line 82
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 77
    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 2

    .line 55
    iget-object v0, p0, Lbwy;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwy$2;

    invoke-direct {v1, p0}, Lbwy$2;-><init>(Lbwy;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method
