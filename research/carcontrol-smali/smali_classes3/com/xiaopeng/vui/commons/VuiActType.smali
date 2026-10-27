.class public final enum Lcom/xiaopeng/vui/commons/VuiActType;
.super Ljava/lang/Enum;
.source "VuiActType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/vui/commons/VuiActType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum ADD:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum DELETE:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum DETAIL:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum DOWN:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum EDIT:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum EXPAND:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum EXPANDFOLD:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum LEFT:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum NULL:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum OPEN:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum PLAY:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum RIGHT:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum ROLL:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum SEARCH:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum SELECT:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum SELECTTAB:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum SET:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum SLIDE:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum SORT:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum TAB:Lcom/xiaopeng/vui/commons/VuiActType;

.field public static final enum UP:Lcom/xiaopeng/vui/commons/VuiActType;


# instance fields
.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 10
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "SEARCH"

    const/4 v2, 0x0

    const-string v3, "Search"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->SEARCH:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 11
    new-instance v1, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v3, "SELECT"

    const/4 v4, 0x1

    const-string v5, "Select"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->SELECT:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 12
    new-instance v3, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v5, "EDIT"

    const/4 v6, 0x2

    const-string v7, "Edit"

    invoke-direct {v3, v5, v6, v7}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v3, Lcom/xiaopeng/vui/commons/VuiActType;->EDIT:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 13
    new-instance v5, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v7, "OPEN"

    const/4 v8, 0x3

    const-string v9, "Open"

    invoke-direct {v5, v7, v8, v9}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v5, Lcom/xiaopeng/vui/commons/VuiActType;->OPEN:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 14
    new-instance v7, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v9, "DELETE"

    const/4 v10, 0x4

    const-string v11, "Delete"

    invoke-direct {v7, v9, v10, v11}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v7, Lcom/xiaopeng/vui/commons/VuiActType;->DELETE:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 15
    new-instance v9, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v11, "DETAIL"

    const/4 v12, 0x5

    const-string v13, "Detail"

    invoke-direct {v9, v11, v12, v13}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v9, Lcom/xiaopeng/vui/commons/VuiActType;->DETAIL:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 16
    new-instance v11, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v13, "EXPANDFOLD"

    const/4 v14, 0x6

    const-string v15, "ExpandFold"

    invoke-direct {v11, v13, v14, v15}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v11, Lcom/xiaopeng/vui/commons/VuiActType;->EXPANDFOLD:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 17
    new-instance v13, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v15, "ROLL"

    const/4 v14, 0x7

    const-string v12, "Roll"

    invoke-direct {v13, v15, v14, v12}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v13, Lcom/xiaopeng/vui/commons/VuiActType;->ROLL:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 18
    new-instance v12, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v15, "TAB"

    const/16 v14, 0x8

    const-string v10, "Tab"

    invoke-direct {v12, v15, v14, v10}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v12, Lcom/xiaopeng/vui/commons/VuiActType;->TAB:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 19
    new-instance v10, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v15, "SELECTTAB"

    const/16 v14, 0x9

    const-string v8, "SelectTab"

    invoke-direct {v10, v15, v14, v8}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v10, Lcom/xiaopeng/vui/commons/VuiActType;->SELECTTAB:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 20
    new-instance v8, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v15, "SLIDE"

    const/16 v14, 0xa

    const-string v6, "Slide"

    invoke-direct {v8, v15, v14, v6}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v8, Lcom/xiaopeng/vui/commons/VuiActType;->SLIDE:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 21
    new-instance v6, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v15, "UP"

    const/16 v14, 0xb

    const-string v4, "Up"

    invoke-direct {v6, v15, v14, v4}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v6, Lcom/xiaopeng/vui/commons/VuiActType;->UP:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 22
    new-instance v4, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v15, "DOWN"

    const/16 v14, 0xc

    const-string v2, "Down"

    invoke-direct {v4, v15, v14, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/vui/commons/VuiActType;->DOWN:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 23
    new-instance v2, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v15, "LEFT"

    const/16 v14, 0xd

    move-object/from16 v16, v4

    const-string v4, "Left"

    invoke-direct {v2, v15, v14, v4}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/xiaopeng/vui/commons/VuiActType;->LEFT:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 24
    new-instance v4, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v15, "RIGHT"

    const/16 v14, 0xe

    move-object/from16 v17, v2

    const-string v2, "Right"

    invoke-direct {v4, v15, v14, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/vui/commons/VuiActType;->RIGHT:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 25
    new-instance v2, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v15, "SET"

    const/16 v14, 0xf

    move-object/from16 v18, v4

    const-string v4, "Set"

    invoke-direct {v2, v15, v14, v4}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/xiaopeng/vui/commons/VuiActType;->SET:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 26
    new-instance v4, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v15, "SORT"

    const/16 v14, 0x10

    move-object/from16 v19, v2

    const-string v2, "Sort"

    invoke-direct {v4, v15, v14, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/vui/commons/VuiActType;->SORT:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 27
    new-instance v2, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v15, "EXPAND"

    const/16 v14, 0x11

    move-object/from16 v20, v4

    const-string v4, "Expand"

    invoke-direct {v2, v15, v14, v4}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/xiaopeng/vui/commons/VuiActType;->EXPAND:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 28
    new-instance v4, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v15, "ADD"

    const/16 v14, 0x12

    move-object/from16 v21, v2

    const-string v2, "Add"

    invoke-direct {v4, v15, v14, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/vui/commons/VuiActType;->ADD:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 29
    new-instance v2, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v15, "PLAY"

    const/16 v14, 0x13

    move-object/from16 v22, v4

    const-string v4, "Play"

    invoke-direct {v2, v15, v14, v4}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/xiaopeng/vui/commons/VuiActType;->PLAY:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 30
    new-instance v4, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v15, "NULL"

    const/16 v14, 0x14

    move-object/from16 v23, v2

    const-string v2, "Null"

    invoke-direct {v4, v15, v14, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/xiaopeng/vui/commons/VuiActType;->NULL:Lcom/xiaopeng/vui/commons/VuiActType;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/xiaopeng/vui/commons/VuiActType;

    const/4 v15, 0x0

    aput-object v0, v2, v15

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v12, v2, v0

    const/16 v0, 0x9

    aput-object v10, v2, v0

    const/16 v0, 0xa

    aput-object v8, v2, v0

    const/16 v0, 0xb

    aput-object v6, v2, v0

    const/16 v0, 0xc

    aput-object v16, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    aput-object v4, v2, v14

    .line 9
    sput-object v2, Lcom/xiaopeng/vui/commons/VuiActType;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiActType;

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

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/xiaopeng/vui/commons/VuiActType;->type:Ljava/lang/String;

    return-void
.end method

.method public static getVuiActTypeList()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    invoke-static {}, Lcom/xiaopeng/vui/commons/VuiActType;->values()[Lcom/xiaopeng/vui/commons/VuiActType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 45
    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/VuiActType;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/VuiActType;
    .locals 1

    .line 9
    const-class v0, Lcom/xiaopeng/vui/commons/VuiActType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/vui/commons/VuiActType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/vui/commons/VuiActType;
    .locals 1

    .line 9
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiActType;

    invoke-virtual {v0}, [Lcom/xiaopeng/vui/commons/VuiActType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/vui/commons/VuiActType;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/vui/commons/VuiActType;->type:Ljava/lang/String;

    return-object v0
.end method
