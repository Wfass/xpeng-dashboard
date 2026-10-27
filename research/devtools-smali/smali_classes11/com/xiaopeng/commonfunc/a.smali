.class public interface abstract Lcom/xiaopeng/commonfunc/a;
.super Ljava/lang/Object;
.source "Constant.java"


# static fields
.field public static final nA:[Ljava/lang/String;

.field public static final nB:[Ljava/lang/String;

.field public static final nC:[Ljava/lang/String;

.field public static final nD:[Ljava/lang/String;

.field public static final nE:[Ljava/lang/String;

.field public static final nF:[Ljava/lang/String;

.field public static final nG:[Ljava/lang/String;

.field public static final nH:[Ljava/lang/String;

.field public static final nI:[Ljava/lang/String;

.field public static final nw:[Ljava/lang/String;

.field public static final nx:[Ljava/lang/String;

.field public static final ny:[Ljava/lang/String;

.field public static final nz:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 193
    const-string v0, "/data/Log"

    const-string v1, "/data/anr"

    const-string v2, "/cache/recovery/"

    const-string v3, "/data/system/dropbox"

    const-string v4, "data/tombstones/"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/a;->nw:[Ljava/lang/String;

    .line 195
    const-string v0, "/data/Log"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/a;->nx:[Ljava/lang/String;

    .line 196
    const-string v0, "/sdcard/com.xiaopeng.xmart/files/car_camera"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/a;->ny:[Ljava/lang/String;

    .line 197
    const-string v0, "/mnt/sdcard/dlt/"

    const-string v1, "/tmp/*log*"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/a;->nz:[Ljava/lang/String;

    .line 198
    const-string v0, "/tmp/oToAvmLog"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/a;->nA:[Ljava/lang/String;

    .line 199
    const-string v0, "/mnt/vmap/navi_log"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/a;->nB:[Ljava/lang/String;

    .line 200
    const-string v0, "/data/HMILog"

    const-string v1, "/tmp/*.log"

    const-string v2, "/data/Log"

    const-string v3, "/data/crash"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/a;->nC:[Ljava/lang/String;

    .line 201
    const-string v0, "/tmp/*.log"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/a;->nD:[Ljava/lang/String;

    .line 202
    const-string v0, "/mnt/sdcard2/modem_log"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/a;->nE:[Ljava/lang/String;

    .line 203
    const-string v1, "/data/Log"

    const-string v2, "/data/anr"

    const-string v3, "/cache"

    const-string v4, "/data/system/dropbox"

    const-string v5, "data/tombstones"

    const-string v6, "/sdcard/Log"

    const-string v7, "/data/system/usagestats"

    const-string v8, "/data/local/tmp"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/a;->nF:[Ljava/lang/String;

    .line 206
    const-string v0, "/data/Log/log0"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/a;->nG:[Ljava/lang/String;

    .line 230
    const-string v1, "AUDIO"

    const-string v2, "CAMERA"

    const-string v3, "BLUETOOTH"

    const-string v4, "WIFI"

    const-string v5, "PSO"

    const-string v6, "LIBHTTP"

    const-string v7, "SOC"

    const-string v8, "LCD"

    const-string v9, "NAVI"

    const-string v10, "LTE"

    const-string v11, "UFS"

    const-string v12, "PM"

    const-string v13, "USB"

    const-string v14, "CARSERVICE"

    const-string v15, "PHY"

    const-string v16, "ICM_LCD"

    const-string v17, "ICM_AUDIO"

    const-string v18, "ICM_ETH"

    const-string v19, "ICM_SYSTEM"

    filled-new-array/range {v1 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/a;->nH:[Ljava/lang/String;

    .line 258
    const-string v1, "/data/Log/log0/"

    const-string v2, "/data/Log/log1/"

    const-string v3, "/data/anr/"

    const-string v4, "/data/system/dropbox"

    const-string v5, "data/tombstones/"

    const-string v6, "cache/recovery"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/commonfunc/a;->nI:[Ljava/lang/String;

    return-void
.end method
