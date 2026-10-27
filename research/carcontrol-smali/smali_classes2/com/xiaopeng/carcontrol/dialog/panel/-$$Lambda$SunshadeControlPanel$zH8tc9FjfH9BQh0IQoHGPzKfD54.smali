.class public final synthetic Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$zH8tc9FjfH9BQh0IQoHGPzKfD54;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$zH8tc9FjfH9BQh0IQoHGPzKfD54;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/dialog/panel/-$$Lambda$SunshadeControlPanel$zH8tc9FjfH9BQh0IQoHGPzKfD54;->f$0:Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/dialog/panel/SunshadeControlPanel;->lambda$onRegisterLiveData$8$SunshadeControlPanel(Ljava/lang/Boolean;)V

    return-void
.end method
