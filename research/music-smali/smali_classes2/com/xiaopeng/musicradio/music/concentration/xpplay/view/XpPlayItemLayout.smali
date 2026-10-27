.class public Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "XpPlayItemLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/b;",
        "Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayItemPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsRankItemLayout"


# instance fields
.field private mChangeItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mItemLayout:Landroid/widget/LinearLayout;

.field private mItemLayout13:Landroid/widget/LinearLayout;

.field private mItemLayoutFull:Landroid/widget/LinearLayout;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;"
        }
    .end annotation
.end field

.field private mLine:Lcom/xiaopeng/xui/widget/XImageView;

.field private mName:Lcom/xiaopeng/xui/widget/XTextView;

.field private mNameStr:Ljava/lang/String;

.field private mPosition:I

.field private mRmItemFiveFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

.field private mRmItemFourFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

.field private mRmItemFullLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mRmItemLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mRmItemOne:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

.field private mRmItemOne13:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

.field private mRmItemOneFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

.field private mRmItemThree:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

.field private mRmItemThreeFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

.field private mRmItemTow:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

.field private mRmItemTow13:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

.field private mRmItemTowFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field private mStartPosition:I

.field private mThemeViewModel:Lapr;

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    .line 47
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemLayouts:Ljava/util/ArrayList;

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFullLayouts:Ljava/util/ArrayList;

    const/16 p1, 0x8

    .line 49
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mStartPosition:I

    const-string p1, ""

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mNameStr:Ljava/lang/String;

    const/16 p1, 0x24

    .line 56
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mWidth:I

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mPosition:I

    .line 67
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mChangeItems:Ljava/util/List;

    .line 68
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    .line 70
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 77
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemLayouts:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFullLayouts:Ljava/util/ArrayList;

    const/16 v0, 0x8

    .line 49
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mStartPosition:I

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mNameStr:Ljava/lang/String;

    const/16 v0, 0x24

    .line 56
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mWidth:I

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mPosition:I

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mChangeItems:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    .line 70
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 78
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 82
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemLayouts:Ljava/util/ArrayList;

    .line 48
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFullLayouts:Ljava/util/ArrayList;

    const/16 p3, 0x8

    .line 49
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mStartPosition:I

    const-string p3, ""

    .line 54
    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mNameStr:Ljava/lang/String;

    const/16 p3, 0x24

    .line 56
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mWidth:I

    const/4 p3, 0x0

    .line 58
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mPosition:I

    .line 67
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mChangeItems:Ljava/util/List;

    .line 68
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    .line 70
    new-instance p3, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p3}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p3, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 83
    invoke-static {p1, p2}, Lapr;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lapr;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mThemeViewModel:Lapr;

    return-void
.end method

.method private getCount()I
    .locals 1

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    return v0

    .line 287
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public change()V
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mChangeItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemOne13:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mChangeItems:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemTow13:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mChangeItems:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItemLayout13:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItemLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mChangeItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mChangeItems:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mChangeItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mChangeItems:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 243
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->change()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 31
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->createPresenter()Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayItemPresenter;
    .locals 1

    .line 89
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/presenter/MsXpPlayItemPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 2

    .line 100
    sget v0, Lbez$d;->name:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mName:Lcom/xiaopeng/xui/widget/XTextView;

    .line 101
    sget v0, Lbez$d;->rm_item_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItemLayout:Landroid/widget/LinearLayout;

    .line 102
    sget v0, Lbez$d;->rm_item_layout_13:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItemLayout13:Landroid/widget/LinearLayout;

    .line 103
    sget v0, Lbez$d;->rm_item_layout_full:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItemLayoutFull:Landroid/widget/LinearLayout;

    .line 104
    sget v0, Lbez$d;->rm_item_one_13:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemOne13:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    .line 105
    sget v0, Lbez$d;->rm_item_tow_13:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemTow13:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    .line 106
    sget v0, Lbez$d;->rm_item_one:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemOne:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    .line 107
    sget v0, Lbez$d;->rm_item_tow:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemTow:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    .line 108
    sget v0, Lbez$d;->rm_item_three:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemThree:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    .line 110
    sget v0, Lbez$d;->rm_item_one_full:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemOneFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    .line 111
    sget v0, Lbez$d;->rm_item_tow_full:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemTowFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    .line 112
    sget v0, Lbez$d;->rm_item_three_full:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemThreeFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    .line 113
    sget v0, Lbez$d;->rm_item_four_full:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFourFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    .line 114
    sget v0, Lbez$d;->rm_item_five_full:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFiveFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    .line 117
    sget v0, Lbez$d;->line:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mLine:Lcom/xiaopeng/xui/widget/XImageView;

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemOne:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemTow:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemThree:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFullLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemOneFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFullLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemTowFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFullLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemThreeFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFullLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFourFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFullLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFiveFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 94
    sget v0, Lbez$f;->ms_layout_xp_play_item:I

    return v0
