.class public final synthetic Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$rXrVV0W70wT9XwY0_IE35-BeS8w;
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

    iput-object p1, p0, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$rXrVV0W70wT9XwY0_IE35-BeS8w;->f$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/unity/capsule/-$$Lambda$CapsuleManager$rXrVV0W70wT9XwY0_IE35-BeS8w;->f$0:Lcom/xiaopeng/unity/capsule/CapsuleManager;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->lambda$observeData$3$CapsuleManager(Ljava/lang/Integer;)V

    return-void
.end method
