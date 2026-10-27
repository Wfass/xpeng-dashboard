.class public Landroid/car/xpeng/imm/ImmCoordManager;
.super Ljava/lang/Object;
.source "ImmCoordManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;
    }
.end annotation


# static fields
.field public static final CENTER_COORDINATE_Y_MAX:F = 9.7f

.field public static final CENTER_COORDINATE_Y_MIN:F = -14.7f

.field public static final CENTER_COORDINATE_Z_MAX:F = 2.9f

.field public static final CENTER_COORDINATE_Z_MIN:F = -2.9f

.field public static final DEFAULT_CENTER_COORDS:[F

.field public static final DEFAULT_DRIVER_COORDS:[F

.field public static final DEFAULT_PASSENGER_COORDS:[F

.field public static final DRIVER_COORDINATE_Y_MAX:F = 9.7f

.field public static final DRIVER_COORDINATE_Y_MIN:F = -14.7f

.field public static final DRIVER_COORDINATE_Z_MAX:F = -3.0f

.field public static final DRIVER_COORDINATE_Z_MIN:F = -14.7f

.field public static final IMM_COORDINATE_Y_MAX:F = 9.7f

.field public static final IMM_COORDINATE_Y_MIN:F = -14.7f

.field public static final IMM_COORDINATE_Z_MAX:F = 9.7f

.field public static final IMM_COORDINATE_Z_MIN:F = -14.7f

.field public static final PASSENGER_COORDINATE_Y_MAX:F = 9.7f

.field public static final PASSENGER_COORDINATE_Y_MIN:F = -14.7f

.field public static final PASSENGER_COORDINATE_Z_MAX:F = 9.7f

.field public static final PASSENGER_COORDINATE_Z_MIN:F = 3.0f

.field private static final TAG:Ljava/lang/String; = "CarImmService"


# instance fields
.field private centerCoords:Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;

.field private driverCoords:Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;

.field private passengerCoords:Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 77
    fill-array-data v1, :array_0

    sput-object v1, Landroid/car/xpeng/imm/ImmCoordManager;->DEFAULT_DRIVER_COORDS:[F

    new-array v1, v0, [F

    .line 79
    fill-array-data v1, :array_1

    sput-object v1, Landroid/car/xpeng/imm/ImmCoordManager;->DEFAULT_PASSENGER_COORDS:[F

    new-array v0, v0, [F

    .line 81
    fill-array-data v0, :array_2

    sput-object v0, Landroid/car/xpeng/imm/ImmCoordManager;->DEFAULT_CENTER_COORDS:[F

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3e980000    # -14.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x41180000    # 9.5f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 5

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;

    sget-object v1, Landroid/car/xpeng/imm/ImmCoordManager;->DEFAULT_DRIVER_COORDS:[F

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v1, v1, v4

    invoke-direct {v0, p0, v3, v1}, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;-><init>(Landroid/car/xpeng/imm/ImmCoordManager;FF)V

    iput-object v0, p0, Landroid/car/xpeng/imm/ImmCoordManager;->driverCoords:Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;

    .line 84
    new-instance v0, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;

    sget-object v1, Landroid/car/xpeng/imm/ImmCoordManager;->DEFAULT_PASSENGER_COORDS:[F

    aget v3, v1, v2

    aget v1, v1, v4

    invoke-direct {v0, p0, v3, v1}, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;-><init>(Landroid/car/xpeng/imm/ImmCoordManager;FF)V

    iput-object v0, p0, Landroid/car/xpeng/imm/ImmCoordManager;->passengerCoords:Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;

    .line 85
    new-instance v0, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;

    sget-object v1, Landroid/car/xpeng/imm/ImmCoordManager;->DEFAULT_CENTER_COORDS:[F

    aget v2, v1, v2

    aget v1, v1, v4

    invoke-direct {v0, p0, v2, v1}, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;-><init>(Landroid/car/xpeng/imm/ImmCoordManager;FF)V

    iput-object v0, p0, Landroid/car/xpeng/imm/ImmCoordManager;->centerCoords:Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;

    return-void
.end method


# virtual methods
.method public declared-synchronized getCenterCoords()[F
    .locals 1

    monitor-enter p0

    .line 102
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/ImmCoordManager;->centerCoords:Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;

    invoke-virtual {v0}, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->getImmCoordinates()[F

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDriverCoords()[F
    .locals 1

    monitor-enter p0

    .line 92
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/ImmCoordManager;->driverCoords:Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;

    invoke-virtual {v0}, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->getImmCoordinates()[F

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPassengerCoords()[F
    .locals 1

    monitor-enter p0

    .line 97
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/ImmCoordManager;->passengerCoords:Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;

    invoke-virtual {v0}, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->getImmCoordinates()[F

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPositionOrientation([F)I
    .locals 9

    monitor-enter p0

    const/4 v0, -0x1

    .line 213
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    const-string v1, "CarImmService"

    .line 214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOrientation return -1: immCoords = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget p1, p1, v4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v2, "\u957f\u5ea6\u4e0d\u4e3a2"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 215
    monitor-exit p0

    return v0

    .line 217
    :cond_0
    :try_start_1
    aget v1, p1, v3

    const v5, -0x3e94cccd    # -14.7f

    cmpl-float v1, v1, v5

    const v6, 0x411b3333    # 9.7f

    if-ltz v1, :cond_1

    aget v1, p1, v3

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_1

    aget v1, p1, v4

    const v7, -0x3fc66666    # -2.9f

    cmpl-float v1, v1, v7

    if-ltz v1, :cond_1

    aget v1, p1, v4

    const v7, 0x4039999a    # 2.9f

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_1

    const-string v1, "CarImmService"

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOrientation return ORIENTATION_CENTER_ARRIVED: immCoords = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget p1, p1, v4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v2, "\u5c45\u4e2d"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p1, 0xb

    .line 220
    monitor-exit p0

    return p1

    .line 222
    :cond_1
    :try_start_2
    aget v1, p1, v3

    cmpl-float v1, v1, v5

    const/high16 v7, -0x3fc00000    # -3.0f

    if-ltz v1, :cond_2

    aget v1, p1, v3

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_2

    aget v1, p1, v4

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_2

    aget v1, p1, v4

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_2

    const-string v1, "CarImmService"

    .line 224
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOrientation return ORIENTATION_DRIVER_ARRIVED: immCoords = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget p1, p1, v4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v2, "\u4e3b\u9a7e"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/16 p1, 0x9

    .line 225
    monitor-exit p0

    return p1

    .line 227
    :cond_2
    :try_start_3
    aget v1, p1, v3

    cmpl-float v1, v1, v5

    if-ltz v1, :cond_3

    aget v1, p1, v3

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_3

    aget v1, p1, v4

    const/high16 v8, 0x40400000    # 3.0f

    cmpl-float v1, v1, v8

    if-lez v1, :cond_3

    aget v1, p1, v4

    cmpg-float v1, v1, v6

    if-gtz v1, :cond_3

    const-string v1, "CarImmService"

    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getOrientation return ORIENTATION_PASSENGER_ARRIVED: immCoords = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget p1, p1, v4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v2, "\u526f\u9a7e"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/16 p1, 0xa

    .line 230
    monitor-exit p0

    return p1

    .line 233
    :cond_3
    :try_start_4
    aget v1, p1, v3

    cmpg-float v1, v1, v5

    if-gez v1, :cond_4

    const-string v1, "CarImmService"

    .line 234
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "\u6700\u4e0b"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v3, p1, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget p1, p1, v4

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    monitor-exit p0

    return v2

    .line 236
    :cond_4
    :try_start_5
    aget v1, p1, v3

    cmpl-float v1, v1, v6

    if-lez v1, :cond_5

    const-string v1, "CarImmService"

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6700\u4e0a"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget p1, p1, v4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 238
    monitor-exit p0

    return v4

    .line 239
    :cond_5
    :try_start_6
    aget v1, p1, v4

    cmpg-float v1, v1, v5

    if-gez v1, :cond_6

    const-string v1, "CarImmService"

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6700\u5de6"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget p1, p1, v4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    const/4 p1, 0x4

    .line 241
    monitor-exit p0

    return p1

    .line 242
    :cond_6
    :try_start_7
    aget v1, p1, v4

    cmpl-float v1, v1, v7

    if-lez v1, :cond_7

    const-string v1, "CarImmService"

    .line 243
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\u6700\u53f3"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget p1, p1, v4

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 p1, 0x3

    .line 244
    monitor-exit p0

    return p1

    .line 246
    :cond_7
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 248
    :catch_0
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized isOverSoftLimit([F)I
    .locals 6

    monitor-enter p0

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 186
    :try_start_0
    aget v2, p1, v1

    const v3, -0x3e94cccd    # -14.7f

    cmpg-float v2, v2, v3

    const v4, 0x411b3333    # 9.7f

    const/4 v5, 0x1

    if-ltz v2, :cond_0

    aget v2, p1, v1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    :cond_0
    aget v2, p1, v5

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_6

    aget v2, p1, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_1

    goto/16 :goto_2

    .line 190
    :cond_1
    aget v2, p1, v1

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_5

    aget v2, p1, v1

    cmpl-float v2, v2, v4

    if-lez v2, :cond_2

    goto :goto_1

    .line 193
    :cond_2
    aget v2, p1, v5

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_4

    aget v2, p1, v5

    cmpl-float v2, v2, v4

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    const-string v2, "CarImmService"

    .line 197
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOverSoftLimit return 0: immCoords = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget p1, p1, v5

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v3, "\u672a\u8d85\u51fa\u8f6f\u9650\u4f4d"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 198
    monitor-exit p0

    return v1

    :cond_4
    :goto_0
    :try_start_1
    const-string v2, "CarImmService"

    .line 194
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOverSoftLimit return 2: immCoords = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v1, p1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget p1, p1, v5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "\u8d85\u51fa\u8f6f\u9650\u4f4d"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x2

    .line 195
    monitor-exit p0

    return p1

    :cond_5
    :goto_1
    :try_start_2
    const-string v2, "CarImmService"

    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOverSoftLimit return 1: immCoords = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v1, p1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget p1, p1, v5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "\u8d85\u51fa\u8f6f\u9650\u4f4d"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    monitor-exit p0

    return v5

    :cond_6
    :goto_2
    :try_start_3
    const-string v2, "CarImmService"

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOverSoftLimit return 3: immCoords = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v1, p1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget p1, p1, v5

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v1, "\u8d85\u51fa\u8f6f\u9650\u4f4d"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 189
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 201
    :catch_0
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized setCenterCoords(FF)I
    .locals 4

    monitor-enter p0

    const v0, -0x3e94cccd    # -14.7f

    cmpg-float v0, p1, v0

    const/4 v1, -0x1

    if-ltz v0, :cond_1

    const v0, 0x411b3333    # 9.7f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    const v0, -0x3fc66666    # -2.9f

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    const v0, 0x4039999a    # 2.9f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 171
    :cond_0
    :try_start_0
    iget-object p2, p0, Landroid/car/xpeng/imm/ImmCoordManager;->centerCoords:Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->setImmCoordinates(FF)V

    const-string p2, "CarImmService"

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCenterCoords: immCoordRy = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", immCoordRz = 0.0f\u8bbe\u7f6e\u6210\u529f"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 173
    monitor-exit p0

    return p1

    .line 175
    :catch_0
    monitor-exit p0

    return v1

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "CarImmService"

    .line 166
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCenterCoords: immCoordRy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", immCoordRz = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "\u8d85\u51fa\u5c45\u4e2d\u533a\u57df"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDriverCoords(FF)I
    .locals 4

    monitor-enter p0

    const v0, -0x3e94cccd    # -14.7f

    cmpg-float v1, p1, v0

    const/4 v2, -0x1

    if-ltz v1, :cond_1

    const v1, 0x411b3333    # 9.7f

    cmpl-float v1, p1, v1

    if-gtz v1, :cond_1

    cmpg-float v0, p2, v0

    if-ltz v0, :cond_1

    const/high16 v0, -0x3fc00000    # -3.0f

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/ImmCoordManager;->driverCoords:Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;

    invoke-virtual {v0, p1, p2}, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->setImmCoordinates(FF)V

    const-string v0, "CarImmService"

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDriverCoords: immCoordRy = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", immCoordRz = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "\u8bbe\u7f6e\u6210\u529f"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 123
    monitor-exit p0

    return p1

    .line 125
    :catch_0
    monitor-exit p0

    return v2

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "CarImmService"

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDriverCoords: immCoordRy = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", immCoordRz = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "\u8d85\u51fa\u4e3b\u9a7e\u533a\u57df"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 117
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPassengerCoords(FF)I
    .locals 4

    monitor-enter p0

    const v0, -0x3e94cccd    # -14.7f

    cmpg-float v0, p1, v0

    const/4 v1, -0x1

    if-ltz v0, :cond_1

    const v0, 0x411b3333    # 9.7f

    cmpl-float v2, p1, v0

    if-gtz v2, :cond_1

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v2, p2, v2

    if-lez v2, :cond_1

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/car/xpeng/imm/ImmCoordManager;->passengerCoords:Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;

    invoke-virtual {v0, p1, p2}, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->setImmCoordinates(FF)V

    const-string v0, "CarImmService"

    .line 147
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPassengerCoords: immCoordRy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", immCoordRz = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "\u8bbe\u7f6e\u6210\u529f"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    .line 148
    monitor-exit p0

    return p1

    .line 150
    :catch_0
    monitor-exit p0

    return v1

    :cond_1
    :goto_0
    :try_start_1
    const-string v0, "CarImmService"

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPassengerCoords: immCoordRy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ", immCoordRz = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo p2, "\u8d85\u51fa\u526f\u9a7e\u533a\u57df"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
