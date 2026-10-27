.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$R4VyNo0P_xTxfoOAAPrZuwgPVIM;
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

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$R4VyNo0P_xTxfoOAAPrZuwgPVIM;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$MirrorControlPanel$R4VyNo0P_xTxfoOAAPrZuwgPVIM;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/MirrorControlPanel;->lambda$onRegisterLiveData$15$MirrorControlPanel(Ljava/lang/Boolean;)V

    return-void
.end method
