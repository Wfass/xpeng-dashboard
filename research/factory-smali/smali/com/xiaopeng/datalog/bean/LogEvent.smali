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

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x3

    iput v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->v:I

    .line 89
    return-void
.end method

.method public static create(Lcom/xiaopeng/datalog/bean/LogEvent$RefType;)Lcom/xiaopeng/datalog/bean/LogEvent;
    .locals 3
    .param p0, "refType"    # Lcom/xiaopeng/datalog/bean/LogEvent$RefType;

    .line 215
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent;

    invoke-direct {v0}, Lcom/xiaopeng/datalog/bean/LogEvent;-><init>()V

    .line 216
    .local v0, "log":Lcom/xiaopeng/datalog/bean/LogEvent;
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setDevice(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getVIN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setVin(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/xiaopeng/datalog/bean/LogEvent;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setSysVer(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getSoftwareId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setSid(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getAccountUid()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setUid(J)V

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setT(J)V

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;->getRefType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setRef(I)V

    .line 224
    invoke-static {}, Lcom/xiaopeng/lib/utils/info/DeviceInfoUtils;->getProductModel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setModel(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getDBCVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setDbcVer(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getIccid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setIccid(Ljava/lang/String;)V

    .line 227
    return-object v0
.end method

.method public static from(I)Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;
    .locals 3
    .param p0, "srcType"    # I

    .line 293
    packed-switch p0, :pswitch_data_0

    .line 303
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

    .line 301
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->ANDROID_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0

    .line 299
    :pswitch_1
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_THIRD_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0

    .line 297
    :pswitch_2
    sget-object v0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->XMART_APP:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object v0

    .line 295
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

    .line 312
    invoke-static {}, Lcom/xiaopeng/lib/utils/SystemPropertyUtil;->getSoftwareId()Ljava/lang/String;

    move-result-object v0

    .line 313
    .local v0, "software":Ljava/lang/String;
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 314
    .local v1, "split":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    .line 315
    aget-object v2, v1, v3

    return-object v2

    .line 317
    :cond_0
    const-string v2, "unknown"

    return-object v2
.end method


# virtual methods
.method public getDbcVer()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->dbcVer:Ljava/lang/String;

    return-object v0
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->device:Ljava/lang/String;

    return-object v0
.end method

.method public getIccid()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->iccid:Ljava/lang/String;

    return-object v0
.end method

.method public getModel()Ljava/lang/String;
    .locals 1

    .line 185
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

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->msg:Ljava/util/List;

    return-object v0
.end method

.method public getPackageId()I
    .locals 1

    .line 169
    iget v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->packageId:I

    return v0
.end method

.method public getRef()I
    .locals 1

    .line 153
    iget v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->ref:I

    return v0
.end method

.method public getSid()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->sid:Ljava/lang/String;

    return-object v0
.end method

.method public getSysVer()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->sysVer:Ljava/lang/String;

    return-object v0
.end method

.method public getT()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->t:J

    return-wide v0
.end method

.method public getUid()J
    .locals 2

    .line 137
    iget-wide v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->uid:J

    return-wide v0
.end method

.method public getV()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->v:I

    return v0
.end method

.method public getVid()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->vid:I

    return v0
.end method

.method public getVin()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public setDbcVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "dbcVer"    # Ljava/lang/String;

    .line 197
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->dbcVer:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0
    .param p1, "device"    # Ljava/lang/String;

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->device:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setIccid(Ljava/lang/String;)V
    .locals 0
    .param p1, "iccid"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->iccid:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0
    .param p1, "model"    # Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->model:Ljava/lang/String;

    .line 190
    return-void
.end method

.method public setMsg(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 181
    .local p1, "msg":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->msg:Ljava/util/List;

    .line 182
    return-void
.end method

.method public setPackageId(I)V
    .locals 0
    .param p1, "packageId"    # I

    .line 173
    iput p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->packageId:I

    .line 174
    return-void
.end method

.method public setRef(I)V
    .locals 0
    .param p1, "ref"    # I

    .line 157
    iput p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->ref:I

    .line 158
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0
    .param p1, "sid"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->sid:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setSysVer(Ljava/lang/String;)V
    .locals 0
    .param p1, "sysVer"    # Ljava/lang/String;

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->sysVer:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setT(J)V
    .locals 0
    .param p1, "t"    # J

    .line 149
    iput-wide p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->t:J

    .line 150
    return-void
.end method

.method public setUid(J)V
    .locals 0
    .param p1, "uid"    # J

    .line 141
    iput-wide p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->uid:J

    .line 142
    return-void
.end method

.method public setV(I)V
    .locals 0
    .param p1, "v"    # I

    .line 161
    iput p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->v:I

    .line 162
    return-void
.end method

.method public setVid(I)V
    .locals 0
    .param p1, "vid"    # I

    .line 117
    iput p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->vid:I

    .line 118
    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0
    .param p1, "vin"    # Ljava/lang/String;

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->vin:Ljava/lang/String;

    .line 110
    return-void
.end method
