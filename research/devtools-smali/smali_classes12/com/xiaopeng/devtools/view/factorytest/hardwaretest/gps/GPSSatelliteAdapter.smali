.class public Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;
.super Landroid/widget/BaseAdapter;
.source "GPSSatelliteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter$a;
    }
.end annotation


# instance fields
.field private JE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/location/GpsSatellite;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;->mContext:Landroid/content/Context;

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;->JE:Ljava/util/List;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;->JE:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 42
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 47
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 53
    if-nez p2, :cond_0

    .line 54
    new-instance p2, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter$a;

    invoke-direct {p2}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter$a;-><init>()V

    .line 55
    iget-object p3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c00af

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 56
    const v0, 0x7f0901eb

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter$a;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0901ea

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {p2, v0}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter$a;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter$a;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 58
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 61
    move-object p2, p3

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter$a;

    .line 62
    invoke-static {p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter$a;->a(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter$a;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;->mContext:Landroid/content/Context;

    const v2, 0x7f100183

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;->JE:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/GpsSatellite;

    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    invoke-static {p3}, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter$a;->b(Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter$a;)Landroid/widget/TextView;

    move-result-object p3

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;->mContext:Landroid/content/Context;

    const v1, 0x7f100182

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;->JE:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/GpsSatellite;

    invoke-virtual {p1}, Landroid/location/GpsSatellite;->getSnr()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    return-object p2
.end method

.method public setGpsSatellites(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/GpsSatellite;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/factorytest/hardwaretest/gps/GPSSatelliteAdapter;->JE:Ljava/util/List;

    .line 33
    return-void
.end method
