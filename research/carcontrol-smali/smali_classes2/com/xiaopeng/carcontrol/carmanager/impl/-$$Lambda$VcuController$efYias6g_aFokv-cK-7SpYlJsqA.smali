.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$VcuController$efYias6g_aFokv-cK-7SpYlJsqA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$VcuController$efYias6g_aFokv-cK-7SpYlJsqA;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    iput-boolean p2, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$VcuController$efYias6g_aFokv-cK-7SpYlJsqA;->f$1:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$VcuController$efYias6g_aFokv-cK-7SpYlJsqA;->f$0:Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;

    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/carmanager/impl/-$$Lambda$VcuController$efYias6g_aFokv-cK-7SpYlJsqA;->f$1:Z

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/impl/VcuController;->lambda$setSsaSwEnable$6$VcuController(Z)V

    return-void
.end method
