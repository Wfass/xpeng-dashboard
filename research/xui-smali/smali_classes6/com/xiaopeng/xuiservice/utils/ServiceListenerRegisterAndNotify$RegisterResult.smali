.class final enum Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;
.super Ljava/lang/Enum;
.source "ServiceListenerRegisterAndNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RegisterResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

.field public static final enum AlreadyExist:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

.field public static final enum First:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

.field public static final enum RemoteDied:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

.field public static final enum Success:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 95
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    const-string v1, "AlreadyExist"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->AlreadyExist:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    .line 99
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    const-string v1, "Success"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->Success:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    .line 104
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    const-string v1, "First"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->First:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    .line 108
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    const-string v1, "RemoteDied"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->RemoteDied:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    .line 91
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->AlreadyExist:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->Success:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->First:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->RemoteDied:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->$VALUES:[Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 91
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 91
    const-class v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;
    .locals 1

    .line 91
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->$VALUES:[Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    invoke-virtual {v0}, [Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$RegisterResult;

    return-object v0
.end method
