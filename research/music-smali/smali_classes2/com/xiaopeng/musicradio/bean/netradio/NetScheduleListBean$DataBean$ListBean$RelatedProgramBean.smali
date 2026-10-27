.class public Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;
.super Ljava/lang/Object;
.source "NetScheduleListBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RelatedProgramBean"
.end annotation


# instance fields
.field private id:I

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 172
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 176
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 184
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetScheduleListBean$DataBean$ListBean$RelatedProgramBean;->name:Ljava/lang/String;

    return-void
.end method
