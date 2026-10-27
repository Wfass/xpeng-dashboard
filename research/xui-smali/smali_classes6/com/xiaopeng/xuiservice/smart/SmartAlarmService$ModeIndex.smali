.class Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;
.super Ljava/lang/Object;
.source "SmartAlarmService.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModeIndex"
.end annotation


# static fields
.field public static final ACC:I = 0x1

.field public static final LCC:I = 0x2

.field public static final NGP:I = 0x3

.field public static final NONE:I


# instance fields
.field private mLastStatus:I

.field private mNgpTriggered:Z

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)V
    .locals 0

    .line 353
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    const/4 p1, 0x0

    iput p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mLastStatus:I

    .line 360
    iput-boolean p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mNgpTriggered:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$1;

    .line 353
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;)V

    return-void
.end method


# virtual methods
.method public clearStatus()V
    .locals 2

    .line 371
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mLastStatus:I

    .line 372
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mNgpTriggered:Z

    .line 373
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Z)V

    .line 374
    return-void
.end method

.method public getMapValue(I)Ljava/util/List;
    .locals 8
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 377
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v0, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 381
    .local v1, "status":I
    const/16 v2, 0x9

    const/4 v3, 0x4

    if-ne p1, v3, :cond_0

    .line 382
    const/4 v1, 0x1

    goto :goto_0

    .line 383
    :cond_0
    if-le p1, v3, :cond_1

    if-ge p1, v2, :cond_1

    .line 384
    const/4 v1, 0x2

    goto :goto_0

    .line 385
    :cond_1
    if-ne p1, v2, :cond_2

    .line 386
    const/4 v1, 0x3

    .line 389
    :cond_2
    :goto_0
    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mLastStatus:I

    if-ne v1, v4, :cond_3

    return-object v0

    .line 391
    :cond_3
    const-string v4, "SmartAlarmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mode_index last status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mLastStatus:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", status="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " (none=0, acc=1, lcc=2, ngp=3, cngp=4)"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mLastStatus:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-nez v4, :cond_5

    if-eq v1, v6, :cond_4

    if-ne v1, v5, :cond_5

    .line 396
    :cond_4
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_5
    iget v4, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mLastStatus:I

    const/4 v7, 0x3

    if-ne v4, v6, :cond_7

    if-nez v1, :cond_7

    .line 400
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$700()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_1

    .line 403
    :cond_7
    :goto_2
    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mLastStatus:I

    if-ne v3, v5, :cond_9

    if-ne v1, v6, :cond_9

    .line 404
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$800()Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x6

    :goto_3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    const/4 v3, 0x5

    goto :goto_3

    .line 407
    :cond_9
    :goto_4
    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mLastStatus:I

    if-ne v3, v5, :cond_b

    if-nez v1, :cond_b

    .line 408
    invoke-static {}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$900()Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x8

    :goto_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_a
    const/4 v3, 0x7

    goto :goto_5

    .line 411
    :cond_b
    :goto_6
    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mLastStatus:I

    if-eq v3, v5, :cond_c

    if-ne v1, v5, :cond_c

    .line 412
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 415
    :cond_c
    const/4 v2, 0x0

    if-ne v1, v7, :cond_d

    .line 416
    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    iput-boolean v6, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mNgpTriggered:Z

    .line 418
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v3, v6}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Z)V

    goto :goto_7

    .line 419
    :cond_d
    iget v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mLastStatus:I

    if-ne v3, v7, :cond_e

    .line 420
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;

    invoke-static {v3, v2}, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartAlarmService;Z)V

    .line 423
    :cond_e
    :goto_7
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 424
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_f
    iput v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mLastStatus:I

    .line 429
    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 363
    iget v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mLastStatus:I

    return v0
.end method

.method public hasNgpTriggered()Z
    .locals 1

    .line 367
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAlarmService$ModeIndex;->mNgpTriggered:Z

    return v0
.end method
