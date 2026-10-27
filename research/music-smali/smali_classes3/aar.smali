.class public Laar;
.super Ljava/lang/Object;
.source "AwtRederModule.java"

# interfaces
.implements Lsm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laar$a;
    }
.end annotation


# static fields
.field static final a:J

.field static final b:J

.field static final c:J

.field static final d:J

.field static final e:J

.field public static f:Laar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "x"

    .line 19
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Laar;->a:J

    const-string/jumbo v0, "y"

    .line 20
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Laar;->b:J

    const-string v0, "name"

    .line 21
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Laar;->c:J

    const-string v0, "size"

    .line 22
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Laar;->d:J

    const-string v0, "style"

    .line 23
    invoke-static {v0}, Labc;->b(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Laar;->e:J

    .line 24
    new-instance v0, Laar;

    invoke-direct {v0}, Laar;-><init>()V

    sput-object v0, Laar;->f:Laar;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/util/Map;)Ljava/awt/Font;
    .locals 5

    .line 51
    new-instance v0, Ljava/awt/Font;

    sget-wide v1, Laar;->c:J

    .line 52
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-wide v2, Laar;->e:J

    .line 53
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    sget-wide v3, Laar;->d:J

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

.method private static synthetic b(Ljava/util/Map;)Ljava/awt/Point;
    .locals 4

    .line 40
    new-instance v0, Ljava/awt/Point;

    sget-wide v1, Laar;->a:J

    .line 41
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-wide v2, Laar;->b:J

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

.method public static synthetic lambda$OA1wUfM2OWQg9f707cy5Kscg5Y8(Ljava/util/Map;)Ljava/awt/Point;
    .locals 0

    invoke-static {p0}, Laar;->b(Ljava/util/Map;)Ljava/awt/Point;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$YOnBj-Nwb201VBlTDkqFua-FtKg(Ljava/util/Map;)Ljava/awt/Font;
    .locals 0

    invoke-static {p0}, Laar;->a(Ljava/util/Map;)Ljava/awt/Font;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getObjectReader(Lzx;Ljava/lang/reflect/Type;)Lwk;
    .locals 6

    .line 28
    const-class p1, Ljava/awt/Color;

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne p2, p1, :cond_0

    .line 29
    new-instance p1, Laar$a;

    invoke-direct {p1}, Laar$a;-><init>()V

    const/4 p2, 0x4

    new-array p2, p2, [Lsu;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v5, "rgb"

    .line 31
    invoke-static {v5, v4}, Lzz;->a(Ljava/lang/String;Ljava/lang/Class;)Lsu;

    move-result-object v4

    aput-object v4, p2, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "r"

    .line 32
    invoke-static {v4, v3}, Lzz;->a(Ljava/lang/String;Ljava/lang/Class;)Lsu;

    move-result-object v3

    aput-object v3, p2, v2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "g"

    .line 33
    invoke-static {v3, v2}, Lzz;->a(Ljava/lang/String;Ljava/lang/Class;)Lsu;

    move-result-object v2

    aput-object v2, p2, v1

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "b"

    .line 34
    invoke-static {v2, v1}, Lzz;->a(Ljava/lang/String;Ljava/lang/Class;)Lsu;

    move-result-object v1

    aput-object v1, p2, v0

    .line 29
    invoke-static {p1, p2}, Lzz;->a(Ljava/util/function/Function;[Lsu;)Lwk;

    move-result-object p1

    return-object p1

    .line 38
    :cond_0
    const-class p1, Ljava/awt/Point;

    if-ne p2, p1, :cond_1

    .line 39
    sget-object p1, L-$$Lambda$aar$OA1wUfM2OWQg9f707cy5Kscg5Y8;->INSTANCE:L-$$Lambda$aar$OA1wUfM2OWQg9f707cy5Kscg5Y8;

    new-array p2, v1, [Lsu;

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v1, "x"

    .line 44
    invoke-static {v1, v0}, Lzz;->a(Ljava/lang/String;Ljava/lang/Class;)Lsu;

    move-result-object v0

    aput-object v0, p2, v3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string/jumbo v1, "y"

    .line 45
    invoke-static {v1, v0}, Lzz;->a(Ljava/lang/String;Ljava/lang/Class;)Lsu;

    move-result-object v0

    aput-object v0, p2, v2

    .line 39
    invoke-static {p1, p2}, Lzz;->a(Ljava/util/function/Function;[Lsu;)Lwk;

    move-result-object p1

    return-object p1

    .line 49
    :cond_1
    const-class p1, Ljava/awt/Font;

    if-ne p2, p1, :cond_2

    .line 50
    sget-object p1, L-$$Lambda$aar$YOnBj-Nwb201VBlTDkqFua-FtKg;->INSTANCE:L-$$Lambda$aar$YOnBj-Nwb201VBlTDkqFua-FtKg;

    new-array p2, v0, [Lsu;

    const-class v0, Ljava/lang/String;

    const-string v4, "name"

    .line 56
    invoke-static {v4, v0}, Lzz;->a(Ljava/lang/String;Ljava/lang/Class;)Lsu;

    move-result-object v0

    aput-object v0, p2, v3

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v3, "style"

    .line 57
    invoke-static {v3, v0}, Lzz;->a(Ljava/lang/String;Ljava/lang/Class;)Lsu;

    move-result-object v0

    aput-object v0, p2, v2

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v2, "size"

    .line 58
    invoke-static {v2, v0}, Lzz;->a(Ljava/lang/String;Ljava/lang/Class;)Lsu;

    move-result-object v0

    aput-object v0, p2, v1

    .line 50
    invoke-static {p1, p2}, Lzz;->a(Ljava/util/function/Function;[Lsu;)Lwk;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
