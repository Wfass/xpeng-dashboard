.class Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$AvasEffectViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "DebugAvasAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AvasEffectViewHolder"
.end annotation


# instance fields
.field private mBtn:Lcom/xiaopeng/xui/widget/XTextView;

.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$AvasEffectViewHolder;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;

    .line 54
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 55
    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$AvasEffectViewHolder;->mBtn:Lcom/xiaopeng/xui/widget/XTextView;

    .line 56
    invoke-virtual {p2, p0}, Lcom/xiaopeng/xui/widget/XTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$AvasEffectViewHolder;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$AvasEffectViewHolder;->mBtn:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 61
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$AvasEffectViewHolder;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;)Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$AvasEffectViewHolder;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;->access$100(Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter;)Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$OnItemClickListener;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$AvasEffectViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/DebugAvasAdapter$OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method
