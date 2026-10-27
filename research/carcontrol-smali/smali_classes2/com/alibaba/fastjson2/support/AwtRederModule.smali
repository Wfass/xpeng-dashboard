.class public Lcom/alibaba/fastjson2/support/AwtRederModule;
.super Ljava/lang/Object;
.source "AwtRederModule.java"

# interfaces
.implements Lcom/alibaba/fastjson2/modules/ObjectReaderModule;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson2/support/AwtRederModule$ColorCreator;
    }
.end annotation


# static fields
.field static final HASH_NAME:J

.field static final HASH_SIZE:J

.field static final HASH_STYLE:J

.field static final HASH_X:J

.field static final HASH_Y:J

.field public static INSTANCE:Lcom/alibaba/fastjson2/support/AwtRederModule;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "x"

    .line 19
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/support/AwtRederModule;->HASH_X:J

    const-string/jumbo v0, "y"

    .line 20
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/support/AwtRederModule;->HASH_Y:J

    const-string v0, "name"

    .line 21
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/support/AwtRederModule;->HASH_NAME:J

    const-string/jumbo v0, "size"

    .line 22
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/support/AwtRederModule;->HASH_SIZE:J

    const-string/jumbo v0, "style"

    .line 23
    invoke-static {v0}, Lcom/alibaba/fastjson2/util/Fnv;->hashCode64(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/alibaba/fastjson2/support/AwtRederModule;->HASH_STYLE:J

    .line 24
    new-instance v0, Lcom/alibaba/fastjson2/support/AwtRederModule;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/support/AwtRederModule;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/support/AwtRederModule;->INSTANCE:Lcom/alibaba/fastjson2/support/AwtRederModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$getObjectReader$0(Ljava/util/Map;)Ljava/awt/Point;
    .locals 4

    .line 40
    new-instance v0, Ljava/awt/Point;

    sget-wide v1, Lcom/alibaba/fastjson2/support/AwtRederModule;->HASH_X:J

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-wide v2, Lcom/alibaba/fastjson2/support/AwtRederModule;->HASH_Y:J

    .line 42
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, v1, p0}, Ljava/awt/Point;-><init>(II)V

    return-object v0
.end method

.method static synthetic lambda$getObjectReader$1(Ljava/util/Map;)Ljava/awt/Font;
    .locals 5

    .line 51
    new-instance v0, Ljava/awt/Font;

    sget-wide v1, Lcom/alibaba/fastjson2/support/AwtRederModule;->HASH_NAME:J

    .line 52
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-wide v2, Lcom/alibaba/fastjson2/support/AwtRederModule;->HASH_STYLE:J

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-wide v3, Lcom/alibaba/fastjson2/support/AwtRederModule;->HASH_SIZE:J

    .line 54
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {p0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Ljava/awt/Font;-><init>(Ljava/lang/String;II)V

    return-object v0
.end method


# virtual methods
.method public getObjectReader(Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson2/reader/ObjectReader;
    .locals 6

    .line 28
    const-class p1, Ljava/awt/Color;

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, p1, :cond_0

    .line 29
    new-instance p1, Lcom/alibaba/fastjson2/support/AwtRederModule$ColorCreator;

    invoke-direct {p1}, Lcom/alibaba/fastjson2/support/AwtRederModule$ColorCreator;-><init>()V

    const/4 p2, 0x4

    new-array p2, p2, [Lcom/alibaba/fastjson2/reader/FieldReader;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v5, "rgb"

    .line 31
    invoke-static {v5, v4}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fieldReader(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v4

    aput-object v4, p2, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "r"

    .line 32
    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fieldReader(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v3

    aput-object v3, p2, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "g"

    .line 33
    invoke-static {v3, v2}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fieldReader(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v2

    aput-object v2, p2, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "b"

    .line 34
    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fieldReader(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v1

    aput-object v1, p2, v0

    .line 29
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->objectReader(Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    .line 38
    :cond_0
    const-class p1, Ljava/awt/Point;

    if-ne p2, p1, :cond_1

    .line 39
    sget-object p1, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtRederModule$NFNde2DY_oIDHDmNBuFQ0lOaIVE;->INSTANCE:Lcom/alibaba/fastjson2/support/-$$Lambda$AwtRederModule$NFNde2DY_oIDHDmNBuFQ0lOaIVE;

    new-array p2, v1, [Lcom/alibaba/fastjson2/reader/FieldReader;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v1, "x"

    .line 44
    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fieldReader(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v0

    aput-object v0, p2, v3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v1, "y"

    .line 45
    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fieldReader(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v0

    aput-object v0, p2, v2

    .line 39
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->objectReader(Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    const-class p1, Ljava/awt/Font;

    if-ne p2, p1, :cond_2

    .line 50
    sget-object p1, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtRederModule$gEoq9cvCVFDiygvmCDtCHBST6Us;->INSTANCE:Lcom/alibaba/fastjson2/support/-$$Lambda$AwtRederModule$gEoq9cvCVFDiygvmCDtCHBST6Us;

    new-array p2, v0, [Lcom/alibaba/fastjson2/reader/FieldReader;

    const-class v0, Ljava/lang/String;

    const-string v4, "name"

    .line 56
    invoke-static {v4, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fieldReader(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v0

    aput-object v0, p2, v3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v3, "style"

    .line 57
    invoke-static {v3, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fieldReader(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v0

    aput-object v0, p2, v2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v2, "size"

    .line 58
    invoke-static {v2, v0}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->fieldReader(Ljava/lang/String;Ljava/lang/Class;)Lcom/alibaba/fastjson2/reader/FieldReader;

    move-result-object v0

    aput-object v0, p2, v1

    .line 50
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/reader/ObjectReaders;->objectReader(Ljava/util/function/Function;[Lcom/alibaba/fastjson2/reader/FieldReader;)Lcom/alibaba/fastjson2/reader/ObjectReader;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
