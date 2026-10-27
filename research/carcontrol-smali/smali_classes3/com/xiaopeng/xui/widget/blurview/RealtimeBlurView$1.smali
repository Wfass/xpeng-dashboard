.class Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;
.super Ljava/lang/Object;
.source "RealtimeBlurView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)V
    .locals 0

    .line 221
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onPreDraw$0$RealtimeBlurView$1()V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$200(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$600(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 10

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    iget-wide v2, v2, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->lastTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x14

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 230
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$000(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 231
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->isShown()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->prepare()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 232
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v3, 0x0

    .line 233
    aget v4, v0, v3

    neg-int v4, v4

    .line 234
    aget v5, v0, v1

    neg-int v5, v5

    .line 236
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-virtual {v6, v0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getLocationOnScreen([I)V

    .line 237
    aget v6, v0, v3

    add-int/2addr v4, v6

    .line 238
    aget v0, v0, v1

    add-int/2addr v5, v0

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$200(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v6, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v6}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$100(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 243
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v6, v1}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$402(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;Z)Z

    .line 244
    invoke-static {}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$508()I

    .line 246
    :try_start_0
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v6}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v7}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$200(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x3f800000    # 1.0f

    mul-float/2addr v7, v8

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-virtual {v9}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getWidth()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v7, v9

    iget-object v9, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v9}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$200(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v8

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-virtual {v8}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v9, v8

    invoke-virtual {v6, v7, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 247
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v6}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v6

    neg-int v4, v4

    int-to-float v4, v4

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v6, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 248
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 249
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v5}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 251
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v4}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$StopException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 254
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$402(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;Z)Z

    .line 255
    invoke-static {}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$510()I

    .line 256
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 257
    throw v1

    .line 254
    :catch_0
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$402(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;Z)Z

    .line 255
    invoke-static {}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$510()I

    .line 256
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 259
    new-instance v0, Lcom/xiaopeng/xui/widget/blurview/-$$Lambda$RealtimeBlurView$1$795LVgdhfna1TFhKMGxya2FLVbo;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/blurview/-$$Lambda$RealtimeBlurView$1$795LVgdhfna1TFhKMGxya2FLVbo;-><init>(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;)V

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :cond_2
    return v1
.end method
