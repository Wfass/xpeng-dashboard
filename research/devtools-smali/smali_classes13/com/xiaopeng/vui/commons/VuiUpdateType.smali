.class public final enum Lcom/xiaopeng/vui/commons/VuiUpdateType;
.super Ljava/lang/Enum;
.source "VuiUpdateType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/vui/commons/VuiUpdateType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Zx:Lcom/xiaopeng/vui/commons/VuiUpdateType;

.field public static final enum Zy:Lcom/xiaopeng/vui/commons/VuiUpdateType;

.field private static final synthetic Zz:[Lcom/xiaopeng/vui/commons/VuiUpdateType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;

    const-string v1, "UPDATE_VIEW"

    const-string v2, "view"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaopeng/vui/commons/VuiUpdateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zx:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    .line 6
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;

    const-string v1, "UPDATE_VIEW_ATTRIBUTE"

    const-string v2, "attribute"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaopeng/vui/commons/VuiUpdateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zy:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    .line 3
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/xiaopeng/vui/commons/VuiUpdateType;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zx:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zy:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zz:[Lcom/xiaopeng/vui/commons/VuiUpdateType;

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
    iput-object p3, p0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->type:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/VuiUpdateType;
    .locals 1

    .line 3
    const-class v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/vui/commons/VuiUpdateType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/vui/commons/VuiUpdateType;
    .locals 1

    .line 3
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->Zz:[Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {v0}, [Lcom/xiaopeng/vui/commons/VuiUpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/vui/commons/VuiUpdateType;

    return-object v0
.end method
