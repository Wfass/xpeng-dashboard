.class public Lcom/xiaopeng/musicradio/commonui/adapter/b;
.super Lcom/xiaopeng/musicradio/commonui/widget/c;
.source "NavPagerAdapter.java"


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

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/widget/c;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    .line 30
    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->e:Landroidx/fragment/app/Fragment;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a:Ljava/util/List;

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->b:Landroid/util/SparseArray;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->c:Landroidx/fragment/app/FragmentManager;

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

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getItem: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PagerAdapter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    return-object p1

    .line 57
    :cond_1
    invoke-static {}, Lpp;->a()Lpp;

    move-result-object v0

    const-string v1, "/common/nav_fragment"

    invoke-virtual {v0, v1}, Lpp;->a(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 58
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 59
    iget-object v1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    .line 60
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;->c()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "bundle_path"

    if-eqz v1, :cond_2

    .line 61
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;->c()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;->c()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0

    .line 64
    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    :goto_0
    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    .line 101
    :cond_0
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/b;->c(I)J

    move-result-wide v0

    .line 102
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a(IJ)Ljava/lang/String;

    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {v3, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-nez v2, :cond_1

    .line 105
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_3

    .line 110
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p2

    if-nez p2, :cond_2

    .line 111
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a(IJ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v3, v2, p1}, Landroidx/fragment/app/p;->a(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/p;

    goto :goto_0

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    invoke-virtual {p1, v2}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    :cond_3
    :goto_0
    return-object v2
.end method

.method public a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 90
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getId()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 91
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewPager with adapter "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " requires a view id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 126
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    if-nez p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    check-cast p3, Landroidx/fragment/app/Fragment;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/p;->b(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    return-void
.end method

.method public a(Landroidx/fragment/app/FragmentManager;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->c:Landroidx/fragment/app/FragmentManager;

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

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 163
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

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/commonui/adapter/e;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/commonui/adapter/e;->b()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b(Landroid/view/ViewGroup;)V
    .locals 0

    .line 156
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    if-eqz p1, :cond_0

    .line 157
    invoke-virtual {p1}, Landroidx/fragment/app/p;->e()V

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    :cond_0
    return-void
.end method

.method public b(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 1

    .line 134
    check-cast p3, Landroidx/fragment/app/Fragment;

    .line 135
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    if-nez p1, :cond_0

    .line 136
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->c:Landroidx/fragment/app/FragmentManager;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/p;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    .line 138
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->e:Landroidx/fragment/app/Fragment;

    if-eq p3, p1, :cond_2

    if-eqz p1, :cond_1

    .line 140
    iget-object p2, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    sget-object v0, Landroidx/lifecycle/j$b;->STARTED:Landroidx/lifecycle/j$b;

    invoke-virtual {p2, p1, v0}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)Landroidx/fragment/app/p;

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    sget-object p2, Landroidx/lifecycle/j$b;->RESUMED:Landroidx/lifecycle/j$b;

    invoke-virtual {p1, p3, p2}, Landroidx/fragment/app/p;->a(Landroidx/fragment/app/Fragment;Landroidx/lifecycle/j$b;)Landroidx/fragment/app/p;

    .line 148
    iput-object p3, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->e:Landroidx/fragment/app/Fragment;

    .line 150
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/commonui/adapter/b;->d:Landroidx/fragment/app/p;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/p;->c(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/p;

    return-void
.end method

.method public c(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method
