.class public Lcom/xiaopeng/datalog/bean/LogEvent;
.super Ljava/lang/Object;
.source "LogEvent.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;,
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

    .line 215
    new-instance v0, Lcom/xiaopeng/datalog/bean/LogEvent;

    invoke-direct {v0}, Lcom/xiaopeng/datalog/bean/LogEvent;-><init>()V

    .line 216
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->getHardwareId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setDevice(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->eG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setVin(Ljava/lang/String;)V

    .line 219
    invoke-static {}, Lcom/xiaopeng/datalog/bean/LogEvent;->getSystemVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setSysVer(Ljava/lang/String;)V

    .line 220
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->oQ()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/datalog/bean/LogEvent;->setSid(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->oP()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setUid(J)V

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/datalog/bean/LogEvent;->setT(J)V

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/datalog/bean/LogEvent$RefType;->eR()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/datalog/bean/LogEvent;->setRef(I)V

    .line 224
    invoke-static {}, Lcom/xiaopeng/lib/utils/c/c;->pn()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/datalog/bean/LogEvent;->setModel(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->oR()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/datalog/bean/LogEvent;->setDbcVer(Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->getIccid()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/datalog/bean/LogEvent;->setIccid(Ljava/lang/String;)V

    .line 227
    return-object v0
.end method

.method public static from(I)Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;
    .locals 3

    .line 293
    packed-switch p0, :pswitch_data_0

    .line 303
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", must be [1, 4]"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 301
    :pswitch_0
    sget-object p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->qh:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object p0

    .line 299
    :pswitch_1
    sget-object p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->qg:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object p0

    .line 297
    :pswitch_2
    sget-object p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->qf:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object p0

    .line 295
    :pswitch_3
    sget-object p0, Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;->qe:Lcom/xiaopeng/datalog/bean/LogEvent$SrcType;

    return-object p0

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
    .locals 3

    .line 312
    invoke-static {}, Lcom/xiaopeng/lib/utils/i;->oQ()Ljava/lang/String;

    move-result-object v0

    .line 313
    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 314
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 315
    aget-object v0, v0, v2

    return-object v0

    .line 317
    :cond_0
    const-string v0, "unknown"

    return-object v0
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

    .line 197
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->dbcVer:Ljava/lang/String;

    .line 198
    return-void
.end method

.method public setDevice(Ljava/lang/String;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->device:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setIccid(Ljava/lang/String;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->iccid:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setModel(Ljava/lang/String;)V
    .locals 0

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
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->msg:Ljava/util/List;

    .line 182
    return-void
.end method

.method public setPackageId(I)V
    .locals 0

    .line 173
    iput p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->packageId:I

    .line 174
    return-void
.end method

.method public setRef(I)V
    .locals 0

    .line 157
    iput p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->ref:I

    .line 158
    return-void
.end method

.method public setSid(Ljava/lang/String;)V
    .locals 0

    .line 133
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->sid:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setSysVer(Ljava/lang/String;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->sysVer:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setT(J)V
    .locals 0

    .line 149
    iput-wide p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->t:J

    .line 150
    return-void
.end method

.method public setUid(J)V
    .locals 0

    .line 141
    iput-wide p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->uid:J

    .line 142
    return-void
.end method

.method public setV(I)V
    .locals 0

    .line 161
    iput p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->v:I

    .line 162
    return-void
.end method

.method public setVid(I)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->vid:I

    .line 118
    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/datalog/bean/LogEvent;->vin:Ljava/lang/String;

    .line 110
    return-void
.end method
