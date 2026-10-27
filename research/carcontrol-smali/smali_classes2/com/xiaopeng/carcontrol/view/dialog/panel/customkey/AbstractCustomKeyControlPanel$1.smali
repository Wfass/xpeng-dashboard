.class Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "AbstractCustomKeyControlPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->onInitView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "outRect",
            "view",
            "parent",
            "state"
        }
    .end annotation

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 107
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    if-lez p2, :cond_0

    .line 114
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel$1;->this$0:Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;

    invoke-static {p2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;->access$000(Lcom/xiaopeng/carcontrol/view/dialog/panel/customkey/AbstractCustomKeyControlPanel;)I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p3

    .line 116
    :goto_0
    invoke-virtual {p1, p3, p2, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
