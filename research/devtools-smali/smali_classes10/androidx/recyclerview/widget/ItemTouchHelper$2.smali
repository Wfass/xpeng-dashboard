.class Landroidx/recyclerview/widget/ItemTouchHelper$2;
.super Ljava/lang/Object;
.source "ItemTouchHelper.java"

# interfaces
.implements Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;)V
    .locals 0

    .line 306
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 310
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$500(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/core/view/GestureDetectorCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 314
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 315
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_2

    .line 316
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    invoke-static {p1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$602(Landroidx/recyclerview/widget/ItemTouchHelper;I)I

    .line 317
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {p1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$702(Landroidx/recyclerview/widget/ItemTouchHelper;F)F

    .line 318
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {p1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$802(Landroidx/recyclerview/widget/ItemTouchHelper;F)F

    .line 319
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$900(Landroidx/recyclerview/widget/ItemTouchHelper;)V

    .line 320
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$000(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-nez p1, :cond_5

    .line 321
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1000(Landroidx/recyclerview/widget/ItemTouchHelper;Landroid/view/MotionEvent;)Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;

    move-result-object p1

    .line 322
    if-eqz p1, :cond_1

    .line 323
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$700(Landroidx/recyclerview/widget/ItemTouchHelper;)F

    move-result v3

    iget v4, p1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mX:F

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$702(Landroidx/recyclerview/widget/ItemTouchHelper;F)F

    .line 324
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$800(Landroidx/recyclerview/widget/ItemTouchHelper;)F

    move-result v3

    iget v4, p1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mY:F

    sub-float/2addr v3, v4

    invoke-static {v2, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$802(Landroidx/recyclerview/widget/ItemTouchHelper;F)F

    .line 325
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v3, p1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-static {v2, v3, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1100(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    .line 326
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v2, v2, Landroidx/recyclerview/widget/ItemTouchHelper;->mPendingCleanup:Ljava/util/List;

    iget-object v3, p1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1200(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    move-result-object v2

    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$400(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v3

    iget-object v4, p1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v2, v3, v4}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 329
    :cond_0
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v3, p1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mViewHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget p1, p1, Landroidx/recyclerview/widget/ItemTouchHelper$RecoverAnimation;->mActionState:I

    invoke-static {v2, v3, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1300(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 330
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1400(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v2

    invoke-static {p1, p2, v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1500(Landroidx/recyclerview/widget/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 332
    :cond_1
    goto :goto_1

    .line 333
    :cond_2
    const/4 v2, 0x3

    const/4 v3, -0x1

    if-eq p1, v2, :cond_4

    if-ne p1, v0, :cond_3

    goto :goto_0

    .line 336
    :cond_3
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$600(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v2

    if-eq v2, v3, :cond_5

    .line 339
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$600(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 343
    if-ltz v2, :cond_5

    .line 344
    iget-object v3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v3, p1, p2, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1600(Landroidx/recyclerview/widget/ItemTouchHelper;ILandroid/view/MotionEvent;I)V

    goto :goto_1

    .line 334
    :cond_4
    :goto_0
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1, v3}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$602(Landroidx/recyclerview/widget/ItemTouchHelper;I)I

    .line 335
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1300(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 347
    :cond_5
    :goto_1
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1700(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 348
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1700(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 350
    :cond_6
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$000(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    if-eqz p1, :cond_7

    goto :goto_2

    :cond_7
    move v0, v1

    :goto_2
    return v0
.end method

.method public onRequestDisallowInterceptTouchEvent(Z)V
    .locals 2

    .line 413
    if-nez p1, :cond_0

    .line 414
    return-void

    .line 416
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1300(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 417
    return-void
.end method

.method public onTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)V
    .locals 5
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 355
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$500(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/core/view/GestureDetectorCompat;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/core/view/GestureDetectorCompat;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 360
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1700(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 361
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1700(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 363
    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$600(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 364
    return-void

    .line 366
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    .line 367
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$600(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 368
    if-ltz v1, :cond_2

    .line 369
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v2, p1, p2, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1600(Landroidx/recyclerview/widget/ItemTouchHelper;ILandroid/view/MotionEvent;I)V

    .line 371
    :cond_2
    iget-object v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$000(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 372
    if-nez v2, :cond_3

    .line 373
    return-void

    .line 375
    :cond_3
    const/4 v3, 0x6

    const/4 v4, 0x0

    if-eq p1, v3, :cond_5

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    .line 388
    :pswitch_0
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1700(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 389
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1700(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroid/view/VelocityTracker;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_0

    .line 378
    :pswitch_1
    if-ltz v1, :cond_7

    .line 379
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1400(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v0

    invoke-static {p1, p2, v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1500(Landroidx/recyclerview/widget/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 380
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$200(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 381
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$400(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p2}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$300(Landroidx/recyclerview/widget/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 382
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$300(Landroidx/recyclerview/widget/ItemTouchHelper;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 383
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$400(Landroidx/recyclerview/widget/ItemTouchHelper;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidate()V

    goto :goto_1

    .line 393
    :cond_4
    :goto_0
    :pswitch_2
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    const/4 p2, 0x0

    invoke-static {p1, p2, v4}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1300(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    .line 394
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$602(Landroidx/recyclerview/widget/ItemTouchHelper;I)I

    .line 395
    goto :goto_1

    .line 397
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result p1

    .line 398
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 399
    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$600(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v1

    if-ne v0, v1, :cond_7

    .line 402
    if-nez p1, :cond_6

    const/4 v4, 0x1

    nop

    .line 403
    :cond_6
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-virtual {p2, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    invoke-static {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$602(Landroidx/recyclerview/widget/ItemTouchHelper;I)I

    .line 404
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$2;->this$0:Landroidx/recyclerview/widget/ItemTouchHelper;

    invoke-static {v1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1400(Landroidx/recyclerview/widget/ItemTouchHelper;)I

    move-result v1

    invoke-static {v0, p2, v1, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->access$1500(Landroidx/recyclerview/widget/ItemTouchHelper;Landroid/view/MotionEvent;II)V

    .line 405
    nop

    .line 409
    :cond_7
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
