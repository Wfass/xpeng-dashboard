.class Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;
.super Ljava/lang/Object;
.source "SmartLightService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLightService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tasklet"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

.field private tick:J


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)V
    .locals 2

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->tick:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLightService;Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartLightService$1;

    .line 98
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)V

    return-void
.end method

.method public static synthetic lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw(Ljava/lang/Integer;)I
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 104
    :try_start_0
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->tick:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->tick:J

    .line 106
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->tick:J

    const-wide/16 v2, 0x12c

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 107
    const-string v0, "SmartLightService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tasklet running, mLuxArray="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLuxShortlyArray="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 108
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$200(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mShortlyCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 109
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSetBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mEnvironment="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 110
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$500(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mDayNight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mDayCounter="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 111
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$700(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLuxDayArray="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mNightCounter= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 112
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$900(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mLuxNightArray="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z

    move-result v0

    const/16 v1, 0xa

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$304(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v0

    rem-int/lit8 v0, v0, 0x3

    if-nez v0, :cond_3

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1102(Lcom/xiaopeng/xuiservice/smart/SmartLightService;Z)Z

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLightService$Tasklet$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLightService$Tasklet$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    .line 119
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 120
    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v0, v3

    .line 122
    .local v0, "brightness":I
    const-string v3, "SmartLightService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AvgBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in 3s, mSetBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-le v3, v1, :cond_2

    .line 127
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$202(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I

    .line 128
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 130
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1200(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)V

    .line 131
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$402(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I

    .line 134
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$100(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 137
    .end local v0    # "brightness":I
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$204(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v0

    if-le v0, v1, :cond_5

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v3, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLightService$Tasklet$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLightService$Tasklet$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    .line 139
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 140
    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    div-int/2addr v0, v3

    .line 142
    .restart local v0    # "brightness":I
    const-string v3, "SmartLightService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AvgBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " in 10s, mSetBrightness="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$202(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I

    .line 145
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 147
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 149
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 150
    :cond_4
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v3

    sub-int v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v4

    div-int/2addr v4, v1

    if-le v3, v4, :cond_5

    .line 153
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1200(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)V

    .line 154
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$402(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I

    .line 158
    .end local v0    # "brightness":I
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$704(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v0

    const/16 v1, 0x8

    if-le v0, v1, :cond_7

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLightService$Tasklet$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLightService$Tasklet$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    .line 160
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 161
    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    .line 163
    .local v0, "lux":I
    const-string v1, "SmartLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AvgLuxDay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in 8s, mDayNight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mEnvironment="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 164
    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$500(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isDayCounter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1500(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;)I

    move-result v1

    if-le v0, v1, :cond_6

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1400(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 168
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    sget-object v3, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->DAY:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    invoke-static {v1, v3}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1700(Lcom/xiaopeng/xuiservice/smart/SmartLightService;Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;)V

    goto :goto_1

    .line 170
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$800(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 171
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$702(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I

    .line 175
    .end local v0    # "lux":I
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$904(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1800(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v1

    if-le v0, v1, :cond_9

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1300(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLightService$Tasklet$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/xiaopeng/xuiservice/smart/-$$Lambda$SmartLightService$Tasklet$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    .line 177
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Ljava/util/stream/IntStream;->sum()I

    move-result v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/2addr v0, v1

    .line 180
    .restart local v0    # "lux":I
    const-string v1, "SmartLightService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AvgLuxNight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1800(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "s, mDayNight="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mEnvironment="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    .line 181
    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$500(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", isNightCounter="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v4}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1900(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1500(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;->access$2000(Lcom/xiaopeng/xuiservice/smart/SmartLightService$LightCurveMap;)I

    move-result v1

    if-ge v0, v1, :cond_8

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1900(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 185
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    sget-object v2, Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;->NIGHT:Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1700(Lcom/xiaopeng/xuiservice/smart/SmartLightService;Lcom/xiaopeng/xuiservice/smart/SmartLightService$DayNight;)V

    goto :goto_2

    .line 187
    :cond_8
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$1000(Lcom/xiaopeng/xuiservice/smart/SmartLightService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 188
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLightService$Tasklet;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLightService;

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLightService;->access$902(Lcom/xiaopeng/xuiservice/smart/SmartLightService;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    .end local v0    # "lux":I
    :cond_9
    :goto_2
    goto :goto_3

    .line 191
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SmartLightService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tasklet failed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    return-void
.end method
