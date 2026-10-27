.class public Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;
.super Ljava/lang/Object;
.source "NetScheduleListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListBean"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;
    }
.end annotation


# instance fields
.field private backPlayUrl:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private kind:Ljava/lang/String;

.field private radioId:I

.field private relatedProgram:Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;

.field private startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackPlayUrl()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->backPlayUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->endTime:Ljava/lang/String;

    return-object v0
.end method

.method public getKind()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->kind:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioId()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->radioId:I

    return v0
.end method

.method public getRelatedProgram()Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->relatedProgram:Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public setBackPlayUrl(Ljava/lang/String;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->backPlayUrl:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setKind(Ljava/lang/String;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->kind:Ljava/lang/String;

    return-void
.end method

.method public setRadioId(I)V
    .locals 0

    .line 119
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->radioId:I

    return-void
.end method

.method public setRelatedProgram(Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;)V
    .locals 0

    .line 159
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->relatedProgram:Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;->startTime:Ljava/lang/String;

    return-void
.end method
