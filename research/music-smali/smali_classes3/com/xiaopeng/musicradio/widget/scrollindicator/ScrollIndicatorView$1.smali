.class Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$1;
.super Ljava/lang/Object;
.source "ScrollIndicatorView.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/scrollindicator/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->access$300(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->access$300(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->access$402(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;F)F

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->access$500(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getCurrentItem()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->setCurrentItem(IZ)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->access$600(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->access$500(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$1;->a:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->access$500(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;)Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->access$702(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;Landroid/view/View;)Landroid/view/View;

    :cond_1
    return-void
.end method
