.class public Lcom/xiaopeng/musicradio/netradio/player/view/d;
.super Lcom/xiaopeng/musicradio/commonui/adapter/h;
.source "NetRadioPlayListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/netradio/player/view/d$a;,
        Lcom/xiaopeng/musicradio/netradio/player/view/d$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/adapter/h<",
        "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
        "Lcom/xiaopeng/musicradio/netradio/player/view/d$a;",
        ">;"
    }
.end annotation


# instance fields
.field private g:I

.field private h:I

.field private i:Lcom/xiaopeng/musicradio/netradio/player/view/d$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 44
    sget v0, Lbuc$f;->item_netradio_play_list:I

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/h;-><init>(Landroid/content/Context;I)V

    const/4 p1, -0x1

    .line 39
    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->g:I

    .line 40
    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->h:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/netradio/player/view/d;)Lcom/xiaopeng/musicradio/netradio/player/view/d$b;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->i:Lcom/xiaopeng/musicradio/netradio/player/view/d$b;

    return-object p0
.end method


# virtual methods
.method protected a()I
    .locals 1

    const/16 v0, 0x8

    return v0
.end method

.method public a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/netradio/player/view/d$a;
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/netradio/player/view/d;->c()Landroid/view/View;

    move-result-object p1

    .line 68
    new-instance p2, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public a(II)V
    .locals 2

    .line 48
    iget v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eq v0, p1, :cond_0

    .line 49
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/netradio/player/view/d;->notifyItemChanged(I)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->e:Landroidx/recyclerview/widget/RecyclerView;

    instance-of v0, v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->e:Landroidx/recyclerview/widget/RecyclerView;

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene()V

    .line 54
    :cond_0
    iput p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->g:I

    .line 55
    iput p2, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->h:I

    .line 56
    iget p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->g:I

    if-eq p1, v1, :cond_1

    .line 57
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/netradio/player/view/d;->notifyItemChanged(I)V

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->e:Landroidx/recyclerview/widget/RecyclerView;

    instance-of p1, p1, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    if-eqz p1, :cond_1

    .line 59
    iget-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->e:Landroidx/recyclerview/widget/RecyclerView;

    check-cast p1, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene()V

    :cond_1
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/netradio/player/view/d$a;I)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    .line 73
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/netradio/player/view/d;->c(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    if-nez v3, :cond_0

    return-void

    .line 78
    :cond_0
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->c:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    new-instance v4, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;

    invoke-direct {v4}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;-><init>()V

    const/4 v5, 0x0

    .line 80
    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/drawable/XLoadingDrawable;->setType(I)V

    .line 81
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getStartTime()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v6, ""

    const/16 v7, 0x8

    if-nez v4, :cond_1

    .line 82
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->g:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getStartTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getEndTime()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->l:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 85
    :cond_1
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->l:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 86
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v4, v6}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    :goto_0
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->h:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->k:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-virtual {v4, v9}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setText(I)V

    .line 90
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getType()I

    move-result v4

    const/4 v6, 0x1

    if-nez v4, :cond_2

    .line 91
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->f:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v8, v0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->f:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lbuc$g;->netradio_yesterday:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    const-wide/32 v12, 0x5265c00

    sub-long/2addr v10, v12

    invoke-static {v10, v11}, Lcom/xiaopeng/musicradio/utils/bs;->a(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_1

    .line 93
    :cond_2
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getType()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 94
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->f:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v8, v0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->f:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lbuc$g;->netradio_today:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Lcom/xiaopeng/musicradio/utils/bs;->a(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v5

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_1

    .line 97
    :cond_3
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v4, v7}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 99
    :goto_1
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getType()I

    move-result v4

    const/4 v8, 0x2

    if-ne v4, v8, :cond_4

    .line 100
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    sget v9, Lbuc$g;->netradio_live_title:I

    invoke-virtual {v4, v9}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    goto :goto_2

    .line 102
    :cond_4
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    sget v9, Lbuc$g;->netradio_replay_title:I

    invoke-virtual {v4, v9}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 106
    :goto_2
    iget v4, v0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->g:I

    const/4 v9, -0x1

    const/4 v10, 0x4

    if-ne v4, v2, :cond_9

    .line 107
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->c:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v11, v0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->f:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lbuc$a;->x_color_primary:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 108
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->h:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v11, v0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->f:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lbuc$a;->x_color_primary:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 109
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->j:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v4, v6}, Lcom/xiaopeng/xui/view/XView;->setSelected(Z)V

    .line 110
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v4, v7}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 111
    iget v4, v0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->h:I

    if-eq v4, v9, :cond_8

    if-ne v4, v10, :cond_5

    goto :goto_4

    :cond_5
    if-ne v6, v4, :cond_6

    .line 116
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->d:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 117
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->hide()V

    .line 118
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v4, v7}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    :goto_3
    move v4, v6

    goto :goto_6

    :cond_6
    if-ne v8, v4, :cond_7

    .line 121
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->d:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 122
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 123
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->smoothToShow()V

    goto :goto_3

    :cond_7
    const/4 v11, 0x3

    if-ne v11, v4, :cond_a

    .line 126
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->d:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 127
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 128
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    goto :goto_5

    .line 112
    :cond_8
    :goto_4
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->stopAnimation()V

    .line 113
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 114
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->d:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto :goto_5

    .line 131
    :cond_9
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->c:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v11, v0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->f:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lbuc$a;->x_color_text_1:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 132
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->h:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v11, v0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->f:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lbuc$a;->x_color_text_1:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getColor(I)I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/xiaopeng/xui/widget/XTextView;->setTextColor(I)V

    .line 133
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->j:Lcom/xiaopeng/xui/view/XView;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/view/XView;->setSelected(Z)V

    .line 134
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 135
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->hide()V

    .line 136
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    invoke-virtual {v4, v7}, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;->setVisibility(I)V

    .line 137
    iget-object v4, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->d:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_5
    move v4, v5

    .line 140
    :goto_6
    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 141
    iget-object v7, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->k:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-virtual {v7, v5}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    .line 142
    iget-object v7, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->h:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v7, v10}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_7

    .line 144
    :cond_b
    iget-object v7, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->k:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    invoke-virtual {v7, v10}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->setVisibility(I)V

    .line 145
    iget-object v7, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->h:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v7, v5}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 148
    :goto_7
    iget-object v7, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->a:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    new-instance v10, Lcom/xiaopeng/musicradio/netradio/player/view/d$1;

    invoke-direct {v10, p0, v3}, Lcom/xiaopeng/musicradio/netradio/player/view/d$1;-><init>(Lcom/xiaopeng/musicradio/netradio/player/view/d;Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    invoke-virtual {v7, v10}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 157
    new-array v7, v8, [Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->a:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v11}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lbuc$g;->xui_play:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "|"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v11}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v7, v5

    iget-object v5, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->a:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v5}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v10, Lbuc$g;->xui_pause:I

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v6

    .line 158
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v5, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->a:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    if-eqz v4, :cond_c

    goto :goto_8

    :cond_c
    move v8, v9

    :goto_8
    const/4 v6, 0x0

    const/4 v9, 0x1

    move/from16 v2, p2

    move-object v4, v5

    move v5, v8

    move v8, v9

    invoke-static/range {v2 .. v8}, Lcom/xiaopeng/musicradio/vui/b;->a(ILjava/lang/String;Landroid/view/View;ILandroid/view/View;[Ljava/lang/String;Z)V

    .line 160
    iget-object v2, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->a:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v2

    iget-object v1, v1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->a:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setExecuteVirtualTag(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/netradio/player/view/d$b;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d;->i:Lcom/xiaopeng/musicradio/netradio/player/view/d$b;

    return-void
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 38
    check-cast p1, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/player/view/d;->a(Lcom/xiaopeng/musicradio/netradio/player/view/d$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/netradio/player/view/d;->a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/netradio/player/view/d$a;

    move-result-object p1

    return-object p1
.end method
