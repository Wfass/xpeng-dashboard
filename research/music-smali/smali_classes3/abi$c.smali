.class public final Labi$c;
.super Ljava/lang/Object;
.source "JodaSupport.java"

# interfaces
.implements Ljava/util/function/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Labi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# static fields
.field static a:Ljava/lang/reflect/Constructor;

.field static b:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 828
    check-cast p1, Ljava/time/ZonedDateTime;

    .line 830
    :try_start_0
    sget-object v0, Labi$c;->b:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "org.joda.time.DateTimeZone"

    .line 831
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v3, "forID"

    .line 832
    new-array v4, v2, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Labi$c;->b:Ljava/lang/reflect/Method;

    .line 835
    :cond_0
    sget-object v0, Labi$c;->a:Ljava/lang/reflect/Constructor;

    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/16 v9, 0x8

    if-nez v0, :cond_1

    const-string v0, "org.joda.time.DateTime"

    .line 836
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v1

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v2

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v8

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v7

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v6

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v5

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v4

    sget-object v11, Labi$c;->b:Ljava/lang/reflect/Method;

    .line 839
    invoke-virtual {v11}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v11

    aput-object v11, v10, v3

    .line 837
    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    sput-object v0, Labi$c;->a:Ljava/lang/reflect/Constructor;

    .line 843
    :cond_1
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getZone()Ljava/time/ZoneId;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/ZoneId;->getId()Ljava/lang/String;

    move-result-object v0

    const-string v10, "Z"

    .line 844
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v0, "UTC"

    .line 848
    :cond_2
    sget-object v10, Labi$c;->a:Ljava/lang/reflect/Constructor;

    new-array v9, v9, [Ljava/lang/Object;

    .line 849
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getYear()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v1

    .line 850
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getMonthValue()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v2

    .line 851
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getDayOfMonth()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v8

    .line 852
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getHour()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v9, v7

    .line 853
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getMinute()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v6

    .line 854
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getSecond()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v5

    .line 855
    invoke-virtual {p1}, Ljava/time/ZonedDateTime;->getNano()I

    move-result p1

    const v5, 0xf4240

    div-int/2addr p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v9, v4

    sget-object p1, Labi$c;->b:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 856
    invoke-virtual {p1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v9, v3

    .line 848
    invoke-virtual {v10, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 859
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "build DateTime error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
