.class public final enum Lcom/xiaopeng/track/constant/PID;
.super Ljava/lang/Enum;
.source "PID.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/track/constant/PID;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/track/constant/PID;

.field public static final enum none:Lcom/xiaopeng/track/constant/PID;

.field public static final enum pid_smartcontrol_drive_rear_mirror_control:Lcom/xiaopeng/track/constant/PID;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 4
    new-instance v0, Lcom/xiaopeng/track/constant/PID;

    const-string v1, "none"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/track/constant/PID;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/track/constant/PID;->none:Lcom/xiaopeng/track/constant/PID;

    .line 7
    new-instance v1, Lcom/xiaopeng/track/constant/PID;

    const-string v3, "pid_smartcontrol_drive_rear_mirror_control"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaopeng/track/constant/PID;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaopeng/track/constant/PID;->pid_smartcontrol_drive_rear_mirror_control:Lcom/xiaopeng/track/constant/PID;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/track/constant/PID;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/xiaopeng/track/constant/PID;->$VALUES:[Lcom/xiaopeng/track/constant/PID;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/track/constant/PID;
    .locals 1

    .line 3
    const-class v0, Lcom/xiaopeng/track/constant/PID;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/track/constant/PID;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/track/constant/PID;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/track/constant/PID;->$VALUES:[Lcom/xiaopeng/track/constant/PID;

    invoke-virtual {v0}, [Lcom/xiaopeng/track/constant/PID;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/track/constant/PID;

    return-object v0
.end method
