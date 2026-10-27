.class public Lcom/xiaopeng/datalog/bean/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

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

    .line 71
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->v:I

    .line 94
    return-void
.end method

.method public static create(Lcom/xiaopeng/datalog/bean/LogEvent$RefType;)Lcom/xiaopeng/datalog/bean/LogEvent;
    .locals 5
    .param p0, "refType"    # Lcom/xiaopeng/datalog/bean/LogEvent$RefType;
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
    .local v0, "log":Lcom/xiaopeng/datalog/bean/LogEvent;
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

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setRef(I)V

    .line 236
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->getProductModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setModel(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getDBCVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setDbcVer(Ljava/lang/String;)V

    .line 240
    const-string v1, "LogEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doAnonymization:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/datalog/bean/LogEvent;->vin:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/datalog/bean/LogEvent;->device:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/xiaopeng/datalog/bean/LogEvent;->uid:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/xiaopeng/datalog/bean/LogEvent;->iccid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 244
    return-object v0
.end method

.method private static doAnonymization(Lcom/xiaopeng/datalog/bean/LogEvent;)V
    .locals 11
    .param p0, "logEvent"    # Lcom/xiaopeng/datalog/bean/LogEvent;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
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
    .local v0, "anonymousDevice":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVIN()Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "vinOrEmpty":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    .line 345
    :cond_0
    invoke-static {v1}, Lcom/xiaopeng/datalog/utils/AnonymizationUtil;->doAnonymizationStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    .local v2, "anonymousVin":Ljava/lang/String;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getIccid()Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "iccid":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v4, -0x1

    goto :goto_1

    .line 348
    :cond_1
    invoke-static {v3}, Lcom/xiaopeng/datalog/utils/AnonymizationUtil;->doAnonymizationInteger(Ljava/lang/String;)J

    move-result-wide v4

    .line 350
    .local v4, "anonymousIccid":J
    :goto_1
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getAccountUid()J

    move-result-wide v6

    .line 351
    .local v6, "uid":J
    nop

    .line 352
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/xiaopeng/datalog/utils/AnonymizationUtil;->doAnonymizationInteger(Ljava/lang/String;)J

    move-result-wide v8

    .line 354
    .local v8, "anonymousUid":J
    if-eqz p0, :cond_2

    .line 355
    invoke-virtual {p0, v0}, Lcom/xiaopeng/datalog/bean/LogEvent;->setDevice(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setVin(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0, v8, v9}, Lcom/xiaopeng/datalog/bean/LogEvent;->setUid(J)V

    .line 358
    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/xiaopeng/datalog/bean/LogEvent;->setIccid(Ljava/lang/String;)V

    .line 360
    :cond_2
    return-void
.end method

.method public static from(I)Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;
    .locals 3
    .param p0, "srcType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "srcType"
        }
    .end annotation

    .line 310
    packed-switch p0, :pswitch_data_0

    .line 320
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must be [1, 4]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 318
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->ANDROID_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0

    .line 316
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_THIRD_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0

    .line 314
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0

    .line 312
    :pswitch_3
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_ROM:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSystemVersion()Ljava/lang/String;
    .locals 4

    .line 329
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getSoftwareId()Ljava/lang/String;

    move-result-object v0

    .line 330
    .local v0, "software":Ljava/lang/String;
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 331
    .local v1, "split":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 332
    aget-object v2, v1, v3

    return-object v2

    .line 334
    :cond_0
    const-string v2, "unknown"

    return-object v2
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
    .param p1, "dbcVer"    # Ljava/lang/String;
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

    .line 203
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;
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

    .line 107
    return-void
.end method

.method public setIccid(Ljava/lang/String;)V
    .locals 0
    .param p1, "iccid"    # Ljava/lang/String;
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

    .line 211
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;
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

    .line 195
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
    .local p1, "msg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->msg:Ljava/util/List;

    .line 187
    return-void
.end method

.method public setPackageId(I)V
    .locals 0
    .param p1, "packageId"    # I
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

    .line 179
    return-void
.end method

.method public setRef(I)V
    .locals 0
    .param p1, "ref"    # I
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

    .line 163
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;
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

    .line 139
    return-void
.end method

.method public setSysVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "sysVer"    # Ljava/lang/String;
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

    .line 131
    return-void
.end method

.method public setT(J)V
    .locals 0
    .param p1, "t"    # J
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

    .line 155
    return-void
.end method

.method public setUid(J)V
    .locals 0
    .param p1, "uid"    # J
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

    .line 147
    return-void
.end method

.method public setV(I)V
    .locals 0
    .param p1, "v"    # I
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

    .line 167
    return-void
.end method

.method public setVid(I)V
    .locals 0
    .param p1, "vid"    # I
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

    .line 123
    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0
    .param p1, "vin"    # Ljava/lang/String;
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

    .line 115
    return-void
.end method
