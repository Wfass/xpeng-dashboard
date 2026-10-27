.class public Lcom/xiaopeng/xui/widget/prompt/XPrompt;
.super Lcom/xiaopeng/xui/widget/prompt/Prompt;
.source "XPrompt.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mHostView:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/prompt/Prompt;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static findHostViewFromActivity(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 1

    const v0, 0x1020002

    .line 51
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static makePrompt(Landroid/app/Activity;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    .locals 1

    .line 26
    invoke-static {p0}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->findHostViewFromActivity(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->makePrompt(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    move-result-object p0

    return-object p0
.end method

.method public static makePrompt(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->makePrompt(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    move-result-object p0

    return-object p0
.end method

.method public static makePrompt(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    .locals 1

    .line 38
    invoke-static {p0}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->findHostViewFromActivity(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->makePrompt(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/CharSequence;I)Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    move-result-object p0

    return-object p0
.end method

.method public static makePrompt(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    .locals 1

    .line 55
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_prompt:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->getPrompt()Lcom/xiaopeng/xui/widget/prompt/Prompt;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 61
    new-instance v0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;-><init>(Landroid/content/Context;)V

    .line 63
    :cond_1
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->setHostView(Landroid/view/ViewGroup;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    return-object v0
.end method

.method public static makePrompt(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/CharSequence;I)Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    .locals 0

    .line 45
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->makePrompt(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    move-result-object p0

    .line 46
    new-instance p1, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;

    invoke-direct {p1, p3, p2}, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->addMessage(Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;)V

    return-object p0
.end method


# virtual methods
.method protected addView()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->mHostView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 86
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->mXPromptView:Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected removeView()V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->mXPromptView:Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->mXPromptView:Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->mXPromptView:Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setHostView(Landroid/app/Activity;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    .locals 0

    .line 69
    invoke-static {p1}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->findHostViewFromActivity(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->setHostView(Landroid/view/ViewGroup;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    return-object p0
.end method

.method public setHostView(Landroid/view/ViewGroup;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->mHostView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->mHostView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->mXPromptView:Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 79
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->mHostView:Landroid/view/ViewGroup;

    return-object p0
.end method
