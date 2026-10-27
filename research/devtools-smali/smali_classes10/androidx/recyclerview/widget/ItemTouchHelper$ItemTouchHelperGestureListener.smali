.class Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ItemTouchHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemTouchHelperGestureListener"
.end annotation


# instance fields
.field private mShouldReactToLongPress:Z

.field final synthetic this$0:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 2297
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2295
    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    .line 2298
    return-void
.end method


# virtual methods
.method doNotReactToLongPress()V
    .locals 1

    .line 2305
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    .line 2306
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 2310
    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3

    .line 2315
    iget-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->mShouldReactToLongPress:Z

    if-nez v0, :cond_0

    .line 2316
    return-void

    .line 2318
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$2300(Landroidx/recyclerview/widget/ItemTouchHelper;Landroid/view/MotionEvent;)Landroid/view/View;

    move-result-object v0

    .line 2319
    if-eqz v0, :cond_2

    .line 2320
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$400(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 2321
    if-eqz v0, :cond_2

    .line 2322
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1200(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-result-object v1

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$400(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->hasDragFlag(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2323
    return-void

    .line 2325
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    .line 2329
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$600(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 2330
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$600(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 2331
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2332
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 2333
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$702(Landroidx/recyclerview/widget/ItemTouchHelper;F)F

    .line 2334
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$802(Landroidx/recyclerview/widget/ItemTouchHelper;F)F

    .line 2335
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$2502(Landroidx/recyclerview/widget/ItemTouchHelper;F)F

    move-result v1

    invoke-static {p1, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$2402(Landroidx/recyclerview/widget/ItemTouchHelper;F)F

    .line 2340
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1200(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->isLongPressDragEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2341
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$ItemTouchHelperGestureListener;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v1, 0x2

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1300(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 2346
    :cond_2
    return-void
.end method
