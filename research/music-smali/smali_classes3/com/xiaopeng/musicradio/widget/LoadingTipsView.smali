.class public Lcom/xiaopeng/musicradio/widget/LoadingTipsView;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "LoadingTipsView.java"


# instance fields
.field protected a:I

.field protected b:Lcom/xiaopeng/xui/widget/XImageView;

.field protected c:Lcom/xiaopeng/xui/widget/XImageView;

.field protected d:Lcom/xiaopeng/xui/widget/XLoading;

.field protected e:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field protected f:Lcom/xiaopeng/xui/widget/XTextView;

.field protected g:Z

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 62
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 66
    sget v0, Laqv$a;->loadingTipsStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 46
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->a:I

    const/4 p1, 0x1

    .line 55
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->g:Z

    const-string p1, ""

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->h:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->i:Ljava/lang/String;

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->j:Ljava/lang/String;

    .line 71
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .locals 4

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getContentViewId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->e:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->e:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget v1, Laqv$d;->loading_icon:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->e:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget v1, Laqv$d;->no_result_icon:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->c:Lcom/xiaopeng/xui/widget/XImageView;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->c:Lcom/xiaopeng/xui/widget/XImageView;

    sget-object v1, Lbya;->DISABLED:Lbya;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiMode(Lbya;)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->e:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget v1, Laqv$d;->error_icon:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    sget-object v1, Lbya;->DISABLED:Lbya;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVuiMode(Lbya;)V

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    sget-object v1, Lbya;->DISABLED:Lbya;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLoading;->setVuiMode(Lbya;)V

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->e:Lcom/xiaopeng/xui/widget/XLinearLayout;

    sget v1, Laqv$d;->tips:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->e:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->addView(Landroid/view/View;)V

    const/16 v0, 0x11

    .line 94
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setGravity(I)V

    const/16 v0, 0x8

    .line 95
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    .line 97
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Laqv$g;->LoadingTipsView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 100
    :try_start_0
    sget v0, Laqv$g;->LoadingTipsView_loadingTextSize:I

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Laqv$c;->common_tips_smaller:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    .line 103
    sget v1, Laqv$g;->LoadingTipsView_errorText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 104
    sget v1, Laqv$g;->LoadingTipsView_errorText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->i:Ljava/lang/String;

    goto :goto_0

    .line 106
    :cond_0
    sget v1, Laqv$f;->common_tips_network_error:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->i:Ljava/lang/String;

    .line 108
    :goto_0
    sget v1, Laqv$g;->LoadingTipsView_loadingText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    sget v1, Laqv$g;->LoadingTipsView_loadingText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->j:Ljava/lang/String;

    goto :goto_1

    .line 111
    :cond_1
    sget v1, Laqv$f;->common_tips_loading:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->j:Ljava/lang/String;

    .line 113
    :goto_1
    sget v1, Laqv$g;->LoadingTipsView_noResultText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 114
    sget v1, Laqv$g;->LoadingTipsView_noResultText:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->h:Ljava/lang/String;

    goto :goto_2

    .line 116
    :cond_2
    sget v1, Laqv$f;->common_tips_no_result:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->h:Ljava/lang/String;

    .line 119
    :goto_2
    sget v1, Laqv$g;->LoadingTipsView_loadingState:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    .line 122
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    int-to-float v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(IF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 126
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    const-string v0, "loadingTipsView"

    invoke-virtual {p1, p0, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 124
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 125
    throw v0
.end method


# virtual methods
.method protected a(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/16 p1, -0x28

    return p1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Laqv$c;->common_tips_margin_top:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public getContentViewId()I
    .locals 1

    .line 75
    sget v0, Laqv$e;->layout_loading_tips_sub_view:I

    return v0
.end method

.method public getErrorTextToast()Ljava/lang/String;
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Laqv$f;->common_tips_network_error:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 183
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->a:I

    return v0
.end method

.method public performClick()Z
    .locals 2

    .line 189
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->a:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->g:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 190
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    .line 192
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->performClick()Z

    move-result v0

    return v0
.end method

.method public setAutoClickLoadingEnable(Z)V
    .locals 0

    .line 197
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->g:Z

    return-void
.end method

.method public setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public setLoadingText(I)V
    .locals 0

    .line 218
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->j:Ljava/lang/String;

    return-void
.end method

.method public setLoadingText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 222
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->j:Ljava/lang/String;

    return-void
.end method

.method public setLoadingTextSize(F)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(F)V

    return-void
.end method

.method public setNoResultText(I)V
    .locals 0

    .line 226
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->h:Ljava/lang/String;

    return-void
.end method

.method public setNoResultText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 230
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->h:Ljava/lang/String;

    return-void
.end method

.method public setNoResultTextSize(F)V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setTextSize(F)V

    return-void
.end method

.method public setState(I)V
    .locals 4

    .line 142
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->a:I

    .line 143
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->a(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 147
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    .line 148
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    .line 169
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->h:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 160
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 164
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->i:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 152
    :cond_2
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setVisibility(I)V

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->c:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->d:Lcom/xiaopeng/xui/widget/XLoading;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XLoading;->setVisibility(I)V

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->j:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 176
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/widget/XTextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 177
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->f:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
