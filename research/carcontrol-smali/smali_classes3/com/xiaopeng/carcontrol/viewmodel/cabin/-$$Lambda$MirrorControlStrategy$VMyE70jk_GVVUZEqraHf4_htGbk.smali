.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorControlStrategy$VMyE70jk_GVVUZEqraHf4_htGbk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

.field public final synthetic f$1:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;

.field public final synthetic f$2:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorControlStrategy$VMyE70jk_GVVUZEqraHf4_htGbk;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorControlStrategy$VMyE70jk_GVVUZEqraHf4_htGbk;->f$1:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorControlStrategy$VMyE70jk_GVVUZEqraHf4_htGbk;->f$2:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorControlStrategy$VMyE70jk_GVVUZEqraHf4_htGbk;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorControlStrategy$VMyE70jk_GVVUZEqraHf4_htGbk;->f$1:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$MirrorControlStrategy$VMyE70jk_GVVUZEqraHf4_htGbk;->f$2:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->lambda$controlMirrorMoveOld$0$MirrorControlStrategy(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy$MirrorControlTaskOld;Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorDirection;)V

    return-void
.end method
