.class public Lcom/xiaopeng/devtools/model/can/CanCollectModel;
.super Ljava/lang/Object;
.source "CanCollectModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;
    }
.end annotation


# static fields
.field public static final rp:Ljava/lang/Long;

.field public static final rq:Ljava/lang/Long;

.field private static rr:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

.field private static final rw:[Ljava/lang/String;


# instance fields
.field private mErrorMsg:Ljava/lang/String;

.field private rs:[Z

.field private rt:Z

.field private ru:Z

.field private rv:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 11
    const-wide/32 v0, 0x1f400000

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rp:Ljava/lang/Long;

    .line 12
    const-wide v0, 0x140000000L

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rq:Ljava/lang/Long;

    .line 19
    const-string v1, "ICAN"

    const-string v2, "DCAN"

    const-string v3, "BCAN"

    const-string v4, "CCAN"

    const-string v5, "ECAN"

    const-string v6, "ADCAN"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rw:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->values()[Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rs:[Z

    .line 17
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->mErrorMsg:Ljava/lang/String;

    .line 18
    const/16 v0, 0x2712

    iput v0, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rv:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rt:Z

    .line 25
    iput-boolean v0, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->ru:Z

    .line 26
    :goto_0
    sget-object v1, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rw:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rs:[Z

    sget-object v2, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rw:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v2

    aput-boolean v2, v1, v0

    .line 26
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 29
    :cond_0
    return-void
.end method

.method public static fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;
    .locals 1

    .line 32
    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rr:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    if-nez v0, :cond_0

    .line 33
    new-instance v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    invoke-direct {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;-><init>()V

    sput-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rr:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    .line 35
    :cond_0
    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rr:Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    return-object v0
.end method


# virtual methods
.method public B(Z)V
    .locals 5

    .line 75
    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rw:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 76
    invoke-static {v3}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 77
    iget-object v4, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rs:[Z

    invoke-static {v3}, Lcom/xiaopeng/a/a$a;->getInt(Ljava/lang/String;)I

    move-result v3

    aput-boolean p1, v4, v3

    .line 75
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.method public C(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rt:Z

    .line 84
    return-void
.end method

.method public D(Z)V
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->ru:Z

    .line 92
    return-void
.end method

.method public bT(I)V
    .locals 0

    .line 43
    iput p1, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rv:I

    .line 44
    return-void
.end method

.method public bU(I)Z
    .locals 1

    .line 47
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->values()[Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rs:[Z

    aget-boolean p1, v0, p1

    return p1

    .line 50
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public c(IZ)V
    .locals 1

    .line 58
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->values()[Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rw:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/xiaopeng/a/a$a;->dZ(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rs:[Z

    aput-boolean p2, v0, p1

    .line 61
    :cond_0
    return-void
.end method

.method public fo()I
    .locals 1

    .line 39
    iget v0, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rv:I

    return v0
.end method

.method public fp()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rt:Z

    return v0
.end method

.method public fq()Z
    .locals 3

    .line 64
    nop

    .line 65
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;->values()[Lcom/xiaopeng/devtools/model/can/CanCollectModel$CanData;

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 66
    iget-object v2, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->rs:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_0

    .line 67
    nop

    .line 68
    nop

    .line 71
    const/4 v0, 0x1

    goto :goto_1

    .line 65
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_1
    :goto_1
    return v0
.end method

.method public fr()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->ru:Z

    return v0
.end method

.method public fs()V
    .locals 1

    .line 103
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->mErrorMsg:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public getErrorMsg()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorMsg(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->mErrorMsg:Ljava/lang/String;

    .line 100
    return-void
.end method
