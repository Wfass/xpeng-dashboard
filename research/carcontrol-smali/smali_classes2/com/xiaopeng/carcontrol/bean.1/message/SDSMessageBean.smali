.class public Lcom/xiaopeng/carcontrol/bean/message/SDSMessageBean;
.super Ljava/lang/Object;
.source "SDSMessageBean.java"


# instance fields
.field private taskIdList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private uid:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTaskIdList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/bean/message/SDSMessageBean;->taskIdList:Ljava/util/List;

    return-object v0
.end method

.method public getUid()J
    .locals 2

    .line 16
    iget-wide v0, p0, Lcom/xiaopeng/carcontrol/bean/message/SDSMessageBean;->uid:J

    return-wide v0
.end method

.method public setTaskIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "taskIdList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 28
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/bean/message/SDSMessageBean;->taskIdList:Ljava/util/List;

    return-void
.end method

.method public setUid(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uid"
        }
    .end annotation

    .line 20
    iput-wide p1, p0, Lcom/xiaopeng/carcontrol/bean/message/SDSMessageBean;->uid:J

    return-void
.end method
