.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$-FJZ_dnfSeXF2srCmEe5FCYy7o8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/strategy/AbstractSWCStrategy$IUserControlListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$-FJZ_dnfSeXF2srCmEe5FCYy7o8;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    return-void
.end method


# virtual methods
.method public final onUserControl(Z)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$-FJZ_dnfSeXF2srCmEe5FCYy7o8;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy;->updateUserAdjust(Z)V

    return-void
.end method
