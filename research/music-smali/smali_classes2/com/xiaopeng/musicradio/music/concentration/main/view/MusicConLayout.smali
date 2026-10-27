.class public Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "MusicConLayout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicConLayout"


# instance fields
.field private mAccountType:I

.field protected mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

.field private mAverageGridDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

.field private mAverageGridDecoration2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

.field private mAverageGridDecorationFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

.field private mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

.field protected mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

.field protected mFirstVisibleItemPosition:I

.field public mHasData:Z

.field private mIsScreenChanged:Z

.field private mLastVisibleItemPosition:I

.field protected mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field protected mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

.field protected mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

.field protected mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

.field protected mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mListVisibility:I

.field protected mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field protected mMenuIndex:I

.field protected mRadioItemCount:I

.field protected mRadioLine:I

.field protected mRadioLine1P3Count:I

.field protected mRadioLine2P3Count:I

.field protected mRadioLineFullCount:I

.field private mRadioMaxCount:I

.field protected mRadioTitleCount:I

.field protected mRankItemCount:I

.field protected mRankLine:I

.field protected mRankLine1P3Count:I

.field protected mRankLine2P3Count:I

.field protected mRankLineFullCount:I

.field protected mRankTitleCount:I

.field protected mRmItemCount:I

.field protected mRmLine:I

.field protected mRmLine1P3Count:I

.field protected mRmLine2P3Count:I

.field protected mRmLine8:I

.field protected mRmLineFullCount:I

.field protected mRmStartPosition:I

.field protected mRmTitleCount:I

.field private mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field protected mSingerItemCount:I

.field protected mSingerLine:I

.field protected mSingerLine1P3Count:I

.field protected mSingerLine2P3Count:I

.field protected mSingerLineFullCount:I

.field protected mSingerTitleCount:I

.field protected mSpanCount1P3:I

.field protected mSpanCount2P3:I

.field protected mSpanCountFull:I

.field private mSpanSizeLookup1P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mSpanSizeLookup2P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field private mSpanSizeLookupFull:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

.field protected mTopCount:I

.field protected mTopEightCount:I

.field private mTotalItemCount:I

.field protected mXpLine1P3Count:I

.field protected mXpLine2P3Count:I

.field protected mXpLineFullCount:I

.field protected mXpPlayItemCount:I

.field protected mXpPlayTitleCount:I

