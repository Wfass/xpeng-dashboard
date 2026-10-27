.class public final enum Lcom/qiyi/video/qsrbase/QYSExecType;
.super Ljava/lang/Enum;
.source "QYSExecType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/qiyi/video/qsrbase/QYSExecType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum BACK:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum BIND:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum CHANGE_RATE:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum DOLBY:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum EPISODE:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum FAST_BACKWARD:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum FAST_FORWARD:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum GET_RATE:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum IS_FRONT:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum PAUSE:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum PLAYBACK:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum SEARCH:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum SEEK:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum SELECT_RATE:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum SPEED:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum START_APP:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum UNKNOWN:Lcom/qiyi/video/qsrbase/QYSExecType;

.field public static final enum VIP:Lcom/qiyi/video/qsrbase/QYSExecType;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 10
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->UNKNOWN:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 11
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "BIND"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->BIND:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 12
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "START_APP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->START_APP:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 13
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "SEARCH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->SEARCH:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 14
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "BACK"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->BACK:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 15
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "VIP"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->VIP:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 16
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "IS_FRONT"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->IS_FRONT:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 17
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "PLAYBACK"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->PLAYBACK:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 18
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "PAUSE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->PAUSE:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 19
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "EPISODE"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->EPISODE:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 20
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "FAST_FORWARD"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->FAST_FORWARD:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 21
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "FAST_BACKWARD"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->FAST_BACKWARD:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 22
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "SEEK"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->SEEK:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 23
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "SPEED"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->SPEED:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 24
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "DOLBY"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->DOLBY:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 25
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "CHANGE_RATE"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->CHANGE_RATE:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 26
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "GET_RATE"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->GET_RATE:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 27
    new-instance v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    const-string v1, "SELECT_RATE"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/qiyi/video/qsrbase/QYSExecType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->SELECT_RATE:Lcom/qiyi/video/qsrbase/QYSExecType;

    .line 9
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/qiyi/video/qsrbase/QYSExecType;

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->UNKNOWN:Lcom/qiyi/video/qsrbase/QYSExecType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->BIND:Lcom/qiyi/video/qsrbase/QYSExecType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->START_APP:Lcom/qiyi/video/qsrbase/QYSExecType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->SEARCH:Lcom/qiyi/video/qsrbase/QYSExecType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->BACK:Lcom/qiyi/video/qsrbase/QYSExecType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->VIP:Lcom/qiyi/video/qsrbase/QYSExecType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->IS_FRONT:Lcom/qiyi/video/qsrbase/QYSExecType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->PLAYBACK:Lcom/qiyi/video/qsrbase/QYSExecType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->PAUSE:Lcom/qiyi/video/qsrbase/QYSExecType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->EPISODE:Lcom/qiyi/video/qsrbase/QYSExecType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->FAST_FORWARD:Lcom/qiyi/video/qsrbase/QYSExecType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->FAST_BACKWARD:Lcom/qiyi/video/qsrbase/QYSExecType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->SEEK:Lcom/qiyi/video/qsrbase/QYSExecType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->SPEED:Lcom/qiyi/video/qsrbase/QYSExecType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->DOLBY:Lcom/qiyi/video/qsrbase/QYSExecType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->CHANGE_RATE:Lcom/qiyi/video/qsrbase/QYSExecType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->GET_RATE:Lcom/qiyi/video/qsrbase/QYSExecType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/qiyi/video/qsrbase/QYSExecType;->SELECT_RATE:Lcom/qiyi/video/qsrbase/QYSExecType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sput-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->$VALUES:[Lcom/qiyi/video/qsrbase/QYSExecType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qiyi/video/qsrbase/QYSExecType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qiyi/video/qsrbase/QYSExecType;

    return-object v0
.end method

.method public static values()[Lcom/qiyi/video/qsrbase/QYSExecType;
    .locals 1

    .line 9
    sget-object v0, Lcom/qiyi/video/qsrbase/QYSExecType;->$VALUES:[Lcom/qiyi/video/qsrbase/QYSExecType;

    invoke-virtual {v0}, [Lcom/qiyi/video/qsrbase/QYSExecType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qiyi/video/qsrbase/QYSExecType;

    return-object v0
.end method
