.class Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "FixedListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ViewHolder"
.end annotation


# instance fields
.field private listItem:Lcom/xiaopeng/xui/widget/XListItem;

.field final synthetic this$0:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 65
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;->this$0:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;

    .line 66
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f0a0150

    .line 67
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XListItem;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;->listItem:Lcom/xiaopeng/xui/widget/XListItem;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;)Lcom/xiaopeng/xui/widget/XListItem;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;->listItem:Lcom/xiaopeng/xui/widget/XListItem;

    return-object p0
.end method
