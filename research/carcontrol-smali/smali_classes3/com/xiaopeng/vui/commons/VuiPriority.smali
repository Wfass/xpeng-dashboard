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
.field private static final synthetic $VALUES:[Lcom/xiaopeng/vui/commons/VuiPriority;

.field public static final enum LEVEL1:Lcom/xiaopeng/vui/commons/VuiPriority;

.field public static final enum LEVEL2:Lcom/xiaopeng/vui/commons/VuiPriority;

.field public static final enum LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

.field public static final enum LEVEL4:Lcom/xiaopeng/vui/commons/VuiPriority;


# instance fields
.field level:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 4
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiPriority;

    const-string v1, "LEVEL1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaopeng/vui/commons/VuiPriority;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL1:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 5
    new-instance v1, Lcom/xiaopeng/vui/commons/VuiPriority;

    const-string v3, "LEVEL2"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaopeng/vui/commons/VuiPriority;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL2:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 6
    new-instance v3, Lcom/xiaopeng/vui/commons/VuiPriority;

    const-string v5, "LEVEL3"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaopeng/vui/commons/VuiPriority;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL3:Lcom/xiaopeng/vui/commons/VuiPriority;

    .line 7
    new-instance v5, Lcom/xiaopeng/vui/commons/VuiPriority;

    const-string v7, "LEVEL4"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/xiaopeng/vui/commons/VuiPriority;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaopeng/vui/commons/VuiPriority;->LEVEL4:Lcom/xiaopeng/vui/commons/VuiPriority;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaopeng/vui/commons/VuiPriority;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 3
    sput-object v7, Lcom/xiaopeng/vui/commons/VuiPriority;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiPriority;

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
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiPriority;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiPriority;

    invoke-virtual {v0}, [Lcom/xiaopeng/vui/commons/VuiPriority;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/vui/commons/VuiPriority;

    return-object v0
.end method


# virtual methods
.method public getLevel()I
    .locals 1

    .line 15
    iget v0, p0, Lcom/xiaopeng/vui/commons/VuiPriority;->level:I

    return v0
.end method
