.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$KqCK-IiZT3fh89gkyVxeFaJqnD8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$KqCK-IiZT3fh89gkyVxeFaJqnD8;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/-$$Lambda$SeatMassagePanel$KqCK-IiZT3fh89gkyVxeFaJqnD8;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/rearseat/SeatMassagePanel;->lambda$initMassageData$2$SeatMassagePanel(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatMassage;)V

    return-void
.end method
