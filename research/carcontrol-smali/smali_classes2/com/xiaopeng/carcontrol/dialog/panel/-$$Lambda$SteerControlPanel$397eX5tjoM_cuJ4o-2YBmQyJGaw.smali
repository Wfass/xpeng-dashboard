.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SteerControlPanel$397eX5tjoM_cuJ4o-2YBmQyJGaw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SteerControlPanel$397eX5tjoM_cuJ4o-2YBmQyJGaw;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SteerControlPanel$397eX5tjoM_cuJ4o-2YBmQyJGaw;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/SteerControlPanel;->lambda$onRegisterLiveData$0$SteerControlPanel(Ljava/lang/Boolean;)V

    return-void
.end method
