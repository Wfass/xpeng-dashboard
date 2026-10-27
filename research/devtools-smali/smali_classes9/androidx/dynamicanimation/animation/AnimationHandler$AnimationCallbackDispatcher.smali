.class Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;
.super Ljava/lang/Object;
.source "AnimationHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimationCallbackDispatcher"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/dynamicanimation/animation/AnimationHandler;


# direct methods
.method constructor <init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V
    .locals 0

    .line 58
    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method dispatchAnimationFrame()V
    .locals 3

    .line 60
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/dynamicanimation/animation/AnimationHandler;->access$002(Landroidx/dynamicanimation/animation/AnimationHandler;J)J

    .line 61
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    iget-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-static {v1}, Landroidx/dynamicanimation/animation/AnimationHandler;->access$000(Landroidx/dynamicanimation/animation/AnimationHandler;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Landroidx/dynamicanimation/animation/AnimationHandler;->access$100(Landroidx/dynamicanimation/animation/AnimationHandler;J)V

    .line 62
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-static {v0}, Landroidx/dynamicanimation/animation/AnimationHandler;->access$200(Landroidx/dynamicanimation/animation/AnimationHandler;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 63
    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationCallbackDispatcher;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-static {v0}, Landroidx/dynamicanimation/animation/AnimationHandler;->access$300(Landroidx/dynamicanimation/animation/AnimationHandler;)Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallbackProvider;->postFrameCallback()V

    .line 65
    :cond_0
    return-void
.end method
