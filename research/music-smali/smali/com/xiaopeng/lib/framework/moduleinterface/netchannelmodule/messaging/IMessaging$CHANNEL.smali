.class public final enum Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
.super Ljava/lang/Enum;
.source "IMessaging.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CHANNEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

.field public static final enum COMMUNICATION:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

.field public static final enum REPORTING:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

.field public static final enum TESTING:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 42
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    const/4 v1, 0x0

    const-string v2, "COMMUNICATION"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;->COMMUNICATION:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 46
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    const/4 v2, 0x1

    const-string v3, "REPORTING"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;->REPORTING:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    .line 50
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    const/4 v3, 0x2

    const-string v4, "TESTING"

    invoke-direct {v0, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;->TESTING:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    const/4 v0, 0x3

    .line 38
    new-array v0, v0, [Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    sget-object v4, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;->COMMUNICATION:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    aput-object v4, v0, v1

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;->REPORTING:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;->TESTING:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
    .locals 1

    .line 38
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;
    .locals 1

    .line 38
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IMessaging$CHANNEL;

    return-object v0
.end method
