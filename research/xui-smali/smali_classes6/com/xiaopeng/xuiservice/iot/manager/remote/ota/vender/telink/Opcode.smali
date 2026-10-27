.class public final enum Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;
.super Ljava/lang/Enum;
.source "Opcode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

.field public static final enum CMD_OTA_END:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

.field public static final enum CMD_OTA_FW_VERSION_REQ:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

.field public static final enum CMD_OTA_FW_VERSION_RSP:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

.field public static final enum CMD_OTA_RESULT:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

.field public static final enum CMD_OTA_START:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

.field public static final enum CMD_OTA_START_EXT:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

.field public static final enum CMD_OTA_VERSION:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;


# instance fields
.field public final usage:Ljava/lang/String;

.field public final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .line 4
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    const-string v1, "CMD_OTA_VERSION"

    const-string v2, "Legacy"

    const/4 v3, 0x0

    const v4, 0xff00

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_VERSION:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    .line 5
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    const-string v1, "CMD_OTA_START"

    const-string v2, "Legacy"

    const/4 v4, 0x1

    const v5, 0xff01

    invoke-direct {v0, v1, v4, v5, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_START:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    .line 6
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    const-string v1, "CMD_OTA_END"

    const-string v2, "All"

    const/4 v5, 0x2

    const v6, 0xff02

    invoke-direct {v0, v1, v5, v6, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_END:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    .line 7
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    const-string v1, "CMD_OTA_START_EXT"

    const-string v2, "Extend"

    const/4 v6, 0x3

    const v7, 0xff03

    invoke-direct {v0, v1, v6, v7, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_START_EXT:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    .line 8
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    const-string v1, "CMD_OTA_FW_VERSION_REQ"

    const-string v2, "Extend"

    const/4 v7, 0x4

    const v8, 0xff04

    invoke-direct {v0, v1, v7, v8, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_FW_VERSION_REQ:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    .line 9
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    const-string v1, "CMD_OTA_FW_VERSION_RSP"

    const-string v2, "Extend"

    const/4 v8, 0x5

    const v9, 0xff05

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_FW_VERSION_RSP:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    .line 10
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    const-string v1, "CMD_OTA_RESULT"

    const-string v2, "All"

    const/4 v9, 0x6

    const v10, 0xff06

    invoke-direct {v0, v1, v9, v10, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_RESULT:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_VERSION:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_START:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_END:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_START_EXT:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_FW_VERSION_REQ:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_FW_VERSION_RSP:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->CMD_OTA_RESULT:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    aput-object v1, v0, v9

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->$VALUES:[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .param p3, "value"    # I
    .param p4, "usage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->value:I

    .line 17
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->usage:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->$VALUES:[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    invoke-virtual {v0}, [Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Opcode;

    return-object v0
.end method
