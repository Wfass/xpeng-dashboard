.class public abstract Lcom/xiaopeng/musicradio/view/MusicVuiFragment;
.super Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;
.source "MusicVuiFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment<",
        "TUIInterface;TPresenter;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MusicVuiFragment"


# instance fields
.field protected mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

.field protected mHandler:Landroid/os/Handler;

.field protected mMenuIndex:I

.field protected mScreenState:Lcom/xiaopeng/musicradio/widget/k;

.field protected mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;-><init>()V

    .line 40
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mMenuIndex:I

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private releaseSelfVUI(Landroid/view/View;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 164
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    .line 165
    instance-of v0, p1, Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 166
    move-object v0, p1

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    const-string v2, "mRecycler"

    .line 167
    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$Recycler;

    if-eqz v2, :cond_1

    const-string v3, "mCachedViews"

    .line 169
    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 171
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 172
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->releaseSelfVUI(Landroid/view/View;)V

    goto :goto_0

    .line 176
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getRecycledViewPool()Landroidx/recyclerview/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    const-string v2, "mAttachCount"

    .line 177
    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "mScrap"

    .line 179
    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-eqz v0, :cond_3

    move v2, v1

    .line 181
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 182
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    const-string v4, "mScrapHeap"

    .line 183
    invoke-static {v3, v4}, Lcom/xiaopeng/musicradio/utils/bf;->b(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    .line 185
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 186
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->releaseSelfVUI(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 194
    :cond_3
    move-object v0, p1

    check-cast v0, Landroid/view/ViewGroup;

    .line 195
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_6

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 198
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_4

    .line 199
    invoke-direct {p0, v3}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->releaseSelfVUI(Landroid/view/View;)V

    .line 201
    :cond_4
    instance-of v4, v3, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v4, :cond_5

    .line 202
    check-cast v3, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-interface {v3}, Lcom/xiaopeng/xui/vui/VuiView;->releaseVui()V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 206
    :cond_6
    instance-of v0, p1, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v0, :cond_7

    .line 207
    check-cast p1, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-interface {p1}, Lcom/xiaopeng/xui/vui/VuiView;->releaseVui()V

    :cond_7
    return-void
.end method

.method private reportPageExposure()V
    .locals 3

    .line 225
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->getPageName()Ljava/lang/String;

    move-result-object v0

    .line 226
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->getSubPageName()Ljava/lang/String;

    move-result-object v1

    .line 227
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v0, v1

    .line 233
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v1, v0

    .line 237
    :cond_2
    invoke-static {}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->getInstance()Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/musicradio/page/stat/StatReporterHelper;->reportPageExposure(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected checkScreenChange()Z
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result v0

    return v0
.end method

.method protected getDetailInfoId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getDetailInfoName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getPageName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected getSubPageName()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method protected handleInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 52
    invoke-static {}, Lbdt;->b()Lbdt;

    move-result-object v0

    invoke-virtual {v0}, Lbdt;->m()I

    move-result v0

    const-string v1, "SELECT_MENU_SCENE"

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mMenuIndex:I

    .line 53
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->handleInflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected isInvalid()Z
    .locals 3

    .line 212
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->isDetached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 215
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 216
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1
.end method

.method protected layoutChanged()V
    .locals 0

    return-void
.end method

.method protected needSetRootView()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 79
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->getTag()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: is13 = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " is23: = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isFront = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " AreaType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ScreenId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setRootView(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 59
    new-instance v0, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 60
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mView:Landroid/view/View;

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mView:Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->setRootView(Landroid/view/View;)V

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 149
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onDestroy()V

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 151
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 157
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onDestroyView()V

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->releaseSelfVUI(Landroid/view/View;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 131
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onResume()V

    .line 132
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->reportPageExposure()V

    return-void
.end method

.method protected reviewOnScreenChange()V
    .locals 3

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->needSetRootView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/xiaopeng/musicradio/common/k$b;->bg_app_color:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method protected setRootView(Landroid/view/View;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->needSetRootView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$b;->bg_app_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 68
    new-instance v0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment$1;-><init>(Lcom/xiaopeng/musicradio/view/MusicVuiFragment;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method

.method protected setScreen()V
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    return-void
.end method

.method protected setView()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->a()V

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->getTag()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConfigurationChangedView init: is13 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " is23: = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isFront = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->d()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " AreaType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->e()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ScreenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bv;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " checkScreenChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScreenState.isIs13 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 95
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->h()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScreenState.isIs23 = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->g()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mScreenState.isIsFront = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mScreenState:Lcom/xiaopeng/musicradio/widget/k;

    .line 96
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/k;->f()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 91
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/MusicVuiFragment;->mConfigurationChangedView:Lcom/xiaopeng/musicradio/widget/LayoutChangedView;

    new-instance v1, Lcom/xiaopeng/musicradio/view/MusicVuiFragment$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/view/MusicVuiFragment$2;-><init>(Lcom/xiaopeng/musicradio/view/MusicVuiFragment;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LayoutChangedView;->setOnLayoutChangedListener(Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;)V

    :cond_0
    return-void
.end method
