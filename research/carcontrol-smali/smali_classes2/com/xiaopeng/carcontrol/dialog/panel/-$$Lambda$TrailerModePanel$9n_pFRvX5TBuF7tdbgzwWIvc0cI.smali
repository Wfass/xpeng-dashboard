.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$9n_pFRvX5TBuF7tdbgzwWIvc0cI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$9n_pFRvX5TBuF7tdbgzwWIvc0cI;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$TrailerModePanel$9n_pFRvX5TBuF7tdbgzwWIvc0cI;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/TrailerModePanel;->lambda$onInitView$0$TrailerModePanel(Lcom/xiaopeng/carcontrol/viewmodel/chassis/TrailerHitchStatus;)V

    return-void
.end method
