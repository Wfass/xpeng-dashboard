.class Lcom/xiaopeng/xui/widget/XSegmented$1;
.super Ljava/lang/Object;
.source "XSegmented.java"

# interfaces
.implements Lcom/xiaopeng/xui/drawable/XIndicatorDrawable$OnAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XSegmented;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XSegmented;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XSegmented;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XSegmented$1;->this$0:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd()V
    .locals 3

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented$1;->this$0:Lcom/xiaopeng/xui/widget/XSegmented;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->access$002(Lcom/xiaopeng/xui/widget/XSegmented;Z)Z

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented$1;->this$0:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSegmented;->access$100(Lcom/xiaopeng/xui/widget/XSegmented;)Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented$1;->this$0:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSegmented;->access$100(Lcom/xiaopeng/xui/widget/XSegmented;)Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented$1;->this$0:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getSelection()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;->onAnimatorEnd(Lcom/xiaopeng/xui/widget/XSegmented;I)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented$1;->this$0:Lcom/xiaopeng/xui/widget/XSegmented;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/widget/XSegmented;->access$002(Lcom/xiaopeng/xui/widget/XSegmented;Z)Z

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented$1;->this$0:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSegmented;->access$100(Lcom/xiaopeng/xui/widget/XSegmented;)Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XSegmented$1;->this$0:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/XSegmented;->access$100(Lcom/xiaopeng/xui/widget/XSegmented;)Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XSegmented$1;->this$0:Lcom/xiaopeng/xui/widget/XSegmented;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XSegmented;->getSelection()I

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;->onAnimatorStart(Lcom/xiaopeng/xui/widget/XSegmented;I)V

    :cond_0
    return-void
.end method
