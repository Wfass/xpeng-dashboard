.class abstract Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;
.super Ljava/lang/Object;
.source "TimeRepeatOP.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/smart/condition/operator/OP;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/xuiservice/smart/condition/operator/OP<",
        "Landroid/util/Pair<",
        "Ljava/lang/Long;",
        "Ljava/lang/Long;",
        ">;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field private final current:Ljava/util/Calendar;

.field private final end:Ljava/util/Calendar;

.field private final start:Ljava/util/Calendar;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;->start:Ljava/util/Calendar;

    .line 15
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;->end:Ljava/util/Calendar;

    .line 16
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;->current:Ljava/util/Calendar;

    return-void
.end method


# virtual methods
.method public isMatch(Landroid/util/Pair;Ljava/lang/Long;)Z
    .locals 3
    .param p2, "currentValue"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/lang/Long;",
            ")Z"
        }
    .end annotation

    .line 20
    .local p1, "targetValue":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;->start:Ljava/util/Calendar;

    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 21
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;->end:Ljava/util/Calendar;

    iget-object v1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 22
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;->current:Ljava/util/Calendar;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 23
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;->start:Ljava/util/Calendar;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;->end:Ljava/util/Calendar;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;->current:Ljava/util/Calendar;

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;->isMatchRepeat(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMatch(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 9
    check-cast p1, Landroid/util/Pair;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/smart/condition/impl/time/TimeRepeatOP;->isMatch(Landroid/util/Pair;Ljava/lang/Long;)Z

    move-result p1

    return p1
.end method

.method protected abstract isMatchRepeat(Ljava/util/Calendar;Ljava/util/Calendar;Ljava/util/Calendar;)Z
.end method
