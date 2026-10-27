.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$TrailerModeControlManager$DZNeSNq8NlKtmKh0EF8su3ExneU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$TrailerModeControlManager$DZNeSNq8NlKtmKh0EF8su3ExneU;->f$0:Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$TrailerModeControlManager$DZNeSNq8NlKtmKh0EF8su3ExneU;->f$0:Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/TrailerModeControlManager;->lambda$observeData$0$TrailerModeControlManager(Ljava/lang/Boolean;)V

    return-void
.end method
