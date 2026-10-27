.class public Lcom/xiaopeng/logictree/a;
.super Ljava/lang/Object;
.source "IssueInfo.java"


# static fields
.field private static XO:Lcom/xiaopeng/logictree/a;


# instance fields
.field private XK:Lcom/xiaopeng/logictree/c;

.field private XL:Ljava/lang/String;

.field private XM:I

.field private XN:Ljava/lang/String;

.field private mEndTime:J

.field private mStartTime:J


# direct methods
.method public constructor <init>(JJLcom/xiaopeng/logictree/c;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/xiaopeng/logictree/a;->mStartTime:J

    .line 15
    iput-wide p3, p0, Lcom/xiaopeng/logictree/a;->mEndTime:J

    .line 16
    iput-object p5, p0, Lcom/xiaopeng/logictree/a;->XK:Lcom/xiaopeng/logictree/c;

    .line 17
    iput-object p6, p0, Lcom/xiaopeng/logictree/a;->XL:Ljava/lang/String;

    .line 18
    iput p7, p0, Lcom/xiaopeng/logictree/a;->XM:I

    .line 19
    iput-object p8, p0, Lcom/xiaopeng/logictree/a;->XN:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static pA()Lcom/xiaopeng/logictree/a;
    .locals 10

    .line 23
    sget-object v0, Lcom/xiaopeng/logictree/a;->XO:Lcom/xiaopeng/logictree/a;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/xiaopeng/logictree/a;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/xiaopeng/logictree/a;-><init>(JJLcom/xiaopeng/logictree/c;Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/logictree/a;->XO:Lcom/xiaopeng/logictree/a;

    .line 26
    :cond_0
    sget-object v0, Lcom/xiaopeng/logictree/a;->XO:Lcom/xiaopeng/logictree/a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/xiaopeng/logictree/c;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/logictree/a;->XK:Lcom/xiaopeng/logictree/c;

    .line 51
    return-void
.end method

.method public dR(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/logictree/a;->XL:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public dS(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/logictree/a;->XN:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public dT(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/xiaopeng/logictree/a;->XM:I

    .line 67
    return-void
.end method

.method public getStartTime()J
    .locals 2

    .line 30
    iget-wide v0, p0, Lcom/xiaopeng/logictree/a;->mStartTime:J

    return-wide v0
.end method

.method public pB()J
    .locals 2

    .line 38
    iget-wide v0, p0, Lcom/xiaopeng/logictree/a;->mEndTime:J

    return-wide v0
.end method

.method public pC()Lcom/xiaopeng/logictree/c;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/logictree/a;->XK:Lcom/xiaopeng/logictree/c;

    return-object v0
.end method

.method public pD()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/logictree/a;->XL:Ljava/lang/String;

    return-object v0
.end method

.method public pE()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/xiaopeng/logictree/a;->XM:I

    return v0
.end method

.method public pF()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/logictree/a;->XN:Ljava/lang/String;

    return-object v0
.end method

.method public r(J)V
    .locals 0

    .line 42
    iput-wide p1, p0, Lcom/xiaopeng/logictree/a;->mEndTime:J

    .line 43
    return-void
.end method

.method public setStartTime(J)V
    .locals 0

    .line 34
    iput-wide p1, p0, Lcom/xiaopeng/logictree/a;->mStartTime:J

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IssueInfo{mStartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/logictree/a;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mEndTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/logictree/a;->mEndTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mLogicTree="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/logictree/a;->XK:Lcom/xiaopeng/logictree/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mIssueName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/logictree/a;->XL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