.field protected mZoneCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    .line 177
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    .line 100
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListVisibility:I

    const/4 p1, 0x6

    .line 106
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLineFullCount:I

    const/4 v0, 0x4

    .line 107
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine2P3Count:I

    const/4 v1, 0x3

    .line 108
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine1P3Count:I

    const/4 v2, 0x2

    .line 109
    iput v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine:I

    .line 110
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine8:I

    const/4 v3, 0x5

    .line 115
    iput v3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLineFullCount:I

    .line 116
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLine2P3Count:I

    .line 117
    iput v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLine1P3Count:I

    .line 119
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLineFullCount:I

    .line 120
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine2P3Count:I

    .line 121
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine1P3Count:I

    .line 122
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine:I

    .line 124
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLineFullCount:I

    .line 125
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine2P3Count:I

    .line 126
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine1P3Count:I

    .line 127
    iput v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine:I

    .line 129
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLineFullCount:I

    .line 130
    iput v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine2P3Count:I

    const/4 p1, 0x1

    .line 131
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine1P3Count:I

    .line 132
    iput v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine:I

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mMenuIndex:I

    .line 155
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 157
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLastVisibleItemPosition:I

    .line 158
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTotalItemCount:I

    .line 160
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mIsScreenChanged:Z

    .line 162
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopEightCount:I

    .line 163
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopCount:I

    .line 164
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mZoneCount:I

    .line 165
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmTitleCount:I

    .line 166
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmItemCount:I

    .line 167
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayTitleCount:I

    .line 168
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayItemCount:I

    .line 169
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerTitleCount:I

    .line 170
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerItemCount:I

    .line 171
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankTitleCount:I

    .line 172
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankItemCount:I

    .line 173
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioTitleCount:I

    .line 174
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioItemCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    .line 100
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListVisibility:I

    const/4 p1, 0x6

    .line 106
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLineFullCount:I

    const/4 p2, 0x4

    .line 107
    iput p2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine2P3Count:I

    const/4 v0, 0x3

    .line 108
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine1P3Count:I

    const/4 v1, 0x2

    .line 109
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine:I

    .line 110
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine8:I

    const/4 v2, 0x5

    .line 115
    iput v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLineFullCount:I

    .line 116
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLine2P3Count:I

    .line 117
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLine1P3Count:I

    .line 119
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLineFullCount:I

    .line 120
    iput p2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine2P3Count:I

    .line 121
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine1P3Count:I

    .line 122
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine:I

    .line 124
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLineFullCount:I

    .line 125
    iput p2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine2P3Count:I

    .line 126
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine1P3Count:I

    .line 127
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine:I

    .line 129
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLineFullCount:I

    .line 130
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine2P3Count:I

    const/4 p1, 0x1

    .line 131
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine1P3Count:I

    .line 132
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine:I

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mMenuIndex:I

    .line 155
    new-instance p2, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p2}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 157
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLastVisibleItemPosition:I

    .line 158
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTotalItemCount:I

    .line 160
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mIsScreenChanged:Z

    .line 162
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopEightCount:I

    .line 163
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopCount:I

    .line 164
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mZoneCount:I

    .line 165
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmTitleCount:I

    .line 166
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmItemCount:I

    .line 167
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayTitleCount:I

    .line 168
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayItemCount:I

    .line 169
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerTitleCount:I

    .line 170
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerItemCount:I

    .line 171
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankTitleCount:I

    .line 172
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankItemCount:I

    .line 173
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioTitleCount:I

    .line 174
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioItemCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    .line 100
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListVisibility:I

    const/4 p1, 0x6

    .line 106
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLineFullCount:I

    const/4 p2, 0x4

    .line 107
    iput p2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine2P3Count:I

    const/4 p3, 0x3

    .line 108
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine1P3Count:I

    const/4 v0, 0x2

    .line 109
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine:I

    .line 110
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine8:I

    const/4 v1, 0x5

    .line 115
    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLineFullCount:I

    .line 116
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLine2P3Count:I

    .line 117
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLine1P3Count:I

    .line 119
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLineFullCount:I

    .line 120
    iput p2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine2P3Count:I

    .line 121
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine1P3Count:I

    .line 122
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine:I

    .line 124
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLineFullCount:I

    .line 125
    iput p2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine2P3Count:I

    .line 126
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine1P3Count:I

    .line 127
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine:I

    .line 129
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLineFullCount:I

    .line 130
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine2P3Count:I

    const/4 p1, 0x1

    .line 131
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine1P3Count:I

    .line 132
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine:I

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mMenuIndex:I

    .line 155
    new-instance p2, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p2}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 157
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLastVisibleItemPosition:I

    .line 158
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTotalItemCount:I

    .line 160
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mIsScreenChanged:Z

    .line 162
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopEightCount:I

    .line 163
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopCount:I

    .line 164
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mZoneCount:I

    .line 165
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmTitleCount:I

    .line 166
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmItemCount:I

    .line 167
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayTitleCount:I

    .line 168
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayItemCount:I

    .line 169
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerTitleCount:I

    .line 170
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerItemCount:I

    .line 171
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankTitleCount:I

    .line 172
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankItemCount:I

    .line 173
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioTitleCount:I

    .line 174
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioItemCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .line 189
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 p1, 0x8

    .line 100
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListVisibility:I

    const/4 p1, 0x6

    .line 106
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLineFullCount:I

    const/4 p2, 0x4

    .line 107
    iput p2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine2P3Count:I

    const/4 p3, 0x3

    .line 108
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine1P3Count:I

    const/4 p4, 0x2

    .line 109
    iput p4, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine:I

    .line 110
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine8:I

    const/4 v0, 0x5

    .line 115
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLineFullCount:I

    .line 116
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLine2P3Count:I

    .line 117
    iput p4, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLine1P3Count:I

    .line 119
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLineFullCount:I

    .line 120
    iput p2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine2P3Count:I

    .line 121
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine1P3Count:I

    .line 122
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine:I

    .line 124
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLineFullCount:I

    .line 125
    iput p2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine2P3Count:I

    .line 126
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine1P3Count:I

    .line 127
    iput p4, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine:I

    .line 129
    iput p3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLineFullCount:I

    .line 130
    iput p4, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine2P3Count:I

    const/4 p1, 0x1

    .line 131
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine1P3Count:I

    .line 132
    iput p4, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine:I

    const/4 p1, 0x0

    .line 153
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mMenuIndex:I

    .line 155
    new-instance p2, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p2}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 157
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLastVisibleItemPosition:I

    .line 158
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTotalItemCount:I

    .line 160
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mIsScreenChanged:Z

    .line 162
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopEightCount:I

    .line 163
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopCount:I

    .line 164
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mZoneCount:I

    .line 165
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmTitleCount:I

    .line 166
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmItemCount:I

    .line 167
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayTitleCount:I

    .line 168
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayItemCount:I

    .line 169
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerTitleCount:I

    .line 170
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerItemCount:I

    .line 171
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankTitleCount:I

    .line 172
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankItemCount:I

    .line 173
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioTitleCount:I

    .line 174
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioItemCount:I

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;)Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    return-object p0
.end method

