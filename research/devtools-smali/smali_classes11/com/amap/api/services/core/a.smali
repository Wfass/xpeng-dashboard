.class public Lcom/amap/api/services/core/a;
.super Ljava/lang/Object;
.source "ServiceSettings.java"


# static fields
.field private static gI:Lcom/amap/api/services/core/a;


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private d:I

.field private e:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, "zh-CN"

    iput-object v0, p0, Lcom/amap/api/services/core/a;->a:Ljava/lang/String;

    .line 26
    const/4 v0, 0x1

    iput v0, p0, Lcom/amap/api/services/core/a;->b:I

    .line 31
    const/16 v0, 0x4e20

    iput v0, p0, Lcom/amap/api/services/core/a;->d:I

    .line 32
    iput v0, p0, Lcom/amap/api/services/core/a;->e:I

    .line 84
    return-void
.end method

.method public static bH()Lcom/amap/api/services/core/a;
    .locals 1

    .line 92
    sget-object v0, Lcom/amap/api/services/core/a;->gI:Lcom/amap/api/services/core/a;

    if-nez v0, :cond_0

    .line 93
    new-instance v0, Lcom/amap/api/services/core/a;

    invoke-direct {v0}, Lcom/amap/api/services/core/a;-><init>()V

    sput-object v0, Lcom/amap/api/services/core/a;->gI:Lcom/amap/api/services/core/a;

    .line 95
    :cond_0
    sget-object v0, Lcom/amap/api/services/core/a;->gI:Lcom/amap/api/services/core/a;

    return-object v0
.end method


# virtual methods
.method public bF()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/amap/api/services/core/a;->d:I

    return v0
.end method

.method public bG()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/amap/api/services/core/a;->e:I

    return v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/amap/api/services/core/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .line 133
    iget v0, p0, Lcom/amap/api/services/core/a;->b:I

    return v0
.end method
