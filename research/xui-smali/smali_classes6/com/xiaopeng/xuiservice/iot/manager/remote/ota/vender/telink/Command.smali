.class public Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
.super Ljava/lang/Object;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;,
        Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;
    }
.end annotation


# instance fields
.field public characteristicUUID:Ljava/util/UUID;

.field public data:[B

.field public delay:I

.field public descriptorUUID:Ljava/util/UUID;

.field public mtu:I

.field public serviceUUID:Ljava/util/UUID;

.field public tag:Ljava/lang/Object;

.field public type:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 44
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->WRITE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    const/4 v1, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;)V
    .locals 1
    .param p1, "serviceUUID"    # Ljava/util/UUID;
    .param p2, "characteristicUUID"    # Ljava/util/UUID;
    .param p3, "type"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;[B)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;[B)V
    .locals 6
    .param p1, "serviceUUID"    # Ljava/util/UUID;
    .param p2, "characteristicUUID"    # Ljava/util/UUID;
    .param p3, "type"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;
    .param p4, "data"    # [B

    .line 36
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;-><init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;[BLjava/lang/Object;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/util/UUID;Ljava/util/UUID;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;[BLjava/lang/Object;)V
    .locals 0
    .param p1, "serviceUUID"    # Ljava/util/UUID;
    .param p2, "characteristicUUID"    # Ljava/util/UUID;
    .param p3, "type"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;
    .param p4, "data"    # [B
    .param p5, "tag"    # Ljava/lang/Object;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    .line 29
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    .line 30
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->type:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    .line 31
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->data:[B

    .line 32
    iput-object p5, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public static newInstance()Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    .locals 1

    .line 55
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;-><init>()V

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->serviceUUID:Ljava/util/UUID;

    .line 49
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    .line 50
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->descriptorUUID:Ljava/util/UUID;

    .line 51
    iput-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->data:[B

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->data:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->data:[B

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 62
    .local v0, "sdata":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "{ tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->type:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", UUID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->characteristicUUID:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->delay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " }"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
