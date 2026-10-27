.class public Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "PikerViewAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mSubtitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;",
            ">;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mContext:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mContext:Landroid/content/Context;

    .line 29
    iput-object p2, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mTitleList:Ljava/util/List;

    .line 30
    iput-object p3, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mSubtitleList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mTitleList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 16
    check-cast p1, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->onBindViewHolder(Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;I)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 44
    iget-object v0, p1, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;->item1TV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;

    iget-object v1, v1, Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;->item1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object p1, p1, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;->item2TV:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;

    iget-object p2, p2, Lcom/xiaopeng/xui/app/pikerview/PikerDataBean;->item2:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mTitleList:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 48
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 49
    iget-object v0, p1, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;->item1TV:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mTitleList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mSubtitleList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p2, :cond_1

    .line 51
    iget-object p1, p1, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;->item2TV:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mSubtitleList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;
    .locals 2

    .line 35
    iget-object p2, p0, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/xiaopeng/xpui/R$layout;->x_layout_picker_item:I

    const/4 v1, 0x0

    .line 36
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 37
    new-instance p2, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter$MyViewHolder;-><init>(Lcom/xiaopeng/xui/app/pikerview/PikerViewAdapter;Landroid/view/View;)V

    return-object p2
.end method
