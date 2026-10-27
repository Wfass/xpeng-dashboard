.class Lcom/alibaba/fastjson2/support/AwtRederModule$ColorCreator;
.super Ljava/lang/Object;
.source "AwtRederModule.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/support/AwtRederModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ColorCreator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Function<",
        "Ljava/util/Map<",
        "Ljava/lang/Long;",
        "Ljava/lang/Object;",
        ">;",
        "Ljava/awt/Color;",
        ">;"
    }
.end annotation


# static fields
.field static final HASH_B:J

.field static final HASH_G:J

.field static final HASH_R:J

.field static final HASH_RGB:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "rgb"

    .line 66
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/support/AwtRederModule$ColorCreator;->HASH_RGB:J

    const-string v0, "r"

    .line 67
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/support/AwtRederModule$ColorCreator;->HASH_R:J

    const-string v0, "g"

    .line 68
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/support/AwtRederModule$ColorCreator;->HASH_G:J

    const-string v0, "b"

    .line 69
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/support/AwtRederModule$ColorCreator;->HASH_B:J

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/util/Map;)Ljava/awt/Color;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/awt/Color;"
        }
    .end annotation

    .line 73
    sget-wide v0, Lcom/alibaba/fastjson2/support/AwtRederModule$ColorCreator;->HASH_RGB:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 75
    new-instance p1, Ljava/awt/Color;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p1, v0}, Ljava/awt/Color;-><init>(I)V

    return-object p1

    .line 78
    :cond_0
    sget-wide v0, Lcom/alibaba/fastjson2/support/AwtRederModule$ColorCreator;->HASH_R:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 79
    sget-wide v1, Lcom/alibaba/fastjson2/support/AwtRederModule$ColorCreator;->HASH_G:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 80
    sget-wide v2, Lcom/alibaba/fastjson2/support/AwtRederModule$ColorCreator;->HASH_B:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 81
    new-instance v2, Ljava/awt/Color;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {v2, v0, v1, p1}, Ljava/awt/Color;-><init>(III)V

    return-object v2
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 64
    check-cast p1, Ljava/util/Map;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson2/support/AwtRederModule$ColorCreator;->apply(Ljava/util/Map;)Ljava/awt/Color;

    move-result-object p1

    return-object p1
.end method
