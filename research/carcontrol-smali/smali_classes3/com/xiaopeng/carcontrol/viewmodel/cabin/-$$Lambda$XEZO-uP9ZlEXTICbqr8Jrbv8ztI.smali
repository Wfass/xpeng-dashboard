.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$XEZO-uP9ZlEXTICbqr8Jrbv8ztI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorMemoryStrategy$IMirrorReverseStateListener;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$XEZO-uP9ZlEXTICbqr8Jrbv8ztI;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    return-void
.end method


# virtual methods
.method public final updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$XEZO-uP9ZlEXTICbqr8Jrbv8ztI;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorControlStrategy;->updateReverseState(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseState;)V

    return-void
.end method
