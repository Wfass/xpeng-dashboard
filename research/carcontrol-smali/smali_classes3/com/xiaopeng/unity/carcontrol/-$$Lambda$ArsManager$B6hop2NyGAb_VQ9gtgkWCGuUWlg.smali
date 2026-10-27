.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$B6hop2NyGAb_VQ9gtgkWCGuUWlg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/ArsManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/ArsManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$B6hop2NyGAb_VQ9gtgkWCGuUWlg;->f$0:Lcom/xiaopeng/unity/carcontrol/ArsManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$B6hop2NyGAb_VQ9gtgkWCGuUWlg;->f$0:Lcom/xiaopeng/unity/carcontrol/ArsManager;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->lambda$observeData$1$ArsManager(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsInitState;)V

    return-void
.end method
