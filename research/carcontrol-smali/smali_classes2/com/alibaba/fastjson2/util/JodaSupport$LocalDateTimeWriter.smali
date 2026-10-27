.class Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;
.super Lcom/alibaba/fastjson2/codec/DateTimeCodec;
.source "JodaSupport.java"

# interfaces
.implements Lcom/alibaba/fastjson2/writer/ObjectWriter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/JodaSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LocalDateTimeWriter"
.end annotation


# instance fields
.field final getChronology:Ljava/util/function/Function;

.field final getDayOfMonth:Ljava/lang/reflect/Method;

.field final getHourOfDay:Ljava/util/function/ToIntFunction;

.field final getMillisOfSecond:Ljava/util/function/ToIntFunction;

.field final getMinuteOfHour:Ljava/util/function/ToIntFunction;

.field final getMonthOfYear:Ljava/lang/reflect/Method;

.field final getSecondOfMinute:Ljava/util/function/ToIntFunction;

.field final getYear:Ljava/lang/reflect/Method;

.field final isoChronology:Ljava/lang/Class;

.field final objectClass:Ljava/lang/Class;

.field final utc:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 4

    .line 657
    invoke-direct {p0, p2}, Lcom/alibaba/fastjson2/codec/DateTimeCodec;-><init>(Ljava/lang/String;)V

    .line 659
    iput-object p1, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->objectClass:Ljava/lang/Class;

    .line 661
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2

    const-string v0, "org.joda.time.chrono.ISOChronology"

    .line 662
    invoke-virtual {p2, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->isoChronology:Ljava/lang/Class;

    const-string v0, "getInstance"

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 663
    invoke-virtual {p2, v0, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "withUTC"

    new-array v3, v1, [Ljava/lang/Class;

    .line 664
    invoke-virtual {p2, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->utc:Ljava/lang/Object;

    const-string p2, "getYear"

    new-array v0, v1, [Ljava/lang/Class;

    .line 666
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getYear:Ljava/lang/reflect/Method;

    const-string p2, "getMonthOfYear"

    new-array v0, v1, [Ljava/lang/Class;

    .line 667
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getMonthOfYear:Ljava/lang/reflect/Method;

    const-string p2, "getDayOfMonth"

    new-array v0, v1, [Ljava/lang/Class;

    .line 668
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getDayOfMonth:Ljava/lang/reflect/Method;

    const-string p2, "getHourOfDay"

    new-array v0, v1, [Ljava/lang/Class;

    .line 671
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 670
    invoke-static {p2}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createToIntFunction(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getHourOfDay:Ljava/util/function/ToIntFunction;

    const-string p2, "getMinuteOfHour"

    new-array v0, v1, [Ljava/lang/Class;

    .line 674
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 673
    invoke-static {p2}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createToIntFunction(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getMinuteOfHour:Ljava/util/function/ToIntFunction;

    const-string p2, "getSecondOfMinute"

    new-array v0, v1, [Ljava/lang/Class;

    .line 677
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 676
    invoke-static {p2}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createToIntFunction(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getSecondOfMinute:Ljava/util/function/ToIntFunction;

    const-string p2, "getMillisOfSecond"

    new-array v0, v1, [Ljava/lang/Class;

    .line 680
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 679
    invoke-static {p2}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createToIntFunction(Ljava/lang/reflect/Method;)Ljava/util/function/ToIntFunction;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getMillisOfSecond:Ljava/util/function/ToIntFunction;

    const-string p2, "getChronology"

    new-array v0, v1, [Ljava/lang/Class;

    .line 684
    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 683
    invoke-static {p1}, Lcom/alibaba/fastjson2/support/LambdaMiscCodec;->createFunction(Ljava/lang/reflect/Method;)Ljava/util/function/Function;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getChronology:Ljava/util/function/Function;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    .line 691
    :goto_0
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string v0, "create LocalDateWriter error"

    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 8

    .line 754
    :try_start_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getYear:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 755
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getMonthOfYear:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 756
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getDayOfMonth:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 758
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getHourOfDay:Ljava/util/function/ToIntFunction;

    invoke-interface {p3, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v4

    .line 759
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getMinuteOfHour:Ljava/util/function/ToIntFunction;

    invoke-interface {p3, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v5

    .line 760
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getSecondOfMinute:Ljava/util/function/ToIntFunction;

    invoke-interface {p3, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v6

    .line 761
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getMillisOfSecond:Ljava/util/function/ToIntFunction;

    invoke-interface {p3, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p3

    .line 763
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getChronology:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 765
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 766
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 769
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->utc:Ljava/lang/Object;

    if-eq v0, p2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 788
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    const-string/jumbo p2, "year"

    .line 790
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 791
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const-string p2, "month"

    .line 793
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 794
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const-string p2, "day"

    .line 796
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 797
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const-string p2, "hour"

    .line 799
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 800
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const-string p2, "minute"

    .line 802
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 803
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const-string/jumbo p2, "second"

    .line 805
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 806
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const-string p2, "millis"

    .line 808
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 809
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const-string p2, "chronology"

    .line 811
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 812
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 814
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void

    :cond_2
    :goto_0
    const p2, 0xf4240

    mul-int v7, p3, p2

    .line 771
    invoke-static/range {v1 .. v7}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 773
    invoke-virtual {p0}, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    if-nez p3, :cond_3

    .line 775
    iget-object p3, p1, Lcom/alibaba/fastjson2/JSONWriter;->context:Lcom/alibaba/fastjson2/JSONWriter$Context;

    invoke-virtual {p3}, Lcom/alibaba/fastjson2/JSONWriter$Context;->getDateFormatter()Ljava/time/format/DateTimeFormatter;

    move-result-object p3

    :cond_3
    if-nez p3, :cond_4

    .line 779
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeLocalDateTime(Ljava/time/LocalDateTime;)V

    return-void

    .line 783
    :cond_4
    invoke-virtual {p3, p2}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object p2

    .line 784
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 816
    :goto_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p3, "write LocalDateWriter error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public writeJSONB(Lcom/alibaba/fastjson2/JSONWriter;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 8

    .line 698
    :try_start_0
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getYear:Ljava/lang/reflect/Method;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 699
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getMonthOfYear:Ljava/lang/reflect/Method;

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 700
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getDayOfMonth:Ljava/lang/reflect/Method;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p3, p2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 702
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getHourOfDay:Ljava/util/function/ToIntFunction;

    invoke-interface {p3, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v4

    .line 703
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getMinuteOfHour:Ljava/util/function/ToIntFunction;

    invoke-interface {p3, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v5

    .line 704
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getSecondOfMinute:Ljava/util/function/ToIntFunction;

    invoke-interface {p3, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v6

    .line 705
    iget-object p3, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getMillisOfSecond:Ljava/util/function/ToIntFunction;

    invoke-interface {p3, p2}, Ljava/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p3

    .line 707
    iget-object v0, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->getChronology:Ljava/util/function/Function;

    invoke-interface {v0, p2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 709
    invoke-virtual {p1, p2, p4, p5, p6}, Lcom/alibaba/fastjson2/JSONWriter;->isWriteTypeInfo(Ljava/lang/Object;Ljava/lang/reflect/Type;J)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 710
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2}, Lcom/alibaba/fastjson2/util/TypeUtils;->getTypeName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeTypeName(Ljava/lang/String;)V

    .line 713
    :cond_0
    iget-object p2, p0, Lcom/alibaba/fastjson2/util/JodaSupport$LocalDateTimeWriter;->utc:Ljava/lang/Object;

    if-eq v0, p2, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    .line 719
    :cond_1
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->startObject()V

    const-string/jumbo p2, "year"

    .line 721
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 722
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const-string p2, "month"

    .line 724
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const-string p2, "day"

    .line 727
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 728
    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const-string p2, "hour"

    .line 730
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 731
    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const-string p2, "minute"

    .line 733
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 734
    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const-string/jumbo p2, "second"

    .line 736
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 737
    invoke-virtual {p1, v6}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const-string p2, "millis"

    .line 739
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p1, p3}, Lcom/alibaba/fastjson2/JSONWriter;->writeInt32(I)V

    const-string p2, "chronology"

    .line 742
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeName(Ljava/lang/String;)V

    .line 743
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson2/JSONWriter;->writeAny(Ljava/lang/Object;)V

    .line 745
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/JSONWriter;->endObject()V

    return-void

    :cond_2
    :goto_0
    const p2, 0xf4240

    mul-int v7, p3, p2

    .line 715
    invoke-static/range {v1 .. v7}, Ljava/time/LocalDateTime;->of(IIIIIII)Ljava/time/LocalDateTime;

    move-result-object p2

    .line 714
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/JSONWriter;->writeLocalDateTime(Ljava/time/LocalDateTime;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 747
    :goto_1
    new-instance p2, Lcom/alibaba/fastjson2/JSONException;

    const-string/jumbo p3, "write LocalDateWriter error"

    invoke-direct {p2, p3, p1}, Lcom/alibaba/fastjson2/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
