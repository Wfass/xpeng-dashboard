.class public Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DebugAvasAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$OnItemClickListener;,
        Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$AvasEffectViewHolder;
    }
.end annotation


# static fields
.field private static final END:I = 0x14

.field public static final OFFSET:I = 0x5


# instance fields
.field private mItemClickListener:Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$OnItemClickListener;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$OnItemClickListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "listener"
        }
    .end annotation

    .line 27
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;->mList:Ljava/util/List;

    .line 28
    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;->mItemClickListener:Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$OnItemClickListener;

    const/4 p2, 0x4

    :goto_0
    const/16 v0, 0x14

    if-gt p2, v0, :cond_0

    .line 30
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;->mList:Ljava/util/List;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f110050

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;)Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$OnItemClickListener;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;->mItemClickListener:Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$OnItemClickListener;

    return-object p0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
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

    .line 42
    check-cast p1, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$AvasEffectViewHolder;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$AvasEffectViewHolder;->access$000(Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$AvasEffectViewHolder;)Lcom/xiaopeng/xui/widget/XTextView;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
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

    .line 36
    new-instance p2, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$AvasEffectViewHolder;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0022

    const/4 v2, 0x0

    .line 37
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$AvasEffectViewHolder;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;Landroid/view/View;)V

    return-object p2
.end method
