.class Lcom/xiaopeng/musicradio/utils/ad$d;
.super Ljava/lang/Object;
.source "GsonManagerUtil.java"

# interfaces
.implements Ljava/lang/reflect/ParameterizedType;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/utils/ad;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "d"
.end annotation


# instance fields
.field a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/musicradio/utils/ad$d;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
    .locals 3

    const/4 v0, 0x1

    .line 104
    new-array v0, v0, [Ljava/lang/reflect/Type;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/utils/ad$d;->a:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public getOwnerType()Ljava/lang/reflect/Type;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRawType()Ljava/lang/reflect/Type;
    .locals 1

    .line 109
    const-class v0, Ljava/util/List;

    return-object v0
.end method
