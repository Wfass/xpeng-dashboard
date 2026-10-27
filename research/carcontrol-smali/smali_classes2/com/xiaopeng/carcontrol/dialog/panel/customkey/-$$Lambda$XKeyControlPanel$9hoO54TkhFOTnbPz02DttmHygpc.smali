.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/customkey/-$$Lambda$XKeyControlPanel$9hoO54TkhFOTnbPz02DttmHygpc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/dialog/panel/customkey/XKeyControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/customkey/XKeyControlPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/-$$Lambda$XKeyControlPanel$9hoO54TkhFOTnbPz02DttmHygpc;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/customkey/XKeyControlPanel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/-$$Lambda$XKeyControlPanel$9hoO54TkhFOTnbPz02DttmHygpc;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/customkey/XKeyControlPanel;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/customkey/XKeyControlPanel;->lambda$new$0$XKeyControlPanel(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)V

    return-void
.end method
