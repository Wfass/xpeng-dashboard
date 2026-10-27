.class public Lcom/xiaopeng/musicradio/widget/m;
.super Lcom/xiaopeng/musicradio/widget/j$a;
.source "TabLayoutAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/widget/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/widget/j$a<",
        "Lcom/xiaopeng/musicradio/widget/m$a;",
        ">;"
    }
.end annotation


# instance fields
.field protected c:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

.field private d:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/widget/j$a;-><init>()V

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/xiaopeng/musicradio/widget/m;->d:I

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/m;->c:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/m;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/xiaopeng/musicradio/widget/m;->d:I

    return p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/widget/m;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/m;->d:I

    return p1
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/widget/m$a;
    .locals 2

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/xiaopeng/musicradio/common/k$f;->item_music_tab_layout:I

    const/4 v1, 0x0

    .line 31
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 32
    new-instance p2, Lcom/xiaopeng/musicradio/widget/m$a;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/musicradio/widget/m$a;-><init>(Lcom/xiaopeng/musicradio/widget/m;Landroid/view/View;)V

    return-object p2
.end method

.method public a(Lcom/xiaopeng/musicradio/widget/m$a;I)V
    .locals 4

    .line 41
    iget v0, p0, Lcom/xiaopeng/musicradio/widget/m;->d:I

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/m$a;->a:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 43
    iget-object v1, p1, Lcom/xiaopeng/musicradio/widget/m$a;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setSelected(Z)V

    .line 44
    iget-object v0, p1, Lcom/xiaopeng/musicradio/widget/m$a;->a:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/m;->c:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getAdapter()Lcom/xiaopeng/musicradio/commonui/widget/c;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/c;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p1, Lcom/xiaopeng/musicradio/widget/m$a;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/widget/m$1;

    invoke-direct {v1, p0, p2}, Lcom/xiaopeng/musicradio/widget/m$1;-><init>(Lcom/xiaopeng/musicradio/widget/m;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    iget-object v0, p1, Lcom/xiaopeng/musicradio/widget/m$a;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiPosition(I)V

    .line 58
    iget-object v0, p1, Lcom/xiaopeng/musicradio/widget/m$a;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/xiaopeng/musicradio/widget/m$a;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementId(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/m;->c:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getAdapter()Lcom/xiaopeng/musicradio/commonui/widget/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/commonui/widget/c;->b(I)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 60
    iget-object v0, p1, Lcom/xiaopeng/musicradio/widget/m$a;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/m;->c:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getAdapter()Lcom/xiaopeng/musicradio/commonui/widget/c;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/commonui/widget/c;->b(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 62
    :cond_1
    iget-object v0, p1, Lcom/xiaopeng/musicradio/widget/m$a;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p1, Lcom/xiaopeng/musicradio/widget/m$a;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {v3}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 63
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/m$a;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    sget-object v0, Lbxy;->BUTTON:Lbxy;

    invoke-virtual {p2, v0}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setVuiElementType(Lbxy;)V

    .line 64
    iget-object p2, p1, Lcom/xiaopeng/musicradio/widget/m$a;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    iget-object p1, p1, Lcom/xiaopeng/musicradio/widget/m$a;->b:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setExecuteVirtualTag(Landroid/view/View;)V

    return-void
.end method

.method public b(I)V
    .locals 0

    .line 36
    iput p1, p0, Lcom/xiaopeng/musicradio/widget/m;->d:I

    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/m;->c:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getAdapter()Lcom/xiaopeng/musicradio/commonui/widget/c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/m;->c:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->getAdapter()Lcom/xiaopeng/musicradio/commonui/widget/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/widget/c;->a()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 18
    check-cast p1, Lcom/xiaopeng/musicradio/widget/m$a;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/m;->a(Lcom/xiaopeng/musicradio/widget/m$a;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/m;->a(Landroid/view/ViewGroup;I)Lcom/xiaopeng/musicradio/widget/m$a;

    move-result-object p1

    return-object p1
.end method
