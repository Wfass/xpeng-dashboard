.class public final synthetic Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$q44saSeeL6lovYTDFexVHLSqu_E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$q44saSeeL6lovYTDFexVHLSqu_E;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-wide p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$q44saSeeL6lovYTDFexVHLSqu_E;->f$1:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$q44saSeeL6lovYTDFexVHLSqu_E;->f$0:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iget-wide v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/-$$Lambda$SeatViewModel$q44saSeeL6lovYTDFexVHLSqu_E;->f$1:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->lambda$controlDriverSeatStart$2$SeatViewModel(J)V

    return-void
.end method
