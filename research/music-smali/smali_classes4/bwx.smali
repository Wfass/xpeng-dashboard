.class public Lbwx;
.super Lbuk$a;
.source "QueryInjectorProxy.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private a:Lcom/xiaopeng/speech/common/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/b<",
            "Lbuk;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/xiaopeng/speech/common/util/f;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 13
    invoke-direct {p0}, Lbuk$a;-><init>()V

    .line 14
    new-instance v0, Lcom/xiaopeng/speech/common/util/b;

    const-string v1, "QueryInjectorProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbwx;->a:Lcom/xiaopeng/speech/common/util/b;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;
    .locals 2

    .line 69
    iget-object v0, p0, Lbwx;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwx$3;

    invoke-direct {v1, p0, p1, p2}, Lbwx$3;-><init>(Lbwx;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/xiaopeng/speech/common/bean/Value;->VOID:Lcom/xiaopeng/speech/common/bean/Value;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/common/bean/Value;

    return-object p1
.end method

.method public a()V
    .locals 2

    .line 28
    iget-object v0, p0, Lbwx;->a:Lcom/xiaopeng/speech/common/util/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lbun;)V
    .locals 1

    .line 20
    :try_start_0
    iget-object v0, p0, Lbwx;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-interface {p1}, Lbun;->j()Lbuk;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 22
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/speech/common/util/f;)V
    .locals 1

    .line 32
    iput-object p1, p0, Lbwx;->b:Lcom/xiaopeng/speech/common/util/f;

    .line 33
    iget-object p1, p0, Lbwx;->a:Lcom/xiaopeng/speech/common/util/b;

    iget-object v0, p0, Lbwx;->b:Lcom/xiaopeng/speech/common/util/f;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/speech/common/util/b;->a(Lcom/xiaopeng/speech/common/util/f;)V

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 2

    .line 53
    iget-object v0, p0, Lbwx;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwx$2;

    invoke-direct {v1, p0, p1}, Lbwx$2;-><init>(Lbwx;[Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a([Ljava/lang/String;Lbul;)V
    .locals 2

    .line 38
    iget-object v0, p0, Lbwx;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwx$1;

    invoke-direct {v1, p0, p1, p2}, Lbwx$1;-><init>(Lbwx;[Ljava/lang/String;Lbul;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 85
    iget-object v0, p0, Lbwx;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwx$4;

    invoke-direct {v1, p0, p1}, Lbwx$4;-><init>(Lbwx;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 96
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 85
    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/speech/common/bean/Value;
    .locals 2

    .line 101
    iget-object v0, p0, Lbwx;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbwx$5;

    invoke-direct {v1, p0, p1, p2}, Lbwx$5;-><init>(Lbwx;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/xiaopeng/speech/common/bean/Value;->VOID:Lcom/xiaopeng/speech/common/bean/Value;

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/speech/common/bean/Value;

    return-object p1
.end method
