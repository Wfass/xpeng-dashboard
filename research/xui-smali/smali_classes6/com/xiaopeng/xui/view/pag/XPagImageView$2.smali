.class Lcom/xiaopeng/xui/view/pag/XPagImageView$2;
.super Ljava/lang/Object;
.source "XPagImageView.java"

# interfaces
.implements Lorg/libpag/PAGImageView$PAGImageViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/view/pag/XPagImageView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/view/pag/XPagImageView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/view/pag/XPagImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/view/pag/XPagImageView;

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView$2;->this$0:Lcom/xiaopeng/xui/view/pag/XPagImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Lorg/libpag/PAGImageView;)V
    .locals 0
    .param p1, "pagImageView"    # Lorg/libpag/PAGImageView;

    .line 174
    return-void
.end method

.method public onAnimationEnd(Lorg/libpag/PAGImageView;)V
    .locals 0
    .param p1, "pagImageView"    # Lorg/libpag/PAGImageView;

    .line 169
    return-void
.end method

.method public onAnimationRepeat(Lorg/libpag/PAGImageView;)V
    .locals 0
    .param p1, "pagImageView"    # Lorg/libpag/PAGImageView;

    .line 179
    return-void
.end method

.method public onAnimationStart(Lorg/libpag/PAGImageView;)V
    .locals 0
    .param p1, "pagImageView"    # Lorg/libpag/PAGImageView;

    .line 164
    return-void
.end method

.method public onAnimationUpdate(Lorg/libpag/PAGImageView;)V
    .locals 4
    .param p1, "pagImageView"    # Lorg/libpag/PAGImageView;

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView$2;->this$0:Lcom/xiaopeng/xui/view/pag/XPagImageView;

    iget v0, v0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->endFrame:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 184
    const-string v0, "XPagImageView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "endFrame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView$2;->this$0:Lcom/xiaopeng/xui/view/pag/XPagImageView;

    iget v3, v3, Lcom/xiaopeng/xui/view/pag/XPagImageView;->endFrame:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pagImageView.currentFrame():"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/libpag/PAGImageView;->currentFrame()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "pagImageView.numFrames()"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/libpag/PAGImageView;->numFrames()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p1}, Lorg/libpag/PAGImageView;->currentFrame()I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView$2;->this$0:Lcom/xiaopeng/xui/view/pag/XPagImageView;

    iget v2, v2, Lcom/xiaopeng/xui/view/pag/XPagImageView;->endFrame:I

    if-lt v0, v2, :cond_0

    .line 186
    invoke-virtual {p1}, Lorg/libpag/PAGImageView;->pause()V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/view/pag/XPagImageView$2;->this$0:Lcom/xiaopeng/xui/view/pag/XPagImageView;

    iput v1, v0, Lcom/xiaopeng/xui/view/pag/XPagImageView;->endFrame:I

    .line 190
    :cond_0
    return-void
.end method
