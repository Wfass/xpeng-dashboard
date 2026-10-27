.class public Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "MsSingerSelectLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$a;,
        Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsSingerSelectLayout"


# instance fields
.field private mAll:Lcom/xiaopeng/xui/widget/XTextView;

.field private mChina:Lcom/xiaopeng/xui/widget/XTextView;

.field private mClickCloseListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$a;",
            ">;"
        }
    .end annotation
.end field

.field private mCloseLayout:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mEuropeAmerica:Lcom/xiaopeng/xui/widget/XTextView;

.field private mFemaleSinger:Lcom/xiaopeng/xui/widget/XTextView;

.field private mFirstBt:Lcom/xiaopeng/xui/widget/XTextView;

.field private mFirstList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xui/widget/XTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTab:I

.field private mGroupSinger:Lcom/xiaopeng/xui/widget/XTextView;

.field private mIsHideActionStart:Z

.field private mIsShowActionStart:Z

.field private mJapan:Lcom/xiaopeng/xui/widget/XTextView;

.field private mKorea:Lcom/xiaopeng/xui/widget/XTextView;

.field private mMaleSinger:Lcom/xiaopeng/xui/widget/XTextView;

.field private mOther:Lcom/xiaopeng/xui/widget/XTextView;

.field private mSecondBt:Lcom/xiaopeng/xui/widget/XTextView;

.field private mSecondList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xui/widget/XTextView;",
            ">;"
        }
    .end annotation
.end field

.field private mSecondTab:I

.field private mSelectText:Lcom/xiaopeng/xui/widget/XTextView;

.field private mSingerSelectBig:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mStateChangeListener:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$b;

.field private mTop100:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstList:Ljava/util/ArrayList;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 56
    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstTab:I

    const/4 v1, 0x4

    .line 57
    iput v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondTab:I

    .line 62
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mIsShowActionStart:Z

    .line 63
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mIsHideActionStart:Z

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mClickCloseListeners:Ljava/util/HashMap;

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstList:Ljava/util/ArrayList;

    .line 54
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 56
    iput p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstTab:I

    const/4 v0, 0x4

    .line 57
    iput v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondTab:I

    .line 62
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mIsShowActionStart:Z

    .line 63
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mIsHideActionStart:Z

    .line 67
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mClickCloseListeners:Ljava/util/HashMap;

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstList:Ljava/util/ArrayList;

    .line 54
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondList:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 56
    iput p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstTab:I

    const/4 p3, 0x4

    .line 57
    iput p3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondTab:I

    .line 62
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mIsShowActionStart:Z

    .line 63
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mIsHideActionStart:Z

    .line 67
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mClickCloseListeners:Ljava/util/HashMap;

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)Ljava/util/HashMap;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mClickCloseListeners:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mIsHideActionStart:Z

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mMenuIndex:I

    return p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)Lcom/xiaopeng/xui/widget/XRelativeLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectBig:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)Lcom/xiaopeng/xui/widget/XLinearLayout;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

    return-object p0
.end method

.method static synthetic access$502(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mIsShowActionStart:Z

    return p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)I
    .locals 0

    .line 31
    iget p0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mMenuIndex:I

    return p0
.end method

.method private setFirstLisgBg()V
    .locals 3

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v2, 0x0

    .line 262
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSecondLisgBg()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v2, 0x0

    .line 268
    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setSelectBt(Lcom/xiaopeng/xui/widget/XTextView;)V
    .locals 1

    const/4 v0, 0x1

    .line 273
    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setSelected(Z)V

    return-void
.end method

