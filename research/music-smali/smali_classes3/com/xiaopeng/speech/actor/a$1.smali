.class Lcom/xiaopeng/speech/actor/a$1;
.super Ljava/lang/Object;
.source "ActorBridge.java"

# interfaces
.implements Lcom/xiaopeng/speech/common/util/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/speech/actor/a;->a(Lcom/xiaopeng/speech/actor/Actor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/speech/common/util/b$a<",
        "Lbug;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/speech/actor/Actor;

.field final synthetic b:Lcom/xiaopeng/speech/actor/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/speech/actor/a;Lcom/xiaopeng/speech/actor/Actor;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/speech/actor/a$1;->b:Lcom/xiaopeng/speech/actor/a;

    iput-object p2, p0, Lcom/xiaopeng/speech/actor/a$1;->a:Lcom/xiaopeng/speech/actor/Actor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lbug;)Ljava/lang/Object;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/speech/actor/a$1;->a:Lcom/xiaopeng/speech/actor/Actor;

    invoke-interface {p1, v0}, Lbug;->a(Lcom/xiaopeng/speech/actor/Actor;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Lbug;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/actor/a$1;->a(Lbug;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
