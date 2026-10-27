.class Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2$1;
.super Ljava/lang/Object;
.source "RVBaseAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;Landroid/view/View;)V
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2$1;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 266
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2$1;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->e:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2$1;->b:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_0
    return-void
.end method
