.class public Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppVersionAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter$a;
    }
.end annotation


# instance fields
.field private TF:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private TG:Landroid/content/pm/PackageManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 30
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;->mContext:Landroid/content/Context;

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;->TG:Landroid/content/pm/PackageManager;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;->TF:Ljava/util/List;

    .line 33
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;->TF:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .line 58
    if-nez p2, :cond_0

    .line 59
    new-instance p2, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter$a;

    invoke-direct {p2}, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter$a;-><init>()V

    .line 60
    iget-object p3, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c007c

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 61
    const v0, 0x7f0903e4

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter$a;->TH:Landroid/widget/TextView;

    .line 62
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 64
    move-object p2, p3

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter$a;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;->TF:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    .line 66
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 67
    iget-object p3, p3, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter$a;->TH:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f10038c

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;->TG:Landroid/content/pm/PackageManager;

    .line 68
    invoke-virtual {v5, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object p1, v3, v0

    .line 67
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    return-object p2
.end method

.method public setPackageInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/PackageInfo;",
            ">;)V"
        }
    .end annotation

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;->TF:Ljava/util/List;

    .line 37
    invoke-virtual {p0}, Lcom/xiaopeng/devtools/view/systeminfo/AppVersionAdapter;->notifyDataSetChanged()V

    .line 38
    return-void
.end method
