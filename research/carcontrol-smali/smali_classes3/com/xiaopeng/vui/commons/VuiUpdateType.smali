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
.field private static final synthetic $VALUES:[Lcom/xiaopeng/vui/commons/VuiUpdateType;

.field public static final enum UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

.field public static final enum UPDATE_VIEW_ATTRIBUTE:Lcom/xiaopeng/vui/commons/VuiUpdateType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 5
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;

    const-string v1, "UPDATE_VIEW"

    const/4 v2, 0x0

    const-string v3, "view"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/vui/commons/VuiUpdateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    .line 6
    new-instance v1, Lcom/xiaopeng/vui/commons/VuiUpdateType;

    const-string v3, "UPDATE_VIEW_ATTRIBUTE"

    const/4 v4, 0x1

    const-string v5, "attribute"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaopeng/vui/commons/VuiUpdateType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW_ATTRIBUTE:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/vui/commons/VuiUpdateType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/xiaopeng/vui/commons/VuiUpdateType;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiUpdateType;

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
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {v0}, [Lcom/xiaopeng/vui/commons/VuiUpdateType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/vui/commons/VuiUpdateType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->type:Ljava/lang/String;

    return-object v0
.end method
