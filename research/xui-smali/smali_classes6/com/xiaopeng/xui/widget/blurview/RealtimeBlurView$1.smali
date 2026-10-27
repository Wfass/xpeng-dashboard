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
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    .line 221
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onPreDraw$0(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;)V
    .locals 3

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v1}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$200(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$600(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->blur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V

    .line 261
    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 11

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

    .line 226
    return v1

    .line 229
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 230
    .local v0, "locations":[I
    iget-object v2, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v2}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$000(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/view/View;

    move-result-object v2

    .line 231
    .local v2, "decor":Landroid/view/View;
    if-eqz v2, :cond_2

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

    .line 233
    const/4 v3, 0x0

    aget v4, v0, v3

    neg-int v4, v4

    .line 234
    .local v4, "x":I
    aget v5, v0, v1

    neg-int v5, v5

    .line 236
    .local v5, "y":I
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-virtual {v6, v0}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getLocationOnScreen([I)V

    .line 237
    aget v6, v0, v3

    add-int/2addr v4, v6

    .line 238
    aget v6, v0, v1

    add-int/2addr v5, v6

    .line 241
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v6}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$200(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v7}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$100(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 242
    iget-object v6, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v6}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    move-result v6

    .line 243
    .local v6, "rc":I
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v7, v1}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$402(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;Z)Z

    .line 244
    invoke-static {}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$508()I

    .line 246
    :try_start_0
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v7}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v8}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$200(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    iget-object v10, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-virtual {v10}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v8, v10

    iget-object v10, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v10}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$200(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Bitmap;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    iget-object v10, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-virtual {v10}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->getHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->scale(FF)V

    .line 247
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v7}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v7

    neg-int v8, v4

    int-to-float v8, v8

    neg-int v9, v5

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Canvas;->translate(FF)V

    .line 248
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 249
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v8}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 251
    :cond_1
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v7}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v7

    invoke-virtual {v2, v7}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$StopException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 254
    :catchall_0
    move-exception v1

    iget-object v7, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v7, v3}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$402(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;Z)Z

    .line 255
    invoke-static {}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$510()I

    .line 256
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 257
    throw v1

    .line 252
    :catch_0
    move-exception v7

    .line 254
    :goto_0
    iget-object v7, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v7, v3}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$402(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;Z)Z

    .line 255
    invoke-static {}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$510()I

    .line 256
    iget-object v3, p0, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;->this$0:Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;

    invoke-static {v3}, Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;->access$300(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView;)Landroid/graphics/Canvas;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 257
    nop

    .line 259
    new-instance v3, Lcom/xiaopeng/xui/widget/blurview/-$$Lambda$RealtimeBlurView$1$J7ygl8uVmGIFlPc_GbSH4zcOWfA;

    invoke-direct {v3, p0}, Lcom/xiaopeng/xui/widget/blurview/-$$Lambda$RealtimeBlurView$1$J7ygl8uVmGIFlPc_GbSH4zcOWfA;-><init>(Lcom/xiaopeng/xui/widget/blurview/RealtimeBlurView$1;)V

    invoke-static {v3}, Lcom/xiaopeng/xui/utils/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    .line 263
    .end local v4    # "x":I
    .end local v5    # "y":I
    .end local v6    # "rc":I
    :cond_2
    return v1
.end method
