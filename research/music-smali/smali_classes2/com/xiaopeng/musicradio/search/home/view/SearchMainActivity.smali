.class public Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;
.source "SearchMainActivity.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/search/home/view/b;


# annotations
.annotation build Lcom/alibaba/android/arouter/facade/annotation/Route;
    extras = 0x1
    path = "/search/activity/main"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment<",
        "Lcom/xiaopeng/musicradio/search/home/view/b;",
        "Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/search/home/view/b;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SearchMainActivity"


# instance fields
.field private mFragmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field protected mFragmentUri:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "fragment_uri"
    .end annotation
.end field

.field private mKeyWord:Ljava/lang/String;

.field private mMeunIndex:I

.field protected mVersion:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "voice_list_version"
    .end annotation
.end field

.field protected mVoiceResultListString:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "search_voice_result"
    .end annotation
.end field

.field protected mVoiceResultTotalPage:I
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "search_voice_total_page"
    .end annotation
.end field

.field protected mVoiceSearchKeyword:Ljava/lang/String;
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "search_voice_keyword"
    .end annotation
.end field

.field protected mVoiceSearchType:I
    .annotation build Lcom/alibaba/android/arouter/facade/annotation/Autowired;
        name = "search_voice_type"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;-><init>()V

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 75
    iput v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mMeunIndex:I

    const-string v0, ""

    .line 77
    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mKeyWord:Ljava/lang/String;

    return-void
.end method

