.class public final synthetic Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$HO0Y4_rPRYp2ilfzIglD-Qi6HMo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$HO0Y4_rPRYp2ilfzIglD-Qi6HMo;->f$0:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$HO0Y4_rPRYp2ilfzIglD-Qi6HMo;->f$0:I

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->lambda$showToast$7(I)V

    return-void
.end method
