.class public Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;
.super Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.source "SearchResultMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/search/result/view/f;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    path = "/search/fragment/home/search_result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/view/MusicVuiFragment<",
        "Lcom/xiaopeng/musicradio/search/result/view/f;",
        "Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainQQPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/search/result/view/f;"
    }
.end annotation


# static fields
.field public static KEYWORD:Ljava/lang/String; = "keyword"

.field private static final TAG:Ljava/lang/String; = "SearchResultMainFragment"

.field private static final TITLE_TEXT_SIZE:F = 56.0f


# instance fields
.field private mFirstResume:Z

.field private mIndex:I

.field private mOffscreenPageLimit:I

.field private mSearchTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field private mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

.field private mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

.field private mTabs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/tabs/TabLayout$f;",
            ">;"
        }
    .end annotation
.end field

.field private mTopTabMap:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:Ljava/lang/String;

.field private mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

.field protected mViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected mVoiceListStr:Ljava/lang/String;

.field protected mVoiceSearchType:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;-><init>()V

    .line 68
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    .line 69
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTopTabMap:Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    .line 76
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mFirstResume:Z

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTabs:Ljava/util/List;

    const/4 v0, 0x4

    .line 85
    iput v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mOffscreenPageLimit:I

    return-void
.end method

.method private BuildFragmentScene()V
    .locals 5

    .line 366
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->isMainScene()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->initTab()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)Ljava/util/List;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTabs:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)Lcom/xiaopeng/xui/widget/XTabLayout_V5;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)Lcom/xiaopeng/xui/widget/XViewPager;
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    return-object p0
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->setViewPosition()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;I)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->setViewPageState(I)V

    return-void
.end method

