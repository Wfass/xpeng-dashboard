.class public final Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "NaviCongestionInfoProto.java"

# interfaces
.implements Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;",
        "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 887
    invoke-static {}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$000()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/NaviCongestionInfoProto$1;)V
    .locals 0

    .line 880
    invoke-direct {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearBeginCoorIndex()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1221
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1222
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$2900(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearBeginExactLength()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1153
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1154
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$2300(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearBeginExactPoint()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1198
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1199
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$2700(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearBeginLinkIndex()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 978
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 979
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$800(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearBeginSectionIndex()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1001
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1002
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$1000(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearBeginSegmentIndex()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 955
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 956
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$600(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearEndCoorIndex()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1312
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1313
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$3700(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearEndExactLength()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1244
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1245
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$3100(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearEndExactPoint()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1289
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1290
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$3500(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearEndLinkIndex()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1047
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1048
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$1400(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearEndSectionIndex()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1070
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1071
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$1600(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearEndSegmentIndex()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1024
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1025
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$1200(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearRemainDist()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1130
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1131
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$2100(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearScopeFlag()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 932
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 933
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$400(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearStatus()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1107
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1108
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$1900(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public clearTimeOfSeconds()Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 909
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 910
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$200(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;)V

    return-object p0
.end method

.method public getBeginCoorIndex()I
    .locals 1

    .line 1207
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getBeginCoorIndex()I

    move-result v0

    return v0
.end method

.method public getBeginExactLength()I
    .locals 1

    .line 1139
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getBeginExactLength()I

    move-result v0

    return v0
.end method

.method public getBeginExactPoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 1168
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getBeginExactPoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public getBeginLinkIndex()I
    .locals 1

    .line 964
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getBeginLinkIndex()I

    move-result v0

    return v0
.end method

.method public getBeginSectionIndex()I
    .locals 1

    .line 987
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getBeginSectionIndex()I

    move-result v0

    return v0
.end method

.method public getBeginSegmentIndex()I
    .locals 1

    .line 941
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getBeginSegmentIndex()I

    move-result v0

    return v0
.end method

.method public getEndCoorIndex()I
    .locals 1

    .line 1298
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getEndCoorIndex()I

    move-result v0

    return v0
.end method

.method public getEndExactLength()I
    .locals 1

    .line 1230
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getEndExactLength()I

    move-result v0

    return v0
.end method

.method public getEndExactPoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;
    .locals 1

    .line 1259
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getEndExactPoint()Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;

    move-result-object v0

    return-object v0
.end method

.method public getEndLinkIndex()I
    .locals 1

    .line 1033
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getEndLinkIndex()I

    move-result v0

    return v0
.end method

.method public getEndSectionIndex()I
    .locals 1

    .line 1056
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getEndSectionIndex()I

    move-result v0

    return v0
.end method

.method public getEndSegmentIndex()I
    .locals 1

    .line 1010
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getEndSegmentIndex()I

    move-result v0

    return v0
.end method

.method public getRemainDist()I
    .locals 1

    .line 1116
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getRemainDist()I

    move-result v0

    return v0
.end method

.method public getScopeFlag()Z
    .locals 1

    .line 918
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getScopeFlag()Z

    move-result v0

    return v0
.end method

.method public getStatus()Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;
    .locals 1

    .line 1093
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getStatus()Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;

    move-result-object v0

    return-object v0
.end method

.method public getStatusValue()I
    .locals 1

    .line 1079
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getStatusValue()I

    move-result v0

    return v0
.end method

.method public getTimeOfSeconds()I
    .locals 1

    .line 895
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->getTimeOfSeconds()I

    move-result v0

    return v0
.end method

.method public hasBeginExactPoint()Z
    .locals 1

    .line 1162
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->hasBeginExactPoint()Z

    move-result v0

    return v0
.end method

.method public hasEndExactPoint()Z
    .locals 1

    .line 1253
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->hasEndExactPoint()Z

    move-result v0

    return v0
.end method

.method public mergeBeginExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1191
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1192
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$2600(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public mergeEndExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1282
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1283
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$3400(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public setBeginCoorIndex(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1213
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1214
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$2800(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V

    return-object p0
.end method

.method public setBeginExactLength(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1145
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1146
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$2200(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V

    return-object p0
.end method

.method public setBeginExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1183
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1184
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$2500(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public setBeginExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1174
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1175
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$2400(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public setBeginLinkIndex(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 970
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 971
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$700(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V

    return-object p0
.end method

.method public setBeginSectionIndex(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 993
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 994
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$900(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V

    return-object p0
.end method

.method public setBeginSegmentIndex(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 947
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 948
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$500(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V

    return-object p0
.end method

.method public setEndCoorIndex(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1304
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1305
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$3600(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V

    return-object p0
.end method

.method public setEndExactLength(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1236
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1237
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$3000(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V

    return-object p0
.end method

.method public setEndExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1274
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1275
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$3300(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point$Builder;)V

    return-object p0
.end method

.method public setEndExactPoint(Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1265
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1266
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$3200(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Landroid/car/hardware/xpu/XpuProtoMessage$V2_Point;)V

    return-object p0
.end method

.method public setEndLinkIndex(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1039
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1040
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$1300(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V

    return-object p0
.end method

.method public setEndSectionIndex(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1062
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1063
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$1500(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V

    return-object p0
.end method

.method public setEndSegmentIndex(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1016
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1017
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$1100(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V

    return-object p0
.end method

.method public setRemainDist(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1122
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1123
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$2000(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V

    return-object p0
.end method

.method public setScopeFlag(Z)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 924
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 925
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$300(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Z)V

    return-object p0
.end method

.method public setStatus(Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1099
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1100
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$1800(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;Landroid/car/hardware/xpu/NaviCongestionInfoProto$CongestionStatus;)V

    return-object p0
.end method

.method public setStatusValue(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 1085
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 1086
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$1700(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V

    return-object p0
.end method

.method public setTimeOfSeconds(I)Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;
    .locals 1

    .line 901
    invoke-virtual {p0}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->copyOnWrite()V

    .line 902
    iget-object v0, p0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;->access$100(Landroid/car/hardware/xpu/NaviCongestionInfoProto$NaviCongestionDetailInfo;I)V

    return-object p0
.end method
