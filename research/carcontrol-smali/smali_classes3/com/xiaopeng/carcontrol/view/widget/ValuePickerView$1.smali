.class Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;
.super Landroid/os/Handler;
.source "ValuePickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;Landroid/os/Looper;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "x0"
        }
    .end annotation

    .line 358
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 361
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v2, :cond_0

    goto/16 :goto_3

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$1300(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;IILjava/lang/Object;)V

    goto/16 :goto_3

    .line 363
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$000(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/widget/ScrollerCompat;->isFinished()Z

    move-result v0

    const/4 v3, 0x0

    if-nez v0, :cond_3

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$100(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v0

    if-nez v0, :cond_2

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$200(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;I)V

    .line 367
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$300(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$300(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v2, v1, v3, v3, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$400(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v1, 0x20

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_3

    .line 374
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$500(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v0

    if-eqz v0, :cond_6

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$100(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v0

    if-nez v0, :cond_4

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$200(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;I)V

    .line 378
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$500(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$600(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v1

    neg-int v1, v1

    div-int/2addr v1, v2

    const/high16 v3, 0x43960000    # 300.0f

    if-ge v0, v1, :cond_5

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$600(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$500(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$600(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 381
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$000(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$700(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v5

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$600(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v1

    iget-object v7, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v7}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$500(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v7

    add-int/2addr v7, v1

    mul-int/lit8 v8, v0, 0x3

    invoke-virtual/range {v3 .. v8}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 382
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$700(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$600(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v4

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$500(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$800(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;I)I

    move-result v1

    goto :goto_0

    .line 385
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$500(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    mul-float/2addr v0, v3

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$600(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 386
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$000(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Landroidx/core/widget/ScrollerCompat;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$700(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v5

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$500(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v7

    mul-int/lit8 v8, v0, 0x3

    invoke-virtual/range {v3 .. v8}, Landroidx/core/widget/ScrollerCompat;->startScroll(IIIII)V

    .line 387
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$700(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v4}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$500(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v1, v3}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$800(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;I)I

    move-result v1

    :goto_0
    move v3, v0

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->postInvalidate()V

    goto :goto_1

    .line 391
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0, v3}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$200(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;I)V

    .line 393
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$700(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$800(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;I)I

    move-result v1

    .line 396
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$900(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)I

    move-result v4

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v0, v2, v4, v1, p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$400(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 397
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$1000(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 398
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$1100(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$1100(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Landroid/os/Handler;

    move-result-object v0

    mul-int/2addr v3, v2

    int-to-long v1, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    .line 401
    :cond_7
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$300(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$300(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Landroid/os/Handler;

    move-result-object v0

    mul-int/2addr v3, v2

    int-to-long v1, v3

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 404
    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$1100(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 405
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$1100(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;)Landroid/os/Handler;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView$1;->this$0:Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;->access$1200(Lcom/xiaopeng/carcontrol/view/widget/ValuePickerView;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_9
    :goto_3
    return-void
.end method
