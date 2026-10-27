.class public final enum Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;
.super Ljava/lang/Enum;
.source "Scheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

.field public static final enum CONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

.field public static final enum CONNECTING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

.field public static final enum DISCONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

.field public static final enum DISCONNECTING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

.field public static final enum INITIALIZING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

.field public static final enum NETWORK_CHANGED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 256
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    const/4 v1, 0x0

    const-string v2, "INITIALIZING"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->INITIALIZING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    .line 260
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    const/4 v2, 0x1

    const-string v3, "DISCONNECTED"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->DISCONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    .line 264
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    const/4 v3, 0x2

    const-string v4, "CONNECTING"

    invoke-direct {v0, v4, v3}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->CONNECTING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    .line 268
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    const/4 v4, 0x3

    const-string v5, "CONNECTED"

    invoke-direct {v0, v5, v4}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->CONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    .line 272
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    const/4 v5, 0x4

    const-string v6, "DISCONNECTING"

    invoke-direct {v0, v6, v5}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->DISCONNECTING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    .line 276
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    const/4 v6, 0x5

    const-string v7, "NETWORK_CHANGED"

    invoke-direct {v0, v7, v6}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->NETWORK_CHANGED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    const/4 v0, 0x6

    .line 252
    new-array v0, v0, [Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    sget-object v7, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->INITIALIZING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    aput-object v7, v0, v1

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->DISCONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->CONNECTING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->CONNECTED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->DISCONNECTING:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->NETWORK_CHANGED:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->$VALUES:[Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 252
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;
    .locals 1

    .line 252
    const-class v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;
    .locals 1

    .line 252
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->$VALUES:[Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/protocol/Scheduler$STATE;

    return-object v0
.end method
