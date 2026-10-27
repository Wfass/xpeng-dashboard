.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$CF8T-mvMP-l6WE3qN8RIFyjGrkA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$CF8T-mvMP-l6WE3qN8RIFyjGrkA;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$CF8T-mvMP-l6WE3qN8RIFyjGrkA;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$CF8T-mvMP-l6WE3qN8RIFyjGrkA;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$CF8T-mvMP-l6WE3qN8RIFyjGrkA;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->lambda$getTaskResult$9$AccountViewModel(J)V

    return-void
.end method
