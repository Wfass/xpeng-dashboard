.class public final enum Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;
.super Ljava/lang/Enum;
.source "LogicImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aicabin/logic/LogicImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Protection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

.field public static final enum Normal:Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

.field public static final enum Privileged:Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

.field public static final enum Signature:Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 20
    new-instance v0, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    const/4 v1, 0x0

    const-string v2, "Normal"

    invoke-direct {v0, v2, v1}, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;->Normal:Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    new-instance v0, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    const/4 v2, 0x1

    const-string v3, "Signature"

    invoke-direct {v0, v3, v2}, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;->Signature:Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    new-instance v0, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    const/4 v3, 0x2

    const-string v4, "Privileged"

    invoke-direct {v0, v4, v3}, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;->Privileged:Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    const/4 v0, 0x3

    .line 19
    new-array v0, v0, [Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    sget-object v4, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;->Normal:Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    aput-object v4, v0, v1

    sget-object v1, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;->Signature:Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;->Privileged:Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    aput-object v1, v0, v3

    sput-object v0, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;->$VALUES:[Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;
    .locals 1

    .line 19
    const-class v0, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;
    .locals 1

    .line 19
    sget-object v0, Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;->$VALUES:[Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    invoke-virtual {v0}, [Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/aicabin/logic/LogicImpl$Protection;

    return-object v0
.end method