.method private setSelectText()V
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSelectText:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstBt:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondBt:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 98
    sget v0, Lbez$d;->select_text:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSelectText:Lcom/xiaopeng/xui/widget/XTextView;

    .line 99
    sget v0, Lbez$d;->singer_select_small:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 100
    sget v0, Lbez$d;->all:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mAll:Lcom/xiaopeng/xui/widget/XTextView;

    .line 101
    sget v0, Lbez$d;->china:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mChina:Lcom/xiaopeng/xui/widget/XTextView;

    .line 102
    sget v0, Lbez$d;->europe_america:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mEuropeAmerica:Lcom/xiaopeng/xui/widget/XTextView;

    .line 103
    sget v0, Lbez$d;->korea:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mKorea:Lcom/xiaopeng/xui/widget/XTextView;

    .line 104
    sget v0, Lbez$d;->japan:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mJapan:Lcom/xiaopeng/xui/widget/XTextView;

    .line 105
    sget v0, Lbez$d;->other:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mOther:Lcom/xiaopeng/xui/widget/XTextView;

    .line 106
    sget v0, Lbez$d;->top_100:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mTop100:Lcom/xiaopeng/xui/widget/XTextView;

    .line 107
    sget v0, Lbez$d;->male_singer:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mMaleSinger:Lcom/xiaopeng/xui/widget/XTextView;

    .line 108
    sget v0, Lbez$d;->female_singer:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFemaleSinger:Lcom/xiaopeng/xui/widget/XTextView;

    .line 109
    sget v0, Lbez$d;->group_singer:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mGroupSinger:Lcom/xiaopeng/xui/widget/XTextView;

    .line 110
    sget v0, Lbez$d;->singer_select_big:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectBig:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 111
    sget v0, Lbez$d;->close_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mCloseLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 92
    sget v0, Lbez$f;->music_layout_singer_select:I

    return v0
.end method

.method public hideAnimation(Landroid/view/View;J)V
    .locals 10

    .line 288
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mIsHideActionStart:Z

    if-eqz v0, :cond_0

    return-void

    .line 291
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, -0x40800000    # -1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 294
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 295
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 296
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 297
    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 314
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$4;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;Landroid/view/View;)V

    invoke-static {v0, p2, p3}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public isBig()Z
    .locals 1

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectBig:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectBig:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    .line 195
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 196
    sget v0, Lbez$d;->all:I

    if-ne p1, v0, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setFirstLisgBg()V

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mAll:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectBt(Lcom/xiaopeng/xui/widget/XTextView;)V

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mAll:Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstBt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 200
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectText()V

    const/4 p1, 0x0

    .line 201
    iput p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstTab:I

    goto/16 :goto_0

    .line 202
    :cond_1
    sget v0, Lbez$d;->china:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_2

    .line 203
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setFirstLisgBg()V

    .line 204
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mChina:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectBt(Lcom/xiaopeng/xui/widget/XTextView;)V

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mChina:Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstBt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 206
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectText()V

    .line 207
    iput v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstTab:I

    goto/16 :goto_0

    .line 208
    :cond_2
    sget v0, Lbez$d;->europe_america:I

    const/4 v2, 0x2

    if-ne p1, v0, :cond_3

    .line 209
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setFirstLisgBg()V

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mEuropeAmerica:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectBt(Lcom/xiaopeng/xui/widget/XTextView;)V

    .line 211
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mEuropeAmerica:Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstBt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 212
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectText()V

    .line 213
    iput v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstTab:I

    goto/16 :goto_0

    .line 214
    :cond_3
    sget v0, Lbez$d;->korea:I

    if-ne p1, v0, :cond_4

    .line 215
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setFirstLisgBg()V

    .line 216
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mKorea:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectBt(Lcom/xiaopeng/xui/widget/XTextView;)V

    .line 217
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mKorea:Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstBt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 218
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectText()V

    const/4 p1, 0x6

    .line 219
    iput p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstTab:I

    goto/16 :goto_0

    .line 220
    :cond_4
    sget v0, Lbez$d;->japan:I

    if-ne p1, v0, :cond_5

    .line 221
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setFirstLisgBg()V

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mJapan:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectBt(Lcom/xiaopeng/xui/widget/XTextView;)V

    .line 223
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mJapan:Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstBt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 224
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectText()V

    const/4 p1, 0x5

    .line 225
    iput p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstTab:I

    goto :goto_0

    .line 226
    :cond_5
    sget v0, Lbez$d;->other:I

    const/4 v3, 0x4

    if-ne p1, v0, :cond_6

    .line 227
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setFirstLisgBg()V

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mOther:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectBt(Lcom/xiaopeng/xui/widget/XTextView;)V

    .line 229
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mOther:Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstBt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 230
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectText()V

    .line 231
    iput v3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstTab:I

    goto :goto_0

    .line 232
    :cond_6
    sget v0, Lbez$d;->top_100:I

    if-ne p1, v0, :cond_7

    .line 233
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSecondLisgBg()V

    .line 234
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mTop100:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectBt(Lcom/xiaopeng/xui/widget/XTextView;)V

    .line 235
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mTop100:Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondBt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 236
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectText()V

    .line 237
    iput v3, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondTab:I

    goto :goto_0

    .line 238
    :cond_7
    sget v0, Lbez$d;->male_singer:I

    if-ne p1, v0, :cond_8

    .line 239
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSecondLisgBg()V

    .line 240
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mMaleSinger:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectBt(Lcom/xiaopeng/xui/widget/XTextView;)V

    .line 241
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mMaleSinger:Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondBt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 242
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectText()V

    .line 243
    iput v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondTab:I

    goto :goto_0

    .line 244
    :cond_8
    sget v0, Lbez$d;->female_singer:I

    if-ne p1, v0, :cond_9

    .line 245
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSecondLisgBg()V

    .line 246
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFemaleSinger:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectBt(Lcom/xiaopeng/xui/widget/XTextView;)V

    .line 247
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFemaleSinger:Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondBt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 248
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectText()V

    .line 249
    iput v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondTab:I

    goto :goto_0

    .line 250
    :cond_9
    sget v0, Lbez$d;->group_singer:I

    if-ne p1, v0, :cond_a

    .line 251
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSecondLisgBg()V

    .line 252
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mGroupSinger:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectBt(Lcom/xiaopeng/xui/widget/XTextView;)V

    .line 253
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mGroupSinger:Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondBt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 254
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectText()V

    const/4 p1, 0x3

    .line 255
    iput p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondTab:I

    .line 257
    :cond_a
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mStateChangeListener:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$b;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstTab:I

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondTab:I

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$b;->a(II)V

    return-void
