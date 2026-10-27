.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$zdefE7pasDLu6Ibpnb4w0t0zbJQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$zdefE7pasDLu6Ibpnb4w0t0zbJQ;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$zdefE7pasDLu6Ibpnb4w0t0zbJQ;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->lambda$registerLiveData$13$MirrorControlFragment(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorFoldState;)V

    return-void
.end method
