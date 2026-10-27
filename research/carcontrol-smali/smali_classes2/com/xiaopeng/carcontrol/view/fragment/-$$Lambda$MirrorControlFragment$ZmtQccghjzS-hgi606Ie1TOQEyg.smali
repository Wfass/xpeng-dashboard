.class public final synthetic Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$ZmtQccghjzS-hgi606Ie1TOQEyg;
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

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$ZmtQccghjzS-hgi606Ie1TOQEyg;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$MirrorControlFragment$ZmtQccghjzS-hgi606Ie1TOQEyg;->f$0:Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/view/fragment/MirrorControlFragment;->lambda$registerLiveData$10$MirrorControlFragment(Ljava/lang/Boolean;)V

    return-void
.end method
