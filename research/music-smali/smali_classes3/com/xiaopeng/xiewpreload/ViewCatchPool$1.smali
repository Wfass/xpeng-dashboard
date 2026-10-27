.class Lcom/xiaopeng/xiewpreload/ViewCatchPool$1;
.super Landroid/os/Handler;
.source "ViewCatchPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xiewpreload/ViewCatchPool;-><init>(Ljava/lang/ref/WeakReference;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xiewpreload/ViewCatchPool;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xiewpreload/ViewCatchPool;Landroid/os/Looper;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool$1;->this$0:Lcom/xiaopeng/xiewpreload/ViewCatchPool;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 61
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 62
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v0, v0, Lcom/xiaopeng/xiewpreload/ViewCatchKey;

    if-eqz v0, :cond_2

    .line 68
    invoke-static {}, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/xiaopeng/xiewpreload/ViewCatchKey;

    iget v2, v2, Lcom/xiaopeng/xiewpreload/ViewCatchKey;->resId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool$1;->this$0:Lcom/xiaopeng/xiewpreload/ViewCatchPool;

    invoke-static {v0}, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->access$200(Lcom/xiaopeng/xiewpreload/ViewCatchPool;)Ljava/util/Queue;

    move-result-object v0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/xiaopeng/xiewpreload/ViewCatchKey;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xiewpreload/ViewCatchPool$1;->this$0:Lcom/xiaopeng/xiewpreload/ViewCatchPool;

    invoke-static {p1}, Lcom/xiaopeng/xiewpreload/ViewCatchPool;->access$000(Lcom/xiaopeng/xiewpreload/ViewCatchPool;)V

    :cond_2
    :goto_0
    return-void
.end method
