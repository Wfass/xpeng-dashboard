.class public final enum Lcom/xiaopeng/vui/commons/VuiMode;
.super Ljava/lang/Enum;
.source "VuiMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/vui/commons/VuiMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/vui/commons/VuiMode;

.field public static final enum DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

.field public static final enum NORMAL:Lcom/xiaopeng/vui/commons/VuiMode;

.field public static final enum SILENT:Lcom/xiaopeng/vui/commons/VuiMode;

.field public static final enum UNDERSTOOD:Lcom/xiaopeng/vui/commons/VuiMode;


# instance fields
.field name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 4
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiMode;

    const-string v1, "DISABLED"

    const-string v2, "Disabled"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaopeng/vui/commons/VuiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    .line 5
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiMode;

    const-string v1, "SILENT"

    const-string v2, "Silent"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaopeng/vui/commons/VuiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiMode;->SILENT:Lcom/xiaopeng/vui/commons/VuiMode;

    .line 6
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiMode;

    const-string v1, "UNDERSTOOD"

    const-string v2, "Understood"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaopeng/vui/commons/VuiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiMode;->UNDERSTOOD:Lcom/xiaopeng/vui/commons/VuiMode;

    .line 7
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiMode;

    const-string v1, "NORMAL"

    const-string v2, "Normal"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaopeng/vui/commons/VuiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiMode;->NORMAL:Lcom/xiaopeng/vui/commons/VuiMode;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/xiaopeng/vui/commons/VuiMode;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->SILENT:Lcom/xiaopeng/vui/commons/VuiMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->UNDERSTOOD:Lcom/xiaopeng/vui/commons/VuiMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->NORMAL:Lcom/xiaopeng/vui/commons/VuiMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiMode;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/xiaopeng/vui/commons/VuiMode;->name:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/VuiMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 3
    const-class v0, Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/VuiMode;

    return-object v0
.end method

.method public static values()[Lcom/xiaopeng/vui/commons/VuiMode;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiMode;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-virtual {v0}, [Lcom/xiaopeng/vui/commons/VuiMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/vui/commons/VuiMode;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/VuiMode;->name:Ljava/lang/String;

    return-object v0
.end method
