.class public final enum Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;
.super Ljava/lang/Enum;
.source "Command.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CommandType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

.field public static final enum DISABLE_NOTIFY:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

.field public static final enum ENABLE_NOTIFY:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

.field public static final enum READ:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

.field public static final enum READ_DESCRIPTOR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

.field public static final enum REQUEST_MTU:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

.field public static final enum WRITE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

.field public static final enum WRITE_DESCRIPTOR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

.field public static final enum WRITE_NO_RESPONSE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 17
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    const-string v1, "READ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->READ:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    const-string v1, "READ_DESCRIPTOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->READ_DESCRIPTOR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    const-string v1, "WRITE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->WRITE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    const-string v1, "WRITE_NO_RESPONSE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    .line 18
    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    const-string v1, "WRITE_DESCRIPTOR"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->WRITE_DESCRIPTOR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    const-string v1, "ENABLE_NOTIFY"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->ENABLE_NOTIFY:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    const-string v1, "DISABLE_NOTIFY"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->DISABLE_NOTIFY:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    new-instance v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    const-string v1, "REQUEST_MTU"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->REQUEST_MTU:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    .line 16
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->READ:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->READ_DESCRIPTOR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->WRITE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->WRITE_NO_RESPONSE:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->WRITE_DESCRIPTOR:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->ENABLE_NOTIFY:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->DISABLE_NOTIFY:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->REQUEST_MTU:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    aput-object v1, v0, v9

    sput-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->$VALUES:[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 16
    const-class v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;
    .locals 1

    .line 16
    sget-object v0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->$VALUES:[Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    invoke-virtual {v0}, [Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$CommandType;

    return-object v0
.end method
