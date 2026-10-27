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
    .locals 10

    .line 4
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiMode;

    const-string v1, "DISABLED"

    const/4 v2, 0x0

    const-string v3, "Disabled"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/vui/commons/VuiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiMode;->DISABLED:Lcom/xiaopeng/vui/commons/VuiMode;

    .line 5
    new-instance v1, Lcom/xiaopeng/vui/commons/VuiMode;

    const-string v3, "SILENT"

    const/4 v4, 0x1

    const-string v5, "Silent"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaopeng/vui/commons/VuiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaopeng/vui/commons/VuiMode;->SILENT:Lcom/xiaopeng/vui/commons/VuiMode;

    .line 6
    new-instance v3, Lcom/xiaopeng/vui/commons/VuiMode;

    const-string v5, "UNDERSTOOD"

    const/4 v6, 0x2

    const-string v7, "Understood"

    invoke-direct {v3, v5, v6, v7}, Lcom/xiaopeng/vui/commons/VuiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/xiaopeng/vui/commons/VuiMode;->UNDERSTOOD:Lcom/xiaopeng/vui/commons/VuiMode;

    .line 7
    new-instance v5, Lcom/xiaopeng/vui/commons/VuiMode;

    const-string v7, "NORMAL"

    const/4 v8, 0x3

    const-string v9, "Normal"

    invoke-direct {v5, v7, v8, v9}, Lcom/xiaopeng/vui/commons/VuiMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/xiaopeng/vui/commons/VuiMode;->NORMAL:Lcom/xiaopeng/vui/commons/VuiMode;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/xiaopeng/vui/commons/VuiMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    .line 3
    sput-object v7, Lcom/xiaopeng/vui/commons/VuiMode;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
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

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/VuiMode;
    .locals 1

    .line 3
    const-class v0, Lcom/xiaopeng/vui/commons/VuiMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/vui/commons/VuiMode;

    return-object p0
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
