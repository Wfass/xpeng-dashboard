.class public Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LluDanceViewHolder.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LluDanceViewHolder"


# instance fields
.field public mImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mImgNewFrag:Lcom/xiaopeng/xui/widget/XImageView;

.field private mProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

.field public mTvAuthor:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTvState:Lcom/xiaopeng/xui/widget/XTextView;

.field public mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->img:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 40
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->tv_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 41
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->tv_author:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvAuthor:Lcom/xiaopeng/xui/widget/XTextView;

    .line 42
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->tv_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    .line 43
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->llu_activity_dance_item_download_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    .line 44
    sget v0, Lcom/xiaopeng/lludancemanager/R$id;->img_new:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mImgNewFrag:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method

.method private applyVuiAttr(ILcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "data"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    .line 135
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->CLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v1}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiAction(Ljava/lang/String;)V

    .line 136
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiElementType;->BUTTON:Lcom/xiaopeng/vui/commons/VuiElementType;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiElementType(Lcom/xiaopeng/vui/commons/VuiElementType;)V

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 138
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/xiaopeng/lludancemanager/R$string;->vui_label_llu_position_title:I

    .line 139
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x1

    add-int/2addr p1, v3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v2, v4

    invoke-virtual {p2}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getTitle()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 138
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 140
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 141
    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lcom/xiaopeng/vui/commons/IVuiElement;)V

    return-void
.end method

.method private disableItemVuiAttr()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    .line 146
    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setVuiMode(Lcom/xiaopeng/vui/commons/VuiMode;)V

    return-void
.end method

.method private getDuration(J)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "second"
        }
    .end annotation

    const-wide/16 v0, 0x3c

    .line 126
    div-long v2, p1, v0

    .line 127
    rem-long/2addr p1, v0

    const-wide/16 v0, 0xa

    cmp-long v4, v2, v0

    const-string v5, "0"

    const-string v6, ""

    if-gez v4, :cond_0

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    goto :goto_0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ":"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setStatus(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 77
    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getState()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x7

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 96
    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getDuration()J

    move-result-wide v0

    .line 97
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->getDuration(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mImgNewFrag:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 116
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mImgNewFrag:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/lludancemanager/R$drawable;->llu_dance_ic_new:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mImgNewFrag:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_not_downloaded:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mImgNewFrag:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v3, v3, v3, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getDownloadedPercentage()D

    move-result-wide v1

    double-to-int p1, v1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setProgress(I)V

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_pause:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 87
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getDownloadedPercentage()D

    move-result-wide v3

    double-to-int p1, v3

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setProgress(I)V

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mImgNewFrag:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    goto :goto_0

    .line 101
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mImgNewFrag:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/lludancemanager/R$drawable;->llu_dance_ic_suspend:I

    invoke-virtual {p1, v0, v3, v3, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 105
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_wait:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_5
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    sget v0, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_not_downloaded:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mImgNewFrag:Lcom/xiaopeng/xui/widget/XImageView;

    sget v0, Lcom/xiaopeng/lludancemanager/R$drawable;->llu_dance_ic_new:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mImgNewFrag:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bind(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setActivated(Z)V

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->disableItemVuiAttr()V

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/lludancemanager/R$drawable;->llu_dance_more:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvAuthor:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->setStatus(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    .line 70
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvState:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 71
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mImgNewFrag:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 72
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mProgressBar:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    return-void
.end method

.method public bind(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "position",
            "activated"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->setActivated(Z)V

    .line 50
    new-instance p3, Lcom/bumptech/glide/request/RequestOptions;

    invoke-direct {p3}, Lcom/bumptech/glide/request/RequestOptions;-><init>()V

    .line 51
    sget v0, Lcom/xiaopeng/lludancemanager/R$drawable;->llu_dance_item_place_holder:I

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/RequestOptions;->placeholder(I)Lcom/bumptech/glide/request/RequestOptions;

    .line 52
    sget v0, Lcom/xiaopeng/lludancemanager/R$drawable;->llu_dance_item_place_holder:I

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/request/RequestOptions;->error(I)Lcom/bumptech/glide/request/RequestOptions;

    .line 53
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bumptech/glide/RequestManager;->setDefaultRequestOptions(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestManager;

    move-result-object p3

    .line 54
    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getImageThumbnailUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lcom/bumptech/glide/load/resource/bitmap/RoundedCorners;-><init>(I)V

    .line 55
    invoke-static {v0}, Lcom/bumptech/glide/request/RequestOptions;->bitmapTransform(Lcom/bumptech/glide/load/Transformation;)Lcom/bumptech/glide/request/RequestOptions;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestBuilder;->apply(Lcom/bumptech/glide/request/RequestOptions;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p3

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 56
    invoke-virtual {p3, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 57
    iget-object p3, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object p3, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->mTvAuthor:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->setStatus(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    .line 60
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->applyVuiAttr(ILcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    return-void
.end method
