.class Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$7;
.super Ljava/lang/Object;
.source "BaseSeatControlView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 450
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$7;->this$0:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$7;->this$0:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mShouldSendHeadVerPos:Z

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$7;->this$0:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;

    iget v1, v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mHeadVerProgress:F

    iput v1, v0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->mThumbHeadVerProgress:F

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView$7;->this$0:Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/widget/BaseSeatControlView;->invalidate()V

    return-void
.end method
