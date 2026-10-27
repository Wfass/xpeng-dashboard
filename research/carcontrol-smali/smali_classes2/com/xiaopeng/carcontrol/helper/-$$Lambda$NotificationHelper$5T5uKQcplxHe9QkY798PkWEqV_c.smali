.class public final synthetic Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$5T5uKQcplxHe9QkY798PkWEqV_c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$5T5uKQcplxHe9QkY798PkWEqV_c;->f$0:Ljava/lang/String;

    iput p2, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$5T5uKQcplxHe9QkY798PkWEqV_c;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$5T5uKQcplxHe9QkY798PkWEqV_c;->f$0:Ljava/lang/String;

    iget v1, p0, Lcom/xiaopeng/carcontrol/helper/-$$Lambda$NotificationHelper$5T5uKQcplxHe9QkY798PkWEqV_c;->f$1:I

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->lambda$showToastLong$3(Ljava/lang/String;I)V

    return-void
.end method
