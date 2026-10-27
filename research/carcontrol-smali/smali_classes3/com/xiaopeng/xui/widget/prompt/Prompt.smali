.class public abstract Lcom/xiaopeng/xui/widget/prompt/Prompt;
.super Ljava/lang/Object;
.source "Prompt.java"


# static fields
.field public static final LENGTH_LONG:I = 0x1

.field public static final LENGTH_SHORT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "XPrompt"


# instance fields
.field private mChangeAnim:Landroid/view/animation/Animation;

.field private mContext:Landroid/content/Context;

.field private mEnterAnim:Landroid/view/animation/Animation;

.field private mExitAnim:Landroid/view/animation/Animation;

.field private mHandler:Landroid/os/Handler;

.field private mIsQueueShow:Z

.field private mIsUseExitAnim:Z

.field private mLongTime:I

.field private mMessages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mOnPromptActionListener:Lcom/xiaopeng/xui/widget/prompt/OnPromptActionListener;

.field private mRemoveRunnable:Ljava/lang/Runnable;

.field private mShortTime:I

.field private mShowRunnable:Ljava/lang/Runnable;

.field private mXPromptMessage:Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;

.field mXPromptView:Lcom/xiaopeng/xui/widget/prompt/XPromptView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mHandler:Landroid/os/Handler;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mMessages:Ljava/util/ArrayList;

    .line 200
    new-instance v0, Lcom/xiaopeng/xui/widget/prompt/Prompt$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/prompt/Prompt$2;-><init>(Lcom/xiaopeng/xui/widget/prompt/Prompt;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mRemoveRunnable:Ljava/lang/Runnable;

    .line 206
    new-instance v0, Lcom/xiaopeng/xui/widget/prompt/Prompt$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/widget/prompt/Prompt$3;-><init>(Lcom/xiaopeng/xui/widget/prompt/Prompt;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mShowRunnable:Ljava/lang/Runnable;

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mContext:Landroid/content/Context;

    .line 53
    new-instance v0, Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mXPromptView:Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    .line 54
    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->setPrompt(Lcom/xiaopeng/xui/widget/prompt/Prompt;)V

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/xpui/R$integer;->x_prompt_shortTime:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mShortTime:I

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/xiaopeng/xpui/R$integer;->x_prompt_longTime:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mLongTime:I

    .line 57
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->initAnim()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xui/widget/prompt/Prompt;)Ljava/lang/Runnable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mRemoveRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xui/widget/prompt/Prompt;)Landroid/os/Handler;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xui/widget/prompt/Prompt;)Z
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->showNext()Z

    move-result p0

    return p0
.end method

.method private enqueuePrompt()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mXPromptView:Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mIsQueueShow:Z

    if-nez v0, :cond_1

    .line 150
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->showNext()Z

    :cond_1
    return-void
.end method

