.class Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$1;
.super Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;
.source "MirrorControlStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 365
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/lang/NoConcurrenceRunnable;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 368
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->access$700(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;Z)V

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->access$800(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->access$900(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;Z)V

    :cond_0
    return-void
.end method
