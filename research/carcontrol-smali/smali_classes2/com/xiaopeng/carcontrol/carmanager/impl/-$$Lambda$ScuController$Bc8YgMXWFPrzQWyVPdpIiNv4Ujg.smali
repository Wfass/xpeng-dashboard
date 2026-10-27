.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Bc8YgMXWFPrzQWyVPdpIiNv4Ujg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Bc8YgMXWFPrzQWyVPdpIiNv4Ujg;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Bc8YgMXWFPrzQWyVPdpIiNv4Ujg;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Bc8YgMXWFPrzQWyVPdpIiNv4Ujg;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$ScuController$Bc8YgMXWFPrzQWyVPdpIiNv4Ujg;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/ScuController;->lambda$setNgpVoiceChangeLane$43$ScuController(Z)V

    return-void
.end method
