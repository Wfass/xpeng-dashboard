.class public final synthetic Lcom/xiaopeng/carcontrol/statistic/-$$Lambda$CarStatusUploadHelper$vP_rx9bsWnyFjC41yZgdHkao2vI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/statistic/-$$Lambda$CarStatusUploadHelper$vP_rx9bsWnyFjC41yZgdHkao2vI;->f$0:Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/statistic/-$$Lambda$CarStatusUploadHelper$vP_rx9bsWnyFjC41yZgdHkao2vI;->f$0:Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/statistic/CarStatusUploadHelper;->lambda$uploadResumeStatus$0$CarStatusUploadHelper()V

    return-void
.end method
