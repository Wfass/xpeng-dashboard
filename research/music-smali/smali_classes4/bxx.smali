.class public final enum Lbxx;
.super Ljava/lang/Enum;
.source "VuiAction.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lbxx;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lbxx;

.field public static final enum CLICK:Lbxx;

.field public static final enum ITEMCLICK:Lbxx;

.field public static final enum SCROLLBYX:Lbxx;

.field public static final enum SCROLLBYXY:Lbxx;

.field public static final enum SCROLLBYY:Lbxx;

.field public static final enum SCROLLTO:Lbxx;

.field public static final enum SELECTTAB:Lbxx;

.field public static final enum SETCHECK:Lbxx;

.field public static final enum SETSELECTED:Lbxx;

.field public static final enum SETVALUE:Lbxx;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 10
    new-instance v0, Lbxx;

    const/4 v1, 0x0

    const-string v2, "CLICK"

    const-string v3, "Click"

    invoke-direct {v0, v2, v1, v3}, Lbxx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxx;->CLICK:Lbxx;

    .line 11
    new-instance v0, Lbxx;

    const/4 v2, 0x1

    const-string v3, "SETVALUE"

    const-string v4, "SetValue"

    invoke-direct {v0, v3, v2, v4}, Lbxx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxx;->SETVALUE:Lbxx;

    .line 12
    new-instance v0, Lbxx;

    const/4 v3, 0x2

    const-string v4, "SCROLLBYX"

    const-string v5, "ScrollByX"

    invoke-direct {v0, v4, v3, v5}, Lbxx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxx;->SCROLLBYX:Lbxx;

    .line 13
    new-instance v0, Lbxx;

    const/4 v4, 0x3

    const-string v5, "SCROLLBYY"

    const-string v6, "ScrollByY"

    invoke-direct {v0, v5, v4, v6}, Lbxx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxx;->SCROLLBYY:Lbxx;

    .line 14
    new-instance v0, Lbxx;

    const/4 v5, 0x4

    const-string v6, "SCROLLBYXY"

    const-string v7, "ScrollByXY"

    invoke-direct {v0, v6, v5, v7}, Lbxx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxx;->SCROLLBYXY:Lbxx;

    .line 15
    new-instance v0, Lbxx;

    const/4 v6, 0x5

    const-string v7, "SETCHECK"

    const-string v8, "SetCheck"

    invoke-direct {v0, v7, v6, v8}, Lbxx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxx;->SETCHECK:Lbxx;

    .line 16
    new-instance v0, Lbxx;

    const/4 v7, 0x6

    const-string v8, "ITEMCLICK"

    const-string v9, "ItemClick"

    invoke-direct {v0, v8, v7, v9}, Lbxx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxx;->ITEMCLICK:Lbxx;

    .line 17
    new-instance v0, Lbxx;

    const/4 v8, 0x7

    const-string v9, "SELECTTAB"

    const-string v10, "SelectTab"

    invoke-direct {v0, v9, v8, v10}, Lbxx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxx;->SELECTTAB:Lbxx;

    .line 18
    new-instance v0, Lbxx;

    const/16 v9, 0x8

    const-string v10, "SCROLLTO"

    const-string v11, "ScrollTo"

    invoke-direct {v0, v10, v9, v11}, Lbxx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxx;->SCROLLTO:Lbxx;

    .line 19
    new-instance v0, Lbxx;

    const/16 v10, 0x9

    const-string v11, "SETSELECTED"

    const-string v12, "SetSelected"

    invoke-direct {v0, v11, v10, v12}, Lbxx;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lbxx;->SETSELECTED:Lbxx;

    const/16 v0, 0xa

    .line 9
    new-array v0, v0, [Lbxx;

    sget-object v11, Lbxx;->CLICK:Lbxx;

    aput-object v11, v0, v1

    sget-object v1, Lbxx;->SETVALUE:Lbxx;

    aput-object v1, v0, v2

    sget-object v1, Lbxx;->SCROLLBYX:Lbxx;

    aput-object v1, v0, v3

    sget-object v1, Lbxx;->SCROLLBYY:Lbxx;

    aput-object v1, v0, v4

    sget-object v1, Lbxx;->SCROLLBYXY:Lbxx;

    aput-object v1, v0, v5

    sget-object v1, Lbxx;->SETCHECK:Lbxx;

    aput-object v1, v0, v6

    sget-object v1, Lbxx;->ITEMCLICK:Lbxx;

    aput-object v1, v0, v7

    sget-object v1, Lbxx;->SELECTTAB:Lbxx;

    aput-object v1, v0, v8

    sget-object v1, Lbxx;->SCROLLTO:Lbxx;

    aput-object v1, v0, v9

    sget-object v1, Lbxx;->SETSELECTED:Lbxx;

    aput-object v1, v0, v10

    sput-object v0, Lbxx;->$VALUES:[Lbxx;

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
    iput-object p3, p0, Lbxx;->name:Ljava/lang/String;

    return-void
.end method

.method public static b()Ljava/util/List;
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
    invoke-static {}, Lbxx;->values()[Lbxx;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 34
    invoke-virtual {v4}, Lbxx;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lbxx;
    .locals 1

    .line 9
    const-class v0, Lbxx;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lbxx;

    return-object p0
.end method

.method public static values()[Lbxx;
    .locals 1

    .line 9
    sget-object v0, Lbxx;->$VALUES:[Lbxx;

    invoke-virtual {v0}, [Lbxx;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lbxx;

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lbxx;->name:Ljava/lang/String;

    return-object v0
.end method
