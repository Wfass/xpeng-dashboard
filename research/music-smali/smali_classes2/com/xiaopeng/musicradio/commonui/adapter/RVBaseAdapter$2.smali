.class Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;
.super Ljava/lang/Object;
.source "RVBaseAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->a(IILjava/util/concurrent/CopyOnWriteArrayList;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Ljava/util/concurrent/CopyOnWriteArrayList;

.field final synthetic e:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;IIILjava/util/concurrent/CopyOnWriteArrayList;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->e:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    iput p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->a:I

    iput p3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->b:I

    iput p4, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->c:I

    iput-object p5, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createCachedItemView start, num2Create="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->b:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " hasClear = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->e:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RVBaseAdapter"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->e:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 257
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 258
    :goto_0
    iget v3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->a:I

    if-ge v0, v3, :cond_2

    .line 259
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->e:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->c:Landroid/view/LayoutInflater;

    iget v4, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->c:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 260
    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->e:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->c(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->e:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v4}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->g(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Landroid/os/Handler;

    move-result-object v4

    new-instance v5, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2$1;

    invoke-direct {v5, p0, v3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2$1;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;Landroid/view/View;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createCachedItemView end, mCachedViewList.size="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->d:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$2;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