.end method

.method public notifySpeechChange()V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 279
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onAttachedToWindow()V

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->a(Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 270
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0, p1}, Lapr;->a(Landroid/view/View;Landroid/content/res/Configuration;)V

    .line 272
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 273
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 274
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->setXpView()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 217
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onDetachedFromWindow()V

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mThemeViewModel:Lapr;

    invoke-virtual {v0, p0}, Lapr;->b(Landroid/view/View;)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 265
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 295
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setData(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;I)V"
        }
    .end annotation

    .line 154
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mChangeItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mChangeItems:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mNameStr:Ljava/lang/String;

    .line 159
    iput p4, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mStartPosition:I

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->setXpView()V

    return-void
.end method

.method protected setListener()V
    .locals 0

    return-void
.end method

.method protected setView()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemOne13:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setType(I)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemTow13:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setType(I)V

    .line 135
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemOne:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setType(I)V

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemTow:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setType(I)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemThree:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setType(I)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemOneFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setType(I)V

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemTowFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setType(I)V

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemThreeFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setType(I)V

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFourFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setType(I)V

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFiveFull:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setType(I)V

    return-void
.end method

.method public setXpView()V
    .locals 6

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mName:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mNameStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mNameStr:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mLine:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 167
    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mWidth:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mNameStr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 169
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->getCount()I

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItemLayoutFull:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItemLayout13:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_7

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemOne13:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mStartPosition:I

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemTow13:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    iget v4, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mStartPosition:I

    add-int/2addr v4, v2

    invoke-virtual {v0, v1, v4}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemOne13:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setContext(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemTow13:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setContext(Landroid/content/Context;)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mChangeItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mChangeItems:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto/16 :goto_4

    .line 182
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItemLayoutFull:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItemLayout13:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v1, v3

    .line 186
    :goto_0
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemLayouts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 187
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemLayouts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v4, v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_3

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_3
    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_7

    .line 193
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setContext(Landroid/content/Context;)V

    .line 194
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setVisibility(I)V

    .line 195
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    iget v5, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mStartPosition:I

    add-int/2addr v5, v1

    invoke-virtual {v2, v4, v5}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 198
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItemLayoutFull:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItemLayout13:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 200
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItemLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v1, v3

    .line 201
    :goto_2
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFullLayouts:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 202
    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFullLayouts:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v4, v2}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 204
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v1, v0, :cond_6

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :cond_6
    move v1, v3

    :goto_3
    if-ge v1, v0, :cond_7

    .line 208
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFullLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v4}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setContext(Landroid/content/Context;)V

    .line 209
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFullLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setVisibility(I)V

    .line 210
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mRmItemFullLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    iget v5, p0, Lcom/xiaopeng/musicradio/music/concentration/xpplay/view/XpPlayItemLayout;->mStartPosition:I

    add-int/2addr v5, v1

    invoke-virtual {v2, v4, v5}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmItemLayout;->setData(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method public showErrorView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public showLoadingView()V
    .locals 0

    return-void
.end method

.method public showNoDataView(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updatePlayState(Z)V
    .locals 0

    return-void
.end method
