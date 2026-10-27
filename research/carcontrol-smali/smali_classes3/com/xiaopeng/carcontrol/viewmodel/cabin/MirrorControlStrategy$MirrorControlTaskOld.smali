.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;
.super Ljava/lang/Object;
.source "MirrorControlStrategy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MirrorControlTaskOld"
.end annotation


# instance fields
.field private final direction:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

.field private final isLeft:Z

.field private isLongControl:Z

.field private isStart:Z

.field private final key:I

.field private leftTime:I

.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;IZLcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "key",
            "isLeft",
            "direction"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 269
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isStart:Z

    .line 270
    iput p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->leftTime:I

    .line 273
    iput p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->key:I

    .line 274
    iput-boolean p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isLeft:Z

    .line 275
    iput-object p4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->direction:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;)Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->direction:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    return-object p0
.end method

.method static synthetic access$500(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;)Z
    .locals 0

    .line 263
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isLeft:Z

    return p0
.end method

.method static synthetic access$600(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;)Z
    .locals 0

    .line 263
    iget-boolean p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isLongControl:Z

    return p0
.end method


# virtual methods
.method increase()V
    .locals 1

    .line 279
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isStart:Z

    if-eqz v0, :cond_0

    .line 280
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->leftTime:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->leftTime:I

    :cond_0
    return-void
.end method

.method public run()V
    .locals 12

    .line 290
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isStart:Z

    const-wide/16 v1, 0x32

    const-string v3, "left"

    const-string v4, "right"

    const/4 v5, 0x3

    const-string v6, "MirrorControlStrategy"

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v0, :cond_1

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    iget-boolean v10, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isLeft:Z

    iget-object v11, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->direction:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-static {v0, v10, v9, v11}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;ZILcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 293
    iput-boolean v9, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isStart:Z

    .line 294
    iput v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->leftTime:I

    new-array v0, v5, [Ljava/lang/Object;

    .line 295
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isLeft:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    aput-object v3, v0, v7

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->direction:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    aput-object v1, v0, v9

    .line 297
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v8

    const-string v1, "MirrorControlTaskOld Start: side is %s, direction is %s, leftTime is %s"

    .line 295
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0, v7}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 298
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->leftTime:I

    sub-int/2addr v0, v9

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->leftTime:I

    goto/16 :goto_3

    .line 300
    :cond_1
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->leftTime:I

    if-lez v0, :cond_3

    new-array v5, v5, [Ljava/lang/Object;

    .line 301
    iget-boolean v10, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isLeft:Z

    if-eqz v10, :cond_2

    goto :goto_1

    :cond_2
    move-object v3, v4

    :goto_1
    aput-object v3, v5, v7

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->direction:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    aput-object v3, v5, v9

    .line 303
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v8

    const-string v0, "MirrorControlTaskOld Pending: side is %s, direction is %s, leftTime is %s"

    .line 301
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    iget-boolean v3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isLeft:Z

    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->direction:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-static {v0, v3, v8, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;ZILcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 306
    iget v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->leftTime:I

    sub-int/2addr v0, v9

    iput v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->leftTime:I

    goto :goto_3

    :cond_3
    new-array v0, v8, [Ljava/lang/Object;

    .line 308
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isLeft:Z

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v3, v4

    :goto_2
    aput-object v3, v0, v7

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->direction:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    aput-object v1, v0, v9

    const-string v1, "MirrorControlTaskOld Finish: side is %s, direction is %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iput-boolean v7, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isStart:Z

    .line 312
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->key:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    .line 314
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isLeft:Z

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->direction:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-static {v0, v1, v5, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;ZILcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-static {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->access$300(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;->newSession()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_3
    return-void
.end method

.method setLongControl(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isLongControl"
        }
    .end annotation

    .line 285
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;->isLongControl:Z

    return-void
.end method
