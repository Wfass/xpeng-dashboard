.class public final enum Lamo;
.super Ljava/lang/Enum;
.source "RefreshState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lamo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lamo;

.field public static final enum LoadFinish:Lamo;

.field public static final enum LoadReleased:Lamo;

.field public static final enum Loading:Lamo;

.field public static final enum None:Lamo;

.field public static final enum PullDownCanceled:Lamo;

.field public static final enum PullDownToRefresh:Lamo;

.field public static final enum PullUpCanceled:Lamo;

.field public static final enum PullUpToLoad:Lamo;

.field public static final enum RefreshFinish:Lamo;

.field public static final enum RefreshReleased:Lamo;

.field public static final enum Refreshing:Lamo;

.field public static final enum ReleaseToLoad:Lamo;

.field public static final enum ReleaseToRefresh:Lamo;

.field public static final enum ReleaseToTwoLevel:Lamo;

.field public static final enum TwoLevel:Lamo;

.field public static final enum TwoLevelFinish:Lamo;

.field public static final enum TwoLevelReleased:Lamo;


# instance fields
.field public final isDragging:Z

.field public final isFinishing:Z

.field public final isFooter:Z

.field public final isHeader:Z

.field public final isOpening:Z

.field public final isReleaseToOpening:Z

.field public final isTwoLevel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 8
    new-instance v9, Lamo;

    const-string v1, "None"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v9, Lamo;->None:Lamo;

    .line 9
    new-instance v0, Lamo;

    const-string v11, "PullDownToRefresh"

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->PullDownToRefresh:Lamo;

    new-instance v0, Lamo;

    const-string v2, "PullUpToLoad"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->PullUpToLoad:Lamo;

    .line 10
    new-instance v0, Lamo;

    const-string v11, "PullDownCanceled"

    const/4 v12, 0x3

    const/4 v14, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->PullDownCanceled:Lamo;

    new-instance v0, Lamo;

    const-string v2, "PullUpCanceled"

    const/4 v3, 0x4

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->PullUpCanceled:Lamo;

    .line 11
    new-instance v0, Lamo;

    const-string v11, "ReleaseToRefresh"

    const/4 v12, 0x5

    const/4 v14, 0x1

    const/16 v18, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->ReleaseToRefresh:Lamo;

    new-instance v0, Lamo;

    const-string v2, "ReleaseToLoad"

    const/4 v3, 0x6

    const/4 v5, 0x1

    const/4 v9, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->ReleaseToLoad:Lamo;

    .line 12
    new-instance v0, Lamo;

    const-string v11, "ReleaseToTwoLevel"

    const/4 v12, 0x7

    const/16 v17, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->ReleaseToTwoLevel:Lamo;

    new-instance v0, Lamo;

    const-string v2, "TwoLevelReleased"

    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->TwoLevelReleased:Lamo;

    .line 13
    new-instance v0, Lamo;

    const-string v11, "RefreshReleased"

    const/16 v12, 0x9

    const/4 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->RefreshReleased:Lamo;

    new-instance v0, Lamo;

    const-string v2, "LoadReleased"

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v8, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->LoadReleased:Lamo;

    .line 14
    new-instance v0, Lamo;

    const-string v11, "Refreshing"

    const/16 v12, 0xb

    const/4 v15, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->Refreshing:Lamo;

    new-instance v0, Lamo;

    const-string v2, "Loading"

    const/16 v3, 0xc

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->Loading:Lamo;

    new-instance v0, Lamo;

    const-string v11, "TwoLevel"

    const/16 v12, 0xd

    const/16 v17, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->TwoLevel:Lamo;

    .line 15
    new-instance v0, Lamo;

    const-string v2, "RefreshFinish"

    const/16 v3, 0xe

    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->RefreshFinish:Lamo;

    new-instance v0, Lamo;

    const-string v11, "LoadFinish"

    const/16 v12, 0xf

    const/4 v13, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v18}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->LoadFinish:Lamo;

    new-instance v0, Lamo;

    const-string v2, "TwoLevelFinish"

    const/16 v3, 0x10

    const/4 v8, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lamo;-><init>(Ljava/lang/String;IIZZZZZ)V

    sput-object v0, Lamo;->TwoLevelFinish:Lamo;

    const/16 v0, 0x11

    .line 6
    new-array v0, v0, [Lamo;

    sget-object v1, Lamo;->None:Lamo;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lamo;->PullDownToRefresh:Lamo;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lamo;->PullUpToLoad:Lamo;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lamo;->PullDownCanceled:Lamo;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lamo;->PullUpCanceled:Lamo;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lamo;->ReleaseToRefresh:Lamo;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lamo;->ReleaseToLoad:Lamo;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lamo;->ReleaseToTwoLevel:Lamo;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lamo;->TwoLevelReleased:Lamo;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lamo;->RefreshReleased:Lamo;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lamo;->LoadReleased:Lamo;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lamo;->Refreshing:Lamo;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lamo;->Loading:Lamo;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lamo;->TwoLevel:Lamo;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lamo;->RefreshFinish:Lamo;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lamo;->LoadFinish:Lamo;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lamo;->TwoLevelFinish:Lamo;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sput-object v0, Lamo;->$VALUES:[Lamo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZZZZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZZZZ)V"
        }
    .end annotation

    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 p1, 0x0

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    move v0, p2

    goto :goto_0

    :cond_0
    move v0, p1

    .line 26
    :goto_0
    iput-boolean v0, p0, Lamo;->isHeader:Z

    const/4 v0, 0x2

    if-ne p3, v0, :cond_1

    move p1, p2

    .line 27
    :cond_1
    iput-boolean p1, p0, Lamo;->isFooter:Z

    .line 28
    iput-boolean p4, p0, Lamo;->isDragging:Z

    .line 29
    iput-boolean p5, p0, Lamo;->isOpening:Z

    .line 30
    iput-boolean p6, p0, Lamo;->isFinishing:Z

    .line 31
    iput-boolean p7, p0, Lamo;->isTwoLevel:Z

    .line 32
    iput-boolean p8, p0, Lamo;->isReleaseToOpening:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lamo;
    .locals 1

    .line 6
    const-class v0, Lamo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lamo;

    return-object p0
.end method

.method public static values()[Lamo;
    .locals 1

    .line 6
    sget-object v0, Lamo;->$VALUES:[Lamo;

    invoke-virtual {v0}, [Lamo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lamo;

    return-object v0
.end method


# virtual methods
.method public a()Lamo;
    .locals 2

    .line 36
    iget-boolean v0, p0, Lamo;->isHeader:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lamo;->isTwoLevel:Z

    if-nez v0, :cond_0

    .line 37
    invoke-static {}, Lamo;->values()[Lamo;

    move-result-object v0

    invoke-virtual {p0}, Lamo;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method

.method public b()Lamo;
    .locals 2

    .line 43
    iget-boolean v0, p0, Lamo;->isFooter:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lamo;->isTwoLevel:Z

    if-nez v0, :cond_0

    .line 44
    invoke-static {}, Lamo;->values()[Lamo;

    move-result-object v0

    invoke-virtual {p0}, Lamo;->ordinal()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    aget-object v0, v0, v1

    return-object v0

    :cond_0
    return-object p0
.end method
