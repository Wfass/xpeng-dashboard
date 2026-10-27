.class Lcom/xiaopeng/musicradio/view/SwipeBackLayout$1;
.super Landroid/widget/OverScroller;
.source "SwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$1;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-direct {p0, p2, p3}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public abortAnimation()V
    .locals 3

    .line 61
    invoke-super {p0}, Landroid/widget/OverScroller;->abortAnimation()V

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "abortAnimation: ====="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$1;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " childY = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$1;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SwipeBackLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
