.class public final enum Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;
.super Ljava/lang/Enum;
.source "IEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

.field public static final enum CONNECTED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

.field public static final enum DELIVERY_COMPLETED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

.field public static final enum DELIVERY_FAILURE:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

.field public static final enum DISCONNECTED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

.field public static final enum RECEIVED_MESSAGE:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

.field public static final enum SUBSCRIBED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

.field public static final enum TRACE:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

.field public static final enum UNSUBSCRIBED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 12
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    const/4 v1, 0x0

    const-string v2, "CONNECTED"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->CONNECTED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    .line 16
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    const/4 v2, 0x1

    const-string v3, "DISCONNECTED"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->DISCONNECTED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    .line 20
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    const/4 v3, 0x2

    const-string v4, "SUBSCRIBED"

    invoke-direct {v0, v4, v3}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->SUBSCRIBED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    .line 24
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    const/4 v4, 0x3

    const-string v5, "UNSUBSCRIBED"

    invoke-direct {v0, v5, v4}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->UNSUBSCRIBED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    .line 28
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    const/4 v5, 0x4

    const-string v6, "RECEIVED_MESSAGE"

    invoke-direct {v0, v6, v5}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->RECEIVED_MESSAGE:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    .line 32
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    const/4 v6, 0x5

    const-string v7, "DELIVERY_COMPLETED"

    invoke-direct {v0, v7, v6}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->DELIVERY_COMPLETED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    .line 36
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    const/4 v7, 0x6

    const-string v8, "DELIVERY_FAILURE"

    invoke-direct {v0, v8, v7}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->DELIVERY_FAILURE:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    .line 40
    new-instance v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    const/4 v8, 0x7

    const-string v9, "TRACE"

    invoke-direct {v0, v9, v8}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->TRACE:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    const/16 v0, 0x8

    .line 8
    new-array v0, v0, [Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    sget-object v9, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->CONNECTED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    aput-object v9, v0, v1

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->DISCONNECTED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->SUBSCRIBED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->UNSUBSCRIBED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->RECEIVED_MESSAGE:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->DELIVERY_COMPLETED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->DELIVERY_FAILURE:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->TRACE:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    aput-object v1, v0, v8

    sput-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;
    .locals 1

    .line 8
    const-class v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;
    .locals 1

    .line 8
    sget-object v0, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->$VALUES:[Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/messaging/IEvent$TYPE;

    return-object v0
.end method
