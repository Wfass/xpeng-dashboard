.class Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;
.super Ljava/lang/Object;
.source "XpDiagnosticManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/diagnostic/XpDiagnosticManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarEcuEventCallbacks"
.end annotation


# instance fields
.field mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mLastUpdateTime:J

.field final synthetic this$0:Landroid/car/diagnostic/XpDiagnosticManager;


# direct methods
.method private constructor <init>(Landroid/car/diagnostic/XpDiagnosticManager;)V
    .locals 2

    .line 3113
    iput-object p1, p0, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->this$0:Landroid/car/diagnostic/XpDiagnosticManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 3114
    iput-wide v0, p0, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->mLastUpdateTime:J

    .line 3115
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->mCallbacks:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/diagnostic/XpDiagnosticManager;Landroid/car/diagnostic/XpDiagnosticManager$1;)V
    .locals 0

    .line 3113
    invoke-direct {p0, p1}, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;-><init>(Landroid/car/diagnostic/XpDiagnosticManager;)V

    return-void
.end method

.method static synthetic lambda$onErrorEvent$1(IILandroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 5

    .line 3152
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    const-string v1, " callback: "

    const-string v2, " errorCode:"

    const-string v3, "XpDiagnosticManager"

    if-eqz v0, :cond_0

    .line 3153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "++++onErrorEvent propertyId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3155
    :cond_0
    invoke-interface {p2, p0, p1}, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;->onErrorEvent(II)V

    .line 3156
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_1

    .line 3157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "----onErrorEvent propertyId: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method static synthetic lambda$onPropertyChanged$0(Landroid/car/hardware/CarPropertyValue;Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 4

    .line 3132
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    const-string v1, " callback:"

    const-string v2, "XpDiagnosticManager"

    if-eqz v0, :cond_0

    .line 3133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++onPropertyChanged: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3135
    :cond_0
    invoke-interface {p1, p0}, Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;->onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    .line 3136
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_1

    .line 3137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "----onPropertyChanged: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public add(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 1

    .line 3170
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public contains(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)Z
    .locals 1

    .line 3166
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public isEmpty()Z
    .locals 1

    .line 3178
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method onErrorEvent(II)V
    .locals 4

    .line 3148
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    const-string v1, " errorCode:"

    const-string v2, "XpDiagnosticManager"

    if-eqz v0, :cond_0

    .line 3149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++onErrorEvent propertyId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3151
    :cond_0
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->mCallbacks:Ljava/util/List;

    new-instance v3, Landroid/car/diagnostic/-$$Lambda$XpDiagnosticManager$CarEcuEventCallbacks$SN2GUbtYclXtjCTdB0dgIVO-8qk;

    invoke-direct {v3, p1, p2}, Landroid/car/diagnostic/-$$Lambda$XpDiagnosticManager$CarEcuEventCallbacks$SN2GUbtYclXtjCTdB0dgIVO-8qk;-><init>(II)V

    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 3160
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_1

    .line 3161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--onErrorEvent propertyId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method onPropertyChanged(Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 6

    .line 3119
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    const-string v1, "XpDiagnosticManager"

    if-eqz v0, :cond_0

    .line 3120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "++onPropertyChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3124
    :cond_0
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getTimestamp()J

    move-result-wide v2

    .line 3125
    invoke-virtual {p1}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object v0

    .line 3127
    iget-wide v4, p0, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->mLastUpdateTime:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    const-string v0, "dropping old property data"

    .line 3128
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3130
    :cond_1
    iput-wide v2, p0, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->mLastUpdateTime:J

    .line 3131
    iget-object v2, p0, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->mCallbacks:Ljava/util/List;

    new-instance v3, Landroid/car/diagnostic/-$$Lambda$XpDiagnosticManager$CarEcuEventCallbacks$9PG9bliNfXbwPonUxsqm8A75IeE;

    invoke-direct {v3, v0}, Landroid/car/diagnostic/-$$Lambda$XpDiagnosticManager$CarEcuEventCallbacks$9PG9bliNfXbwPonUxsqm8A75IeE;-><init>(Landroid/car/hardware/CarPropertyValue;)V

    invoke-interface {v2, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 3141
    :goto_0
    sget-boolean v0, Landroid/car/XpDebugLog;->CAR_DEBUG:Z

    if-eqz v0, :cond_2

    .line 3142
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--onPropertyChanged: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public remove(Landroid/car/hardware/CarEcuManager$CarEcuEventCallback;)V
    .locals 1

    .line 3174
    iget-object v0, p0, Landroid/car/diagnostic/XpDiagnosticManager$CarEcuEventCallbacks;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
