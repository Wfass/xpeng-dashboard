.class public Lcom/xiaopeng/carcontrol/bean/Seat;
.super Ljava/lang/Object;
.source "Seat.java"


# static fields
.field public static final DIRECTION_DECREASE:I = 0x2

.field public static final DIRECTION_INCREASE:I = 0x1

.field private static final SEAT_BACKREST_MAX:I = 0x62

.field private static final SEAT_BACKREST_MIN:I = 0x2

.field public static final SEAT_CONTROL_MAX_PERCENT:I = 0x62

.field public static final SEAT_CONTROL_MIN_PERCENT:I = 0x2

.field public static final SEAT_EXHIBITION_MODE_BACKREST:I

.field public static final SEAT_EXHIBITION_MODE_CUSHION:I

.field public static final SEAT_EXHIBITION_MODE_FORE:I

.field public static final SEAT_EXHIBITION_MODE_HEIGHT:I

.field public static final SEAT_EXHIBITION_MODE_LEG:I

.field public static final SEAT_EXHIBITION_MODE_SEC_ROW_ANGLE_POS:I

.field public static final SEAT_EXHIBITION_MODE_SEC_ROW_HEAD_HEIGHT_POS:I

.field public static final SEAT_EXHIBITION_MODE_SEC_ROW_HEAD_HOR_POS:I

.field public static final SEAT_EXHIBITION_MODE_SEC_ROW_HOR_POS:I

.field public static final SEAT_EXHIBITION_MODE_SEC_ROW_LEG_HEIGHT_POS:I

.field public static final SEAT_EXHIBITION_MODE_SEC_ROW_LEG_HOR_POS:I

.field public static final SEAT_EXHIBITION_MODE_SEC_ROW_TILT_POS:I

.field public static final SEAT_EXHIBITION_MODE_TRD_ROW_HEAD_VER_POS:I = 0x0

.field public static final SEAT_EXHIBITION_MODE_TRD_ROW_TILT_POS:I = 0x2b

.field private static final SEAT_FORE_AFT_MAX:I = 0x62

.field private static final SEAT_FORE_AFT_MIN:I = 0x2

.field private static final SEAT_HEIGHT_MAX:I = 0x62

.field private static final SEAT_HEIGHT_MIN:I = 0x2

.field public static final SEAT_POS_DEVIATION:I = 0x2

.field public static final SEAT_POS_LEG_VERTICAL_DEVIATION:I = 0x4

.field public static final SEAT_PSN_SUPPORT_MAX:I = 0x3

.field public static final SEAT_WELCOME_HORZ_POS:I = 0x19

.field private static final TAG:Ljava/lang/String; = "Seat"

.field public static final TYPE_CUSHION:I = 0x7

.field public static final TYPE_HEADREST_HORZ:I = 0x9

.field public static final TYPE_HEADREST_VER:I = 0x8

.field public static final TYPE_HORZ:I = 0x1

.field public static final TYPE_LEG:I = 0x4

.field public static final TYPE_LUMB_HORZ:I = 0x5

.field public static final TYPE_LUMB_VERT:I = 0x6

.field public static final TYPE_MAX:I = 0x4

.field public static final TYPE_TILT:I = 0x3

.field public static final TYPE_VERT:I = 0x2

.field public static final VIP_SEAT_TILT_DEVIATION:I = 0x4


# instance fields
.field private volatile mAdjustDirection:I

.field private volatile mAdjustType:I

.field private final mIsDriverSeat:Z

.field private volatile mSeatCushion:I

.field private volatile mSeatHeadHor:I

.field private volatile mSeatHeadVer:I

.field private volatile mSeatHorz:I

.field private volatile mSeatLeg:I

.field private volatile mSeatTilt:I

.field private volatile mSeatVert:I

