.class public Lcom/xiaopeng/speech/actor/a;
.super Lbug$a;
.source "ActorBridge.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/xiaopeng/speech/common/util/f;

.field private c:Lcom/xiaopeng/speech/common/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/b<",
            "Lbug;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Lbug$a;-><init>()V

    .line 23
    new-instance v0, Lcom/xiaopeng/speech/common/util/b;

    const-string v1, "ActorBridge"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/speech/actor/a;->c:Lcom/xiaopeng/speech/common/util/b;

    .line 27
    iput-object p1, p0, Lcom/xiaopeng/speech/actor/a;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/speech/actor/a;->c:Lcom/xiaopeng/speech/common/util/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lbun;)V
    .locals 1

    .line 38
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/speech/actor/a;->c:Lcom/xiaopeng/speech/common/util/b;

    invoke-interface {p1}, Lbun;->a()Lbug;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/xiaopeng/speech/actor/a;->c:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/b;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onConnect exception "

    .line 41
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/speech/actor/Actor;)V
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/speech/actor/a;->c:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lcom/xiaopeng/speech/actor/a$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/speech/actor/a$1;-><init>(Lcom/xiaopeng/speech/actor/a;Lcom/xiaopeng/speech/actor/Actor;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/speech/common/util/f;)V
    .locals 1

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/speech/actor/a;->b:Lcom/xiaopeng/speech/common/util/f;

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/speech/actor/a;->c:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Lcom/xiaopeng/speech/common/util/f;)V

    return-void
.end method
