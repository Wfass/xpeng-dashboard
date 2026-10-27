.class public interface abstract Lcom/xiaopeng/xui/widget/XSegmented$SegmentListener;
.super Ljava/lang/Object;
.source "XSegmented.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/XSegmented;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SegmentListener"
.end annotation


# virtual methods
.method public onAnimatorEnd(Lcom/xiaopeng/xui/widget/XSegmented;I)V
    .locals 0
    .param p1, "segmented"    # Lcom/xiaopeng/xui/widget/XSegmented;
    .param p2, "index"    # I

    .line 732
    return-void
.end method

.method public onAnimatorStart(Lcom/xiaopeng/xui/widget/XSegmented;I)V
    .locals 0
    .param p1, "segmented"    # Lcom/xiaopeng/xui/widget/XSegmented;
    .param p2, "index"    # I

    .line 731
    return-void
.end method

.method public abstract onInterceptChange(Lcom/xiaopeng/xui/widget/XSegmented;I)Z
.end method

.method public abstract onSelectionChange(Lcom/xiaopeng/xui/widget/XSegmented;IZ)V
.end method
