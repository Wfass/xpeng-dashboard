.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$8BhL0UsiSAG3h57VC1ECCg4dPII;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/AtlManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$8BhL0UsiSAG3h57VC1ECCg4dPII;->f$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$AtlManager$8BhL0UsiSAG3h57VC1ECCg4dPII;->f$0:Lcom/xiaopeng/unity/carcontrol/AtlManager;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/AtlManager;->lambda$observeData$3$AtlManager(Lcom/xiaopeng/carcontrol/viewmodel/light/AtlColor;)V

    return-void
.end method
