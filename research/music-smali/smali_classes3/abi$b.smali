.class public final Labi$b;
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
    name = "b"
.end annotation


# static fields
.field static a:Ljava/lang/Class;

.field static b:Ljava/util/function/ToIntFunction;

.field static c:Ljava/util/function/ToIntFunction;

.field static d:Ljava/util/function/ToIntFunction;

.field static e:Ljava/util/function/ToIntFunction;

.field static f:Ljava/util/function/ToIntFunction;

.field static g:Ljava/util/function/ToIntFunction;

.field static h:Ljava/util/function/ToIntFunction;

.field static i:Ljava/util/function/Function;

.field static j:Ljava/util/function/Function;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 864
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 880
    :try_start_0
    sget-object v0, Labi$b;->a:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string v0, "org.joda.time.DateTime"

    .line 881
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Labi$b;->a:Ljava/lang/Class;

    .line 883
    :cond_0
    sget-object v0, Labi$b;->b:Ljava/util/function/ToIntFunction;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 884
    sget-object v0, Labi$b;->a:Ljava/lang/Class;

    const-string v2, "getYear"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Laat;->a(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object v0

    sput-object v0, Labi$b;->b:Ljava/util/function/ToIntFunction;

    .line 886
    :cond_1
    sget-object v0, Labi$b;->c:Ljava/util/function/ToIntFunction;

    if-nez v0, :cond_2

    .line 887
    sget-object v0, Labi$b;->a:Ljava/lang/Class;

    const-string v2, "getMonthOfYear"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Laat;->a(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object v0

    sput-object v0, Labi$b;->c:Ljava/util/function/ToIntFunction;

    .line 889
    :cond_2
    sget-object v0, Labi$b;->d:Ljava/util/function/ToIntFunction;

    if-nez v0, :cond_3

    .line 890
    sget-object v0, Labi$b;->a:Ljava/lang/Class;

    const-string v2, "getDayOfMonth"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Laat;->a(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object v0

    sput-object v0, Labi$b;->d:Ljava/util/function/ToIntFunction;

    .line 892
    :cond_3
    sget-object v0, Labi$b;->e:Ljava/util/function/ToIntFunction;

    if-nez v0, :cond_4

    .line 893
    sget-object v0, Labi$b;->a:Ljava/lang/Class;

    const-string v2, "getHourOfDay"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Laat;->a(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object v0

    sput-object v0, Labi$b;->e:Ljava/util/function/ToIntFunction;

    .line 895
    :cond_4
    sget-object v0, Labi$b;->f:Ljava/util/function/ToIntFunction;

    if-nez v0, :cond_5

    .line 896
    sget-object v0, Labi$b;->a:Ljava/lang/Class;

    const-string v2, "getMinuteOfHour"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Laat;->a(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object v0

    sput-object v0, Labi$b;->f:Ljava/util/function/ToIntFunction;

    .line 898
    :cond_5
    sget-object v0, Labi$b;->g:Ljava/util/function/ToIntFunction;

    if-nez v0, :cond_6

    .line 899
    sget-object v0, Labi$b;->a:Ljava/lang/Class;

    const-string v2, "getSecondOfMinute"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Laat;->a(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object v0

    sput-object v0, Labi$b;->g:Ljava/util/function/ToIntFunction;

    .line 901
    :cond_6
    sget-object v0, Labi$b;->h:Ljava/util/function/ToIntFunction;

    if-nez v0, :cond_7

    .line 902
    sget-object v0, Labi$b;->a:Ljava/lang/Class;

    const-string v2, "getMillisOfSecond"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Laat;->a(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object v0

    sput-object v0, Labi$b;->h:Ljava/util/function/ToIntFunction;

    .line 904
    :cond_7
    sget-object v0, Labi$b;->i:Ljava/util/function/Function;

    if-nez v0, :cond_8

    .line 905
    sget-object v0, Labi$b;->a:Ljava/lang/Class;

    const-string v2, "getZone"

    new-array v3, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object v0

    sput-object v0, Labi$b;->i:Ljava/util/function/Function;

    .line 907
    :cond_8
    sget-object v0, Labi$b;->j:Ljava/util/function/Function;

    if-nez v0, :cond_9

    const-string v0, "org.joda.time.DateTimeZone"

    .line 908
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getID"

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {v0}, Laat;->e(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object v0

    sput-object v0, Labi$b;->j:Ljava/util/function/Function;

    .line 911
    :cond_9
    sget-object v0, Labi$b;->i:Ljava/util/function/Function;

    invoke-interface {v0, p1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 912
    sget-object v1, Labi$b;->j:Ljava/util/function/Function;

    invoke-interface {v1, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 913
    invoke-static {v0}, Ljava/time/ZoneId;->of(Ljava/lang/String;)Ljava/time/ZoneId;

    move-result-object v8

    .line 914
    sget-object v0, Labi$b;->b:Ljava/util/function/ToIntFunction;

    .line 915
    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v1

    sget-object v0, Labi$b;->c:Ljava/util/function/ToIntFunction;

    .line 916
    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v2

    sget-object v0, Labi$b;->d:Ljava/util/function/ToIntFunction;

    .line 917
    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v3

    sget-object v0, Labi$b;->e:Ljava/util/function/ToIntFunction;

    .line 918
    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v4

    sget-object v0, Labi$b;->f:Ljava/util/function/ToIntFunction;

    .line 919
    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v5

    sget-object v0, Labi$b;->g:Ljava/util/function/ToIntFunction;

    .line 920
    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v6

    sget-object v0, Labi$b;->h:Ljava/util/function/ToIntFunction;

    .line 921
    invoke-interface {v0, p1}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p1

    const v0, 0xf4240

    mul-int v7, p1, v0

    .line 914
    invoke-static/range {v1 .. v8}, Ljava/time/ZonedDateTime;->of(IIIIIIILjava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 925
    new-instance v0, Lcom/alibaba/fastjson2/c;

    const-string v1, "convert joda org.joda.time.DateTime to java.time.ZonedDateTime error"

    invoke-direct {v0, v1, p1}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method
