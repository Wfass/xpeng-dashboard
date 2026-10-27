.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AvasController$qlceixTni5t8z5cmJpnE8FAcxqE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AvasController$qlceixTni5t8z5cmJpnE8FAcxqE;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AvasController$qlceixTni5t8z5cmJpnE8FAcxqE;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AvasController$qlceixTni5t8z5cmJpnE8FAcxqE;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$AvasController$qlceixTni5t8z5cmJpnE8FAcxqE;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/AvasController;->lambda$setAvasExternalSw$1$AvasController(Z)V

    return-void
.end method
