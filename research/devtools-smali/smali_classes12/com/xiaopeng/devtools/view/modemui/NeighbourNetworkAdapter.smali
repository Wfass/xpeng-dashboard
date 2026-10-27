.class public Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;
.super Landroid/widget/BaseAdapter;
.source "NeighbourNetworkAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter$a;
    }
.end annotation


# instance fields
.field private Qq:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 25
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;->Qq:Ljava/util/ArrayList;

    .line 27
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;->Qq:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 46
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 52
    if-nez p2, :cond_0

    .line 53
    new-instance p2, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter$a;

    invoke-direct {p2}, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter$a;-><init>()V

    .line 54
    iget-object p3, p0, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;->mContext:Landroid/content/Context;

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0c00ca

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p3

    .line 55
    const v0, 0x7f090412

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p2, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter$a;->Qr:Landroid/widget/TextView;

    .line 56
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 58
    move-object p2, p3

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter$a;

    .line 59
    iget-object p3, p3, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter$a;->Qr:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;->Qq:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    return-object p2
.end method

.method public setNeighbourNetwork(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/devtools/view/modemui/NeighbourNetworkAdapter;->Qq:Ljava/util/ArrayList;

    .line 31
    return-void
.end method
