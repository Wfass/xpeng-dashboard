.class public Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "SmallPlayerLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/playercomponent/small/view/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/playercomponent/small/view/b;",
        "Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/playercomponent/small/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmallPlayerLayout"


# instance fields
.field private _state:I

.field private mAlbumImg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private mCtrlImg:Landroid/widget/ImageView;

.field private mCtrlLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mDefaultView:Landroid/view/View;

.field private mLoadingView:Landroid/view/View;

.field private mNextImage:Landroid/widget/ImageView;

.field private mPreImg:Landroid/widget/ImageView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mStateView:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;

.field private mSubLayout:Landroid/widget/FrameLayout;

.field private mSubTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;

.field private mTypeView:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mTypeView:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mTypeView:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 63
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mTypeView:Landroid/util/SparseArray;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method private getString(I)Ljava/lang/String;
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public changeTheme()V
    .locals 1

    .line 189
    iget v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->_state:I

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->refreshPlayState(I)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->createPresenter()Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;
    .locals 1

    .line 69
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/presenter/SmallPlayerPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 74
    sget v0, Lble$d;->img_album:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mAlbumImg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 75
    sget v0, Lble$d;->iv_play_list_state:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mStateView:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;

    .line 76
    sget v0, Lble$d;->progress_bar:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mProgressBar:Landroid/widget/ProgressBar;

    .line 77
    sget v0, Lble$d;->img_loading:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mLoadingView:Landroid/view/View;

    .line 78
    sget v0, Lble$d;->layout_default:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mDefaultView:Landroid/view/View;

    .line 79
    sget v0, Lble$d;->layout_sub:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mSubLayout:Landroid/widget/FrameLayout;

    .line 80
    sget v0, Lble$d;->layout_ctrl:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mCtrlLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 81
    sget v0, Lble$d;->img_ctrl:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mCtrlImg:Landroid/widget/ImageView;

    .line 82
    sget v0, Lble$d;->img_pre:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mPreImg:Landroid/widget/ImageView;

    .line 83
    sget v0, Lble$d;->img_next:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mNextImage:Landroid/widget/ImageView;

    .line 84
    sget v0, Lble$d;->tv_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 85
    sget v0, Lble$d;->tv_sub_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mSubTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 128
    sget v0, Lble$e;->layout_small_player:I

    return v0
.end method

.method public hidePlayState()V
    .locals 2

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mStateView:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mLoadingView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public refreshCover(I)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mAlbumImg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageResource(I)V

    return-void
.end method

.method public refreshCover(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mAlbumImg:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public refreshInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$a;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$1;)V

    invoke-static {p1, v1, v2}, Landroid/text/Html;->fromHtml(Ljava/lang/String;Landroid/text/Html$ImageGetter;Landroid/text/Html$TagHandler;)Landroid/text/Spanned;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mSubTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mDefaultView:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mCtrlLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mPreImg:Landroid/widget/ImageView;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mCtrlImg:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mNextImage:Landroid/widget/ImageView;

    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public refreshPlayState(I)V
    .locals 3

    .line 155
    iput p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->_state:I

    const/4 v0, -0x1

    const/16 v1, 0x8

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 170
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mLoadingView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mStateView:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->setVisibility(I)V

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mCtrlImg:Landroid/widget/ImageView;

    sget v0, Lble$c;->ic_120_stop:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 165
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mStateView:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->setVisibility(I)V

    .line 166
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mLoadingView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mCtrlImg:Landroid/widget/ImageView;

    sget v0, Lble$c;->ic_120_stop:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 160
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mLoadingView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mStateView:Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/commonui/widget/MusicalNoteTextureView;->setVisibility(I)V

    .line 162
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mCtrlImg:Landroid/widget/ImageView;

    sget v0, Lble$c;->ic_120_play:I

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void
.end method

.method public refreshPos(III)V
    .locals 1

    if-nez p2, :cond_0

    .line 144
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 148
    iget-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 149
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p1, p3}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 150
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public refreshType(I)V
    .locals 8

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mTypeView:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string v1, "SmallPlayerLayout"

    if-nez v0, :cond_0

    .line 231
    invoke-static {}, Lblj;->a()Lblj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lblj;->a(I)Lcom/xiaopeng/musicradio/playercomponent/small/view/c;

    move-result-object v0

    .line 232
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshType: ====== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/c;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mTypeView:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 237
    iget-object v2, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mSubLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 242
    :cond_0
    invoke-static {}, Lblj;->a()Lblj;

    move-result-object v0

    invoke-virtual {v0, p1}, Lblj;->a(I)Lcom/xiaopeng/musicradio/playercomponent/small/view/c;

    move-result-object v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 244
    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mSubTitleTxt:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    invoke-virtual {v4, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :cond_2
    move v0, v3

    .line 247
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mTypeView:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 248
    iget-object v4, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mTypeView:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 249
    iget-object v5, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mTypeView:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 250
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshType:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " type = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_4

    if-ne v4, p1, :cond_3

    move v4, v3

    goto :goto_2

    :cond_3
    move v4, v2

    .line 252
    :goto_2
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method

.method public reset(I)V
    .locals 3

    .line 208
    sget v0, Lble$f;->tip_init_sub_title:I

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lble$f;->tip_init_title:I

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->refreshInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 209
    invoke-virtual {p0, v0, v1, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->refreshPos(III)V

    const/16 v1, 0x8

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mDefaultView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 213
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mCtrlLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 214
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->refreshType(I)V

    goto :goto_0

    .line 216
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mDefaultView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 217
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mCtrlLayout:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setVisibility(I)V

    .line 219
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mPreImg:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 220
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mCtrlImg:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 221
    iget-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mNextImage:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 224
    :goto_0
    iput v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->_state:I

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 95
    new-instance v0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$1;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mPreImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$2;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mCtrlImg:Landroid/widget/ImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$3;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;->mNextImage:Landroid/widget/ImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout$4;-><init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    return-void
.end method
