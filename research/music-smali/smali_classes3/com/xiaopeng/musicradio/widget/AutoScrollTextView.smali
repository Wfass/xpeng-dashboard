.class public Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;
.super Landroid/widget/TextSwitcher;
.source "AutoScrollTextView.java"

# interfaces
.implements Landroid/widget/ViewSwitcher$ViewFactory;
.implements Lbxt;
.implements Lcom/xiaopeng/xui/vui/VuiView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;,
        Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;
    }
.end annotation


# instance fields
.field private delayedTime:I

.field private handler:Landroid/os/Handler;

.field private lisener:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInUp:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;

.field private mOutUp:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;

.field private position:I

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/TextSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->list:Ljava/util/List;

    const/4 p2, 0x0

    .line 39
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->position:I

    const/16 p2, 0xbb8

    .line 40
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->delayedTime:I

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->mContext:Landroid/content/Context;

    .line 49
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->position:I

    return p0
.end method

.method static synthetic access$002(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;I)I
    .locals 0

    .line 30
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->position:I

    return p1
.end method

.method static synthetic access$008(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)I
    .locals 2

    .line 30
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->position:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->position:I

    return v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Ljava/util/List;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->list:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Ljava/lang/Runnable;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->runnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->delayedTime:I

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->lisener:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;

    return-object p0
.end method

.method private createAnim(ZZ)Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;
    .locals 1

    .line 91
    new-instance v0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;-><init>(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;ZZ)V

    const-wide/16 p1, 0x1f4

    .line 92
    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->setDuration(J)V

    const/4 p1, 0x0

    .line 93
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->setFillAfter(Z)V

    .line 94
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v0
.end method

.method private init()V
    .locals 2

    .line 55
    invoke-virtual {p0, p0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->setFactory(Landroid/widget/ViewSwitcher$ViewFactory;)V

    const/4 v0, 0x1

    .line 57
    invoke-direct {p0, v0, v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->createAnim(ZZ)Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->mInUp:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;

    const/4 v1, 0x0

    .line 58
    invoke-direct {p0, v1, v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->createAnim(ZZ)Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->mOutUp:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->mInUp:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->mOutUp:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->setOutAnimation(Landroid/view/animation/Animation;)V

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->handler:Landroid/os/Handler;

    .line 64
    new-instance v0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$1;-><init>(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->runnable:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public makeView()Landroid/view/View;
    .locals 3

    .line 143
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x41e80000    # 29.0f

    .line 144
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/4 v1, 0x1

    .line 145
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    const/16 v1, 0x10

    .line 146
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 147
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 148
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/common/k$b;->netradio_program_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    new-instance v1, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$2;-><init>(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public next()V
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->getInAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->mInUp:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;

    if-eq v0, v1, :cond_0

    .line 167
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->setInAnimation(Landroid/view/animation/Animation;)V

    .line 170
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->getOutAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->mOutUp:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$b;

    if-eq v0, v1, :cond_1

    .line 171
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->setOutAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public onBuildVuiElement(Ljava/lang/String;Lbxr;)Lbye;
    .locals 6

    .line 177
    new-instance p2, Lbye$a;

    invoke-direct {p2}, Lbye$a;-><init>()V

    sget-object v0, Lbxy;->CUSTOM:Lbxy;

    .line 178
    invoke-virtual {v0}, Lbxy;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbye$a;->a(Ljava/lang/String;)Lbye$a;

    move-result-object p2

    .line 179
    invoke-virtual {p2, p1}, Lbye$a;->c(Ljava/lang/String;)Lbye$a;

    move-result-object p2

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->vui_label_locationreadio:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbye$a;->b(Ljava/lang/String;)Lbye$a;

    move-result-object p2

    .line 181
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->vui_action_click_play:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lbye$a;->d(Ljava/lang/String;)Lbye$a;

    move-result-object p2

    .line 182
    invoke-virtual {p2}, Lbye$a;->a()Lbye;

    move-result-object p2

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->list:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->list:Ljava/util/List;

    .line 186
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    .line 187
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 188
    new-instance v3, Lbye$a;

    invoke-direct {v3}, Lbye$a;-><init>()V

    sget-object v4, Lbxy;->TEXTVIEW:Lbxy;

    .line 189
    invoke-virtual {v4}, Lbxy;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbye$a;->a(Ljava/lang/String;)Lbye$a;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 190
    invoke-virtual {v3, v4}, Lbye$a;->c(Ljava/lang/String;)Lbye$a;

    move-result-object v3

    .line 191
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lbye$a;->b(Ljava/lang/String;)Lbye$a;

    move-result-object v3

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/xiaopeng/musicradio/common/k$g;->vui_action_click_play:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lbye$a;->d(Ljava/lang/String;)Lbye$a;

    move-result-object v3

    .line 193
    invoke-virtual {v3}, Lbye$a;->a()Lbye;

    move-result-object v3

    .line 194
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 196
    :cond_0
    invoke-virtual {p2, v1}, Lbye;->setElements(Ljava/util/List;)V

    :cond_1
    return-object p2
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 85
    invoke-super {p0}, Landroid/widget/TextSwitcher;->onDetachedFromWindow()V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->handler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public onVuiElementEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    .line 203
    new-instance p1, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$3;

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$3;-><init>(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;Lbyf;)V

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->post(Ljava/lang/Runnable;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public setClickLisener(Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->lisener:Lcom/xiaopeng/musicradio/widget/AutoScrollTextView$a;

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public setTextColor()V
    .locals 5

    .line 279
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 281
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 282
    instance-of v3, v2, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 283
    check-cast v2, Landroid/widget/TextView;

    .line 284
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xiaopeng/musicradio/common/k$b;->x_theme_text_01:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public startScroll()V
    .locals 2

    const/4 v0, 0x0

    .line 112
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->position:I

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startScroll(I)V
    .locals 1

    .line 120
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->delayedTime:I

    const/4 p1, 0x0

    .line 121
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->position:I

    .line 122
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopScroll()V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/AutoScrollTextView;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method
