.class Lcom/xiaopeng/xui/widget/prompt/XPromptView;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "XPromptView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "XPromptView"


# instance fields
.field private mActionView:Landroid/widget/ImageButton;

.field private mActionView2:Landroid/widget/Button;

.field private mContentView:Landroid/view/ViewGroup;

.field private mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

.field private mTextView:Landroid/widget/TextView;

.field private mTouchPadding:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lbyg$j;->x_prompt:I

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    sget p1, Lbyg$h;->x_prompt_layout:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mContentView:Landroid/view/ViewGroup;

    .line 37
    sget p1, Lbyg$h;->x_prompt_text:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mTextView:Landroid/widget/TextView;

    .line 38
    sget p1, Lbyg$h;->x_prompt_btn:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mActionView:Landroid/widget/ImageButton;

    .line 39
    sget p1, Lbyg$h;->x_prompt_btn_2:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mActionView2:Landroid/widget/Button;

    .line 40
    sget p1, Lbyg$h;->x_prompt_btn:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget p1, Lbyg$h;->x_prompt_btn_2:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget p1, Lbyg$h;->x_prompt:I

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->setId(I)V

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lbyg$f;->x_prompt_padding_left:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int p1, p1

    const/4 v0, 0x4

    .line 45
    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p1, v0, v1

    const/4 v1, 0x3

    aput p1, v0, v1

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mTouchPadding:[I

    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mContentView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getPrompt()Lcom/xiaopeng/xui/widget/prompt/Prompt;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mActionView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mTouchPadding:[I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mActionView2:Landroid/widget/Button;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mContentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mTouchPadding:[I

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xui/utils/XTouchAreaUtils;->extendTouchArea(Landroid/view/View;Landroid/view/ViewGroup;[I)V

    .line 77
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lbyg$h;->x_prompt_btn:I

    if-ne v0, v1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 56
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->onAction(I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lbyg$h;->x_prompt_btn_2:I

    if-ne p1, v0, :cond_1

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    .line 60
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->onAction(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    if-eqz v0, :cond_0

    .line 83
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->clearQueue()V

    .line 85
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onWindowVisibilityChanged(I)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 92
    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->setUseExitAnim(Z)Lcom/xiaopeng/xui/widget/prompt/Prompt;

    :cond_1
    return-void
.end method

.method public setPrompt(Lcom/xiaopeng/xui/widget/prompt/Prompt;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    return-void
.end method

.method public show(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mActionView:Landroid/widget/ImageButton;

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 68
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mActionView:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-lez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 69
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mActionView2:Landroid/widget/Button;

    invoke-virtual {p1, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mActionView2:Landroid/widget/Button;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method
