.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ChildModeManager$Xu0n3R-zQXdbKaDWiH3ZqT8xq2w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/ChildModeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/ChildModeManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ChildModeManager$Xu0n3R-zQXdbKaDWiH3ZqT8xq2w;->f$0:Lcom/xiaopeng/unity/carcontrol/ChildModeManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ChildModeManager$Xu0n3R-zQXdbKaDWiH3ZqT8xq2w;->f$0:Lcom/xiaopeng/unity/carcontrol/ChildModeManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ChildModeManager;->lambda$observeData$1$ChildModeManager(Ljava/lang/Boolean;)V

    return-void
.end method
