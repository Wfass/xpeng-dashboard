.class public final synthetic Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$9nw4GQ80rSjPjsfao6-0O5TnnLo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$9nw4GQ80rSjPjsfao6-0O5TnnLo;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/-$$Lambda$FridgeManager$9nw4GQ80rSjPjsfao6-0O5TnnLo;->f$0:Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;->lambda$processServicesOn$4(Lcom/xiaopeng/xuiservice/iot/manager/FridgeManager;)V

    return-void
.end method
