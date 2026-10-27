.class public Lcom/xiaopeng/datalog/bean/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;,
        Lcom/xiaopeng/datalog/bean/LogEvent$LogType;,
        Lcom/xiaopeng/datalog/bean/LogEvent$RefType;
    }
.end annotation


# instance fields
.field private dbcVer:Ljava/lang/String;

.field private device:Ljava/lang/String;

.field private iccid:Ljava/lang/String;

.field private model:Ljava/lang/String;

.field private msg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private packageId:I

.field private ref:I

.field private sid:Ljava/lang/String;

.field private sysVer:Ljava/lang/String;

.field private t:J

.field private uid:J

.field private v:I

.field private vid:I

.field private vin:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 71
    iput v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->v:I

    return-void
.end method

.method public static create(Lcom/xiaopeng/datalog/bean/LogEvent$RefType;)Lcom/xiaopeng/datalog/bean/LogEvent;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "refType"
        }
    .end annotation

    .line 220
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent;

    invoke-direct {v0}, Lcom/xiaopeng/datalog/bean/LogEvent;-><init>()V

    .line 222
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->isInternationalVer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    invoke-static {v0}, Lcom/xiaopeng/datalog/bean/LogEvent;->doAnonymization(Lcom/xiaopeng/datalog/bean/LogEvent;)V

    goto :goto_0

    .line 225
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getAccountUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setUid(J)V

    .line 226
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getIccid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setIccid(Ljava/lang/String;)V

    .line 227
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setDevice(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setVin(Ljava/lang/String;)V

    .line 232
    :goto_0
    invoke-static {}, Lcom/xiaopeng/datalog/bean/LogEvent;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setSysVer(Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getSoftwareId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setSid(Ljava/lang/String;)V

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setT(J)V

    .line 235
    invoke-virtual {p0}, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;->getRefType()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/datalog/bean/LogEvent;->setRef(I)V

    .line 236
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->getProductModel()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/datalog/bean/LogEvent;->setModel(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getDBCVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/datalog/bean/LogEvent;->setDbcVer(Ljava/lang/String;)V

    .line 240
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doAnonymization:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v1, v0, Lcom/xiaopeng/datalog/bean/LogEvent;->vin:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v2, v0, Lcom/xiaopeng/datalog/bean/LogEvent;->device:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-wide v2, v0, Lcom/xiaopeng/datalog/bean/LogEvent;->uid:J

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object v1, v0, Lcom/xiaopeng/datalog/bean/LogEvent;->iccid:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "LogEvent"

    invoke-static {v1, p0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method private static doAnonymization(Lcom/xiaopeng/datalog/bean/LogEvent;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "logEvent"
        }
    .end annotation

    .line 340
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/datalog/utils/AnonymizationUtil;->doAnonymizationStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 343
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVIN()Ljava/lang/String;

    move-result-object v1

    .line 344
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 345
    :cond_0
    invoke-static {v1}, Lcom/xiaopeng/datalog/utils/AnonymizationUtil;->doAnonymizationStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 346
    :goto_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getIccid()Ljava/lang/String;

    move-result-object v2

    .line 347
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v2, -0x1

    goto :goto_1

    .line 348
    :cond_1
    invoke-static {v2}, Lcom/xiaopeng/datalog/utils/AnonymizationUtil;->doAnonymizationInteger(Ljava/lang/String;)J

    move-result-wide v2

    .line 350
    :goto_1
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getAccountUid()J

    move-result-wide v4

    .line 352
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/xiaopeng/datalog/utils/AnonymizationUtil;->doAnonymizationInteger(Ljava/lang/String;)J

    move-result-wide v4

    if-eqz p0, :cond_2

    .line 355
    invoke-virtual {p0, v0}, Lcom/xiaopeng/datalog/bean/LogEvent;->setDevice(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setVin(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0, v4, v5}, Lcom/xiaopeng/datalog/bean/LogEvent;->setUid(J)V

    .line 358
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/datalog/bean/LogEvent;->setIccid(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static from(I)Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "srcType"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    .line 318
    sget-object p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->ANDROID_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object p0

    .line 320
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", must be [1, 4]"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 316
    :cond_1
    sget-object p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_THIRD_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object p0

    .line 314
    :cond_2
    sget-object p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object p0

    .line 312
    :cond_3
    sget-object p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_ROM:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object p0
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 3

    .line 329
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getSoftwareId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 331
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 332
    aget-object v0, v0, v2

    return-object v0

    :cond_0
    const-string v0, "unknown"

    return-object v0
.end method


# virtual methods
.method public getDbcVer()Ljava/lang/String;
    .locals 1

    .line 198
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->dbcVer:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->iccid:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->model:Ljava/lang/String;

    return-object v0
.end method

.method public getMsg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->msg:Ljava/util/List;

    return-object v0
.end method

.method public getPackageId()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->packageId:I

    return v0
.end method

.method public getRef()I
    .locals 1

    .line 158
    iget v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->ref:I

    return v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getSysVer()Ljava/lang/String;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->sysVer:Ljava/lang/String;

    return-object v0
.end method

.method public getT()J
    .locals 2

    .line 150
    iget-wide v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->t:J

    return-wide v0
.end method

.method public getUid()J
    .locals 2

    .line 142
    iget-wide v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->uid:J

    return-wide v0
.end method

.method public getV()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->v:I

    return v0
.end method

.method public getVid()I
    .locals 1

    .line 118
    iget v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->vid:I

    return v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setDbcVer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dbcVer"
        }
    .end annotation

    .line 202
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->dbcVer:Ljava/lang/String;

    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "device"
        }
    .end annotation

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->device:Ljava/lang/String;

    return-void
.end method

.method public setIccid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "iccid"
        }
    .end annotation

    .line 210
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->iccid:Ljava/lang/String;

    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "model"
        }
    .end annotation

    .line 194
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->model:Ljava/lang/String;

    return-void
.end method

.method public setMsg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 186
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->msg:Ljava/util/List;

    return-void
.end method

.method public setPackageId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageId"
        }
    .end annotation

    .line 178
    iput p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->packageId:I

    return-void
.end method

.method public setRef(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ref"
        }
    .end annotation

    .line 162
    iput p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->ref:I

    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sid"
        }
    .end annotation

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->sid:Ljava/lang/String;

    return-void
.end method

.method public setSysVer(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sysVer"
        }
    .end annotation

    .line 130
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->sysVer:Ljava/lang/String;

    return-void
.end method

.method public setT(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .line 154
    iput-wide p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->t:J

    return-void
.end method

.method public setUid(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 146
    iput-wide p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->uid:J

    return-void
.end method

.method public setV(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 166
    iput p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->v:I

    return-void
.end method

.method public setVid(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vid"
        }
    .end annotation

    .line 122
    iput p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->vid:I

    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vin"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->vin:Ljava/lang/String;

    return-void
.end method
