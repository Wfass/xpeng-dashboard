.class public Lcom/xiaopeng/musicradio/widget/DialogTopLayout;
.super Landroid/widget/FrameLayout;
.source "DialogTopLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/DialogTopLayout$a;
    }
.end annotation


# instance fields
.field private mBack:Landroid/view/View;

.field private mEditModeRes:I

.field private mEditModeText:Ljava/lang/String;

.field private mEditable:Z

.field private mEnableColorFilter:Z

.field private mLoadingWidget:Landroid/widget/ProgressBar;

.field private mNormalRes:I

.field private mNormalText:Ljava/lang/String;

.field private mOnCloseListener:Landroid/view/View$OnClickListener;

.field private mOnEditModeChangeListener:Lcom/xiaopeng/musicradio/widget/DialogTopLayout$a;

.field private mRightLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mRtIcon:Landroid/widget/ImageView;

.field private mRtTitle:Lcom/xiaopeng/xui/widget/XTextView;

.field private mSceneId:Ljava/lang/String;

.field private mTitleTxt:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditable:Z

    const-string p1, ""

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mNormalText:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditModeText:Ljava/lang/String;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEnableColorFilter:Z

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditable:Z

    const-string p1, ""

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mNormalText:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditModeText:Ljava/lang/String;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEnableColorFilter:Z

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditable:Z

    const-string p1, ""

    .line 45
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mNormalText:Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditModeText:Ljava/lang/String;

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEnableColorFilter:Z

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/widget/DialogTopLayout;Landroid/view/View;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->onBackClick(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/widget/DialogTopLayout;)Lcom/xiaopeng/musicradio/widget/DialogTopLayout$a;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mOnEditModeChangeListener:Lcom/xiaopeng/musicradio/widget/DialogTopLayout$a;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/widget/DialogTopLayout;)Lcom/xiaopeng/xui/widget/XLinearLayout;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    return-object p0
.end method

.method private init()V
    .locals 4

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->layout_dialog_top_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 70
    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->dialog_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mTitleTxt:Landroid/widget/TextView;

    .line 71
    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->dialog_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mBack:Landroid/view/View;

    .line 72
    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->dialog_sub:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtTitle:Lcom/xiaopeng/xui/widget/XTextView;

    .line 73
    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->dialog_sub_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtIcon:Landroid/widget/ImageView;

    .line 74
    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->dialog_right_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 75
    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->dialog_sub_loading:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mLoadingWidget:Landroid/widget/ProgressBar;

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVuiLabel(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiStatfulButtonClick(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtTitle:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mBack:Landroid/view/View;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/DialogTopLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout$1;-><init>(Lcom/xiaopeng/musicradio/widget/DialogTopLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/DialogTopLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout$2;-><init>(Lcom/xiaopeng/musicradio/widget/DialogTopLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->delete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mNormalText:Ljava/lang/String;

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->complete:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditModeText:Ljava/lang/String;

    .line 99
    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->ic_32_delete:I

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mNormalRes:I

    .line 100
    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->ic_32_finish:I

    iput v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditModeRes:I

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget v1, Lcom/xiaopeng/musicradio/common/k$d;->x_btn_ghost_large_positive_selector:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setBackgroundResource(I)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mBack:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 103
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->refresh()V

    return-void
.end method

.method private onBackClick(Landroid/view/View;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mOnCloseListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_3

    .line 109
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 111
    instance-of v0, p1, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;

    if-eqz v0, :cond_1

    .line 112
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->dialog_back:I

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    check-cast p1, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDialogFrameLayout;->popBackStack()Landroid/view/View;

    :cond_0
    return-void

    .line 117
    :cond_1
    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    if-eqz p1, :cond_4

    .line 123
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getmRightLayout()Lcom/xiaopeng/xui/widget/XLinearLayout;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    return-object v0
.end method

.method public isEditable()Z
    .locals 1

    .line 139
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditable:Z

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 213
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->refresh()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 218
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public refresh()V
    .locals 8

    .line 143
    sget v0, Lcom/xiaopeng/musicradio/common/k$b;->x_theme_text_01:I

    .line 144
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditable:Z

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v1, :cond_1

    .line 145
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtTitle:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditModeText:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEnableColorFilter:Z

    if-eqz v1, :cond_0

    .line 147
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtIcon:Landroid/widget/ImageView;

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditModeRes:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/xiaopeng/musicradio/utils/w;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 147
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditModeRes:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 152
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtTitle:Lcom/xiaopeng/xui/widget/XTextView;

    new-array v1, v3, [Ljava/lang/String;

    .line 153
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/xiaopeng/musicradio/common/k$g;->delete:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 154
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/xiaopeng/musicradio/common/k$g;->complete:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 152
    invoke-static {v0, v4, v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 157
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtTitle:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mNormalText:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtIcon:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mNormalRes:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6, v0}, Lcom/xiaopeng/musicradio/utils/w;->a(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtTitle:Lcom/xiaopeng/xui/widget/XTextView;

    new-array v1, v3, [Ljava/lang/String;

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v6, Lcom/xiaopeng/musicradio/common/k$g;->delete:I

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/xiaopeng/musicradio/common/k$g;->complete:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    .line 159
    invoke-static {v0, v5, v1, v2}, Lcom/xiaopeng/speech/vui/utils/VuiUtils;->setStatefulButtonAttr(Landroid/view/View;I[Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mSceneId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtTitle:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_2

    .line 167
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mSceneId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtTitle:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public setCloseListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mOnCloseListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setEditMode(Z)V
    .locals 0

    .line 191
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditable:Z

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->refresh()V

    return-void
.end method

.method public setEnableColorFilter(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEnableColorFilter:Z

    return-void
.end method

.method public setIsLoading(Z)V
    .locals 2

    const/16 v0, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 236
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mLoadingWidget:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 237
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setClickable(Z)V

    .line 238
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 240
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mLoadingWidget:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setClickable(Z)V

    .line 242
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public setOnEditModeChange(Lcom/xiaopeng/musicradio/widget/DialogTopLayout$a;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mOnEditModeChangeListener:Lcom/xiaopeng/musicradio/widget/DialogTopLayout$a;

    return-void
.end method

.method public setRtResId(II)V
    .locals 0

    .line 177
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mNormalRes:I

    .line 178
    iput p2, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditModeRes:I

    return-void
.end method

.method public setRtText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 172
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mNormalText:Ljava/lang/String;

    .line 173
    iput-object p2, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditModeText:Ljava/lang/String;

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mSceneId:Ljava/lang/String;

    return-void
.end method

.method public setSubIconRes(I)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRtIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mTitleTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mTitleTxt:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showRtLayout(Z)V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mRightLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    return-void
.end method

.method public toggle()Z
    .locals 1

    .line 185
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditable:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditable:Z

    .line 186
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->refresh()V

    .line 187
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/DialogTopLayout;->mEditable:Z

    return v0
.end method
