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
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$layout;->x_prompt:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_prompt_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mContentView:Landroid/view/ViewGroup;

    .line 37
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_prompt_text:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mTextView:Landroid/widget/TextView;

    .line 38
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_prompt_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mActionView:Landroid/widget/ImageButton;

    .line 39
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_prompt_btn_2:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mActionView2:Landroid/widget/Button;

    .line 40
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_prompt_btn:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 41
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_prompt_btn_2:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_prompt:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->setId(I)V

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$dimen;->x_prompt_padding_left:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 45
    .local v0, "padding":I
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput v0, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x2

    aput v0, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    iput-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mTouchPadding:[I

    .line 46
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

    .line 78
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 54
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_prompt_btn:I

    if-ne v0, v1, :cond_0

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->onAction(I)V

    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/xiaopeng/xpui/R$id;->x_prompt_btn_2:I

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->onAction(I)V

    .line 63
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
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->clearQueue()V

    .line 85
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onDetachedFromWindow()V

    .line 86
    return-void
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 2
    .param p1, "visibility"    # I

    .line 90
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onWindowVisibilityChanged(I)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->setUseExitAnim(Z)Lcom/xiaopeng/xui/widget/prompt/Prompt;

    .line 94
    :cond_1
    return-void
.end method

.method public setPrompt(Lcom/xiaopeng/xui/widget/prompt/Prompt;)V
    .locals 0
    .param p1, "prompt"    # Lcom/xiaopeng/xui/widget/prompt/Prompt;

    .line 97
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mPrompt:Lcom/xiaopeng/xui/widget/prompt/Prompt;

    .line 98
    return-void
.end method

.method public show(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)V
    .locals 4
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "icon"    # I
    .param p3, "button"    # Ljava/lang/CharSequence;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mActionView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mActionView:Landroid/widget/ImageButton;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-lez p2, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mActionView2:Landroid/widget/Button;

    invoke-virtual {v0, p3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->mActionView2:Landroid/widget/Button;

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 71
    return-void
.end method
