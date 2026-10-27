.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$wYlkhb7-kFDpA9PblPgZz7Yl72A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

.field public final synthetic f$1:Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$wYlkhb7-kFDpA9PblPgZz7Yl72A;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$wYlkhb7-kFDpA9PblPgZz7Yl72A;->f$1:Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$wYlkhb7-kFDpA9PblPgZz7Yl72A;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/account/-$$Lambda$AccountViewModel$wYlkhb7-kFDpA9PblPgZz7Yl72A;->f$1:Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/account/AccountViewModel;->lambda$onAccountOrGroupChange$3$AccountViewModel(Lcom/xiaopeng/carcontrol/bean/SyncGroupEventMsg;)V

    return-void
.end method
