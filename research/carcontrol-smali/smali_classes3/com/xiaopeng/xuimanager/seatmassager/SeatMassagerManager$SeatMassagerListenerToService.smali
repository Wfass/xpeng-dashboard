.class Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;
.super Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener$Stub;
.source "SeatMassagerManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SeatMassagerListenerToService"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;)V
    .locals 1

    .line 224
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/seatmassager/ISeatMassagerEventListener$Stub;-><init>()V

    .line 225
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public static synthetic lambda$Igo2_uSZRCxpiknzZ5VtqFp77VI(Ljava/lang/String;)I
    .locals 0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public onMassagerEvent(IILjava/lang/String;I)V
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 232
    invoke-static {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->access$200(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;IILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public onVibrateEvent(Ljava/util/List;ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$SeatMassagerListenerToService;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;

    if-eqz v0, :cond_0

    .line 241
    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$SeatMassagerListenerToService$Igo2_uSZRCxpiknzZ5VtqFp77VI;->INSTANCE:Lcom/xiaopeng/xuimanager/seatmassager/-$$Lambda$SeatMassagerManager$SeatMassagerListenerToService$Igo2_uSZRCxpiknzZ5VtqFp77VI;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 243
    invoke-static {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;->access$300(Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager;Ljava/util/Set;ILjava/lang/String;I)V

    :cond_0
    return-void
.end method
