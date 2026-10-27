.class Lcom/blankj/utilcode/util/SpanUtils$1;
.super Landroid/text/style/ClickableSpan;
.source "SpanUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/blankj/utilcode/util/SpanUtils;->setClickSpan(IZLandroid/view/View$OnClickListener;)Lcom/blankj/utilcode/util/SpanUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/blankj/utilcode/util/SpanUtils;

.field final synthetic val$color:I

.field final synthetic val$listener:Landroid/view/View$OnClickListener;

.field final synthetic val$underlineText:Z


# direct methods
.method constructor <init>(Lcom/blankj/utilcode/util/SpanUtils;IZLandroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/blankj/utilcode/util/SpanUtils;

    .line 536
    iput-object p1, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->this$0:Lcom/blankj/utilcode/util/SpanUtils;

    iput p2, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->val$color:I

    iput-boolean p3, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->val$underlineText:Z

    iput-object p4, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 545
    if-eqz p1, :cond_1

    .line 546
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->val$listener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 549
    :cond_0
    return-void

    .line 545
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'widget\' of type View (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "paint"    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 539
    if-eqz p1, :cond_0

    .line 540
    iget v0, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->val$color:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 541
    iget-boolean v0, p0, Lcom/blankj/utilcode/util/SpanUtils$1;->val$underlineText:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 542
    return-void

    .line 539
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'paint\' of type TextPaint (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
