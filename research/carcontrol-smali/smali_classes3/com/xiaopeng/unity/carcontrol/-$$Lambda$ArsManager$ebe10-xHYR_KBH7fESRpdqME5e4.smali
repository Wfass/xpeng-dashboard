.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$ebe10-xHYR_KBH7fESRpdqME5e4;
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

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$ebe10-xHYR_KBH7fESRpdqME5e4;->f$0:Lcom/xiaopeng/unity/carcontrol/ArsManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ArsManager$ebe10-xHYR_KBH7fESRpdqME5e4;->f$0:Lcom/xiaopeng/unity/carcontrol/ArsManager;

    check-cast p1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ArsManager;->lambda$observeData$3$ArsManager(Lcom/xiaopeng/carcontrol/viewmodel/cabin/ArsWorkState;)V

    return-void
.end method
