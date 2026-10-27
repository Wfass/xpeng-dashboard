.class public Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "FixedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;,
        Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mFaultBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/Bean/FaultBean;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemClickListener:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$OnItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$OnItemClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "faultBeanList",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/carcontrol/Bean/FaultBean;",
            ">;",
            "Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 21
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;->mOnItemClickListener:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$OnItemClickListener;

    .line 22
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;->mFaultBeanList:Ljava/util/List;

    .line 23
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;->mOnItemClickListener:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$OnItemClickListener;

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;)Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$OnItemClickListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;->mOnItemClickListener:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;->mFaultBeanList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
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

    .line 16
    check-cast p1, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;->onBindViewHolder(Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;I)V
    .locals 2
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

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;->mFaultBeanList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/carcontrol/Bean/FaultBean;

    .line 47
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;->access$000(Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;)Lcom/xiaopeng/xui/widget/XListItem;

    move-result-object v0

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XListItem;->setText(Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;->access$000(Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;)Lcom/xiaopeng/xui/widget/XListItem;

    move-result-object p1

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/Bean/FaultBean;->getDescription()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XListItem;->setTextSub(Ljava/lang/String;)V

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

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;
    .locals 2
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

    .line 30
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0d0049

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 31
    new-instance p2, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;-><init>(Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;Landroid/view/View;)V

    .line 32
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;->mOnItemClickListener:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$OnItemClickListener;

    if-eqz p1, :cond_0

    .line 33
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;->access$000(Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;)Lcom/xiaopeng/xui/widget/XListItem;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$1;

    invoke-direct {v0, p0, p2}, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$1;-><init>(Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;)V

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XListItem;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-object p2
.end method
