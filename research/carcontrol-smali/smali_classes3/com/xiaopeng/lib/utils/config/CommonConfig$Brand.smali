.class public final enum Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;
.super Ljava/lang/Enum;
.source "CommonConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/utils/config/CommonConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Brand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

.field public static final enum VOLKSWAGEN:Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

.field public static final enum XIAOPENG:Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;


# instance fields
.field private final brand:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 132
    new-instance v0, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    const-string v1, "XIAOPENG"

    const/4 v2, 0x0

    const-string/jumbo v3, "xiaopeng"

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;->XIAOPENG:Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    .line 133
    new-instance v1, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    const-string v3, "VOLKSWAGEN"

    const/4 v4, 0x1

    const-string v5, "volkswagen"

    invoke-direct {v1, v3, v4, v5}, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;->VOLKSWAGEN:Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 131
    sput-object v3, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;->$VALUES:[Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            "$enum$name",
            "$enum$ordinal",
            "brand"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 147
    iput-object p3, p0, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;->brand:Ljava/lang/String;

    return-void
.end method

.method public static getBrand(Ljava/lang/String;)Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "brand"
        }
    .end annotation

    .line 138
    invoke-static {}, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;->values()[Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 139
    invoke-virtual {v3}, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;->getBrandName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 143
    :cond_1
    sget-object p0, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;->XIAOPENG:Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            "name"
        }
    .end annotation

    .line 131
    const-class v0, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;
    .locals 1

    .line 131
    sget-object v0, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;->$VALUES:[Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    invoke-virtual {v0}, [Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;

    return-object v0
.end method


# virtual methods
.method public getBrandName()Ljava/lang/String;
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/config/CommonConfig$Brand;->brand:Ljava/lang/String;

    return-object v0
.end method
