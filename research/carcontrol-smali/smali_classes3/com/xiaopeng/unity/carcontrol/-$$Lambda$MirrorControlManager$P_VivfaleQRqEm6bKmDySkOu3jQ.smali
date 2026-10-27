.class public final synthetic Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$P_VivfaleQRqEm6bKmDySkOu3jQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$P_VivfaleQRqEm6bKmDySkOu3jQ;->f$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$MirrorControlManager$P_VivfaleQRqEm6bKmDySkOu3jQ;->f$0:Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/carcontrol/MirrorControlManager;->lambda$observeData$15$MirrorControlManager(Ljava/lang/Integer;)V

    return-void
.end method
