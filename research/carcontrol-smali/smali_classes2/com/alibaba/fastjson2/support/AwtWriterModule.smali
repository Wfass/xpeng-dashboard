.class public Lcom/alibaba/fastjson2/support/AwtWriterModule;
.super Ljava/lang/Object;
.source "AwtWriterModule.java"

# interfaces
.implements Lcom/alibaba/fastjson2/modules/ObjectWriterModule;


# static fields
.field public static INSTANCE:Lcom/alibaba/fastjson2/support/AwtWriterModule;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Lcom/alibaba/fastjson2/support/AwtWriterModule;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/support/AwtWriterModule;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/support/AwtWriterModule;->INSTANCE:Lcom/alibaba/fastjson2/support/AwtWriterModule;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic lambda$1TbLHYosutkysKl9i4PdnBQtdD8(Ljava/awt/Font;)I
    .locals 0

    invoke-virtual {p0}, Ljava/awt/Font;->getStyle()I

    move-result p0

    return p0
.end method

.method public static synthetic lambda$1mDeu5lbbd5OowJV1d7r3g8kH8M(Ljava/awt/Font;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/awt/Font;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$Y1lBGB1q3Gr3v_pCjSYZPjHh6mE(Ljava/awt/Color;)I
    .locals 0

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    return p0
.end method

.method static synthetic lambda$getObjectWriter$0(Ljava/awt/Point;)I
    .locals 0

    .line 27
    iget p0, p0, Ljava/awt/Point;->x:I

    return p0
.end method

.method static synthetic lambda$getObjectWriter$1(Ljava/awt/Point;)I
    .locals 0

    .line 28
    iget p0, p0, Ljava/awt/Point;->y:I

    return p0
.end method

.method public static synthetic lambda$qmWDipOeqc9MXqex91Qi3OD5wBY(Ljava/awt/Font;)I
    .locals 0

    invoke-virtual {p0}, Ljava/awt/Font;->getSize()I

    move-result p0

    return p0
.end method


# virtual methods
.method public getObjectWriter(Ljava/lang/reflect/Type;Ljava/lang/Class;)Lcom/alibaba/fastjson2/writer/ObjectWriter;
    .locals 5

    .line 19
    const-class p2, Ljava/awt/Color;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, p2, :cond_0

    .line 20
    const-class p1, Ljava/awt/Color;

    new-array p2, v1, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    sget-object v1, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$Y1lBGB1q3Gr3v_pCjSYZPjHh6mE;->INSTANCE:Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$Y1lBGB1q3Gr3v_pCjSYZPjHh6mE;

    const-string/jumbo v2, "rgb"

    .line 21
    invoke-static {v2, v1}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v1

    aput-object v1, p2, v0

    .line 20
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->objectWriter(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    .line 25
    :cond_0
    const-class p2, Ljava/awt/Point;

    const/4 v2, 0x2

    if-ne p1, p2, :cond_1

    .line 26
    const-class p1, Ljava/awt/Point;

    new-array p2, v2, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    sget-object v2, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$YbKyrvFrUw28Kr9snjW4VGsxQ8Q;->INSTANCE:Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$YbKyrvFrUw28Kr9snjW4VGsxQ8Q;

    const-string/jumbo v3, "x"

    .line 27
    invoke-static {v3, v2}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v2

    aput-object v2, p2, v0

    sget-object v0, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$n9p1cHq3djsxEUfPVvxWkSoPJ10;->INSTANCE:Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$n9p1cHq3djsxEUfPVvxWkSoPJ10;

    const-string/jumbo v2, "y"

    .line 28
    invoke-static {v2, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    aput-object v0, p2, v1

    .line 26
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->objectWriter(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    .line 32
    :cond_1
    const-class p2, Ljava/awt/Font;

    if-ne p1, p2, :cond_2

    .line 33
    const-class p1, Ljava/awt/Font;

    const/4 p2, 0x3

    new-array p2, p2, [Lcom/alibaba/fastjson2/writer/FieldWriter;

    sget-object v3, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$1mDeu5lbbd5OowJV1d7r3g8kH8M;->INSTANCE:Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$1mDeu5lbbd5OowJV1d7r3g8kH8M;

    const-string v4, "name"

    .line 34
    invoke-static {v4, v3}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/util/function/Function;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v3

    aput-object v3, p2, v0

    sget-object v0, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$1TbLHYosutkysKl9i4PdnBQtdD8;->INSTANCE:Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$1TbLHYosutkysKl9i4PdnBQtdD8;

    const-string/jumbo v3, "style"

    .line 35
    invoke-static {v3, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    aput-object v0, p2, v1

    sget-object v0, Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$qmWDipOeqc9MXqex91Qi3OD5wBY;->INSTANCE:Lcom/alibaba/fastjson2/support/-$$Lambda$AwtWriterModule$qmWDipOeqc9MXqex91Qi3OD5wBY;

    const-string/jumbo v1, "size"

    .line 36
    invoke-static {v1, v0}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->fieldWriter(Ljava/lang/String;Ljava/util/function/ToIntFunction;)Lcom/alibaba/fastjson2/writer/FieldWriter;

    move-result-object v0

    aput-object v0, p2, v2

    .line 33
    invoke-static {p1, p2}, Lcom/alibaba/fastjson2/writer/ObjectWriters;->objectWriter(Ljava/lang/Class;[Lcom/alibaba/fastjson2/writer/FieldWriter;)Lcom/alibaba/fastjson2/writer/ObjectWriter;

    move-result-object p1

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method
