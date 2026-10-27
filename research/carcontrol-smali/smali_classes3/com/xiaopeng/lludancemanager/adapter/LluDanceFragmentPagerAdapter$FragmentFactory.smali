.class Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter$FragmentFactory;
.super Ljava/lang/Object;
.source "LluDanceFragmentPagerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lludancemanager/adapter/LluDanceFragmentPagerAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FragmentFactory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFragmentByData(Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fragmentData"
        }
    .end annotation

    .line 80
    iget-object p0, p0, Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;->mFragmentTitle:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "llu_fragment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 82
    :cond_0
    new-instance p0, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;

    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/view/LluDanceMainFragment;-><init>()V

    :goto_0
    return-object p0
.end method

.method public static feedFragmentTitleByData(Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;Lcom/xiaopeng/xui/widget/XTabsBar;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fragmentData",
            "tabsBar"
        }
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/xiaopeng/lludancemanager/data/DanceFragmentPageAdapterData;->mFragmentTitle:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    const-string v0, "llu_fragment"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p0

    sget v0, Lcom/xiaopeng/lludancemanager/R$string;->llu_dance_main_page_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/App;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/xiaopeng/xui/widget/XTabsBar;->addTab(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
