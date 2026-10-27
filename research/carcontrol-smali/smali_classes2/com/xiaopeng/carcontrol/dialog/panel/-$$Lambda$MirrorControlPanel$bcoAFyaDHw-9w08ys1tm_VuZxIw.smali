.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$bcoAFyaDHw-9w08ys1tm_VuZxIw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$bcoAFyaDHw-9w08ys1tm_VuZxIw;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$bcoAFyaDHw-9w08ys1tm_VuZxIw;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->lambda$onRegisterLiveData$16$MirrorControlPanel(Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorReverseMode;)V

    return-void
.end method
