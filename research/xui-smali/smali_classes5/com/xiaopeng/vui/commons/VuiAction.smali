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
    .locals 13

    .line 10
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v1, "CLICK"

    const-string v2, "Click"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->CLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 11
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v1, "SETVALUE"

    const-string v2, "SetValue"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 12
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v1, "SCROLLBYX"

    const-string v2, "ScrollByX"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYX:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 13
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v1, "SCROLLBYY"

    const-string v2, "ScrollByY"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 14
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v1, "SCROLLBYXY"

    const-string v2, "ScrollByXY"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYXY:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 15
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v1, "SETCHECK"

    const-string v2, "SetCheck"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETCHECK:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 16
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v1, "ITEMCLICK"

    const-string v2, "ItemClick"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->ITEMCLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 17
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v1, "SELECTTAB"

    const-string v2, "SelectTab"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SELECTTAB:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 18
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v1, "SCROLLTO"

    const-string v2, "ScrollTo"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLTO:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 19
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiAction;

    const-string v1, "SETSELECTED"

    const-string v2, "SetSelected"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/xiaopeng/vui/commons/VuiAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->SETSELECTED:Lcom/xiaopeng/vui/commons/VuiAction;

    .line 9
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/xiaopeng/vui/commons/VuiAction;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->CLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SETVALUE:Lcom/xiaopeng/vui/commons/VuiAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYX:Lcom/xiaopeng/vui/commons/VuiAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYY:Lcom/xiaopeng/vui/commons/VuiAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLBYXY:Lcom/xiaopeng/vui/commons/VuiAction;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SETCHECK:Lcom/xiaopeng/vui/commons/VuiAction;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->ITEMCLICK:Lcom/xiaopeng/vui/commons/VuiAction;

    aput-object v1, v0, v9

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SELECTTAB:Lcom/xiaopeng/vui/commons/VuiAction;

    aput-object v1, v0, v10

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SCROLLTO:Lcom/xiaopeng/vui/commons/VuiAction;

    aput-object v1, v0, v11

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiAction;->SETSELECTED:Lcom/xiaopeng/vui/commons/VuiAction;

    aput-object v1, v0, v12

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiAction;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiAction;

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

    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/xiaopeng/vui/commons/VuiAction;->name:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static getVuiActionList()Ljava/util/List;
    .locals 6
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
    .local v0, "actionList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/vui/commons/VuiAction;->values()[Lcom/xiaopeng/vui/commons/VuiAction;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 34
    .local v4, "action":Lcom/xiaopeng/vui/commons/VuiAction;
    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/VuiAction;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .end local v4    # "action":Lcom/xiaopeng/vui/commons/VuiAction;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/VuiAction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/xiaopeng/vui/commons/VuiAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/VuiAction;

    return-object v0
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
