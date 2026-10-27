.class Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout$1;
.super Ljava/lang/Object;
.source "ItemPlayStatusLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->setPlayState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->a(Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->b(Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->b(Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    goto :goto_0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->b(Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->b(Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    goto :goto_0

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->b(Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->b(Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToShow()V

    goto :goto_0

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->b(Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->b(Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 97
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;->b(Lcom/xiaopeng/musicradio/mine/widget/ItemPlayStatusLayout;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    :goto_0
    return-void
.end method
