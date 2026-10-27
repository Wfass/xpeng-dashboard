.class Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "AbstractCustomKeyControlFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;

.field final synthetic val$mDividerHeight:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$mDividerHeight"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment$1;->this$0:Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment;

    iput p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment$1;->val$mDividerHeight:I

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

    .line 96
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 97
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    const/4 p3, 0x0

    if-lez p2, :cond_0

    .line 104
    iget p2, p0, Lcom/xiaopeng/carcontrol/view/fragment/AbstractCustomKeyControlFragment$1;->val$mDividerHeight:I

    goto :goto_0

    :cond_0
    move p2, p3

    .line 106
    :goto_0
    invoke-virtual {p1, p3, p2, p3, p3}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
