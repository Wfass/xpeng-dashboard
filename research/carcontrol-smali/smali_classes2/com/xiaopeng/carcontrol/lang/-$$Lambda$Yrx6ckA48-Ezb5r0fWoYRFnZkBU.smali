.class public final synthetic Lcom/xiaopeng/carcontrol/lang/-$$Lambda$Yrx6ckA48-Ezb5r0fWoYRFnZkBU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/lang/TriggerJob;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/lang/TriggerJob;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/lang/-$$Lambda$Yrx6ckA48-Ezb5r0fWoYRFnZkBU;->f$0:Lcom/xiaopeng/carcontrol/lang/TriggerJob;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/lang/-$$Lambda$Yrx6ckA48-Ezb5r0fWoYRFnZkBU;->f$0:Lcom/xiaopeng/carcontrol/lang/TriggerJob;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/lang/TriggerJob;->onTrigger()V

    return-void
.end method
