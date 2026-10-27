.class Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2$1;
.super Ljava/lang/Object;
.source "SearchResultMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;)V
    .locals 0

    .line 181
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 184
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->access$100(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 185
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->access$200(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->access$100(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$f;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/widget/i;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->mViews:Ljava/util/List;

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/widget/i;-><init>(Ljava/util/List;)V

    .line 188
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->access$300(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)Lcom/xiaopeng/xui/widget/XViewPager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/xiaopeng/xui/widget/XViewPager;->setAdapter(Landroidx/viewpager/widget/a;)V

    .line 189
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->access$200(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    .line 190
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->access$400(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;)V

    .line 191
    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2$1;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment$2;->a:Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;->access$500(Lcom/xiaopeng/musicradio/search/result/view/SearchResultMainFragment;I)V

    return-void
.end method