.field private volatile mSeatZeroAngle:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "getMSMSeatDefaultPos"

    .line 94
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v0

    sput v1, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_FORE:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 95
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    sput v1, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_HEIGHT:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 96
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v4, 0x2

    aget v1, v1, v4

    sput v1, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_BACKREST:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 97
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v5, 0x3

    aget v1, v1, v5

    sput v1, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_LEG:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 98
    invoke-static {v2, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v2, 0x4

    aget v1, v1, v2

    sput v1, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_CUSHION:I

    new-array v1, v0, [Ljava/lang/Object;

    const-string v6, "getSecRowMSMSeatDefaultPos"

    .line 100
    invoke-static {v6, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v0

    sput v1, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_HOR_POS:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 101
    invoke-static {v6, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v3

    sput v1, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_ANGLE_POS:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 102
    invoke-static {v6, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v4

    sput v1, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_TILT_POS:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 103
    invoke-static {v6, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v5

    sput v1, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_LEG_HEIGHT_POS:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 104
    invoke-static {v6, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    aget v1, v1, v2

    sput v1, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_LEG_HOR_POS:I

    new-array v1, v0, [Ljava/lang/Object;

    .line 105
    invoke-static {v6, v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v1

    const/4 v2, 0x5

    aget v1, v1, v2

    sput v1, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_HEAD_HEIGHT_POS:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 106
    invoke-static {v6, v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getIntArray(Ljava/lang/String;[Ljava/lang/Object;)[I

    move-result-object v0

    const/4 v1, 0x6

    aget v0, v0, v1

    sput v0, Lcom/xiaopeng/carcontrol/bean/Seat;->SEAT_EXHIBITION_MODE_SEC_ROW_HEAD_HOR_POS:I

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDriverSeat"
        }
    .end annotation

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/carcontrol/bean/Seat;-><init>(Z[I)V

    return-void
.end method

.method private constructor <init>(Z[I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isDriverSeat",
            "locationValue"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 152
    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mAdjustType:I

    .line 154
    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mAdjustDirection:I

    .line 161
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mIsDriverSeat:Z

    if-eqz p2, :cond_0

    .line 163
    array-length v1, p2

    const/4 v2, 0x4

    if-lt v1, v2, :cond_0

    .line 164
    aget v0, p2, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHorz:I

    const/4 v0, 0x1

    .line 165
    aget v0, p2, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatVert:I

    const/4 v0, 0x2

    .line 166
    aget v0, p2, v0

    iput v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatTilt:I

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    .line 168
    aget p1, p2, p1

    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatLeg:I

    :cond_0
    return-void
.end method

.method public static fromPosition([I)Lcom/xiaopeng/carcontrol/bean/Seat;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 189
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/Seat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/bean/Seat;-><init>(Z)V

    if-eqz p0, :cond_0

    .line 190
    array-length v2, p0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 192
    :try_start_0
    aget v4, p0, v2

    iput v4, v0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHorz:I

    .line 193
    aget v1, p0, v1

    iput v1, v0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatVert:I

    const/4 v1, 0x2

    .line 194
    aget v1, p0, v1

    iput v1, v0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatTilt:I

    const/4 v1, 0x3

    .line 195
    aget v1, p0, v1

    iput v1, v0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatLeg:I

    .line 196
    iget-boolean v1, v0, Lcom/xiaopeng/carcontrol/bean/Seat;->mIsDriverSeat:Z

    if-eqz v1, :cond_0

    .line 197
    aget p0, p0, v3

    iput p0, v0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatCushion:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 200
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", jsonString"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Seat"

    invoke-static {v1, p0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static fromSecRowPosition([I)Lcom/xiaopeng/carcontrol/bean/Seat;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 208
    new-instance v0, Lcom/xiaopeng/carcontrol/bean/Seat;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/xiaopeng/carcontrol/bean/Seat;-><init>(Z)V

    if-eqz p0, :cond_0

    .line 209
    array-length v2, p0

    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    const/4 v2, 0x0

    .line 211
    :try_start_0
    aget v4, p0, v2

    iput v4, v0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHorz:I

    .line 212
    aget v1, p0, v1

    iput v1, v0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatZeroAngle:I

    const/4 v1, 0x2

    .line 213
    aget v1, p0, v1

    iput v1, v0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatTilt:I

    const/4 v1, 0x3

    .line 214
    aget v1, p0, v1

    iput v1, v0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatCushion:I

    .line 215
    aget v1, p0, v3

    iput v1, v0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatLeg:I

    const/4 v1, 0x5

    .line 216
    aget v1, p0, v1

    iput v1, v0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHeadVer:I

    const/4 v1, 0x6

    .line 217
    aget p0, p0, v1

    iput p0, v0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHeadHor:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 219
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", jsonString"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "Seat"

    invoke-static {v1, p0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-object v0
.end method

.method public static isPositionEqual([I[I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "currentPosition",
            "position"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 398
    :cond_0
    aget v1, p0, v0

    aget v2, p1, v0

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_3

    aget v1, p0, v2

    aget v4, p1, v2

    sub-int/2addr v1, v4

    .line 399
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_3

    aget v1, p0, v3

    aget v4, p1, v3

    sub-int/2addr v1, v4

    .line 400
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_3

    const-string v1, "isSupportDrvLeg"

    .line 401
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    aget v5, p0, v1

    aget v1, p1, v1

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v4, :cond_3

    :cond_1
    const-string v1, "isSupportDrvCushion"

    .line 402
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    aget p0, p0, v4

    aget p1, p1, v4

    sub-int/2addr p0, p1

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    if-ge p0, v3, :cond_3

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method


# virtual methods
.method public getAdjustingDirection()I
    .locals 1

    .line 337
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mAdjustDirection:I

    return v0
.end method

.method public getAdjustingType()I
    .locals 1

    .line 333
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mAdjustType:I

    return v0
.end method

.method public getSeatCushionValue()I
    .locals 1

    .line 287
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatCushion:I

    return v0
.end method

.method public getSeatHeadHor()I
    .locals 1

    .line 227
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHeadHor:I

    return v0
.end method

.method public getSeatHeadVer()I
    .locals 1

    .line 235
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHeadVer:I

    return v0
.end method

.method public getSeatHorzValue()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHorz:I

    return v0
.end method

.method public getSeatLegValue()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatLeg:I

    return v0
.end method

.method public getSeatPosition()[I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [I

    .line 311
    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHorz:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatVert:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatTilt:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatLeg:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatCushion:I

    const/4 v2, 0x4

    aput v1, v0, v2

    return-object v0
.end method

.method public getSeatTiltValue()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatTilt:I

    return v0
.end method

.method public getSeatVertValue()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatVert:I

    return v0
.end method

.method public getSeatZeroAngle()I
    .locals 1

    .line 243
    iget v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatZeroAngle:I

    return v0
.end method

.method public getSecRowPosition()[I
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [I

    .line 315
    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHorz:I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatZeroAngle:I

    const/4 v2, 0x1

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatTilt:I

    const/4 v2, 0x2

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatCushion:I

    const/4 v2, 0x3

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatLeg:I

    const/4 v2, 0x4

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHeadVer:I

    const/4 v2, 0x5

    aput v1, v0, v2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHeadHor:I

    const/4 v2, 0x6

    aput v1, v0, v2

    return-object v0
.end method

.method public isDriverSeat()Z
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mIsDriverSeat:Z

    return v0
.end method

.method public isPositionEqual([I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 384
    :cond_0
    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHorz:I

    aget v2, p1, v0

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatVert:I

    aget v4, p1, v2

    sub-int/2addr v1, v4

    .line 385
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_2

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatTilt:I

    aget v4, p1, v3

    sub-int/2addr v1, v4

    .line 386
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v3, :cond_2

    const-string v1, "isSupportDrvLeg"

    .line 387
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x4

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatLeg:I

    const/4 v5, 0x3

    aget v5, p1, v5

    sub-int/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v4, :cond_2

    :cond_1
    const-string v1, "isSupportDrvCushion"

    .line 388
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatCushion:I

    aget p1, p1, v4

    sub-int/2addr v1, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    if-ge p1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    .line 389
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDrvSeatEqualMemory, mSeatHorz: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHorz:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", mSeatVert: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatVert:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", mSeatTilt: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatTilt:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", mSeatCushion: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatCushion:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Seat"

    invoke-static {v1, p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method public isSeatReachHorzBorder(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 347
    iget p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHorz:I

    const/16 v2, 0x62

    if-lt p1, v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 349
    :cond_1
    iget p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHorz:I

    const/4 v2, 0x2

    if-gt p1, v2, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public isSeatReachTiltBorder(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 371
    iget p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatTilt:I

    const/4 v2, 0x2

    if-gt p1, v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 373
    :cond_1
    iget p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatTilt:I

    const/16 v2, 0x62

    if-lt p1, v2, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public isSeatReachVertBorder(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 359
    iget p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatVert:I

    const/16 v2, 0x62

    if-lt p1, v2, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 361
    :cond_1
    iget p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatVert:I

    const/4 v2, 0x2

    if-gt p1, v2, :cond_2

    move v0, v1

    :cond_2
    return v0
.end method

.method public setAdjustingParam(II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "type",
            "direction"
        }
    .end annotation

    .line 324
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mAdjustType:I

    .line 325
    iput p2, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mAdjustDirection:I

    return-void
.end method

.method public setAdjustingType(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "adjustingType"
        }
    .end annotation

    .line 329
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mAdjustType:I

    return-void
.end method

.method public setSeatCushionValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 291
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatCushion:I

    return-void
.end method

.method public setSeatHeadHor(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mSeatHeadHor"
        }
    .end annotation

    .line 231
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHeadHor:I

    return-void
.end method

.method public setSeatHeadVer(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mSeatHeadVer"
        }
    .end annotation

    .line 239
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHeadVer:I

    return-void
.end method

.method public setSeatHorzValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 259
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatHorz:I

    return-void
.end method

.method public setSeatLegValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 283
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatLeg:I

    return-void
.end method

.method public setSeatTiltValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 275
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatTilt:I

    return-void
.end method

.method public setSeatVertValue(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 267
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatVert:I

    return-void
.end method

.method public setSeatZeroAngle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mSeatZeroAngle"
        }
    .end annotation

    .line 247
    iput p1, p0, Lcom/xiaopeng/carcontrol/bean/Seat;->mSeatZeroAngle:I

    return-void
.end method

.method public toSecRowString()Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSecRowPosition()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 176
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/bean/Seat;->getSeatPosition()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