.method private initAnim()V
    .locals 2

    const/4 v0, 0x1

    .line 61
    iput-boolean v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mIsUseExitAnim:Z

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mContext:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/xpui/R$anim;->x_prompt_enter_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mEnterAnim:Landroid/view/animation/Animation;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mContext:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/xpui/R$anim;->x_prompt_exit_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mExitAnim:Landroid/view/animation/Animation;

    .line 64
    new-instance v1, Lcom/xiaopeng/xui/widget/prompt/Prompt$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xui/widget/prompt/Prompt$1;-><init>(Lcom/xiaopeng/xui/widget/prompt/Prompt;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mContext:Landroid/content/Context;

    sget v1, Lcom/xiaopeng/xpui/R$anim;->x_prompt_change_anim:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mChangeAnim:Landroid/view/animation/Animation;

    return-void
.end method

.method private setXPromptMessage(Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mXPromptMessage:Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;

    return-void
.end method

.method private showCurrent()Z
    .locals 4

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mXPromptMessage:Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mRemoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mXPromptView:Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->addView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mXPromptView:Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mEnterAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_1
    return v1

    .line 175
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mXPromptView:Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mChangeAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mShowRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mXPromptMessage:Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->getDuration()I

    move-result v2

    if-nez v2, :cond_3

    iget v2, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mShortTime:I

    goto :goto_1

    :cond_3
    iget v2, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mLongTime:I

    :goto_1
    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mXPromptView:Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mXPromptMessage:Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mXPromptMessage:Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->getIcon()I

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mXPromptMessage:Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->getButton()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->show(Ljava/lang/CharSequence;ILjava/lang/CharSequence;)V

    const/4 v0, 0x1

    return v0
.end method

.method private showNext()Z
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;

    .line 157
    invoke-direct {p0, v0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->setXPromptMessage(Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;)V

    .line 158
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->showCurrent()Z

    move-result v0

    return v0

    :cond_0
    return v1
.end method


# virtual methods
.method protected addMessage(Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;)V
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mIsQueueShow:Z

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected abstract addView()Z
.end method

.method public cancel()V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mMessages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 188
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mIsUseExitAnim:Z

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mXPromptView:Lcom/xiaopeng/xui/widget/prompt/XPromptView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/prompt/XPromptView;->getContentView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mExitAnim:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mRemoveRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method clearQueue()V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public isQueueShow()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mIsQueueShow:Z

    return v0
.end method

.method onAction(I)V
    .locals 2

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mOnPromptActionListener:Lcom/xiaopeng/xui/widget/prompt/OnPromptActionListener;

    if-eqz v0, :cond_0

    .line 223
    iget-object v1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mXPromptMessage:Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xui/widget/prompt/OnPromptActionListener;->onPromptAction(Ljava/lang/String;I)V

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mShowRunnable:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method protected abstract removeView()V
.end method

.method public setOnPromptActionClickListener(Lcom/xiaopeng/xui/widget/prompt/OnPromptActionListener;)Lcom/xiaopeng/xui/widget/prompt/Prompt;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mOnPromptActionListener:Lcom/xiaopeng/xui/widget/prompt/OnPromptActionListener;

    return-object p0
.end method

.method public setQueueShow(Z)Lcom/xiaopeng/xui/widget/prompt/Prompt;
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mIsQueueShow:Z

    return-object p0
.end method

.method setUseExitAnim(Z)Lcom/xiaopeng/xui/widget/prompt/Prompt;
    .locals 0

    .line 196
    iput-boolean p1, p0, Lcom/xiaopeng/xui/widget/prompt/Prompt;->mIsUseExitAnim:Z

    return-object p0
.end method

.method public show()V
    .locals 0

    .line 145
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->enqueuePrompt()V

    return-void
.end method

.method public show(Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;)V
    .locals 0

    .line 139
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->addMessage(Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;)V

    .line 140
    invoke-direct {p0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->enqueuePrompt()V

    return-void
.end method

.method public show(Ljava/lang/CharSequence;)V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->show(Ljava/lang/CharSequence;I)V

    return-void
.end method

.method public show(Ljava/lang/CharSequence;I)V
    .locals 1

    .line 113
    new-instance v0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;

    invoke-direct {v0, p2, p1}, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->show(Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;)V

    return-void
.end method

.method public show(Ljava/lang/CharSequence;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 119
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->show(Ljava/lang/CharSequence;ILjava/lang/String;I)V

    return-void
.end method

.method public show(Ljava/lang/CharSequence;ILjava/lang/String;I)V
    .locals 1

    .line 124
    new-instance v0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;-><init>(ILjava/lang/CharSequence;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->show(Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;)V

    return-void
.end method

.method public show(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 129
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->show(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V

    return-void
.end method

.method public show(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;I)V
    .locals 1

    .line 134
    new-instance v0, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;

    invoke-direct {v0, p4, p1, p2, p3}, Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;-><init>(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xui/widget/prompt/Prompt;->show(Lcom/xiaopeng/xui/widget/prompt/XPromptMessage;)V

    return-void
.end method
