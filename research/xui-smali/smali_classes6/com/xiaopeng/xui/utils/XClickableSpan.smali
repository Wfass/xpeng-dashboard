.class public abstract Lcom/xiaopeng/xui/utils/XClickableSpan;
.super Landroid/text/style/ClickableSpan;
.source "XClickableSpan.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 17
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xui/utils/XClickableSpan;->isPressed:Z

    .line 18
    iput-object p1, p0, Lcom/xiaopeng/xui/utils/XClickableSpan;->context:Landroid/content/Context;

    .line 19
    return-void
.end method


# virtual methods
.method public getPressed()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/xiaopeng/xui/utils/XClickableSpan;->isPressed:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0
    .param p1, "widget"    # Landroid/view/View;

    .line 23
    return-void
.end method

.method public setPressed(Z)V
    .locals 0
    .param p1, "isPressed"    # Z

    .line 38
    iput-boolean p1, p0, Lcom/xiaopeng/xui/utils/XClickableSpan;->isPressed:Z

    .line 39
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .line 27
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDrawState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/xui/utils/XClickableSpan;->isPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/String;)V

    .line 29
    iget-boolean v0, p0, Lcom/xiaopeng/xui/utils/XClickableSpan;->isPressed:Z

    if-eqz v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XClickableSpan;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$color;->x_color_primary_link_press:I

    iget-object v2, p0, Lcom/xiaopeng/xui/utils/XClickableSpan;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    goto :goto_0

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/utils/XClickableSpan;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$color;->x_color_primary:I

    iget-object v2, p0, Lcom/xiaopeng/xui/utils/XClickableSpan;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    .line 29
    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 33
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 34
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 35
    return-void
.end method
