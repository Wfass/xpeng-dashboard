.class public final synthetic Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$VdSgENUMOMfpjMAWR4UUgUh7prY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/CarControlService;

.field public final synthetic f$1:I

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/CarControlService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$VdSgENUMOMfpjMAWR4UUgUh7prY;->f$0:Lcom/xiaopeng/carcontrol/CarControlService;

    iput p2, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$VdSgENUMOMfpjMAWR4UUgUh7prY;->f$1:I

    iput-object p3, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$VdSgENUMOMfpjMAWR4UUgUh7prY;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$VdSgENUMOMfpjMAWR4UUgUh7prY;->f$0:Lcom/xiaopeng/carcontrol/CarControlService;

    iget v1, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$VdSgENUMOMfpjMAWR4UUgUh7prY;->f$1:I

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$VdSgENUMOMfpjMAWR4UUgUh7prY;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/CarControlService;->lambda$handleIntent$2$CarControlService(ILjava/lang/String;)V

    return-void
.end method
