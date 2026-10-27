.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$1lutggs91tgy3J5SbehsJIzYZEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$1lutggs91tgy3J5SbehsJIzYZEo;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$1lutggs91tgy3J5SbehsJIzYZEo;->f$1:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$1lutggs91tgy3J5SbehsJIzYZEo;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$1lutggs91tgy3J5SbehsJIzYZEo;->f$1:J

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->lambda$getTaskResult$5$AccountViewModel(JLjava/lang/Long;)V

    return-void
.end method
