.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;
.super Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;
.source "ConditionTime.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue<",
        "Landroid/util/Pair<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# static fields
.field public static final REPEAT_DAILY:Ljava/lang/String; = "daily"

.field public static final REPEAT_MONTHLY:Ljava/lang/String; = "monthly"

.field public static final REPEAT_ONCE:Ljava/lang/String; = "once"

.field public static final REPEAT_WEEKLY:Ljava/lang/String; = "weekly"

.field public static final REPEAT_YEARLY:Ljava/lang/String; = "yearly"

.field private static final SINGLETON_TIME_VALUE:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final TYPE:Ljava/lang/String; = "time"


# instance fields
.field private final repeat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 95
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->SINGLETON_TIME_VALUE:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Landroid/util/Pair;Ljava/lang/String;)V
    .locals 4
    .param p2, "repeat"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 43
    .local p1, "targetValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string v0, "time"

    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->repeat:Ljava/lang/String;

    .line 48
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object v2, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    .line 60
    if-nez p2, :cond_0

    .line 61
    const-string p2, "once"

    .line 63
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "monthly"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "daily"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string v1, "once"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v1, "yearly"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string/jumbo v1, "weekly"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    :cond_1
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid repeat"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :pswitch_0
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->calendar(J)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->calendar(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->isSameYear(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_1

    .line 83
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Repeat = yearly, but start and end time not in same year"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :pswitch_1
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->calendar(J)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->calendar(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->isSameMonth(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 78
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Repeat = monthly, but start and end time not in same month"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :pswitch_2
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->calendar(J)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->calendar(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->isSameWeek(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 73
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Repeat = weekly, but start and end time not in same week"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 67
    :pswitch_3
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->calendar(J)Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->calendar(J)Ljava/util/Calendar;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->isSameDay(Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_1

    .line 68
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Repeat = daily, but start and end time not in same day"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :pswitch_4
    nop

    .line 89
    :goto_1
    return-void

    .line 49
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "start time > end time"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f307f7f -> :sswitch_4
        -0x2bc88576 -> :sswitch_3
        0x341e81 -> :sswitch_2
        0x5aede19 -> :sswitch_1
        0x49b5900d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected convert(Ljava/lang/Long;)Ljava/lang/Long;
    .locals 0
    .param p1, "value"    # Ljava/lang/Long;

    .line 134
    return-object p1
.end method

.method protected bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->convert(Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method protected createChangeableValue()Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 129
    sget-object v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->SINGLETON_TIME_VALUE:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/smart/condition/value/ChangeableValue;

    return-object v0
.end method

.method public getRepeat()Ljava/lang/String;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->repeat:Ljava/lang/String;

    return-object v0
.end method

.method protected onStartWatch()V
    .locals 4

    .line 156
    const-string v0, "once"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->repeat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->getTargetValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStartWatch: skip, REPEAT_ONCE, after target time, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->DEBUG(Ljava/lang/String;)V

    .line 158
    return-void

    .line 160
    :cond_0
    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->onStartWatch()V

    .line 161
    return-void
.end method

.method public onValueChange(Ljava/lang/Long;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/Long;

    .line 165
    invoke-super {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/ConditionSingleValue;->onValueChange(Ljava/lang/Object;)V

    .line 167
    const-string v0, "once"

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->repeat:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->getTargetValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/Pair;

    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 168
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onValueChange: REPEAT_ONCE, after target time, stop watch time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/condition/Conditions;->DEBUG(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->onStopWatch()V

    .line 171
    :cond_0
    return-void
.end method

.method public bridge synthetic onValueChange(Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->onValueChange(Ljava/lang/Long;)V

    return-void
.end method

.method public operator()Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/xiaopeng/xuiservice/smart/condition/operator/OP<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/ConditionTime;->repeat:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "monthly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "daily"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v1, "once"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string/jumbo v1, "yearly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "weekly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 151
    const/4 v0, 0x0

    return-object v0

    .line 149
    :pswitch_0
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/Yearly;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/Yearly;-><init>()V

    return-object v0

    .line 147
    :pswitch_1
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/Monthly;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/Monthly;-><init>()V

    return-object v0

    .line 145
    :pswitch_2
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/Weekly;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/Weekly;-><init>()V

    return-object v0

    .line 143
    :pswitch_3
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/Daily;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/Daily;-><init>()V

    return-object v0

    .line 141
    :pswitch_4
    new-instance v0, Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/smart/condition/operator/Between;-><init>()V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x2f307f7f -> :sswitch_4
        -0x2bc88576 -> :sswitch_3
        0x341e81 -> :sswitch_2
        0x5aede19 -> :sswitch_1
        0x49b5900d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
