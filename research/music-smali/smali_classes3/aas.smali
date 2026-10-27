.class public Laas;
.super Ljava/lang/Object;
.source "AwtWriterModule.java"

# interfaces
.implements Lso;


# static fields
.field public static a:Laas;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Laas;

    invoke-direct {v0}, Laas;-><init>()V

    sput-object v0, Laas;->a:Laas;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic a(Ljava/awt/Point;)I
    .locals 0

    .line 28
    iget p0, p0, Ljava/awt/Point;->y:I

    return p0
.end method

.method private static synthetic b(Ljava/awt/Point;)I
    .locals 0

    .line 27
    iget p0, p0, Ljava/awt/Point;->x:I

    return p0
.end method

.method public static synthetic lambda$8WYbV6LC5OFvNMBJFQUl5ZUYVZ0(Ljava/awt/Font;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$NNblfFn-5OgrjMVBIjWWqzd-ebY(Ljava/awt/Point;)I
    .locals 0

    invoke-static {p0}, Laas;->a(Ljava/awt/Point;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$aLXxM9x_5MU6wOJH8-v31J-EzK8(Ljava/awt/Point;)I
    .locals 0

    invoke-static {p0}, Laas;->b(Ljava/awt/Point;)I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$fLMWCeOUmg615ZF8xpTMB-0O5P4(Ljava/awt/Color;)I
    .locals 0

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$lJS-gH4q5_ATIbRcfFtF_XLNIgE(Ljava/awt/Font;)I
    .locals 0

    invoke-virtual {p0}, Ljava/awt/Font;->getSize()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$tj8IZhs33NwFsoaEyxpxYT3QdtM(Ljava/awt/Font;)I
    .locals 0

    invoke-virtual {p0}, Ljava/awt/Font;->getStyle()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Laem;
    .locals 5

    .line 19
    const-class p2, Ljava/awt/Color;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    .line 20
    const-class p1, Ljava/awt/Color;

    new-array p2, v1, [Labq;

    sget-object v1, L-$$Lambda$aas$fLMWCeOUmg615ZF8xpTMB-0O5P4;->INSTANCE:L-$$Lambda$aas$fLMWCeOUmg615ZF8xpTMB-0O5P4;

    const-string v2, "rgb"

    .line 21
    invoke-static {v2, v1}, Lahr;->a(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Labq;

    move-result-object v1

    aput-object v1, p2, v0

    .line 20
    invoke-static {p1, p2}, Lahr;->a(Ljava/lang/Class;[Labq;)Laem;

    move-result-object p1

    return-object p1

    .line 25
    :cond_0
    const-class p2, Ljava/awt/Point;

    const/4 v2, 0x2

    if-ne p1, p2, :cond_1

    .line 26
    const-class p1, Ljava/awt/Point;

    new-array p2, v2, [Labq;

    sget-object v2, L-$$Lambda$aas$aLXxM9x_5MU6wOJH8-v31J-EzK8;->INSTANCE:L-$$Lambda$aas$aLXxM9x_5MU6wOJH8-v31J-EzK8;

    const-string v3, "x"

    .line 27
    invoke-static {v3, v2}, Lahr;->a(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Labq;

    move-result-object v2

    aput-object v2, p2, v0

    sget-object v0, L-$$Lambda$aas$NNblfFn-5OgrjMVBIjWWqzd-ebY;->INSTANCE:L-$$Lambda$aas$NNblfFn-5OgrjMVBIjWWqzd-ebY;

    const-string/jumbo v2, "y"

    .line 28
    invoke-static {v2, v0}, Lahr;->a(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Labq;

    move-result-object v0

    aput-object v0, p2, v1

    .line 26
    invoke-static {p1, p2}, Lahr;->a(Ljava/lang/Class;[Labq;)Laem;

    move-result-object p1

    return-object p1

    .line 32
    :cond_1
    const-class p2, Ljava/awt/Font;

    if-ne p1, p2, :cond_2

    .line 33
    const-class p1, Ljava/awt/Font;

    const/4 p2, 0x3

    new-array p2, p2, [Labq;

    sget-object v3, L-$$Lambda$aas$8WYbV6LC5OFvNMBJFQUl5ZUYVZ0;->INSTANCE:L-$$Lambda$aas$8WYbV6LC5OFvNMBJFQUl5ZUYVZ0;

    const-string v4, "name"

    .line 34
    invoke-static {v4, v3}, Lahr;->a(Ljava/lang/String;Ljava/util/function/Function;)Labq;

    move-result-object v3

    aput-object v3, p2, v0

    sget-object v0, L-$$Lambda$aas$tj8IZhs33NwFsoaEyxpxYT3QdtM;->INSTANCE:L-$$Lambda$aas$tj8IZhs33NwFsoaEyxpxYT3QdtM;

    const-string v3, "style"

    .line 35
    invoke-static {v3, v0}, Lahr;->a(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Labq;

    move-result-object v0

    aput-object v0, p2, v1

    sget-object v0, L-$$Lambda$aas$lJS-gH4q5_ATIbRcfFtF_XLNIgE;->INSTANCE:L-$$Lambda$aas$lJS-gH4q5_ATIbRcfFtF_XLNIgE;

    const-string v1, "size"

    .line 36
    invoke-static {v1, v0}, Lahr;->a(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Labq;

    move-result-object v0

    aput-object v0, p2, v2

    .line 33
    invoke-static {p1, p2}, Lahr;->a(Ljava/lang/Class;[Labq;)Laem;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
