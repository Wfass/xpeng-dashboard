.class Lcom/xiaopeng/musicradio/commonui/adapter/g$2;
.super Ljava/lang/Object;
.source "RvDataAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/commonui/adapter/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/commonui/adapter/g;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/commonui/adapter/g;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$2;->a:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$2;->a:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->e:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$2;->a:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->a(Lcom/xiaopeng/musicradio/commonui/adapter/g;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$2;->a:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/commonui/adapter/g;->e:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/g$2;->a:Lcom/xiaopeng/musicradio/commonui/adapter/g;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/commonui/adapter/g;->b(Lcom/xiaopeng/musicradio/commonui/adapter/g;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
