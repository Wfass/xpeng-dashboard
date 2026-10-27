.class Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4$1;
.super Ljava/lang/Object;
.source "MsSingerHotLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;)V
    .locals 0

    .line 279
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$600(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$600(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$600(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 284
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$300(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout$4;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;->access$600(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerHotLayout;)Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    move-result-object v0

    const/16 v2, 0x7e

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->smoothScrollBy(II)V

    :cond_0
    return-void
.end method
