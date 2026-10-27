.class public Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;
.super Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;
.source "QualityItemLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout<",
        "Ljava/lang/Object;",
        "Lbjn;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QualityItemLayout"


# instance fields
.field private mImageLayout:Lcom/xiaopeng/musicradio/widget/AccountImageLayout;

.field private mNeedVip:Z

.field private mNoQuality:Z

.field private mQuality:I

.field private mQualityChooseCallback:Lcom/xiaopeng/musicradio/music/tone/view/a;

.field private mQualityLabel:Ljava/lang/String;

.field private mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

.field private mSizeTxt:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 52
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)I
    .locals 0

    .line 36
    iget p0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mQuality:I

    return p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)Z
    .locals 0

    .line 36
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mNeedVip:Z

    return p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)Lcom/xiaopeng/musicradio/music/tone/view/a;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mQualityChooseCallback:Lcom/xiaopeng/musicradio/music/tone/view/a;

    return-object p0
.end method

.method private calculateCache(I)Ljava/lang/String;
    .locals 2

    int-to-float p1, p1

    const/high16 v0, 0x44800000    # 1024.0f

    div-float/2addr p1, v0

    div-float/2addr p1, v0

    const/4 v0, 0x1

    .line 200
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "%.1fMB"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 69
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lbez$i;->QualityItemLayout:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 70
    sget v0, Lbez$i;->QualityItemLayout_qualityLabel:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mQualityLabel:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected createPresenter()Lbjn;
    .locals 1

    .line 76
    new-instance v0, Lbjn;

    invoke-direct {v0}, Lbjn;-><init>()V

    return-object v0
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/widget/lifecycle/a;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->createPresenter()Lbjn;

    move-result-object v0

    return-object v0
.end method

.method protected findView()V
    .locals 2

    .line 81
    sget v0, Lbez$d;->layout_root:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    .line 82
    sget v0, Lbez$d;->tv_size_quality:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mSizeTxt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 83
    sget v0, Lbez$d;->image_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mImageLayout:Lcom/xiaopeng/musicradio/widget/AccountImageLayout;

    .line 84
    sget v0, Lbez$d;->tv_quality:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    .line 85
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mQualityLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 146
    sget v0, Lbez$f;->layout_quality_item:I

    return v0
.end method

.method public refreshQuality(Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;)V
    .locals 5

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshQuality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QualityItemLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    .line 156
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getQuality()I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mQuality:I

    .line 157
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getFileSize()I

    move-result v3

    if-lez v3, :cond_0

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mSizeTxt:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getFileSize()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->calculateCache(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mSizeTxt:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 161
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mSizeTxt:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 164
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->isCanPlay()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 165
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mNeedVip:Z

    .line 166
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mNoQuality:Z

    goto :goto_1

    .line 168
    :cond_1
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mNoQuality:Z

    .line 169
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mNeedVip:Z

    .line 171
    :goto_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 172
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->getVipTypes()Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_5

    .line 174
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/VipType;

    if-eqz v3, :cond_2

    .line 175
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/VipType;->getLogo()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 176
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/VipType;->getLogo()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 179
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 180
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mImageLayout:Lcom/xiaopeng/musicradio/widget/AccountImageLayout;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->setData(Ljava/util/ArrayList;)V

    .line 181
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mImageLayout:Lcom/xiaopeng/musicradio/widget/AccountImageLayout;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/widget/AccountImageLayout;->setVisibility(I)V

    goto :goto_3

    .line 185
    :cond_4
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mNeedVip:Z

    .line 186
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mNoQuality:Z

    .line 187
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mSizeTxt:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 190
    :cond_5
    :goto_3
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mNeedVip:Z

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setVuiDisableHitEffect(Z)V

    .line 191
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mNoQuality:Z

    if-eqz p1, :cond_6

    const p1, 0x3dcccccd    # 0.1f

    goto :goto_4

    :cond_6
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setAlpha(F)V

    .line 192
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mNoQuality:Z

    if-nez p1, :cond_7

    sget-object p1, Lbya;->NORMAL:Lbya;

    goto :goto_5

    :cond_7
    sget-object p1, Lbya;->DISABLED:Lbya;

    :goto_5
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setVuiMode(Lbya;)V

    .line 193
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mNoQuality:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setClickable(Z)V

    .line 194
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mNoQuality:Z

    xor-int/2addr p1, v1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setEnabled(Z)V

    return-void
.end method

.method protected setListener()V
    .locals 1

    .line 109
    new-instance v0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setQualityChooseListener(Lcom/xiaopeng/musicradio/music/tone/view/a;)V
    .locals 0

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mQualityChooseCallback:Lcom/xiaopeng/musicradio/music/tone/view/a;

    return-void
.end method

.method protected setView()V
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mQualityLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 91
    sget-object v0, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v0}, Lbxx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->setVuiAction(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 92
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->enableViewVuiMode(Z)V

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mRootLayout:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->addHasFeedbackProp(Lbxq;)V

    .line 96
    sget v0, Lcom/xiaopeng/musicradio/common/k$b;->qq_vip_sq_lable_text_color:I

    .line 97
    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->qq_vip_sq_lable_bg:I

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    check-cast v0, Lbjn;

    invoke-virtual {v0}, Lbjn;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    sget v0, Lcom/xiaopeng/musicradio/common/k$b;->netease_vip_sq_lable_text_color:I

    .line 100
    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->netease_vip_sq_lable_bg:I

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/tone/view/QualityItemLayout;->mPresenter:Lcom/xiaopeng/musicradio/widget/lifecycle/a;

    check-cast v0, Lbjn;

    invoke-virtual {v0}, Lbjn;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    sget v0, Lcom/xiaopeng/musicradio/common/k$b;->kugou_vip_sq_lable_text_color:I

    .line 103
    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->kugou_vip_sq_lable_bg:I

    :cond_1
    :goto_0
    return-void
.end method
