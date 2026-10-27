.class Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService$1;
.super Ljava/lang/Object;
.source "SeatMassagerService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/seatmassager/SeatMassagerManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$onChangeIntensityVibrate$2(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/Integer;

    .line 177
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onErrorVibrate$3(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/Integer;

    .line 193
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onStartVibrate$0(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/Integer;

    .line 143
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$onStopVibrate$1(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/Integer;

    .line 160
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onChangeEffectMassager(ILjava/lang/String;)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "effect"    # Ljava/lang/String;

    .line 81
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 84
    .local v0, "results":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 85
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 87
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "SeatMassager"

    const-string v3, "onChangeEffectMassager"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 91
    .end local v0    # "results":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onChangeIntensityMassager(II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "intensity"    # I

    .line 95
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 98
    .local v0, "results":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 99
    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 101
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "SeatMassager"

    const-string v3, "onChangeIntensityMassager"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 105
    .end local v0    # "results":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onChangeIntensityVibrate(Ljava/util/Set;I)V
    .locals 5
    .param p2, "intensity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .line 173
    .local p1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 176
    .local v0, "results":[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    .line 177
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$s7qrR0-DmyeTanNpJgHd9YDIrag;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$s7qrR0-DmyeTanNpJgHd9YDIrag;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 176
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$100(Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 179
    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 181
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "SeatMassager"

    const-string v3, "onChangeIntensityVibrate"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 185
    .end local v0    # "results":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onErrorMassager(ILjava/lang/String;II)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "opCode"    # I
    .param p4, "errCode"    # I

    .line 109
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 112
    .local v0, "results":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 113
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 114
    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 115
    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 117
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "SeatMassager"

    const-string v3, "onErrorMassager"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 121
    .end local v0    # "results":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onErrorVibrate(Ljava/util/Set;Ljava/lang/String;II)V
    .locals 5
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "opCode"    # I
    .param p4, "errCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .line 189
    .local p1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 190
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 192
    .local v0, "results":[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    .line 193
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$gJ2kAhF_aIs1lCEQCs8nBpajzb4;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$gJ2kAhF_aIs1lCEQCs8nBpajzb4;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 192
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$100(Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 195
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 196
    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 197
    const/4 v1, 0x3

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 199
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "SeatMassager"

    const-string v3, "onErrorVibrate"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 203
    .end local v0    # "results":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onLoadVibrate(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "effect"    # Ljava/lang/String;
    .param p2, "result"    # Z

    .line 125
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 128
    .local v0, "results":[Ljava/lang/String;
    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 129
    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 131
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "SeatMassager"

    const-string v3, "onLoadVibrate"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 135
    .end local v0    # "results":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onStartMassager(ILjava/lang/String;I)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "intensity"    # I

    .line 51
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 54
    .local v0, "results":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 55
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 56
    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 58
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "SeatMassager"

    const-string v3, "onStartMassager"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 62
    .end local v0    # "results":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onStartVibrate(Ljava/util/Set;Ljava/lang/String;I)V
    .locals 5
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 139
    .local p1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 140
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 142
    .local v0, "results":[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    .line 143
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$GIaqxxMeIQ8wodeJ7TIHMO-QflA;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$GIaqxxMeIQ8wodeJ7TIHMO-QflA;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 142
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$100(Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 145
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 146
    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 148
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "SeatMassager"

    const-string v3, "onStartVibrate"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 152
    .end local v0    # "results":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onStopMassager(ILjava/lang/String;I)V
    .locals 4
    .param p1, "id"    # I
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "intensity"    # I

    .line 66
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 69
    .local v0, "results":[Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 70
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 71
    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 73
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "SeatMassager"

    const-string v3, "onStopMassager"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 77
    .end local v0    # "results":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onStopVibrate(Ljava/util/Set;Ljava/lang/String;I)V
    .locals 5
    .param p2, "effect"    # Ljava/lang/String;
    .param p3, "position"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 156
    .local p1, "ids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 157
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    .line 159
    .local v0, "results":[Ljava/lang/String;
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService$1;->this$0:Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;

    .line 160
    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    sget-object v4, Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$unOc5OOBFlwYVf7AIby1GkElP8c;->INSTANCE:Lcom/xiaopeng/xuiservice/opensdk/manager/-$$Lambda$SeatMassagerService$1$unOc5OOBFlwYVf7AIby1GkElP8c;

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    .line 159
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$100(Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;Ljava/util/Set;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 162
    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 163
    const/4 v1, 0x2

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 165
    invoke-static {}, Lcom/xiaopeng/xuiservice/opensdk/manager/SeatMassagerService;->access$000()Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;

    move-result-object v1

    const-string v2, "SeatMassager"

    const-string v3, "onStopVibrate"

    invoke-interface {v1, v2, v3, v0}, Lcom/xiaopeng/xuiservice/opensdk/manager/IPipeListener;->onPipeBusNotify(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 169
    .end local v0    # "results":[Ljava/lang/String;
    :cond_0
    return-void
.end method
