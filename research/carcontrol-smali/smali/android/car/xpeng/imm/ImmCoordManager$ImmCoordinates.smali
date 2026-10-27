.class Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;
.super Ljava/lang/Object;
.source "ImmCoordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/imm/ImmCoordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImmCoordinates"
.end annotation


# instance fields
.field private immCoordRy:F

.field private immCoordRz:F

.field final synthetic this$0:Landroid/car/xpeng/imm/ImmCoordManager;


# direct methods
.method public constructor <init>(Landroid/car/xpeng/imm/ImmCoordManager;FF)V
    .locals 0

    .line 256
    iput-object p1, p0, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->this$0:Landroid/car/xpeng/imm/ImmCoordManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 253
    iput p1, p0, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->immCoordRy:F

    .line 254
    iput p1, p0, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->immCoordRz:F

    .line 257
    iput p2, p0, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->immCoordRy:F

    .line 258
    iput p3, p0, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->immCoordRz:F

    return-void
.end method


# virtual methods
.method public declared-synchronized getImmCoordRy()F
    .locals 1

    monitor-enter p0

    .line 262
    :try_start_0
    iget v0, p0, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->immCoordRy:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImmCoordRz()F
    .locals 1

    monitor-enter p0

    .line 266
    :try_start_0
    iget v0, p0, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->immCoordRz:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getImmCoordinates()[F
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 275
    iget v2, p0, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->immCoordRy:F

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->immCoordRz:F

    aput v2, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setImmCoordinates(FF)V
    .locals 0

    monitor-enter p0

    .line 270
    :try_start_0
    iput p1, p0, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->immCoordRy:F

    .line 271
    iput p2, p0, Landroid/car/xpeng/imm/ImmCoordManager$ImmCoordinates;->immCoordRz:F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 272
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
