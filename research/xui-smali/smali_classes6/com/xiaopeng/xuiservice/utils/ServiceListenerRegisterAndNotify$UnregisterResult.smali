.class final enum Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;
.super Ljava/lang/Enum;
.source "ServiceListenerRegisterAndNotify.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "UnregisterResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

.field public static final enum Empty:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

.field public static final enum NotExist:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

.field public static final enum Success:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 169
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    const-string v1, "NotExist"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->NotExist:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    .line 173
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    const-string v1, "Success"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->Success:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    .line 178
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    const-string v1, "Empty"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->Empty:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    .line 165
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->NotExist:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->Success:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->Empty:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->$VALUES:[Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 165
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 165
    const-class v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;
    .locals 1

    .line 165
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->$VALUES:[Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    invoke-virtual {v0}, [Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify$UnregisterResult;

    return-object v0
.end method
