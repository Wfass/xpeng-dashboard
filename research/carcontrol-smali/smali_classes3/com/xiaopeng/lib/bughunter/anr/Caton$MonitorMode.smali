.class public final enum Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;
.super Ljava/lang/Enum;
.source "Caton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/bughunter/anr/Caton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MonitorMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

.field public static final enum FRAME:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

.field public static final enum LOOPER:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 107
    new-instance v0, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    const-string v1, "LOOPER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;->LOOPER:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    new-instance v1, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    const-string v3, "FRAME"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;->FRAME:Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 106
    sput-object v3, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;->$VALUES:[Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "mode"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 110
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 111
    iput p3, p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 106
    const-class v0, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;
    .locals 1

    .line 106
    sget-object v0, Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;->$VALUES:[Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/bughunter/anr/Caton$MonitorMode;

    return-object v0
.end method
