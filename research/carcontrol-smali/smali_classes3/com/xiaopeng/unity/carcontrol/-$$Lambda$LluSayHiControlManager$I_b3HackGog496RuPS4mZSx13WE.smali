.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$I_b3HackGog496RuPS4mZSx13WE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$I_b3HackGog496RuPS4mZSx13WE;->f$0:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$LluSayHiControlManager$I_b3HackGog496RuPS4mZSx13WE;->f$0:Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/LluSayHiControlManager;->lambda$observeData$3$LluSayHiControlManager(Ljava/lang/Boolean;)V

    return-void
.end method