.method private initTab()V
    .locals 5

    .line 199
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0}, Lbnz;->c()I

    move-result v0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTopBar: Enter page Value is:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SearchResultMainFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->e()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 203
    sget v0, Lcom/xiaopeng/musicradio/search/a$f;->tab_main_qq_music:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTopTabMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 205
    :cond_0
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->c()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 206
    sget v0, Lcom/xiaopeng/musicradio/search/a$f;->tab_main_netease_music:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTopTabMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 208
    :cond_1
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->d()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 209
    sget v0, Lcom/xiaopeng/musicradio/search/a$f;->tab_main_kugoo_music:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 210
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTopTabMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :cond_2
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->f()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 212
    sget v0, Lcom/xiaopeng/musicradio/search/a$f;->tab_main_read:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 213
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTopTabMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 214
    :cond_3
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->g()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 215
    sget v0, Lcom/xiaopeng/musicradio/search/a$f;->tab_main_radio:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTopTabMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 218
    :cond_4
    sget v0, Lcom/xiaopeng/musicradio/search/a$f;->tab_main_qq_music:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTopTabMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTabs:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-static {v2, v0}, Lcom/xiaopeng/musicradio/utils/bu;->a(Lcom/xiaopeng/xui/widget/XTabLayout_V5;Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTopTabMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 223
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 224
    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTabs:Ljava/util/List;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-static {v4, v2}, Lcom/xiaopeng/musicradio/utils/bu;->a(Lcom/xiaopeng/xui/widget/XTabLayout_V5;Ljava/lang/String;)Lcom/google/android/material/tabs/TabLayout$f;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTopTabMap:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method private setTopBar()V
    .locals 5

    .line 155
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object v0

    const-class v1, Lbfe;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbfe;

    .line 156
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v1

    invoke-virtual {v1}, Lbdt;->h()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/xiaopeng/musicradio/search/a$e;->layout_search_mix:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 158
    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTopTabMap:Ljava/util/LinkedHashMap;

    sget v4, Lcom/xiaopeng/musicradio/search/a$f;->tab_main_qq_music:I

    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_0
    invoke-interface {v0}, Lbfe;->isNeteaseInstalled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 161
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v3, Lcom/xiaopeng/musicradio/search/a$e;->layout_search_netease_mix:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 162
    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTopTabMap:Ljava/util/LinkedHashMap;

    sget v4, Lcom/xiaopeng/musicradio/search/a$f;->tab_main_netease_music:I

    invoke-static {v4}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    :cond_1
    invoke-interface {v0}, Lbfe;->isKugouInstalled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/search/a$e;->layout_search_kugou_mix:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 166
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTopTabMap:Ljava/util/LinkedHashMap;

    sget v3, Lcom/xiaopeng/musicradio/search/a$f;->tab_main_kugoo_music:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    :cond_2
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->j()I

    move-result v0

    if-ltz v0, :cond_3

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/search/a$e;->layout_search_net_radio:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTopTabMap:Ljava/util/LinkedHashMap;

    sget v3, Lcom/xiaopeng/musicradio/search/a$f;->tab_main_radio:I

    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_3
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->i()I

    move-result v0

    if-ltz v0, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/search/a$e;->layout_search_program:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 174
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTopTabMap:Ljava/util/LinkedHashMap;

    sget v2, Lcom/xiaopeng/musicradio/search/a$f;->tab_main_read:I

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 177
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;-><init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setViewPageState(I)V
    .locals 6

    .line 252
    iput p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mIndex:I

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateView: start:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchResultMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    move v2, v0

    .line 254
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 255
    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_9

    if-ne v2, p1, :cond_4

    .line 258
    instance-of v4, v3, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;

    if-eqz v4, :cond_0

    .line 259
    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->setSceneId(Ljava/lang/String;)V

    .line 260
    sget-object v5, Lbya;->NORMAL:Lbya;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->setRecyclerState(Lbya;)V

    .line 261
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->i()V

    .line 262
    invoke-static {v0}, Lbom;->c(I)V

    .line 264
    :cond_0
    instance-of v4, v3, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;

    if-eqz v4, :cond_1

    .line 265
    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;->setSceneId(Ljava/lang/String;)V

    .line 266
    sget-object v5, Lbya;->NORMAL:Lbya;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;->setRecyclerState(Lbya;)V

    .line 267
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;->i()V

    const/4 v4, 0x1

    .line 268
    invoke-static {v4}, Lbom;->c(I)V

    .line 270
    :cond_1
    instance-of v4, v3, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;

    if-eqz v4, :cond_2

    .line 271
    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->setSceneId(Ljava/lang/String;)V

    .line 272
    sget-object v5, Lbya;->NORMAL:Lbya;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->setRecyclerState(Lbya;)V

    .line 273
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->i()V

    const/4 v4, 0x2

    .line 274
    invoke-static {v4}, Lbom;->c(I)V

    .line 276
    :cond_2
    instance-of v4, v3, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;

    if-eqz v4, :cond_3

    .line 277
    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->setSceneId(Ljava/lang/String;)V

    .line 278
    sget-object v5, Lbya;->NORMAL:Lbya;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->setRecyclerState(Lbya;)V

    .line 279
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->g()V

    const/4 v4, 0x3

    .line 280
    invoke-static {v4}, Lbom;->c(I)V

    .line 282
    :cond_3
    instance-of v4, v3, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;

    if-eqz v4, :cond_9

    .line 283
    check-cast v3, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;->setSceneId(Ljava/lang/String;)V

    .line 284
    sget-object v4, Lbya;->NORMAL:Lbya;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;->setRecyclerState(Lbya;)V

    .line 285
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;->g()V

    const/4 v3, 0x4

    .line 286
    invoke-static {v3}, Lbom;->c(I)V

    goto :goto_1

    .line 290
    :cond_4
    instance-of v4, v3, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;

    if-eqz v4, :cond_5

    .line 291
    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->setSceneId(Ljava/lang/String;)V

    .line 292
    sget-object v5, Lbya;->DISABLED:Lbya;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->setRecyclerState(Lbya;)V

    .line 294
    :cond_5
    instance-of v4, v3, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;

    if-eqz v4, :cond_6

    .line 295
    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;->setSceneId(Ljava/lang/String;)V

    .line 296
    sget-object v5, Lbya;->DISABLED:Lbya;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;->setRecyclerState(Lbya;)V

    .line 298
    :cond_6
    instance-of v4, v3, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;

    if-eqz v4, :cond_7

    .line 299
    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->setSceneId(Ljava/lang/String;)V

    .line 300
    sget-object v5, Lbya;->DISABLED:Lbya;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->setRecyclerState(Lbya;)V

    .line 302
    :cond_7
    instance-of v4, v3, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;

    if-eqz v4, :cond_8

    .line 303
    move-object v4, v3

    check-cast v4, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->setSceneId(Ljava/lang/String;)V

    .line 304
    sget-object v5, Lbya;->DISABLED:Lbya;

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->setRecyclerState(Lbya;)V

    .line 306
    :cond_8
    instance-of v4, v3, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;

    if-eqz v4, :cond_9

    .line 307
    check-cast v3, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;->setSceneId(Ljava/lang/String;)V

    .line 308
    sget-object v4, Lbya;->DISABLED:Lbya;

    invoke-virtual {v3, v4}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;->setRecyclerState(Lbya;)V

    :cond_9
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 313
    :cond_a
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->BuildFragmentScene()V

    const-string p1, "updateView: tab update viewpager update"

    .line 314
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setViewPosition()V
    .locals 3

    const/4 v0, 0x0

    .line 231
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 232
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 233
    instance-of v2, v1, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;

    if-eqz v2, :cond_0

    .line 234
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixQQLayout;->setPosition(I)V

    .line 236
    :cond_0
    instance-of v2, v1, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;

    if-eqz v2, :cond_1

    .line 237
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixNeteaseLayout;->setPosition(I)V

    .line 239
    :cond_1
    instance-of v2, v1, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;

    if-eqz v2, :cond_2

    .line 240
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/search/result/mix/view/SearchResultMixKugouLayout;->setPosition(I)V

    .line 242
    :cond_2
    instance-of v2, v1, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;

    if-eqz v2, :cond_3

    .line 243
    move-object v2, v1

    check-cast v2, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/musicradio/search/result/program/view/SearchResultProgramLayout;->setPosition(I)V

    .line 245
    :cond_3
    instance-of v2, v1, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;

    if-eqz v2, :cond_4

    .line 246
    check-cast v1, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/search/result/netradio/view/SearchResultNetRadioLayout;->setPosition(I)V

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->createPresenter()Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainQQPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainQQPresenter;
    .locals 1

    .line 424
    new-instance v0, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainQQPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/result/presenter/SearchResultMainQQPresenter;-><init>()V

    return-object v0
.end method

.method protected createViewAgain()V
    .locals 0

    .line 353
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->createViewAgain()V

    return-void
.end method

.method protected findView()V
    .locals 1

    .line 94
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->search_bar_history:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    .line 95
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->layout_search_keyword:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mSearchTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 96
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->tab_search_result_main:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    .line 97
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->viewpager:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XViewPager;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    .line 98
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->configuration_changed_view:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    return-void
.end method

.method protected getArgumentParam(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 441
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 442
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getArgumentParam: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchResultMainFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getContentViewId()I
    .locals 1

    .line 89
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->fragment_search_result_main:I

    return v0
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 362
    iget v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->ab(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelectTab()I
    .locals 1

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/widget/XViewPager;->getCurrentItem()I

    move-result v0

    return v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 377
    new-array v0, v0, [Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->am(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mMenuIndex:I

    invoke-static {v1}, Lcom/xiaopeng/musicradio/vui/c;->X(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public onBuildScene()V
    .locals 0

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 455
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 472
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onDestroy()V

    .line 473
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 474
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v1, :cond_0

    .line 475
    instance-of v2, v1, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;

    if-eqz v2, :cond_0

    .line 476
    check-cast v1, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseLinearLayout;->l()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 319
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->onResume()V

    return-void
.end method

.method protected popBackStack(Landroidx/activity/b;)V
    .locals 4

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    const-string v1, " this = "

    const-string v2, "SearchResultMainFragment"

    if-lez v0, :cond_0

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleOnBackPressed child pop: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0

    .line 148
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleOnBackPressed self pop: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v0, Lbnw$a;

    invoke-direct {v0}, Lbnw$a;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 150
    invoke-virtual {p1, v0}, Landroidx/activity/b;->a(Z)V

    :goto_0
    return-void
.end method

.method public reviewOnScreenChange()V
    .locals 3

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mSearchTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v1

    invoke-virtual {v1}, Lbnz;->d()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 465
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mSearchTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->search_history_keywords:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 466
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mSearchTopBar:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public searchDataLoad(I)V
    .locals 1

    .line 435
    iget v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mIndex:I

    if-ne p1, v0, :cond_0

    .line 436
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->setViewPageState(I)V

    :cond_0
    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$3;-><init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addOnTabSelectedListener(Lcom/google/android/material/tabs/TabLayout$c;)V

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$4;-><init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$f;)V

    return-void
.end method

.method protected setView()V
    .locals 5

    .line 103
    invoke-super {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setView()V

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "voice_search_type"

    .line 106
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getArgumentParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mVoiceSearchType:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const-string v0, "voice_list"

    .line 111
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getArgumentParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mVoiceListStr:Ljava/lang/String;

    const-string v1, "voice_list_version"

    .line 112
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getArgumentParam(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mVersion:Ljava/lang/String;

    .line 113
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 114
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mVersion:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lbnz;->c(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mVersion:Ljava/lang/String;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    .line 116
    iget v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mVoiceSearchType:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_1

    .line 117
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v2

    invoke-virtual {v2, v4}, Lbnz;->e(I)V

    goto :goto_0

    :cond_1
    if-ne v2, v3, :cond_2

    .line 119
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v2

    invoke-virtual {v2, v3}, Lbnz;->e(I)V

    .line 121
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mVoiceListStr:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_3
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v2

    iget v4, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mVoiceSearchType:I

    invoke-virtual {v2, v4}, Lbnz;->e(I)V

    .line 124
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mVoiceListStr:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViewPager:Lcom/xiaopeng/xui/widget/XViewPager;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mOffscreenPageLimit:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XViewPager;->setOffscreenPageLimit(I)V

    .line 127
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->setTopBar()V

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mSearchTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mSearchTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$1;-><init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mSearchTitle:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->search_result_title:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 138
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->reviewOnScreenChange()V

    .line 139
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->BuildFragmentScene()V

    return-void
.end method

.method public updateTitle()V
    .locals 0

    return-void
.end method