.method static synthetic access$102(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;I)I
    .locals 0

    .line 88
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTotalItemCount:I

    return p1
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLastVisibleItemPosition:I

    return p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;I)I
    .locals 0

    .line 88
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLastVisibleItemPosition:I

    return p1
.end method

.method private setListView()V
    .locals 14

    const/4 v0, 0x0

    .line 425
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopEightCount:I

    .line 426
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTopCount:I

    .line 427
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mZoneCount:I

    .line 428
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmTitleCount:I

    .line 429
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmItemCount:I

    .line 430
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayTitleCount:I

    .line 431
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayItemCount:I

    .line 432
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerTitleCount:I

    .line 433
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerItemCount:I

    .line 434
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankTitleCount:I

    .line 435
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankItemCount:I

    .line 436
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioTitleCount:I

    .line 437
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioItemCount:I

    .line 438
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 440
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->addTop()V

    .line 441
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRmResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;

    move-result-object v1

    const-string v2, "listsign_recommend_music"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 442
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 443
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLineFullCount:I

    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine:I

    mul-int/2addr v6, v7

    iput v6, v5, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRmMaxCount:I

    .line 444
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 445
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine2P3Count:I

    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine:I

    mul-int/2addr v6, v7

    iput v6, v5, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRmMaxCount:I

    goto :goto_0

    .line 446
    :cond_0
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 447
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine1P3Count:I

    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine:I

    mul-int/2addr v6, v7

    iput v6, v5, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRmMaxCount:I

    .line 449
    :cond_1
    :goto_0
    new-instance v5, Lbfp;

    invoke-direct {v5}, Lbfp;-><init>()V

    .line 450
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v6, v6, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRmMaxCount:I

    invoke-virtual {v5, v6}, Lbfp;->a(I)V

    .line 451
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lbfp;->a(Landroid/content/Context;)V

    .line 452
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 453
    iget v5, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmTitleCount:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmTitleCount:I

    .line 454
    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iput v5, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmStartPosition:I

    .line 455
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v6, v0

    .line 456
    :goto_1
    iget-object v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v7, v7, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRmMaxCount:I

    if-ge v6, v7, :cond_4

    .line 457
    new-instance v7, Lbge;

    invoke-direct {v7, v3}, Lbge;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 458
    iget-object v8, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8}, Lbge;->a(Landroid/content/Context;)V

    if-ge v6, v5, :cond_2

    .line 460
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;

    move-result-object v8

    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RecommentMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 461
    invoke-virtual {v8, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 462
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 463
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 464
    invoke-virtual {v8}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 465
    invoke-virtual {v7, v8}, Lbge;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 466
    invoke-virtual {v7, v6}, Lbge;->a(I)V

    .line 467
    iget-object v8, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 468
    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmItemCount:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmItemCount:I

    goto :goto_2

    .line 470
    :cond_2
    invoke-virtual {v7, v3}, Lbge;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 471
    invoke-virtual {v7, v6}, Lbge;->a(I)V

    .line 472
    iget-object v8, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 473
    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmItemCount:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmItemCount:I

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 477
    :cond_3
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iput v0, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRmMaxCount:I

    .line 479
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->addZone()V

    .line 480
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getXpResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;

    move-result-object v1

    .line 481
    iget v5, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLineFullCount:I

    .line 482
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 483
    iget v5, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLine2P3Count:I

    goto :goto_3

    .line 484
    :cond_5
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 485
    iget v5, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpLine1P3Count:I

    :cond_6
    :goto_3
    if-eqz v1, :cond_8

    .line 487
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCollectList()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCollectList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 488
    new-instance v1, Lbgm;

    invoke-direct {v1}, Lbgm;-><init>()V

    .line 489
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getXpResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCategoryId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lbgm;->a(Ljava/lang/String;)V

    .line 490
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getXpResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lbgm;->b(Ljava/lang/String;)V

    .line 491
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v1, v6}, Lbgm;->a(Landroid/content/Context;)V

    .line 492
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayTitleCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayTitleCount:I

    .line 494
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getXpResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCollectList()Ljava/util/List;

    move-result-object v1

    .line 495
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    .line 496
    invoke-virtual {v7, v2}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 499
    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getLogo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    goto :goto_4

    .line 501
    :cond_7
    invoke-static {}, Layb;->a()Layb;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getAccountType()I

    move-result v6

    invoke-virtual {v2, v6, v1}, Layb;->a(ILjava/util/List;)V

    .line 502
    new-instance v2, Lbgl;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getXpResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getCategoryId()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    .line 503
    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getXpResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/music/xpbean/XpPlayInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7, v1}, Lbgl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 504
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v1, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRmMaxCount:I

    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v6, v6, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mZoneMaxCount:I

    add-int/2addr v1, v6

    invoke-virtual {v2, v1}, Lbgl;->a(I)V

    .line 505
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbgl;->a(Landroid/content/Context;)V

    .line 506
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 507
    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayItemCount:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mXpPlayItemCount:I

    goto :goto_5

    :cond_8
    move v5, v0

    .line 512
    :goto_5
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getSingerResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;

    move-result-object v1

    .line 514
    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLineFullCount:I

    iget v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine:I

    mul-int/2addr v2, v6

    .line 515
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v6

    if-eqz v6, :cond_9

    .line 516
    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine2P3Count:I

    iget v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine:I

    :goto_6
    mul-int/2addr v2, v6

    goto :goto_7

    .line 517
    :cond_9
    iget-object v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v6

    if-eqz v6, :cond_a

    .line 518
    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine1P3Count:I

    iget v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerLine:I

    goto :goto_6

    :cond_a
    :goto_7
    if-eqz v1, :cond_c

    .line 520
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_c

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_c

    .line 521
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    .line 522
    iget-object v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    new-instance v8, Lbgi;

    invoke-direct {v8}, Lbgi;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerTitleCount:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerTitleCount:I

    move v7, v0

    :goto_8
    if-ge v7, v2, :cond_d

    if-ge v7, v6, :cond_b

    .line 526
    new-instance v8, Lbgh;

    invoke-direct {v8, v3}, Lbgh;-><init>(Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;)V

    .line 527
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean;->getData()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;

    invoke-virtual {v8, v9}, Lbgh;->a(Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;)V

    .line 528
    iget-object v9, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v9, v9, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRmMaxCount:I

    iget-object v10, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v10, v10, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mZoneMaxCount:I

    add-int/2addr v9, v10

    add-int/2addr v9, v5

    add-int/2addr v9, v7

    add-int/2addr v9, v4

    invoke-virtual {v8, v9}, Lbgh;->a(I)V

    .line 529
    invoke-virtual {v8, v7}, Lbgh;->b(I)V

    .line 530
    iget-object v9, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v9}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v8, v9}, Lbgh;->a(Landroid/content/Context;)V

    .line 531
    iget-object v9, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    iget v8, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerItemCount:I

    add-int/2addr v8, v4

    iput v8, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerItemCount:I

    goto :goto_9

    .line 534
    :cond_b
    new-instance v8, Lbgh;

    invoke-direct {v8, v3}, Lbgh;-><init>(Lcom/xiaopeng/musicradio/bean/music/xpbean/MainHotSingerResultBean$DataBean$ArtistGroupsBean$ListBean;)V

    .line 535
    invoke-virtual {v8, v7}, Lbgh;->a(I)V

    .line 536
    iget-object v9, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 537
    iget v8, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerItemCount:I

    add-int/2addr v8, v4

    iput v8, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSingerItemCount:I

    :goto_9
    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_c
    move v2, v0

    .line 544
    :cond_d
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRankResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;

    move-result-object v1

    .line 545
    iget v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLineFullCount:I

    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine:I

    mul-int/2addr v6, v7

    .line 546
    iget-object v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 547
    iget v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine2P3Count:I

    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine:I

    :goto_a
    mul-int/2addr v6, v7

    goto :goto_b

    .line 548
    :cond_e
    iget-object v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 549
    iget v6, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine1P3Count:I

    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankLine:I

    goto :goto_a

    :cond_f
    :goto_b
    if-eqz v1, :cond_12

    .line 551
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_12

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_12

    .line 552
    iget-object v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    new-instance v8, Lbfy;

    invoke-direct {v8}, Lbfy;-><init>()V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 553
    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankTitleCount:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankTitleCount:I

    .line 554
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v8, v0

    :goto_c
    if-ge v8, v6, :cond_13

    if-ge v8, v7, :cond_11

    .line 557
    new-instance v9, Lbfx;

    invoke-direct {v9, v3}, Lbfx;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 558
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/music/xpbean/RankMusicResult$DataBean;->getList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    const-string v11, "listsign_rank_music"

    .line 559
    invoke-virtual {v10, v11}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 560
    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 561
    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 564
    iget v11, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAccountType:I

    if-ne v11, v4, :cond_10

    .line 565
    invoke-static {}, Lbit;->a()Lbit;

    move-result-object v11

    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getRankId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->getImgUrl()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Lbit;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    :cond_10
    invoke-virtual {v9, v10}, Lbfx;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 568
    iget-object v10, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v10, v10, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRmMaxCount:I

    iget-object v11, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v11, v11, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mZoneMaxCount:I

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    add-int/2addr v10, v2

    add-int/2addr v10, v8

    add-int/2addr v10, v4

    invoke-virtual {v9, v10}, Lbfx;->a(I)V

    .line 570
    iget-object v10, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lbfx;->a(Landroid/content/Context;)V

    .line 571
    iget-object v10, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 572
    iget v9, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankItemCount:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankItemCount:I

    goto :goto_d

    .line 574
    :cond_11
    new-instance v9, Lbfx;

    invoke-direct {v9, v3}, Lbfx;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 575
    invoke-virtual {v9, v8}, Lbfx;->a(I)V

    .line 576
    iget-object v10, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    iget v9, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankItemCount:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRankItemCount:I

    :goto_d
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_c

    :cond_12
    move v6, v0

    .line 583
    :cond_13
    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLineFullCount:I

    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine:I

    mul-int/2addr v1, v7

    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioMaxCount:I

    .line 584
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 585
    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine2P3Count:I

    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine:I

    mul-int/2addr v1, v7

    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioMaxCount:I

    goto :goto_e

    .line 586
    :cond_14
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 587
    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine1P3Count:I

    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine:I

    mul-int/2addr v1, v7

    iput v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioMaxCount:I

    .line 589
    :cond_15
    :goto_e
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/ConResult;->getRadioResult()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;

    move-result-object v1

    if-eqz v1, :cond_19

    .line 590
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v7

    if-eqz v7, :cond_19

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_19

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_19

    .line 591
    new-instance v7, Lbfo;

    iget v8, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioMaxCount:I

    invoke-direct {v7, v8}, Lbfo;-><init>(I)V

    .line 592
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getAccountType()I

    move-result v8

    invoke-virtual {v7, v8}, Lbfo;->a(I)V

    .line 593
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getAccountType()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_16

    .line 594
    invoke-virtual {v7, v0}, Lbfo;->a(Z)V

    goto :goto_f

    .line 596
    :cond_16
    invoke-virtual {v7, v4}, Lbfo;->a(Z)V

    .line 598
    :goto_f
    iget-object v8, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 599
    iget v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioTitleCount:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioTitleCount:I

    .line 600
    iget-object v7, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget-object v8, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    iput v8, v7, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRadioStartPosition:I

    .line 601
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v7

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v8, v0

    .line 602
    :goto_10
    iget v9, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioMaxCount:I

    if-ge v8, v9, :cond_19

    .line 603
    new-instance v9, Lbfu;

    invoke-direct {v9, v3}, Lbfu;-><init>(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    if-ge v8, v7, :cond_18

    .line 605
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult;->getData()Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;

    move-result-object v10

    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean;->getList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;

    .line 606
    new-instance v11, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-direct {v11}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;-><init>()V

    const-string v12, "listsign_tags"

    .line 607
    invoke-virtual {v11, v12}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setType(Ljava/lang/String;)V

    .line 608
    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setName(Ljava/lang/String;)V

    .line 609
    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setTitle(Ljava/lang/String;)V

    .line 610
    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioPic()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setLogoUrl(Ljava/lang/String;)V

    .line 611
    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioId()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_17

    .line 612
    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    goto :goto_11

    .line 614
    :cond_17
    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/bean/music/xpbean/HotRadioResult$DataBean$ListBean;->getRadioId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;->setId(Ljava/lang/String;)V

    .line 616
    :goto_11
    invoke-virtual {v9, v11}, Lbfu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 617
    iget-object v10, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v10, v10, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRmMaxCount:I

    iget-object v11, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v11, v11, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mZoneMaxCount:I

    add-int/2addr v10, v11

    add-int/2addr v10, v5

    add-int/2addr v10, v2

    add-int/2addr v10, v6

    add-int/2addr v10, v8

    add-int/2addr v10, v4

    invoke-virtual {v9, v10}, Lbfu;->a(I)V

    .line 619
    iget-object v10, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v10}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v9, v10}, Lbfu;->a(Landroid/content/Context;)V

    .line 620
    iget-object v10, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 621
    iget v9, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioItemCount:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioItemCount:I

    goto :goto_12

    .line 623
    :cond_18
    invoke-virtual {v9, v3}, Lbfu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    .line 624
    invoke-virtual {v9, v8}, Lbfu;->a(I)V

    .line 625
    iget-object v10, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 626
    iget v9, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioItemCount:I

    add-int/2addr v9, v4

    iput v9, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioItemCount:I

    :goto_12
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_10

    .line 631
    :cond_19
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/util/List;)V

    .line 632
    iput-boolean v4, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mHasData:Z

    .line 633
    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mIsScreenChanged:Z

    if-eqz v1, :cond_1d

    .line 634
    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLastVisibleItemPosition:I

    if-lez v1, :cond_1c

    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTotalItemCount:I

    if-lez v2, :cond_1c

    .line 635
    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mFirstVisibleItemPosition:I

    if-nez v2, :cond_1a

    .line 636
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d(I)V

    goto :goto_13

    .line 638
    :cond_1a
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mTotalItemCount:I

    div-int/2addr v1, v2

    .line 639
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v4

    if-le v1, v2, :cond_1b

    .line 640
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v4

    .line 642
    :cond_1b
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->d(I)V

    .line 645
    :cond_1c
    :goto_13
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mIsScreenChanged:Z

    .line 647
    :cond_1d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setListView: mList.size() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicConLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemViewCacheSize(I)V

    .line 649
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/16 v1, 0x320

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->updateVuiScene(I)V

    return-void
