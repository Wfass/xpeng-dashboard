.class public final enum Lcom/xiaopeng/vui/commons/VuiPriority;
.super Ljava/lang/Enum;
.source "VuiPriority.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/vui/commons/VuiPriority;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Zs:Lcom/xiaopeng/vui/commons/VuiPriority;

.field public static final enum Zt:Lcom/xiaopeng/vui/commons/VuiPriority;

.field public static final enum Zu:Lcom/xiaopeng/vui/commons/VuiPriority;

.field public static final enum Zv:Lcom/xiaopeng/vui/commons/VuiPriority;

.field private static final synthetic Zw:[Lcom/xiaopeng/vui/commons/VuiPriority;


# instance fields
.field level:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 4
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiPriority;

    const-string v1, "LEVEL1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaopeng/vui/commons/VuiPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiPriority;->Zs:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 5
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiPriority;

    const-string v1, "LEVEL2"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaopeng/vui/commons/VuiPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiPriority;->Zt:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 6
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiPriority;

    const-string v1, "LEVEL3"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaopeng/vui/commons/VuiPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiPriority;->Zu:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 7
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiPriority;

    const-string v1, "LEVEL4"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/xiaopeng/vui/commons/VuiPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiPriority;->Zv:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaopeng/vui/commons/VuiPriority;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiPriority;->Zs:Lcom/xiaopeng/vui/commons/VuiPriority;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiPriority;->Zt:Lcom/xiaopeng/vui/commons/VuiPriority;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiPriority;->Zu:Lcom/xiaopeng/vui/commons/VuiPriority;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiPriority;->Zv:Lcom/xiaopeng/vui/commons/VuiPriority;

    aput-object v1, v0, v5

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiPriority;->Zw:[Lcom/xiaopeng/vui/commons/VuiPriority;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput p3, p0, Lcom/xiaopeng/vui/commons/VuiPriority;->level:I

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/VuiPriority;
    .locals 1

    .line 3
    const-class v0, Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/vui/commons/VuiPriority;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/vui/commons/VuiPriority;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiPriority;->Zw:[Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-virtual {v0}, [Lcom/xiaopeng/vui/commons/VuiPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/vui/commons/VuiPriority;

    return-object v0
.end method
