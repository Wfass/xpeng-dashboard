.class final Lcom/xiaopeng/devtools/model/f/b$a;
.super Ljava/lang/Object;
.source "GpsPerformanceModel.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/f/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic ug:Lcom/xiaopeng/devtools/model/f/b;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/devtools/model/f/b;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/f/b$a;->ug:Lcom/xiaopeng/devtools/model/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/devtools/model/f/b;Lcom/xiaopeng/devtools/model/f/b$1;)V
    .locals 0

    .line 129
    invoke-direct {p0, p1}, Lcom/xiaopeng/devtools/model/f/b$a;-><init>(Lcom/xiaopeng/devtools/model/f/b;)V

    return-void
.end method

.method private a(ILandroid/location/GpsStatus;)V
    .locals 3

    .line 138
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 139
    invoke-virtual {p2}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result p1

    .line 140
    invoke-virtual {p2}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 142
    nop

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b$a;->ug:Lcom/xiaopeng/devtools/model/f/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/b;->b(Lcom/xiaopeng/devtools/model/f/b;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b$a;->ug:Lcom/xiaopeng/devtools/model/f/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/b;->b(Lcom/xiaopeng/devtools/model/f/b;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    if-gt v1, p1, :cond_1

    .line 146
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/GpsSatellite;

    .line 148
    iget-object v2, p0, Lcom/xiaopeng/devtools/model/f/b$a;->ug:Lcom/xiaopeng/devtools/model/f/b;

    invoke-static {v2}, Lcom/xiaopeng/devtools/model/f/b;->b(Lcom/xiaopeng/devtools/model/f/b;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 149
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    if-gt v1, p1, :cond_0

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b$a;->ug:Lcom/xiaopeng/devtools/model/f/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/b;->b(Lcom/xiaopeng/devtools/model/f/b;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 153
    goto :goto_0

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/b$a;->ug:Lcom/xiaopeng/devtools/model/f/b;

    invoke-static {p1}, Lcom/xiaopeng/devtools/model/f/b;->b(Lcom/xiaopeng/devtools/model/f/b;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/f/b$a;->ug:Lcom/xiaopeng/devtools/model/f/b;

    invoke-static {p1, v1}, Lcom/xiaopeng/devtools/model/f/b;->a(Lcom/xiaopeng/devtools/model/f/b;I)I

    .line 157
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance p2, Lcom/xiaopeng/devtools/bean/event/signal/GpsNumSnrEvent;

    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b$a;->ug:Lcom/xiaopeng/devtools/model/f/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/b;->b(Lcom/xiaopeng/devtools/model/f/b;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v0}, Lcom/xiaopeng/devtools/bean/event/signal/GpsNumSnrEvent;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, p2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 159
    :cond_2
    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/f/b$a;->ug:Lcom/xiaopeng/devtools/model/f/b;

    invoke-static {v0}, Lcom/xiaopeng/devtools/model/f/b;->a(Lcom/xiaopeng/devtools/model/f/b;)Landroid/location/LocationManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object v0

    .line 134
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/devtools/model/f/b$a;->a(ILandroid/location/GpsStatus;)V

    .line 135
    return-void
.end method
