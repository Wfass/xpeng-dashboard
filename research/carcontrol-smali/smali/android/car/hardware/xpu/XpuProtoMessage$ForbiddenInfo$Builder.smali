.class public final Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "XpuProtoMessage.java"

# interfaces
.implements Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfoOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;",
        ">;",
        "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfoOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 14026
    invoke-static {}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->access$30900()Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/hardware/xpu/XpuProtoMessage$1;)V
    .locals 0

    .line 14019
    invoke-direct {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public addAllTimeDescription(Ljava/lang/Iterable;)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/lang/Integer;",
            ">;)",
            "Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;"
        }
    .end annotation

    .line 14164
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14165
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->access$32000(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;Ljava/lang/Iterable;)V

    return-object p0
.end method

.method public addTimeDescription(I)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    .locals 1

    .line 14155
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14156
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->access$31900(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;I)V

    return-object p0
.end method

.method public clearLinkIndex()Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    .locals 1

    .line 14117
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14118
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->access$31700(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V

    return-object p0
.end method

.method public clearSegIndex()Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    .locals 1

    .line 14094
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14095
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->access$31500(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V

    return-object p0
.end method

.method public clearTimeDescription()Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    .locals 1

    .line 14172
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14173
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->access$32100(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V

    return-object p0
.end method

.method public clearType()Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    .locals 1

    .line 14048
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14049
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->access$31100(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V

    return-object p0
.end method

.method public clearVehicleType()Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    .locals 1

    .line 14071
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14072
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->access$31300(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;)V

    return-object p0
.end method

.method public getLinkIndex()J
    .locals 2

    .line 14103
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->getLinkIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSegIndex()J
    .locals 2

    .line 14080
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->getSegIndex()J

    move-result-wide v0

    return-wide v0
.end method

.method public getTimeDescription(I)I
    .locals 1

    .line 14140
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-virtual {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->getTimeDescription(I)I

    move-result p1

    return p1
.end method

.method public getTimeDescriptionCount()I
    .locals 1

    .line 14134
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->getTimeDescriptionCount()I

    move-result v0

    return v0
.end method

.method public getTimeDescriptionList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 14127
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    .line 14128
    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->getTimeDescriptionList()Ljava/util/List;

    move-result-object v0

    .line 14127
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 14034
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->getType()I

    move-result v0

    return v0
.end method

.method public getVehicleType()I
    .locals 1

    .line 14057
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-virtual {v0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->getVehicleType()I

    move-result v0

    return v0
.end method

.method public setLinkIndex(J)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    .locals 1

    .line 14109
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14110
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->access$31600(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;J)V

    return-object p0
.end method

.method public setSegIndex(J)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    .locals 1

    .line 14086
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14087
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->access$31400(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;J)V

    return-object p0
.end method

.method public setTimeDescription(II)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    .locals 1

    .line 14147
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14148
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p1, p2}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->access$31800(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;II)V

    return-object p0
.end method

.method public setType(I)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    .locals 1

    .line 14040
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14041
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->access$31000(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;I)V

    return-object p0
.end method

.method public setVehicleType(I)Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;
    .locals 1

    .line 14063
    invoke-virtual {p0}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->copyOnWrite()V

    .line 14064
    iget-object v0, p0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo$Builder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;

    invoke-static {v0, p1}, Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;->access$31200(Landroid/car/hardware/xpu/XpuProtoMessage$ForbiddenInfo;I)V

    return-object p0
.end method
