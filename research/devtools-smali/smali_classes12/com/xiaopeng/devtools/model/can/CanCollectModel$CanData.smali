.class public final enum Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;
.super Ljava/lang/Enum;
.source "CanCollectModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/can/CanCollectModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CanData"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum rA:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

.field public static final enum rB:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

.field public static final enum rC:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

.field private static final synthetic rD:[Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

.field public static final enum rx:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

.field public static final enum ry:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

.field public static final enum rz:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 107
    new-instance v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    const-string v1, "ICAN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rx:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    .line 108
    new-instance v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    const-string v1, "DCAN"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ry:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    .line 109
    new-instance v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    const-string v1, "BCAN"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rz:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    .line 110
    new-instance v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    const-string v1, "CCAN"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rA:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    .line 111
    new-instance v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    const-string v1, "ECAN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rB:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    .line 112
    new-instance v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    const-string v1, "ADCAN"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rC:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    .line 106
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    sget-object v1, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rx:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->ry:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rz:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rA:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rB:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rC:Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    aput-object v1, v0, v7

    sput-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rD:[Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;
    .locals 1

    .line 106
    const-class v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;
    .locals 1

    .line 106
    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->rD:[Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    invoke-virtual {v0}, [Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    return-object v0
.end method
