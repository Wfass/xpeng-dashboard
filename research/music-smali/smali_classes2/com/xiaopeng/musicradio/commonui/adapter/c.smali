.class public Lcom/xiaopeng/musicradio/commonui/adapter/c;
.super Lcom/xiaopeng/musicradio/commonui/widget/c;
.source "NavReplacePagerAdapter.java"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/commonui/adapter/e;",
            ">;"
        }
    .end annotation
.end field

.field public b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroidx/fragment/app/FragmentManager;

.field private d:Landroidx/fragment/app/p;

.field private e:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentManager;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/c;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->d:Landroidx/fragment/app/p;

    .line 29
    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->e:Landroidx/fragment/app/Fragment;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->a:Ljava/util/List;

    .line 32
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->b:Landroid/util/SparseArray;

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->c:Landroidx/fragment/app/FragmentManager;

    return-void
.end method

.method private static a(IJ)Ljava/lang/String;
    .locals 2

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android:switcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 55
    :cond_0
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    const-string v1, "/common/nav_fragment"

    invoke-virtual {v0, v1}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 57
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    .line 58
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;->c()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bundle_path"

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;->c()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;->c()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 62
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 63
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :goto_0
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 6

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "instantiateItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PagerAdapter"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->d:Landroidx/fragment/app/p;

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->d:Landroidx/fragment/app/p;

    .line 95
    :cond_0
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/c;->c(I)J

    move-result-wide v3

    .line 96
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v0

    invoke-static {v0, v3, v4}, Lcom/xiaopeng/musicradio/commonui/adapter/c;->a(IJ)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v5, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v5, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fragment = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->d:Landroidx/fragment/app/p;

    invoke-virtual {p1, v0}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/c;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 103
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->d:Landroidx/fragment/app/p;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v3, v4}, Lcom/xiaopeng/musicradio/commonui/adapter/c;->a(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v1, v0, p1}, Landroidx/fragment/app/p;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    .line 106
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->e:Landroidx/fragment/app/Fragment;

    if-eq v0, p1, :cond_2

    const/4 p1, 0x0

    .line 107
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 108
    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    :cond_2
    return-object v0
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    .line 85
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "destroyItem: ======"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PagerAdapter"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 118
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->d:Landroidx/fragment/app/p;

    if-nez p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->d:Landroidx/fragment/app/p;

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->d:Landroidx/fragment/app/p;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p1}, Landroidx/fragment/app/Fragment;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->e:Landroidx/fragment/app/Fragment;

    :cond_1
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/commonui/adapter/e;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 162
    check-cast p2, Landroidx/fragment/app/Fragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(I)Ljava/lang/CharSequence;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 0

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->d:Landroidx/fragment/app/p;

    if-eqz p1, :cond_0

    .line 156
    invoke-virtual {p1}, Landroidx/fragment/app/p;->e()V

    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->d:Landroidx/fragment/app/p;

    :cond_0
    return-void
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 3

    .line 130
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->e:Landroidx/fragment/app/Fragment;

    if-eq p3, v0, :cond_2

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 133
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->e:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 137
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPrimaryItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " fragment = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagerAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    .line 139
    invoke-virtual {p3, v0}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 142
    iput-object p3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->e:Landroidx/fragment/app/Fragment;

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->d:Landroidx/fragment/app/p;

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->d:Landroidx/fragment/app/p;

    .line 147
    :cond_1
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/c;->c(I)J

    move-result-wide v0

    .line 148
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/c;->d:Landroidx/fragment/app/p;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/c;->a(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p3, p1}, Landroidx/fragment/app/p;->b(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    :cond_2
    return-void
.end method

.method public c(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
