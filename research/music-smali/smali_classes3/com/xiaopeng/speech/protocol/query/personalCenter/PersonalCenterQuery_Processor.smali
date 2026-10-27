.class public Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery_Processor;
.super Ljava/lang/Object;
.source "PersonalCenterQuery_Processor.java"

# interfaces
.implements Lcom/xiaopeng/speech/annotation/IQueryProcessor;


# instance fields
.field private a:Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4084dea1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v1, :cond_2

    const v1, 0x3a8c3d97

    if-eq v0, v1, :cond_1

    const v1, 0x53b8ffff

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "control.profile.habit.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    const-string v0, "control.profile.habit.num.support"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "gui.page.open.status.personal.center"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_6

    if-eq v0, v3, :cond_5

    if-eq v0, v2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 21
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 19
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;->c(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 17
    :cond_6
    iget-object v0, p0, Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery_Processor;->a:Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/speech/protocol/query/personalCenter/PersonalCenterQuery;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public a()[Ljava/lang/String;
    .locals 3

    const-string v0, "control.profile.habit.support"

    const-string v1, "control.profile.habit.num.support"

    const-string v2, "gui.page.open.status.personal.center"

    .line 28
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
