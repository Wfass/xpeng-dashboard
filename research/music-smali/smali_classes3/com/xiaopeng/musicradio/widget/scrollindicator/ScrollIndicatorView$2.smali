.class Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$2;
.super Ljava/lang/Object;
.source "ScrollIndicatorView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->animateToTab(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;Landroid/view/View;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$2;->b:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$2;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$2;->b:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$2;->a:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 211
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$2;->b:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->smoothScrollTo(II)V

    .line 212
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView$2;->b:Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;->access$302(Lcom/xiaopeng/musicradio/widget/scrollindicator/ScrollIndicatorView;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
