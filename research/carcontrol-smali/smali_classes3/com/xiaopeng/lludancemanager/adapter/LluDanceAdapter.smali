.class public Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "LluDanceAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter$OnItemListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LluDanceAdapter"


# instance fields
.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter$OnItemListener;

.field private volatile mPreClickIndex:I


# direct methods
.method public constructor <init>(Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter$OnItemListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mListener"
        }
    .end annotation

    .line 31
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, -0x1

    .line 29
    iput v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->mPreClickIndex:I

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->mListener:Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter$OnItemListener;

    return-void
.end method

.method private vuiFeedback(ILandroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "view"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 112
    new-instance v0, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    invoke-direct {v0}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->state(I)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->content(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/model/VuiFeedback$Builder;->build()Lcom/xiaopeng/speech/vui/model/VuiFeedback;

    move-result-object p1

    .line 114
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->vuiFeedback(Landroid/view/View;Lcom/xiaopeng/speech/vui/model/VuiFeedback;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->mList:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-1000"

    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-long v0, p1

    return-wide v0

    :cond_0
    int-to-long v0, p1

    return-wide v0
.end method

.method public synthetic lambda$onBindViewHolder$0$LluDanceAdapter(Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;ILcom/xiaopeng/lludancemanager/bean/LluDanceViewData;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "holder",
            "position",
            "data",
            "v"
        }
    .end annotation

    .line 50
    iget-object p4, p1, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p4}, Landroid/view/View;->getId()I

    move-result p4

    const-wide/16 v0, 0xc8

    const/4 v2, 0x0

    invoke-static {p4, v0, v1, v2}, Lcom/xiaopeng/carcontrol/helper/ClickHelper;->isFastClick(IJZ)Z

    move-result p4

    if-eqz p4, :cond_0

    const-string p1, "LluDanceAdapter"

    const-string p2, "Click to quick!"

    .line 51
    invoke-static {p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 54
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object p4

    iget-object v0, p1, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p4, v0}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->isVuiAction(Landroid/view/View;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 55
    sget p4, Lcom/xiaopeng/lludancemanager/R$string;->llu_select_feedback:I

    iget-object p1, p1, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p4, p1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->vuiFeedback(ILandroid/view/View;)V

    .line 57
    :cond_1
    invoke-virtual {p0, p2}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->selected(I)V

    .line 58
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->mListener:Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter$OnItemListener;

    if-eqz p1, :cond_2

    .line 59
    invoke-interface {p1, p2, p3}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter$OnItemListener;->onItemClick(ILcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    :cond_2
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->onBindViewHolder(Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;I)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            "holder",
            "position",
            "payloads"
        }
    .end annotation

    .line 24
    check-cast p1, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->onBindViewHolder(Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;ILjava/util/List;)V

    return-void
.end method

.method public onBindViewHolder(Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "position"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;

    .line 44
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->getId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-1000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 45
    invoke-virtual {p1, v0}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->bind(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    .line 46
    iget-object p1, p1, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 48
    :cond_0
    iget v1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->mPreClickIndex:I

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1, v0, p2, v1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->bind(Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;IZ)V

    .line 49
    iget-object v1, p1, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/xiaopeng/lludancemanager/adapter/-$$Lambda$LluDanceAdapter$FtUYA6_KNqhyIpoEnXa67BWVnSc;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/xiaopeng/lludancemanager/adapter/-$$Lambda$LluDanceAdapter$FtUYA6_KNqhyIpoEnXa67BWVnSc;-><init>(Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;ILcom/xiaopeng/lludancemanager/bean/LluDanceViewData;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public onBindViewHolder(Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "position",
            "payloads"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;ILjava/util/List;)V

    .line 68
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_0

    .line 69
    iget-object p1, p1, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;->itemView:Landroid/view/View;

    const/4 p2, 0x0

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setActivated(Z)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 24
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parent",
            "viewType"
        }
    .end annotation

    .line 38
    new-instance p2, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/lludancemanager/R$layout;->layout_item_llu_dance:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceViewHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method

.method public selected(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 94
    iget v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->mPreClickIndex:I

    const/4 v1, 0x1

    .line 95
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    return-void

    .line 98
    :cond_0
    iget v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->mPreClickIndex:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    .line 99
    iget v0, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->mPreClickIndex:I

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 101
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->notifyItemChanged(ILjava/lang/Object;)V

    .line 102
    iput p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->mPreClickIndex:I

    return-void
.end method

.method public setList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;",
            ">;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->mList:Ljava/util/List;

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/lludancemanager/adapter/LluDanceAdapter;->notifyDataSetChanged()V

    return-void
.end method