.end method

.method public setClickCloseListener(Ljava/lang/String;Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$a;)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mClickCloseListeners:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mAll:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mChina:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mEuropeAmerica:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mKorea:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mJapan:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mOther:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mTop100:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mMaleSinger:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFemaleSinger:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mGroupSinger:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mCloseLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mAll:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mChina:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mEuropeAmerica:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mKorea:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mJapan:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mOther:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mTop100:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mMaleSinger:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFemaleSinger:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondList:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mGroupSinger:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mAll:Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mFirstBt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mTop100:Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSecondBt:Lcom/xiaopeng/xui/widget/XTextView;

    .line 129
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setFirstLisgBg()V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mAll:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectBt(Lcom/xiaopeng/xui/widget/XTextView;)V

    .line 131
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSecondLisgBg()V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mTop100:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setSelectBt(Lcom/xiaopeng/xui/widget/XTextView;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiLayoutLoadable(Z)V

    return-void
.end method

.method public setmStateChangeListener(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$b;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mStateChangeListener:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$b;

    return-void
.end method

.method public showAnimation(Landroid/view/View;J)V
    .locals 10

    .line 327
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mIsShowActionStart:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 330
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 331
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 334
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 v1, 0x1

    .line 336
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 337
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 338
    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$5;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 355
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$6;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$6;-><init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;Landroid/view/View;)V

    invoke-static {v0, p2, p3}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showBigLayout()V
    .locals 3

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectBig:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mIsHideActionStart:Z

    if-eqz v0, :cond_1

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectBig:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->showAnimation(Landroid/view/View;J)V

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mStateChangeListener:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$b;->a(Z)V

    :cond_1
    return-void
.end method

.method public showSmallLayout()V
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectBig:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectBig:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->hideAnimation(Landroid/view/View;J)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mSelectText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->mStateChangeListener:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$b;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$b;->a(Z)V

    :cond_0
    return-void
.end method
