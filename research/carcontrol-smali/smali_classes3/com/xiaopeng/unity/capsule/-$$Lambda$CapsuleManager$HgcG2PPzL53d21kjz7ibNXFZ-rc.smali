.class public final synthetic Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$HgcG2PPzL53d21kjz7ibNXFZ-rc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroidx/lifecycle/Observer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/unity/capsule/CapsuleManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$HgcG2PPzL53d21kjz7ibNXFZ-rc;->f$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$HgcG2PPzL53d21kjz7ibNXFZ-rc;->f$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->lambda$observeData$16$CapsuleManager(Ljava/lang/Boolean;)V

    return-void
.end method
