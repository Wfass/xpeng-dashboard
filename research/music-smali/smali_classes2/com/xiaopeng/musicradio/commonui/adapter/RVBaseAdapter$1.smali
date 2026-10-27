.class Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;
.super Ljava/lang/Object;
.source "RVBaseAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Z

.field final synthetic c:I

.field final synthetic d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;IZI)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    iput p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->a:I

    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->b:Z

    iput p4, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->c:Landroid/view/LayoutInflater;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->b(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->c(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 214
    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->a:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 215
    iget-boolean v3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->b:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->d(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)I

    move-result v3

    if-ne v1, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 216
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->g(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Landroid/os/Handler;

    move-result-object v1

    new-instance v3, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$1;

    invoke-direct {v3, p0, v0, v2}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$1;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;Landroid/view/View;Z)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    .line 232
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->b:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->d(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->c:I

    if-le v0, v1, :cond_2

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;->d:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;->g(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1$2;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
