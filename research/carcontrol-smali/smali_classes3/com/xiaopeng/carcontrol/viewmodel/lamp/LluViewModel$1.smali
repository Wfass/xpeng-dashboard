.class Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel$1;
.super Ljava/lang/Object;
.source "LluViewModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->setLluEffectPreview(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluEffect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;


# direct methods
.method constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 274
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->access$000(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->access$100(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel$1;->this$0:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;->access$200(Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;)V

    :goto_0
    return-void
.end method
