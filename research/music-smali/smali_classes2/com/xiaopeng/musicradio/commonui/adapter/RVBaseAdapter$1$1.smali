.class Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$1;
.super Ljava/lang/Object;
.source "RVBaseAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Z

.field final synthetic c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;Landroid/view/View;Z)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$1;->c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$1;->a:Landroid/view/View;

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$1;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$1;->c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->e(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$1;->c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$1;->c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->e(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 224
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$1;->b:Z

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$1;->c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->a(Z)V

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$1;->c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->f(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$b;->onLoadingCompleted()V

    :cond_1
    return-void
.end method
