.class public Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "DialogLeftLayout.java"


# instance fields
.field private mImageLayout:Landroid/widget/FrameLayout;

.field protected mLeftImg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field protected mLeftLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field protected mLeftPlayall:Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;

.field protected mSubContentLayout:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->layout_dialog_left_part:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 40
    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->left_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mLeftLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 41
    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->left_img:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mLeftImg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 42
    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->left_playall:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mLeftPlayall:Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;

    .line 43
    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->left_sub_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mSubContentLayout:Landroid/view/ViewGroup;

    .line 44
    sget v1, Lcom/xiaopeng/musicradio/common/k$e;->image_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mImageLayout:Landroid/widget/FrameLayout;

    .line 47
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "canVoiceControl"

    const/4 v2, 0x1

    .line 48
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 49
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mLeftLayout:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiProps(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogLeftLayout"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    :goto_0
    sget-object v0, Lcom/xiaopeng/musicradio/common/k$i;->DialogLeftLayout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 56
    :try_start_1
    sget p2, Lcom/xiaopeng/musicradio/common/k$i;->DialogLeftLayout_sub_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mSubContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 62
    throw p2
.end method


# virtual methods
.method public addSubView(Landroid/view/View;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mSubContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method public addSubView(Landroid/view/View;II)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mSubContentLayout:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    return-void
.end method

.method public getImageLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mImageLayout:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getLeftImg()Landroid/widget/ImageView;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mLeftImg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    return-object v0
.end method

.method public getPlayAllLayout()Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mLeftPlayall:Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;

    return-object v0
.end method

.method public getSubLayout()Landroid/view/ViewGroup;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mSubContentLayout:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setEnabled(Z)V

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mLeftPlayall:Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->setEnabled(Z)V

    return-void
.end method

.method public setLoading(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mLeftPlayall:Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->setState(I)V

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mLeftPlayall:Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->setState(I)V

    :goto_0
    return-void
.end method

.method public setPlayAllListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mLeftPlayall:Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setPlayallEnabled(Z)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mLeftPlayall:Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->setEnabled(Z)V

    return-void
.end method

.method public setPlayallSelected(Z)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/DialogLeftLayout;->mLeftPlayall:Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/PlayAllLogoLayout;->setSelected(Z)V

    return-void
.end method
