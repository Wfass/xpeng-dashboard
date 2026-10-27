.class Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$1;
.super Ljava/lang/Object;
.source "FixedListAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;

.field final synthetic val$holder:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$holder"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$1;->this$0:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$1;->val$holder:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 36
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$1;->val$holder:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;->getLayoutPosition()I

    move-result p1

    .line 37
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$1;->this$0:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;->access$100(Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter;)Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$OnItemClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$1;->val$holder:Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;->access$000(Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$ViewHolder;)Lcom/xiaopeng/xui/widget/XListItem;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/carcontrol/Adapter/FixedListAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    return-void
.end method
