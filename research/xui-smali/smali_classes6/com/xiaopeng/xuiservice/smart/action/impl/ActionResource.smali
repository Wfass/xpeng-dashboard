.class public Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;
.super Lcom/xiaopeng/xuiservice/smart/action/ActionBase;
.source "ActionResource.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;


# instance fields
.field private final description:Ljava/lang/String;

.field private final effectTime:J

.field private final expireTime:J

.field private final extraData:Ljava/lang/String;

.field private final file:Ljava/lang/String;

.field private final price:Ljava/lang/String;

.field private final resourceIcon:Ljava/lang/String;

.field private final resourceId:Ljava/lang/String;

.field private final resourceName:Ljava/lang/String;

.field private final resourceType:I

.field private final select:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 17
    .param p1, "resourceId"    # Ljava/lang/String;
    .param p2, "resourceType"    # I
    .param p3, "resourceName"    # Ljava/lang/String;
    .param p4, "effectTime"    # J
    .param p6, "expireTime"    # J
    .param p8, "extraData"    # Ljava/lang/String;
    .param p9, "file"    # Ljava/lang/String;
    .param p10, "resourceIcon"    # Ljava/lang/String;
    .param p11, "description"    # Ljava/lang/String;
    .param p12, "price"    # Ljava/lang/String;
    .param p13, "select"    # Z

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 58
    invoke-direct/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;-><init>()V

    .line 59
    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->resourceId:Ljava/lang/String;

    .line 60
    iput v1, v0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->resourceType:I

    .line 61
    move-object/from16 v3, p3

    iput-object v3, v0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->resourceName:Ljava/lang/String;

    .line 62
    move-wide/from16 v4, p4

    iput-wide v4, v0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->effectTime:J

    .line 63
    move-wide/from16 v6, p6

    iput-wide v6, v0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->expireTime:J

    .line 64
    move-object/from16 v8, p8

    iput-object v8, v0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->extraData:Ljava/lang/String;

    .line 65
    move-object/from16 v9, p9

    iput-object v9, v0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->file:Ljava/lang/String;

    .line 66
    move-object/from16 v10, p10

    iput-object v10, v0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->resourceIcon:Ljava/lang/String;

    .line 67
    move-object/from16 v11, p11

    iput-object v11, v0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->description:Ljava/lang/String;

    .line 68
    move-object/from16 v12, p12

    iput-object v12, v0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->price:Ljava/lang/String;

    .line 69
    move/from16 v13, p13

    iput-boolean v13, v0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->select:Z

    .line 72
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 75
    if-lez v1, :cond_1

    .line 78
    invoke-static/range {p9 .. p9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 81
    return-void

    .line 79
    :cond_0
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string v15, "no resource file"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 76
    :cond_1
    new-instance v14, Ljava/lang/IllegalArgumentException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid resource type: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v14, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 73
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v14, "no resource id"

    invoke-direct {v0, v14}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static synthetic lambda$onStart$0(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;)V
    .locals 5

    .line 99
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    .line 100
    new-instance v0, Lcom/xiaopeng/xuimanager/operation/OperationResource;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/operation/OperationResource;-><init>()V

    .line 101
    .local v0, "operationResource":Lcom/xiaopeng/xuimanager/operation/OperationResource;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setId(Ljava/lang/String;)V

    .line 102
    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->resourceType:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceType(I)V

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceName(Ljava/lang/String;)V

    .line 104
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setTargetPath(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->extraData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setExtraData(Ljava/lang/String;)V

    .line 106
    const-string v1, "egg_resource"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceFrom(Ljava/lang/String;)V

    .line 107
    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->effectTime:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setEffectTime(J)V

    .line 108
    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->expireTime:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setExpireTime(J)V

    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 111
    .local v1, "time":J
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setCreateTime(J)V

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setUpdateTime(J)V

    .line 113
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->resourceIcon:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setResourceIcon(Ljava/lang/String;)V

    .line 114
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->description:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setDescription(Ljava/lang/String;)V

    .line 115
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->price:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->setPrice(Ljava/lang/String;)V

    .line 117
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v3

    iget-object v4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->file:Ljava/lang/String;

    invoke-virtual {v3, v0, v4}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->addNewResource(Lcom/xiaopeng/xuimanager/operation/OperationResource;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public static synthetic lambda$onStop$1(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;)V
    .locals 1

    .line 124
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->removeEventListener(Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;)V

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 165
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "event"    # Ljava/lang/String;

    .line 129
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->resourceType:I

    if-eq p3, v0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/16 v0, 0xf

    if-eq p1, v0, :cond_3

    const/16 v0, 0x15

    if-eq p1, v0, :cond_1

    goto/16 :goto_0

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    goto/16 :goto_0

    .line 150
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EVENT_CODE_DOWNLOAD_ERROR: id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 151
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$J0uPGal7TH8uVd0MRHrtCVqCF94;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$J0uPGal7TH8uVd0MRHrtCVqCF94;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 152
    goto :goto_0

    .line 154
    :cond_3
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->select:Z

    if-eqz v0, :cond_7

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resource set success, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 156
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$J0uPGal7TH8uVd0MRHrtCVqCF94;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$J0uPGal7TH8uVd0MRHrtCVqCF94;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 134
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 135
    goto :goto_0

    .line 137
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add resource success, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 138
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->select:Z

    if-eqz v0, :cond_6

    .line 140
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->selectOperationResource(Ljava/lang/String;)V

    goto :goto_0

    .line 142
    :cond_6
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$J0uPGal7TH8uVd0MRHrtCVqCF94;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$J0uPGal7TH8uVd0MRHrtCVqCF94;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 144
    nop

    .line 160
    :cond_7
    :goto_0
    return-void
.end method

.method protected onStart()V
    .locals 5

    .line 85
    invoke-static {}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getInstance()Lcom/xiaopeng/xuiservice/operation/OperationHalService;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/operation/OperationHalService;->getResourceById(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;

    move-result-object v0

    .line 86
    .local v0, "resourceInfo":Lcom/xiaopeng/xuiservice/operation/db/ResourceInfo;
    if-eqz v0, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resource already added, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$J0uPGal7TH8uVd0MRHrtCVqCF94;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$J0uPGal7TH8uVd0MRHrtCVqCF94;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 89
    return-void

    .line 92
    :cond_0
    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->expireTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    iget-wide v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->expireTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resource expired, won\'t be added to resource service, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/egg/EggLog;->INFO(Ljava/lang/String;)V

    .line 94
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$J0uPGal7TH8uVd0MRHrtCVqCF94;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$J0uPGal7TH8uVd0MRHrtCVqCF94;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 95
    return-void

    .line 98
    :cond_1
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionResource$lMkPAOUZqL_hGAlpQYRdteXllLs;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionResource$lMkPAOUZqL_hGAlpQYRdteXllLs;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 119
    return-void
.end method

.method protected onStop()V
    .locals 2

    .line 123
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionResource$DIrcG0oRF0fXdHpysGSmyKBM_D4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/smart/action/impl/-$$Lambda$ActionResource$DIrcG0oRF0fXdHpysGSmyKBM_D4;-><init>(Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 125
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 169
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/xiaopeng/xuiservice/smart/action/ActionBase;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{resourceType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->resourceType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resourceName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->resourceName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", effectTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->effectTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 172
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expireTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->expireTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 173
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", extraData=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->extraData:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", file=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->file:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", select="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/xuiservice/smart/action/impl/ActionResource;->select:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 169
    return-object v0
.end method
