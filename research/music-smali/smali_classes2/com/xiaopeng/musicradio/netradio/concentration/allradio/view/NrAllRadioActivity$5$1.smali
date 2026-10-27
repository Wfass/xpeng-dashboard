.class Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;
.super Ljava/lang/Object;
.source "NrAllRadioActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 219
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->access$800(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->access$800(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/tabs/TabLayout$f;

    invoke-virtual {v2, v3, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addTab(Lcom/google/android/material/tabs/TabLayout$f;I)V

    .line 221
    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    iget-object v3, v3, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->updateVui(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 223
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->access$100(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;)Lcom/xiaopeng/xui/widget/XViewPager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XViewPager;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->showLoadingTip(I)V

    .line 225
    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->access$300(Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;I)V

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5$1;->a:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity$5;->b:Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;

    iget-object v2, v2, Lcom/xiaopeng/musicradio/netradio/concentration/allradio/view/NrAllRadioActivity;->mTabLayout:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method
