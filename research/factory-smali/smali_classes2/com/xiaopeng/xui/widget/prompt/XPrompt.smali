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
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 21
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/prompt/Prompt;-><init>(Landroid/content/Context;)V

    .line 22
    return-void
.end method

.method private static findHostViewFromActivity(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 51
    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public static makePrompt(Landroid/app/Activity;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 26
    invoke-static {p0}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->findHostViewFromActivity(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->makePrompt(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    move-result-object v0

    return-object v0
.end method

.method public static makePrompt(Landroid/app/Activity;Ljava/lang/CharSequence;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 32
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->makePrompt(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    move-result-object v0

    return-object v0
.end method

.method public static makePrompt(Landroid/app/Activity;Ljava/lang/CharSequence;I)Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "duration"    # I
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 38
    invoke-static {p0}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->findHostViewFromActivity(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->makePrompt(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/CharSequence;I)Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    move-result-object v0

    return-object v0
.end method

.method public static makePrompt(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "hostView"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 55
    sget v0, Lcom/xiaopeng/xpui/R$id;->x_prompt:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    .line 56
    .local v0, "xPromptView":Lcom/xiaopeng/xui/widget/prompt/XPromptView;
    const/4 v1, 0x0

    .line 57
    .local v1, "xPrompt":Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->getPrompt()Lcom/xiaopeng/xui/widget/prompt/Prompt;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    .line 60
    :cond_0
    if-nez v1, :cond_1

    .line 61
    new-instance v2, Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;-><init>(Landroid/content/Context;)V

    move-object v1, v2

    .line 63
    :cond_1
    invoke-virtual {v1, p1}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->setHostView(Landroid/view/ViewGroup;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    .line 64
    return-object v1
.end method

.method public static makePrompt(Landroid/content/Context;Landroid/view/ViewGroup;Ljava/lang/CharSequence;I)Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "hostView"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "text"    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "duration"    # I
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 45
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->makePrompt(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    move-result-object v0

    .line 46
    .local v0, "xPrompt":Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    new-instance v1, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;

    invoke-direct {v1, p3, p2}, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->addMessage(Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;)V

    .line 47
    return-object v0
.end method


# virtual methods
.method protected addView()Z
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->mHostView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->mHostView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->mXPromptView:Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    const/4 v0, 0x1

    return v0

    .line 89
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

    .line 97
    :cond_0
    return-void
.end method

.method public setHostView(Landroid/app/Activity;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 69
    invoke-static {p1}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->findHostViewFromActivity(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->setHostView(Landroid/view/ViewGroup;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;

    .line 70
    return-object p0
.end method

.method public setHostView(Landroid/view/ViewGroup;)Lcom/xiaopeng/xui/widget/prompt/XPrompt;
    .locals 2
    .param p1, "hostView"    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->mHostView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/XPrompt;->mHostView:Landroid/view/ViewGroup;

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

    .line 80
    return-object p0
.end method
