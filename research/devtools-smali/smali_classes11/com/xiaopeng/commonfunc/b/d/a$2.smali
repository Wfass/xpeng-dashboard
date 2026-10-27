.class Lcom/xiaopeng/commonfunc/b/d/a$2;
.super Landroid/content/BroadcastReceiver;
.source "IndivModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/commonfunc/b/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic nZ:Lcom/xiaopeng/commonfunc/b/d/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/commonfunc/b/d/a;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/d/a$2;->nZ:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 72
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 73
    const-string p2, "com.xiaopeng.action.SECURE_STORE_RELOAD"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    const-string p1, "IndivModel"

    const-string p2, "onReceive ACTION_BROADCAST_SECURE_STORE_RELOAD"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/d/a$2;->nZ:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/b/d/a;->b(Lcom/xiaopeng/commonfunc/b/d/a;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/d/a$2;->nZ:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/b/d/a;->b(Lcom/xiaopeng/commonfunc/b/d/a;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/d/a$2;->nZ:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/b/d/a;->a(Lcom/xiaopeng/commonfunc/b/d/a;)Lcom/xiaopeng/commonfunc/a/c;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/d/a$2;->nZ:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/b/d/a;->a(Lcom/xiaopeng/commonfunc/b/d/a;)Lcom/xiaopeng/commonfunc/a/c;

    move-result-object p1

    const/4 v0, 0x6

    invoke-interface {p1, v0, p2}, Lcom/xiaopeng/commonfunc/a/c;->onReceiveResult(II)V

    .line 82
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/d/a$2;->nZ:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/b/d/a;->c(Lcom/xiaopeng/commonfunc/b/d/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/utils/j;->X(Landroid/content/Context;)V

    .line 84
    :cond_1
    return-void
.end method
