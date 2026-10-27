.class public Lcom/xiaopeng/logictree/handler/InterActiveAdapter;
.super Landroid/widget/BaseAdapter;
.source "InterActiveAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/logictree/handler/InterActiveAdapter$a;
    }
.end annotation


# instance fields
.field private Yx:[Ljava/lang/String;

.field private Yy:Lcom/xiaopeng/logictree/handler/g;


# direct methods
.method public constructor <init>([Ljava/lang/String;Lcom/xiaopeng/logictree/handler/g;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/InterActiveAdapter;->Yx:[Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lcom/xiaopeng/logictree/handler/InterActiveAdapter;->Yy:Lcom/xiaopeng/logictree/handler/g;

    .line 22
    return-void
.end method

.method private synthetic b(ILandroid/view/View;)V
    .locals 0

    .line 61
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/InterActiveAdapter;->Yy:Lcom/xiaopeng/logictree/handler/g;

    if-eqz p2, :cond_0

    .line 62
    iget-object p2, p0, Lcom/xiaopeng/logictree/handler/InterActiveAdapter;->Yy:Lcom/xiaopeng/logictree/handler/g;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/logictree/handler/InterActiveAdapter;->cI(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/xiaopeng/logictree/handler/g;->onResult(Ljava/lang/String;)V

    .line 64
    :cond_0
    return-void
.end method

.method public static synthetic lambda$HZglEFMdKoLX595mdY_VF-FvN48(Lcom/xiaopeng/logictree/handler/InterActiveAdapter;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/logictree/handler/InterActiveAdapter;->b(ILandroid/view/View;)V

    return-void
.end method


# virtual methods
.method public cI(I)Ljava/lang/String;
    .locals 1

    .line 35
    nop

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/InterActiveAdapter;->Yx:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/InterActiveAdapter;->Yx:[Ljava/lang/String;

    aget-object p1, v0, p1

    goto :goto_0

    .line 39
    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 26
    nop

    .line 27
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/InterActiveAdapter;->Yx:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/InterActiveAdapter;->Yx:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/xiaopeng/logictree/handler/InterActiveAdapter;->cI(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 50
    if-nez p2, :cond_0

    .line 51
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/xiaopeng/logictree/R$layout;->item_button:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 52
    new-instance p3, Lcom/xiaopeng/logictree/handler/InterActiveAdapter$a;

    const/4 v0, 0x0

    invoke-direct {p3, p0, v0}, Lcom/xiaopeng/logictree/handler/InterActiveAdapter$a;-><init>(Lcom/xiaopeng/logictree/handler/InterActiveAdapter;Lcom/xiaopeng/logictree/handler/InterActiveAdapter$1;)V

    .line 53
    sget v0, Lcom/xiaopeng/logictree/R$id;->item_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XButton;

    iput-object v0, p3, Lcom/xiaopeng/logictree/handler/InterActiveAdapter$a;->Yz:Lcom/xiaopeng/xui/widget/XButton;

    .line 54
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 56
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/xiaopeng/logictree/handler/InterActiveAdapter$a;

    .line 59
    :goto_0
    iget-object v0, p3, Lcom/xiaopeng/logictree/handler/InterActiveAdapter$a;->Yz:Lcom/xiaopeng/xui/widget/XButton;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/logictree/handler/InterActiveAdapter;->cI(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object p3, p3, Lcom/xiaopeng/logictree/handler/InterActiveAdapter$a;->Yz:Lcom/xiaopeng/xui/widget/XButton;

    new-instance v0, Lcom/xiaopeng/logictree/handler/-$$Lambda$InterActiveAdapter$HZglEFMdKoLX595mdY_VF-FvN48;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/logictree/handler/-$$Lambda$InterActiveAdapter$HZglEFMdKoLX595mdY_VF-FvN48;-><init>(Lcom/xiaopeng/logictree/handler/InterActiveAdapter;I)V

    invoke-virtual {p3, v0}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-object p2
.end method
