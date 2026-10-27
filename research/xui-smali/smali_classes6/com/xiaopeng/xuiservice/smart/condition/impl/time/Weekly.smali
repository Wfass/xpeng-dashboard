.class public Lcom/xiaopeng/xuiservice/smart/condition/impl/time/Weekly;
.super Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;
.source "Weekly.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic isMatch(Landroid/util/Pair;Ljava/lang/Long;)Z
    .locals 0

    .line 7
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;->isMatch(Landroid/util/Pair;Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method protected isMatchRepeat(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z
    .locals 1
    .param p1, "start"    # Ljava/util/Calendar;
    .param p2, "end"    # Ljava/util/Calendar;
    .param p3, "current"    # Ljava/util/Calendar;

    .line 10
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/CalendarUtil;->isMatchWeekly(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method
