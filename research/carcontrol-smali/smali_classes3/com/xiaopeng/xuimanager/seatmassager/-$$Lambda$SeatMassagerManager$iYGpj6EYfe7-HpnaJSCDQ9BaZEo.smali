.class public final synthetic Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$iYGpj6EYfe7-HpnaJSCDQ9BaZEo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$iYGpj6EYfe7-HpnaJSCDQ9BaZEo;->f$0:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$iYGpj6EYfe7-HpnaJSCDQ9BaZEo;->f$0:Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;

    check-cast p1, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->lambda$dispatchMassagerToClient$0(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$MassagerMessage;Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;)V

    return-void
.end method
