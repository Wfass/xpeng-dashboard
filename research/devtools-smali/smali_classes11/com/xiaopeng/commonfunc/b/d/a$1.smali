.class Lcom/xiaopeng/commonfunc/b/d/a$1;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/xiaopeng/commonfunc/b/d/a;Landroid/os/Looper;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/commonfunc/b/d/a$1;->nZ:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1    # Landroid/os/Message;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 57
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    const-string p1, "IndivModel"

    const-string v0, "handleMessage TIME_OUT"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/d/a$1;->nZ:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/b/d/a;->a(Lcom/xiaopeng/commonfunc/b/d/a;)Lcom/xiaopeng/commonfunc/a/c;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/commonfunc/b/d/a$1;->nZ:Lcom/xiaopeng/commonfunc/b/d/a;

    invoke-static {p1}, Lcom/xiaopeng/commonfunc/b/d/a;->a(Lcom/xiaopeng/commonfunc/b/d/a;)Lcom/xiaopeng/commonfunc/a/c;

    move-result-object p1

    const/4 v0, 0x6

    const/4 v1, 0x2

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/commonfunc/a/c;->onReceiveResult(II)V

    .line 66
    :cond_1
    :goto_0
    return-void
.end method
