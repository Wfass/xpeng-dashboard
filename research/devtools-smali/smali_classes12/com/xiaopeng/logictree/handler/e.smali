.class public Lcom/xiaopeng/logictree/handler/e;
.super Lcom/xiaopeng/logictree/handler/h;
.source "GpsInfo.java"


# instance fields
.field private Yn:Lcom/xiaopeng/commonfunc/b/a/d;

.field private Yo:I

.field private Yp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/commonfunc/bean/GpsSensorData;",
            ">;"
        }
    .end annotation
.end field

.field private Yq:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Yr:Landroid/location/LocationListener;

.field private final Ys:Landroid/location/OnNmeaMessageListener;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private mLocationManager:Landroid/location/LocationManager;

.field private final nL:Lcom/xiaopeng/commonfunc/b/a/a;


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/h;-><init>(Landroid/app/Application;)V

    .line 55
    new-instance p1, Lcom/xiaopeng/logictree/handler/e$1;

    .line 56
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/j;->dR(I)Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/logictree/handler/e$1;-><init>(Lcom/xiaopeng/logictree/handler/e;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    .line 95
    new-instance p1, Lcom/xiaopeng/logictree/handler/e$2;

    invoke-direct {p1, p0}, Lcom/xiaopeng/logictree/handler/e$2;-><init>(Lcom/xiaopeng/logictree/handler/e;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->Yr:Landroid/location/LocationListener;

    .line 118
    new-instance p1, Lcom/xiaopeng/logictree/handler/e$3;

    invoke-direct {p1, p0}, Lcom/xiaopeng/logictree/handler/e$3;-><init>(Lcom/xiaopeng/logictree/handler/e;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->Ys:Landroid/location/OnNmeaMessageListener;

    .line 127
    new-instance p1, Lcom/xiaopeng/logictree/handler/-$$Lambda$e$gZSs97N3ZE15OwSBtf91GK1ydF0;

    invoke-direct {p1, p0}, Lcom/xiaopeng/logictree/handler/-$$Lambda$e$gZSs97N3ZE15OwSBtf91GK1ydF0;-><init>(Lcom/xiaopeng/logictree/handler/e;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->nL:Lcom/xiaopeng/commonfunc/b/a/a;

    .line 48
    const-string p1, "GpsInfo"

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->CLASS_NAME:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->context:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->mLocationManager:Landroid/location/LocationManager;

    .line 50
    new-instance p1, Lcom/xiaopeng/commonfunc/b/a/d;

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->CLASS_NAME:Ljava/lang/String;

    invoke-direct {p1, v0}, Lcom/xiaopeng/commonfunc/b/a/d;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->Yn:Lcom/xiaopeng/commonfunc/b/a/d;

    .line 51
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->Yp:Ljava/util/List;

    .line 52
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->Yq:Ljava/util/LinkedList;

    .line 53
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/logictree/handler/e;)Landroid/location/LocationManager;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/logictree/handler/e;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/logictree/handler/e;)Landroid/location/LocationListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/logictree/handler/e;->Yr:Landroid/location/LocationListener;

    return-object p0
.end method

.method private synthetic b(Landroid/car/hardware/CarPropertyValue;)V
    .locals 22

    move-object/from16 v0, p0

    .line 128
    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v1

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/car/hardware/CarPropertyValue;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 130
    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x6

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_0

    .line 142
    :pswitch_0
    instance-of v1, v2, [Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 143
    check-cast v2, [Ljava/lang/Float;

    .line 144
    if-eqz v2, :cond_0

    array-length v1, v2

    const/16 v9, 0x9

    if-le v1, v9, :cond_0

    .line 145
    iget-object v0, v0, Lcom/xiaopeng/logictree/handler/e;->Yp:Ljava/util/List;

    new-instance v1, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v10, v7

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v12, v6

    aget-object v5, v2, v5

    .line 146
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v14, v5

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    aget-object v3, v2, v3

    .line 147
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v6, v3

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    move-object v9, v1

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v2

    invoke-direct/range {v9 .. v21}, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;-><init>(DDDDDD)V

    .line 145
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 149
    :cond_0
    goto/16 :goto_0

    .line 152
    :pswitch_1
    instance-of v1, v2, [Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 153
    check-cast v2, [Ljava/lang/Float;

    .line 154
    if-eqz v2, :cond_2

    array-length v1, v2

    if-le v1, v8, :cond_2

    .line 155
    iget-object v0, v0, Lcom/xiaopeng/logictree/handler/e;->Yp:Ljava/util/List;

    new-instance v1, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;

    aget-object v7, v2, v7

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    float-to-double v10, v7

    aget-object v6, v2, v6

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    float-to-double v12, v6

    aget-object v5, v2, v5

    .line 156
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v14, v5

    aget-object v4, v2, v4

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-double v4, v4

    aget-object v3, v2, v3

    .line 157
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v6, v3

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    move-object v9, v1

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    move-wide/from16 v20, v2

    invoke-direct/range {v9 .. v21}, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;-><init>(DDDDDD)V

    .line 155
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 132
    :pswitch_2
    instance-of v1, v2, [Ljava/lang/Float;

    if-eqz v1, :cond_2

    .line 133
    check-cast v2, [Ljava/lang/Float;

    .line 134
    if-eqz v2, :cond_1

    array-length v1, v2

    const/16 v3, 0x24

    if-le v1, v3, :cond_1

    .line 135
    iget-object v0, v0, Lcom/xiaopeng/logictree/handler/e;->Yp:Ljava/util/List;

    new-instance v1, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;

    const/16 v3, 0x12

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v4, v3

    const/16 v3, 0x16

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v6, v3

    const/16 v3, 0x1a

    aget-object v3, v2, v3

    .line 136
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v8, v3

    const/16 v3, 0x14

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v10, v3

    const/16 v3, 0x18

    aget-object v3, v2, v3

    .line 137
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-double v12, v3

    const/16 v3, 0x1c

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v14, v2

    move-object v3, v1

    invoke-direct/range {v3 .. v15}, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;-><init>(DDDDDD)V

    .line 135
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    :cond_1
    nop

    .line 162
    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2161360d
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Lcom/xiaopeng/logictree/handler/e;)I
    .locals 0

    .line 29
    iget p0, p0, Lcom/xiaopeng/logictree/handler/e;->Yo:I

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/logictree/handler/e;)Landroid/location/OnNmeaMessageListener;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/logictree/handler/e;->Ys:Landroid/location/OnNmeaMessageListener;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/logictree/handler/e;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/logictree/handler/e;->qf()V

    return-void
.end method

.method static synthetic f(Lcom/xiaopeng/logictree/handler/e;)Lcom/xiaopeng/commonfunc/b/a/d;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/logictree/handler/e;->Yn:Lcom/xiaopeng/commonfunc/b/a/d;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaopeng/logictree/handler/e;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/logictree/handler/e;->qe()V

    return-void
.end method

.method static synthetic h(Lcom/xiaopeng/logictree/handler/e;)I
    .locals 2

    .line 29
    iget v0, p0, Lcom/xiaopeng/logictree/handler/e;->Yo:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/logictree/handler/e;->Yo:I

    return v0
.end method

.method static synthetic i(Lcom/xiaopeng/logictree/handler/e;)Ljava/util/LinkedList;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/logictree/handler/e;->Yq:Ljava/util/LinkedList;

    return-object p0
.end method

.method public static synthetic lambda$gZSs97N3ZE15OwSBtf91GK1ydF0(Lcom/xiaopeng/logictree/handler/e;Landroid/car/hardware/CarPropertyValue;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/logictree/handler/e;->b(Landroid/car/hardware/CarPropertyValue;)V

    return-void
.end method

.method private qe()V
    .locals 9

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->YB:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x4

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->Yp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/e;->YB:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-le v0, v2, :cond_3

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->Yp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;

    .line 234
    invoke-virtual {v2}, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->getGyro_X()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-object v5, p0, Lcom/xiaopeng/logictree/handler/e;->YB:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v3, v3, v7

    if-gtz v3, :cond_1

    .line 235
    invoke-virtual {v2}, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->getGyro_Y()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-object v5, p0, Lcom/xiaopeng/logictree/handler/e;->YB:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    cmpl-double v3, v3, v7

    if-gtz v3, :cond_1

    .line 236
    invoke-virtual {v2}, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->getGyro_Z()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    iget-object v5, p0, Lcom/xiaopeng/logictree/handler/e;->YB:[Ljava/lang/String;

    aget-object v5, v5, v6

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-gtz v3, :cond_1

    .line 237
    invoke-virtual {v2}, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->getAcc_X()D

    move-result-wide v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    invoke-virtual {v2}, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->getAcc_Y()D

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    add-double/2addr v3, v7

    .line 238
    invoke-virtual {v2}, Lcom/xiaopeng/commonfunc/bean/GpsSensorData;->getAcc_Z()D

    move-result-wide v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 237
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaopeng/logictree/handler/e;->YB:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v4, v4, v5

    .line 238
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    sub-double/2addr v2, v4

    .line 237
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    iget-object v4, p0, Lcom/xiaopeng/logictree/handler/e;->YB:[Ljava/lang/String;

    aget-object v4, v4, v1

    .line 239
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    goto :goto_1

    .line 243
    :cond_0
    goto/16 :goto_0

    .line 240
    :cond_1
    :goto_1
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V

    .line 241
    return-void

    .line 244
    :cond_2
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pN()V

    goto :goto_2

    .line 246
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->Yp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    .line 247
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    goto :goto_2

    .line 249
    :cond_4
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pM()V

    .line 252
    :goto_2
    return-void
.end method

.method private qf()V
    .locals 9

    .line 255
    nop

    .line 256
    nop

    .line 257
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 259
    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/e;->Yq:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/e;->YB:[Ljava/lang/String;

    array-length v1, v1

    if-gt v1, v2, :cond_0

    goto :goto_0

    .line 306
    :cond_0
    invoke-static {}, Lcom/xiaopeng/logictree/d;->pO()V

    goto/16 :goto_7

    .line 260
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/e;->YB:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 261
    const/4 v3, 0x0

    move v4, v2

    move v5, v3

    :goto_1
    iget-object v6, p0, Lcom/xiaopeng/logictree/handler/e;->Yq:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 262
    iget-object v6, p0, Lcom/xiaopeng/logictree/handler/e;->Yq:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 263
    const-string v7, "$GNGSV,"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 264
    const-string v7, "$GNGSV,"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    .line 265
    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 267
    :try_start_0
    array-length v7, v6

    if-le v7, v2, :cond_7

    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-ne v7, v4, :cond_7

    .line 268
    array-length v7, v6

    const/4 v8, 0x6

    if-le v7, v8, :cond_2

    aget-object v7, v6, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, v1, :cond_2

    .line 269
    add-int/lit8 v5, v5, 0x1

    .line 271
    :cond_2
    array-length v7, v6

    const/16 v8, 0xa

    if-le v7, v8, :cond_3

    aget-object v7, v6, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, v1, :cond_3

    .line 272
    add-int/lit8 v5, v5, 0x1

    .line 274
    :cond_3
    array-length v7, v6

    const/16 v8, 0xe

    if-le v7, v8, :cond_4

    aget-object v7, v6, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, v1, :cond_4

    .line 275
    add-int/lit8 v5, v5, 0x1

    .line 277
    :cond_4
    array-length v7, v6

    const/16 v8, 0x12

    if-le v7, v8, :cond_5

    aget-object v7, v6, v8

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-le v7, v1, :cond_5

    .line 278
    add-int/lit8 v5, v5, 0x1

    .line 280
    :cond_5
    aget-object v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ne v6, v4, :cond_6

    .line 281
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    nop

    .line 283
    goto :goto_2

    .line 285
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 288
    :cond_7
    nop

    .line 289
    nop

    .line 293
    :goto_2
    move v4, v2

    move v5, v3

    :goto_3
    goto :goto_4

    .line 291
    :catch_0
    move-exception v6

    .line 292
    invoke-virtual {v6}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 295
    :cond_8
    :goto_4
    goto/16 :goto_1

    .line 296
    :cond_9
    nop

    .line 297
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 298
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 299
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v3, v2

    .line 300
    goto :goto_5

    .line 301
    :cond_a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    div-int/2addr v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/logictree/d;->a(Ljava/lang/Integer;)V

    goto :goto_6

    .line 303
    :cond_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/logictree/d;->a(Ljava/lang/Integer;)V

    .line 305
    :goto_6
    nop

    .line 308
    :goto_7
    return-void
.end method

.method private removeMessage()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3eb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ec

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 226
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 229
    :cond_4
    return-void
.end method


# virtual methods
.method public declared-synchronized a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;
    .locals 9

    monitor-enter p0

    .line 166
    :try_start_0
    invoke-super {p0, p1}, Lcom/xiaopeng/logictree/handler/h;->a(Lcom/xiaopeng/logictree/a;)Ljava/lang/String;

    .line 167
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->YB:[Ljava/lang/String;

    const-string v0, "1"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/logictree/handler/e;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v0, 0x2710

    if-eqz p1, :cond_0

    .line 168
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/logictree/handler/e;->Yo:I

    .line 169
    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/e;->mLocationManager:Landroid/location/LocationManager;

    const-string v3, "gps"

    const-wide/16 v4, 0x1f4

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/xiaopeng/logictree/handler/e;->Yr:Landroid/location/LocationListener;

    .line 170
    invoke-static {p1}, Lcom/xiaopeng/lib/utils/j;->dR(I)Landroid/os/Looper;

    move-result-object v8

    .line 169
    invoke-virtual/range {v2 .. v8}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 172
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->YB:[Ljava/lang/String;

    const-string v2, "2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/logictree/handler/e;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 173
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->Yq:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 174
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->Yq:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    .line 176
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->mLocationManager:Landroid/location/LocationManager;

    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/e;->Ys:Landroid/location/OnNmeaMessageListener;

    iget-object v3, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2, v3}, Landroid/location/LocationManager;->addNmeaListener(Landroid/location/OnNmeaMessageListener;Landroid/os/Handler;)Z

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ea

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 178
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->YB:[Ljava/lang/String;

    const-string v2, "3"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/logictree/handler/e;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 179
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->Yp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 180
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 181
    const v2, 0x2161360d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/e;->Yn:Lcom/xiaopeng/commonfunc/b/a/d;

    iget-object v3, p0, Lcom/xiaopeng/logictree/handler/e;->nL:Lcom/xiaopeng/commonfunc/b/a/a;

    invoke-virtual {v2, p1, v3}, Lcom/xiaopeng/commonfunc/b/a/d;->a(Ljava/util/Collection;Lcom/xiaopeng/commonfunc/b/a/a;)V

    .line 183
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3eb

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 184
    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->YB:[Ljava/lang/String;

    const-string v2, "4"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/logictree/handler/e;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 185
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->Yp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 186
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 187
    const v2, 0x2161360f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/e;->Yn:Lcom/xiaopeng/commonfunc/b/a/d;

    iget-object v3, p0, Lcom/xiaopeng/logictree/handler/e;->nL:Lcom/xiaopeng/commonfunc/b/a/a;

    invoke-virtual {v2, p1, v3}, Lcom/xiaopeng/commonfunc/b/a/d;->a(Ljava/util/Collection;Lcom/xiaopeng/commonfunc/b/a/a;)V

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ec

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 190
    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->YB:[Ljava/lang/String;

    const-string v2, "5"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/logictree/handler/e;->a([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 191
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->Yp:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 192
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 193
    const v2, 0x2161360e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v2, p0, Lcom/xiaopeng/logictree/handler/e;->Yn:Lcom/xiaopeng/commonfunc/b/a/d;

    iget-object v3, p0, Lcom/xiaopeng/logictree/handler/e;->nL:Lcom/xiaopeng/commonfunc/b/a/a;

    invoke-virtual {v2, p1, v3}, Lcom/xiaopeng/commonfunc/b/a/d;->a(Ljava/util/Collection;Lcom/xiaopeng/commonfunc/b/a/a;)V

    .line 195
    iget-object p1, p0, Lcom/xiaopeng/logictree/handler/e;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 197
    :cond_5
    :goto_0
    const/4 p1, 0x0

    monitor-exit p0

    return-object p1

    .line 165
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public destroy()V
    .locals 2

    .line 202
    invoke-super {p0}, Lcom/xiaopeng/logictree/handler/h;->destroy()V

    .line 203
    invoke-direct {p0}, Lcom/xiaopeng/logictree/handler/e;->removeMessage()V

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/e;->Ys:Landroid/location/OnNmeaMessageListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeNmeaListener(Landroid/location/OnNmeaMessageListener;)V

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->mLocationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/xiaopeng/logictree/handler/e;->Yr:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->Yn:Lcom/xiaopeng/commonfunc/b/a/d;

    invoke-virtual {v0}, Lcom/xiaopeng/commonfunc/b/a/d;->onDestroy()V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->Yp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->Yq:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/logictree/handler/e;->Yq:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 211
    :cond_0
    return-void
.end method
