.class public final enum Lcom/xiaopeng/vui/commons/VuiAction;
.super Ljava/lang/Enum;
.source "VuiAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/vui/commons/VuiAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/vui/commons/VuiAction;

.field public static final enum CLICK:Lcom/xiaopeng/vui/commons/VuiAction;

.field public static final enum ITEMCLICK:Lcom/xiaopeng/vui/commons/VuiAction;

.field public static final enum SCROLLBYX:Lcom/xiaopeng/vui/commons/VuiAction;

.field public static final enum SCROLLBYXY:Lcom/xiaopeng/vui/commons/VuiAction;

.field public static final enum SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

.field public static final enum SCROLLTO:Lcom/xiaopeng/vui/commons/VuiAction;

.field public static final enum SELECTTAB:Lcom/xiaopeng/vui/commons/VuiAction;

.field public static final enum SETCHECK:Lcom/xiaopeng/vui/commons/VuiAction;

.field public static final enum SETSELECTED:Lcom/xiaopeng/vui/commons/VuiAction;

.field public static final enum SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 10
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v1, "CLICK"

    const/4 v2, 0x0

    const-string v3, "Click"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->CLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 11
    new-instance v1, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v3, "SETVALUE"

    const/4 v4, 0x1

    const-string v5, "SetValue"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 12
    new-instance v3, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v5, "SCROLLBYX"

    const/4 v6, 0x2

    const-string v7, "ScrollByX"

    invoke-direct {v3, v5, v6, v7}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYX:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 13
    new-instance v5, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v7, "SCROLLBYY"

    const/4 v8, 0x3

    const-string v9, "ScrollByY"

    invoke-direct {v5, v7, v8, v9}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 14
    new-instance v7, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v9, "SCROLLBYXY"

    const/4 v10, 0x4

    const-string v11, "ScrollByXY"

    invoke-direct {v7, v9, v10, v11}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYXY:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 15
    new-instance v9, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v11, "SETCHECK"

    const/4 v12, 0x5

    const-string v13, "SetCheck"

    invoke-direct {v9, v11, v12, v13}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/xiaopeng/vui/commons/VuiAction;->SETCHECK:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 16
    new-instance v11, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v13, "ITEMCLICK"

    const/4 v14, 0x6

    const-string v15, "ItemClick"

    invoke-direct {v11, v13, v14, v15}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/xiaopeng/vui/commons/VuiAction;->ITEMCLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 17
    new-instance v13, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v15, "SELECTTAB"

    const/4 v14, 0x7

    const-string v12, "SelectTab"

    invoke-direct {v13, v15, v14, v12}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/xiaopeng/vui/commons/VuiAction;->SELECTTAB:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 18
    new-instance v12, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v15, "SCROLLTO"

    const/16 v14, 0x8

    const-string v10, "ScrollTo"

    invoke-direct {v12, v15, v14, v10}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLTO:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 19
    new-instance v10, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v15, "SETSELECTED"

    const/16 v14, 0x9

    const-string v8, "SetSelected"

    invoke-direct {v10, v15, v14, v8}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/xiaopeng/vui/commons/VuiAction;->SETSELECTED:Lcom/xiaopeng/vui/commons/VuiAction;

    const/16 v8, 0xa

    new-array v8, v8, [Lcom/xiaopeng/vui/commons/VuiAction;

    aput-object v0, v8, v2

    aput-object v1, v8, v4

    aput-object v3, v8, v6

    const/4 v0, 0x3

    aput-object v5, v8, v0

    const/4 v0, 0x4

    aput-object v7, v8, v0

    const/4 v0, 0x5

    aput-object v9, v8, v0

    const/4 v0, 0x6

    aput-object v11, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v12, v8, v0

    aput-object v10, v8, v14

    .line 9
    sput-object v8, Lcom/xiaopeng/vui/commons/VuiAction;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiAction;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/xiaopeng/vui/commons/VuiAction;->name:Ljava/lang/String;

    return-void
.end method

.method public static getVuiActionList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-static {}, Lcom/xiaopeng/vui/commons/VuiAction;->values()[Lcom/xiaopeng/vui/commons/VuiAction;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 34
    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/VuiAction;
    .locals 1

    .line 9
    const-class v0, Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/vui/commons/VuiAction;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/vui/commons/VuiAction;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-virtual {v0}, [Lcom/xiaopeng/vui/commons/VuiAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/vui/commons/VuiAction;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/VuiAction;->name:Ljava/lang/String;

    return-object v0
.end method