.end method


# virtual methods
.method public getAccountType()I
    .locals 1

    .line 698
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->getAccountType()I

    move-result v0

    return v0
.end method

.method public getAdapter()Lcom/xiaopeng/musicradio/widget/recyclerview/e;
    .locals 1

    .line 706
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 714
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    return-object v0
.end method

.method public getListView()Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;
    .locals 1

    .line 710
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    return-object v0
.end method

.method public handleRadioData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 653
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 654
    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioMaxCount:I

    if-le v0, v1, :cond_0

    move v0, v1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 658
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v3, v3, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRadioStartPosition:I

    add-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbfu;

    .line 659
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v2, v3}, Lbfu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v1, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRadioStartPosition:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public handleRmData(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;",
            ">;)V"
        }
    .end annotation

    .line 665
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 666
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v1, v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRmMaxCount:I

    if-le v0, v1, :cond_0

    .line 667
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    iget v0, v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->mRmMaxCount:I

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 670
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    iget v3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmStartPosition:I

    add-int/2addr v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbge;

    .line 671
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;

    invoke-virtual {v2, v3}, Lbge;->a(Lcom/xiaopeng/musicradio/bean/db/MusicRadioItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 673
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmStartPosition:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->notifyItemRangeChanged(II)V

    return-void
.end method

.method protected initBinder()V
    .locals 5

    .line 322
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->registerTop()V

    .line 323
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->registerZone()V

    .line 325
    new-instance v0, Lbgd;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-direct {v0, v1}, Lbgd;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;)V

    .line 326
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v2, Lbfp;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbfp;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 329
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 331
    new-instance v0, Lbgc;

    invoke-direct {v0}, Lbgc;-><init>()V

    .line 332
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v3, Lbge;

    invoke-virtual {v1, v3, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbge;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 335
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/16 v3, 0xc

    invoke-virtual {v1, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 337
    new-instance v0, Lbgk;

    invoke-direct {v0}, Lbgk;-><init>()V

    .line 338
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v4, Lbgm;

    invoke-virtual {v1, v4, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 340
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbgm;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 341
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 343
    new-instance v0, Lbgj;

    invoke-direct {v0}, Lbgj;-><init>()V

    .line 344
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v4, Lbgl;

    invoke-virtual {v1, v4, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 346
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbgl;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 347
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 349
    new-instance v0, Lbgg;

    invoke-direct {v0}, Lbgg;-><init>()V

    .line 350
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v4, Lbgi;

    invoke-virtual {v1, v4, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 352
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbgi;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 353
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 355
    new-instance v0, Lbgf;

    invoke-direct {v0}, Lbgf;-><init>()V

    .line 356
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v4, Lbgh;

    invoke-virtual {v1, v4, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbgh;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 359
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 361
    new-instance v0, Lbfw;

    invoke-direct {v0}, Lbfw;-><init>()V

    .line 362
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v3, Lbfy;

    invoke-virtual {v1, v3, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbfy;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 365
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 367
    new-instance v0, Lbfv;

    invoke-direct {v0}, Lbfv;-><init>()V

    .line 368
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v3, Lbfx;

    invoke-virtual {v1, v3, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbfx;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 371
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v3}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 373
    new-instance v0, Lbft;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-direct {v0, v1}, Lbft;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;)V

    .line 374
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v3, Lbfo;

    invoke-virtual {v1, v3, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbfo;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 377
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    .line 379
    new-instance v0, Lbfs;

    invoke-direct {v0}, Lbfs;-><init>()V

    .line 380
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    const-class v2, Lbfu;

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a(Ljava/lang/Class;Lme/drakeet/multitype/c;)V

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->a()Lme/drakeet/multitype/g;

    move-result-object v0

    const-class v1, Lbfu;

    invoke-interface {v0, v1}, Lme/drakeet/multitype/g;->b(Ljava/lang/Class;)I

    move-result v0

    .line 383
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;->setMaxRecycledViews(II)V

    return-void
.end method

.method public isHasData()Z
    .locals 1

    .line 759
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mHasData:Z

    return v0
.end method

.method public loadData()V
    .locals 1

    const/4 v0, 0x0

    .line 316
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mHasData:Z

    .line 317
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;->loadData()V

    return-void
.end method

.method public loadPerformClick()V
    .locals 2

    .line 749
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 750
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->performClick()Z

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 688
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 689
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 690
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    const/4 p1, 0x1

    .line 691
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mIsScreenChanged:Z

    .line 692
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onConfigurationChanged: ========threeOne = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isThreeTwo = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicConLayout"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->reviewOnScreenChange()V

    :cond_0
    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 2

    .line 403
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAverageGridDecorationFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 406
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAverageGridDecoration2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAverageGridDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAverageGridDecoration2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 413
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAverageGridDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 414
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    goto :goto_0

    .line 416
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAverageGridDecorationFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 420
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->setListView()V

    :cond_2
    return-void
.end method

.method public setAccountType(I)V
    .locals 0

    .line 755
    iput p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAccountType:I

    return-void
.end method

.method public setConFragment(Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;)V
    .locals 0

    .line 702
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConFragment:Lcom/xiaopeng/musicradio/music/concentration/main/view/MsConcentrationFragment;

    return-void
.end method

.method public setView()V
    .locals 7

    .line 193
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mMenuIndex:I

    .line 194
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lbez$f;->music_con_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 195
    sget v0, Lbez$d;->music_rv_list:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 196
    sget v0, Lbez$d;->music_loading_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 197
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->Y(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setAutoClickLoadingEnable(Z)V

    const/4 v0, 0x1

    .line 211
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->showLoadingTip(I)V

    .line 212
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 214
    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine2P3Count:I

    iget v3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine2P3Count:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount2P3:I

    .line 215
    new-instance v2, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount2P3:I

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    .line 216
    new-instance v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanSizeLookup2P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 235
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLayoutManager2P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanSizeLookup2P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 236
    new-instance v2, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget v3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount2P3:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbez$b;->item_space_50:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lbez$b;->item_space_36:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAverageGridDecoration2P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    .line 238
    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLine1P3Count:I

    iget v3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLine1P3Count:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount1P3:I

    .line 239
    new-instance v2, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount1P3:I

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    .line 240
    new-instance v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanSizeLookup1P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 259
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLayoutManager1P3:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanSizeLookup1P3:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 260
    new-instance v2, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget v3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCount1P3:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbez$b;->item_space_50:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lbez$b;->item_space_36:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAverageGridDecoration1P3:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    .line 262
    iget v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRmLineFullCount:I

    iget v3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mRadioLineFullCount:I

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCountFull:I

    .line 263
    new-instance v2, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v4, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCountFull:I

    invoke-direct {v2, v3, v4}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    .line 264
    new-instance v2, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$4;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanSizeLookupFull:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    .line 283
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLayoutManagerFull:Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanSizeLookupFull:Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/widget/WrapContentGridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 284
    new-instance v2, Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    iget v3, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mSpanCountFull:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lbez$b;->item_space_50:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lbez$b;->item_space_36:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-direct {v2, v3, v1, v4, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/a;-><init>(IZII)V

    iput-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAverageGridDecorationFull:Lcom/xiaopeng/musicradio/widget/recyclerview/a;

    .line 285
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 287
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mList:Ljava/util/List;

    .line 288
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$5;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$5;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 298
    sget v0, Lbez$e;->content_top_spacing:I

    invoke-static {v0}, Lbxo;->b(I)I

    move-result v0

    .line 299
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v3, Lcom/xiaopeng/musicradio/widget/recyclerview/j;

    invoke-direct {v3, v1, v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/j;-><init>(III)V

    invoke-virtual {v2, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 301
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$6;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method public showData(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V
    .locals 1

    .line 388
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mConResult:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    .line 389
    iget p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListVisibility:I

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 390
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 391
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListVisibility:I

    .line 393
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->reviewOnScreenChange()V

    .line 394
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->showLoadingTip(I)V

    const-string p1, "MusicConLayout"

    const-string v0, "showData: "

    .line 395
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public showErrorView()V
    .locals 2

    .line 719
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    if-eqz v0, :cond_0

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showErrorView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicConLayout"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mAdapter:Lcom/xiaopeng/musicradio/widget/recyclerview/e;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/e;->getItemCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    .line 723
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->showLoadingTip(I)V

    .line 724
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    .line 725
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListVisibility:I

    return-void

    .line 728
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/16 v0, 0x8

    .line 729
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListVisibility:I

    const/4 v0, 0x2

    .line 730
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->showLoadingTip(I)V

    return-void
.end method

.method public showListView()V
    .locals 2

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    return-void
.end method

.method protected showLoadingTip(I)V
    .locals 2

    .line 740
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    .line 744
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    goto :goto_1

    .line 742
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mLoadingTipsView:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setClickable(Z)V

    :goto_1
    return-void
.end method

.method public showLoadingView()V
    .locals 2

    .line 734
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setVisibility(I)V

    const/16 v0, 0x8

    .line 735
    iput v0, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->mListVisibility:I

    const/4 v0, 0x1

    .line 736
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;->showLoadingTip(I)V

    return-void
.end method

.method public updateVuiScene()V
    .locals 4

    .line 677
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout$7;-><init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/MusicConLayout;)V

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
