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
    .locals 17

    .line 10
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "SEARCH"

    const-string v2, "Search"

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->SEARCH:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 11
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "SELECT"

    const-string v2, "Select"

    const/4 v4, 0x1

    invoke-direct {v0, v1, v4, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->SELECT:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 12
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "EDIT"

    const-string v2, "Edit"

    const/4 v5, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->EDIT:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 13
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "OPEN"

    const-string v2, "Open"

    const/4 v6, 0x3

    invoke-direct {v0, v1, v6, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->OPEN:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 14
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "DELETE"

    const-string v2, "Delete"

    const/4 v7, 0x4

    invoke-direct {v0, v1, v7, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->DELETE:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 15
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "DETAIL"

    const-string v2, "Detail"

    const/4 v8, 0x5

    invoke-direct {v0, v1, v8, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->DETAIL:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 16
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "EXPANDFOLD"

    const-string v2, "ExpandFold"

    const/4 v9, 0x6

    invoke-direct {v0, v1, v9, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->EXPANDFOLD:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 17
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "ROLL"

    const-string v2, "Roll"

    const/4 v10, 0x7

    invoke-direct {v0, v1, v10, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->ROLL:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 18
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "TAB"

    const-string v2, "Tab"

    const/16 v11, 0x8

    invoke-direct {v0, v1, v11, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->TAB:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 19
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "SELECTTAB"

    const-string v2, "SelectTab"

    const/16 v12, 0x9

    invoke-direct {v0, v1, v12, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->SELECTTAB:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 20
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "SLIDE"

    const-string v2, "Slide"

    const/16 v13, 0xa

    invoke-direct {v0, v1, v13, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->SLIDE:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 21
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "UP"

    const-string v2, "Up"

    const/16 v14, 0xb

    invoke-direct {v0, v1, v14, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->UP:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 22
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "DOWN"

    const-string v2, "Down"

    const/16 v15, 0xc

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->DOWN:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 23
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "LEFT"

    const-string v2, "Left"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->LEFT:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 24
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "RIGHT"

    const-string v2, "Right"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->RIGHT:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 25
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "SET"

    const-string v2, "Set"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->SET:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 26
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "SORT"

    const-string v2, "Sort"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->SORT:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 27
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "EXPAND"

    const-string v2, "Expand"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->EXPAND:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 28
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "ADD"

    const-string v2, "Add"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->ADD:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 29
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "PLAY"

    const-string v2, "Play"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->PLAY:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 30
    new-instance v0, Lcom/xiaopeng/vui/commons/VuiActType;

    const-string v1, "NULL"

    const-string v2, "Null"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15, v2}, Lcom/xiaopeng/vui/commons/VuiActType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->NULL:Lcom/xiaopeng/vui/commons/VuiActType;

    .line 9
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/xiaopeng/vui/commons/VuiActType;

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->SEARCH:Lcom/xiaopeng/vui/commons/VuiActType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->SELECT:Lcom/xiaopeng/vui/commons/VuiActType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->EDIT:Lcom/xiaopeng/vui/commons/VuiActType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->OPEN:Lcom/xiaopeng/vui/commons/VuiActType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->DELETE:Lcom/xiaopeng/vui/commons/VuiActType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->DETAIL:Lcom/xiaopeng/vui/commons/VuiActType;

    aput-object v1, v0, v8

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->EXPANDFOLD:Lcom/xiaopeng/vui/commons/VuiActType;

    aput-object v1, v0, v9

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->ROLL:Lcom/xiaopeng/vui/commons/VuiActType;

    aput-object v1, v0, v10

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->TAB:Lcom/xiaopeng/vui/commons/VuiActType;

    aput-object v1, v0, v11

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->SELECTTAB:Lcom/xiaopeng/vui/commons/VuiActType;

    aput-object v1, v0, v12

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->SLIDE:Lcom/xiaopeng/vui/commons/VuiActType;

    aput-object v1, v0, v13

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->UP:Lcom/xiaopeng/vui/commons/VuiActType;

    aput-object v1, v0, v14

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->DOWN:Lcom/xiaopeng/vui/commons/VuiActType;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->LEFT:Lcom/xiaopeng/vui/commons/VuiActType;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->RIGHT:Lcom/xiaopeng/vui/commons/VuiActType;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->SET:Lcom/xiaopeng/vui/commons/VuiActType;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->SORT:Lcom/xiaopeng/vui/commons/VuiActType;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->EXPAND:Lcom/xiaopeng/vui/commons/VuiActType;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->ADD:Lcom/xiaopeng/vui/commons/VuiActType;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->PLAY:Lcom/xiaopeng/vui/commons/VuiActType;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/vui/commons/VuiActType;->NULL:Lcom/xiaopeng/vui/commons/VuiActType;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sput-object v0, Lcom/xiaopeng/vui/commons/VuiActType;->$VALUES:[Lcom/xiaopeng/vui/commons/VuiActType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "type"    # Ljava/lang/String;
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

    .line 36
    return-void
.end method

.method public static getVuiActTypeList()Ljava/util/List;
    .locals 6
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
    .local v0, "actTypeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/xiaopeng/vui/commons/VuiActType;->values()[Lcom/xiaopeng/vui/commons/VuiActType;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 45
    .local v4, "actType":Lcom/xiaopeng/vui/commons/VuiActType;
    invoke-virtual {v4}, Lcom/xiaopeng/vui/commons/VuiActType;->getType()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    .end local v4    # "actType":Lcom/xiaopeng/vui/commons/VuiActType;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 47
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/vui/commons/VuiActType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 9
    const-class v0, Lcom/xiaopeng/vui/commons/VuiActType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/vui/commons/VuiActType;

    return-object v0
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