.method private backToSearchHome()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;->d()Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getTopFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "/search/fragment/home/main"

    .line 381
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->addFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 383
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private genFragmentFromArouterUri(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .line 423
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "/search/fragment/home/main"

    if-eqz v0, :cond_0

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1

    .line 426
    :cond_0
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    invoke-virtual {v0, p1}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 427
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 428
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private getBundleValue(Landroid/content/Intent;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "fragment_uri"

    .line 110
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_1

    move-object v0, v2

    .line 114
    :cond_1
    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    const-string v0, "search_voice_result"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 116
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v0, v2

    .line 119
    :cond_2
    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceResultListString:Ljava/lang/String;

    const-string v0, "search_voice_keyword"

    .line 120
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    move-object v0, v2

    .line 124
    :cond_3
    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceSearchKeyword:Ljava/lang/String;

    const-string v1, "voice_list_version"

    .line 125
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v2

    .line 129
    :cond_4
    iput-object v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVersion:Ljava/lang/String;

    const/4 v1, -0x1

    const-string v2, "search_voice_type"

    .line 130
    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 131
    iput v2, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceSearchType:I

    const-string v3, "search_voice_total_page"

    .line 132
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 133
    iput v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceResultTotalPage:I

    const/4 v1, 0x0

    const-string v3, "voice_search_new_ver"

    .line 134
    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 135
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getBundleValue uri: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",type:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",keyword:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SearchMainActivity"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private handleBack()V
    .locals 3

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBack topFragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getTopFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchMainActivity"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getTopFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;

    if-nez v0, :cond_0

    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getTopFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    const-string v1, "/search/fragment/home/main"

    .line 192
    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->addFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 196
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "/search/activity/main"

    invoke-static {v0, v2}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;)V

    const-string v0, "handleBack: pop"

    .line 197
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleFragmentUri()V
    .locals 6

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFragmentUri mFragmentUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchMainActivity"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    const-string v2, "voice_search_type=1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    const-string v2, "voice_search_type=2"

    .line 294
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    const-string v2, "&voice_list="

    .line 295
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;->b(Z)V

    .line 299
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getTopFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 300
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getTopFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    if-eqz v0, :cond_3

    .line 301
    new-instance v0, Lasi$d;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceResultListString:Ljava/lang/String;

    iget v3, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceSearchType:I

    iget v4, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceResultTotalPage:I

    iget-object v5, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVersion:Ljava/lang/String;

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-direct {v0, v2, v3, v4, v1}, Lasi$d;-><init>(Ljava/lang/String;IIZ)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_1

    .line 303
    :cond_3
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->handleSearchUri()V

    goto :goto_1

    .line 306
    :cond_4
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->handleSearchUri()V

    :goto_1
    return-void
.end method

.method private handleSearchUri()V
    .locals 5

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleSearchUri mFragmentUri:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchMainActivity"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "/search/activity/main"

    if-nez v0, :cond_1

    .line 314
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->c(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 315
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 316
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 317
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->addFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 321
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->error_no_fragment_url:I

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;I)V

    .line 324
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 327
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object v0

    sget v2, Lcom/xiaopeng/musicradio/common/k$g;->error_no_fragment_url:I

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;I)V

    .line 329
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private handleVoiceSearchResult()V
    .locals 3

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceResultListString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 389
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceResultListString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbnz;->b(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceSearchKeyword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 392
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceSearchKeyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbnz;->a(Ljava/lang/String;)V

    .line 394
    :cond_0
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceSearchType:I

    invoke-virtual {v0, v1}, Lbnz;->e(I)V

    .line 395
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbnz;->c(Ljava/lang/String;)V

    .line 396
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceResultTotalPage:I

    invoke-virtual {v0, v1}, Lbnz;->d(I)V

    .line 397
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 398
    new-instance v0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity$1;-><init>(Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;)V

    const-wide/16 v1, 0x3e8

    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    const/4 v0, 0x0

    .line 404
    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceResultListString:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method private initFragmentParams()V
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFragmentParams mFragmentUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchMainActivity"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpp;->a(Ljava/lang/Object;)V

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/search/fragment/home/main"

    .line 276
    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    :cond_0
    return-void
.end method


# virtual methods
.method public addFragment(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 410
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->genFragmentFromArouterUri(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 411
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFragment uri:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", params:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", fragment:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SearchMainActivity"

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 413
    invoke-virtual {v0, p2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getTopFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    if-nez p1, :cond_1

    .line 416
    sget p1, Lcom/xiaopeng/musicradio/search/a$d;->container:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->loadRootFragment(ILandroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 418
    :cond_1
    sget p1, Lcom/xiaopeng/musicradio/search/a$d;->container:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->replace(ILandroidx/fragment/app/Fragment;Z)V

    :goto_0
    return-void
.end method

.method public closeSearch()V
    .locals 2

    const-string v0, "/search/fragment/home/main"

    const/4 v1, 0x0

    .line 250
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->addFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 251
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/search/activity/main"

    invoke-static {v0, v1}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->createPresenter()Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;
    .locals 1

    .line 84
    new-instance v0, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;-><init>()V

    return-object v0
.end method

.method public exit()V
    .locals 2

    const-string v0, "SearchMainActivity"

    const-string v1, "exit: "

    .line 352
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public findView()V
    .locals 0

    return-void
.end method

.method protected getContentViewId()I
    .locals 1

    .line 89
    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->activity_search_main:I

    return v0
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 2

    .line 139
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "arguments"

    .line 141
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTopFragment()Landroidx/fragment/app/Fragment;
    .locals 5

    .line 452
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 453
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTopFragment size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchMainActivity"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 454
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 455
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 456
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTopFragment fragment: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    instance-of v3, v2, Lcom/xiaopeng/musicradio/search/home/view/SearchHomeMainFragment;

    if-eqz v3, :cond_0

    return-object v2

    .line 459
    :cond_0
    instance-of v3, v2, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public isTopActivity()Z
    .locals 2

    .line 374
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/utils/a;->c()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadRootFragment(ILandroidx/fragment/app/Fragment;)V
    .locals 2

    const-string v0, "SearchMainActivity"

    const-string v1, "loadRootFragment: "

    .line 435
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 437
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v0

    .line 438
    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/p;->a(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 439
    invoke-virtual {v0}, Landroidx/fragment/app/p;->b()I

    return-void
.end method

.method public onAppInstalled(IZ)V
    .locals 1

    .line 263
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mKeyWord:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const-string p2, "/search/fragment/home/main"

    .line 264
    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->addFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 265
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 266
    sget-object p2, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->KEYWORD:Ljava/lang/String;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mKeyWord:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "/search/fragment/home/search_result"

    .line 267
    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->addFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 148
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onCreate(Landroid/os/Bundle;)V

    .line 149
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbnz;->b(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getBundleValue(Landroid/content/Intent;)V

    .line 151
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->initFragmentParams()V

    .line 152
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    const-string v0, "/search/fragment/home/main"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;->a(Z)V

    goto :goto_0

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;->a(Z)V

    .line 157
    :goto_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->handleFragmentUri()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 469
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onDestroy()V

    const-string v0, "SearchMainActivity"

    const-string v1, "onDestroy: ============="

    .line 470
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 475
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onDestroyView()V

    const-string v0, "SearchMainActivity"

    const-string v1, "onDestroyView: ========"

    .line 476
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    .line 282
    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceResultListString:Ljava/lang/String;

    .line 283
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mVoiceResultListString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbnz;->b(Ljava/lang/String;)V

    .line 284
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onNewIntent(Landroid/content/Intent;)V

    .line 285
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/a;->a()Lcom/xiaopeng/musicradio/utils/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/utils/a;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mFragmentUri:Ljava/lang/String;

    const-string v0, "/search/fragment/home/main"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 286
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast p1, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/search/home/presenter/SearchForLeftTabPresenter;->a(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 162
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onPause()V

    .line 163
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: menuIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mMeunIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SearchMainActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-static {}, Lbnx;->a()Lbnx;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mMeunIndex:I

    invoke-virtual {v0, v2, v1}, Lbnx;->a(IZ)V

    .line 167
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_SEARCH"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->b(Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 172
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onResume()V

    .line 173
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->handleVoiceSearchResult()V

    .line 174
    invoke-static {}, Lbeb;->a()Lbeb;

    move-result-object v0

    invoke-virtual {v0}, Lbeb;->d()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/b$d;

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/b$d;-><init>(Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume: menuIndex = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mMeunIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SearchMainActivity"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {}, Lbnx;->a()Lbnx;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mMeunIndex:I

    invoke-virtual {v0, v2, v1}, Lbnx;->a(IZ)V

    .line 179
    invoke-static {}, Lcom/xiaopeng/musicradio/common/n;->a()Lcom/xiaopeng/musicradio/common/n;

    move-result-object v0

    const-string v1, "VIEW_SEARCH"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/common/n;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSearch(Ljava/lang/String;)V
    .locals 2

    .line 241
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbnz;->a(Ljava/lang/String;)V

    .line 242
    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbnz;->b(Ljava/lang/String;)V

    .line 243
    new-instance v0, Lbnw$d;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lbnw$d;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getFragmentContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "/search/activity/main"

    invoke-static {v0, v1}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 245
    invoke-static {p1}, Lcom/xiaopeng/musicradio/search/logic/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public onSwitchToSearchHome()V
    .locals 0

    .line 335
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->backToSearchHome()V

    return-void
.end method

.method public onSwitchToSearchResultMain(Ljava/lang/String;)V
    .locals 2

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchToSearchResultMain keyword: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchMainActivity"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 344
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mKeyWord:Ljava/lang/String;

    .line 345
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 346
    sget-object v1, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->KEYWORD:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "/search/fragment/home/search_result"

    .line 347
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->addFragment(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method protected popBackStack(Landroidx/activity/b;)V
    .locals 2

    const-string v0, "SearchMainActivity"

    const-string v1, "popBackStack: ======="

    .line 256
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    new-instance v0, Lbnw$b;

    invoke-direct {v0}, Lbnw$b;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 258
    invoke-virtual {p1, v0}, Landroidx/activity/b;->a(Z)V

    return-void
.end method

.method public refreshSearchKeyword(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public replace(ILandroidx/fragment/app/Fragment;Z)V
    .locals 1

    const-string p3, "SearchMainActivity"

    const-string v0, "replace: "

    .line 443
    invoke-static {p3, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    .line 445
    invoke-virtual {p3}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object p3

    .line 446
    invoke-virtual {p3, p1, p2}, Landroidx/fragment/app/p;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 448
    invoke-virtual {p3}, Landroidx/fragment/app/p;->b()I

    return-void
.end method

.method public setListener()V
    .locals 0

    return-void
.end method

.method public setView()V
    .locals 2

    .line 99
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_INDEX"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mMeunIndex:I

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setView: menuIndex = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/search/home/view/SearchMainActivity;->mMeunIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchMainActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateCountDownClose(I)V
    .locals 0

    return-void
.end method
