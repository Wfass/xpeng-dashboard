.class Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;
.super Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;
.source "SmartLluService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartLluService;->doLangLightEffectMode(Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

.field final synthetic val$LLEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Lcom/xiaopeng/xuiservice/smart/LangLightEffect;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    .line 3292
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->val$LLEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$LangLightTask;-><init>(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    return-void
.end method

.method private dictionary_llu_task()V
    .locals 23

    .line 3303
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2802(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)Z

    .line 3304
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5100(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    .line 3306
    const/4 v1, 0x0

    .local v1, "fType":I
    const/4 v3, 0x0

    .local v3, "fTick":I
    const/4 v4, 0x0

    .local v4, "rType":I
    const/4 v5, 0x0

    .local v5, "rTick":I
    const/4 v6, 0x0

    .local v6, "fLight":I
    const/4 v7, 0x0

    .local v7, "rLight":I
    const/4 v8, 0x0

    .line 3307
    .local v8, "expandCmd":I
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->count:I

    add-int/2addr v9, v2

    iput v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->count:I

    .line 3309
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontData:[I

    if-eqz v9, :cond_f

    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearData:[I

    if-nez v9, :cond_0

    goto/16 :goto_4

    .line 3312
    :cond_0
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    iget-object v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontData:[I

    array-length v10, v10

    const/4 v11, 0x0

    if-le v9, v10, :cond_6

    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    iget-object v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearData:[I

    array-length v10, v10

    if-le v9, v10, :cond_6

    .line 3314
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontRetain:I

    if-eq v9, v2, :cond_1

    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearRetain:I

    if-ne v9, v2, :cond_2

    .line 3315
    :cond_1
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5200(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    .line 3317
    :cond_2
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5300(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Landroid/media/AudioManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5100(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    .line 3318
    :cond_3
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v9, v11}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2802(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)Z

    .line 3319
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->cancel()Z

    .line 3320
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    move-result v9

    if-nez v9, :cond_6

    .line 3321
    const-string v9, "SmartLluService"

    const-string v10, "dictionary_llu_task  LAST TICK"

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3322
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v9, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5400(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)V

    .line 3323
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3200(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    move-result v9

    if-lez v9, :cond_4

    .line 3324
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3210(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    .line 3325
    :cond_4
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3200(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    move-result v9

    if-nez v9, :cond_5

    .line 3326
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v9}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5500(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    goto :goto_0

    .line 3328
    :cond_5
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    iget-object v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->val$LLEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    const-string v12, ""

    invoke-static {v9, v2, v10, v12}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1700(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ILcom/xiaopeng/xuiservice/smart/LangLightEffect;Ljava/lang/String;)V

    .line 3333
    :cond_6
    :goto_0
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->count:I

    mul-int/lit8 v9, v9, 0xa

    iget v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontPeriod:I

    rem-int/2addr v9, v10

    const/high16 v10, -0x20000

    const/high16 v12, 0x10000

    const v13, 0xff00

    if-nez v9, :cond_c

    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->count:I

    mul-int/lit8 v9, v9, 0xa

    iget v14, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearPeriod:I

    rem-int/2addr v9, v14

    if-nez v9, :cond_c

    .line 3335
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    iget-object v14, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontData:[I

    array-length v14, v14

    if-ge v9, v14, :cond_7

    .line 3336
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontData:[I

    iget v14, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    aget v9, v9, v14

    and-int/2addr v9, v13

    shr-int/lit8 v1, v9, 0x8

    .line 3337
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontData:[I

    iget v14, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    aget v9, v9, v14

    and-int/lit16 v3, v9, 0xff

    .line 3338
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontData:[I

    iget v14, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    aget v9, v9, v14

    and-int/2addr v9, v12

    shr-int/lit8 v6, v9, 0x10

    .line 3339
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontData:[I

    iget v14, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    aget v9, v9, v14

    and-int/2addr v9, v10

    shr-int/lit8 v8, v9, 0x11

    .line 3340
    iput v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldfType:I

    .line 3341
    iput v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldfTick:I

    goto :goto_1

    .line 3343
    :cond_7
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontRetain:I

    if-ne v9, v2, :cond_8

    .line 3344
    iget v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldfType:I

    .line 3345
    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldfTick:I

    goto :goto_1

    .line 3347
    :cond_8
    iput v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldfType:I

    .line 3348
    iput v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldfTick:I

    .line 3349
    const/4 v1, -0x1

    .line 3350
    const/4 v3, -0x1

    .line 3353
    :goto_1
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    iget-object v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearData:[I

    array-length v10, v10

    if-ge v9, v10, :cond_9

    .line 3354
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearData:[I

    iget v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    aget v9, v9, v10

    and-int/2addr v9, v13

    shr-int/lit8 v4, v9, 0x8

    .line 3355
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearData:[I

    iget v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    aget v9, v9, v10

    and-int/lit16 v5, v9, 0xff

    .line 3356
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearData:[I

    iget v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    aget v9, v9, v10

    and-int/2addr v9, v12

    shr-int/lit8 v7, v9, 0x10

    .line 3357
    iput v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldrType:I

    .line 3358
    iput v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldrTick:I

    goto :goto_2

    .line 3360
    :cond_9
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearRetain:I

    if-ne v9, v2, :cond_a

    .line 3361
    iget v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldrType:I

    .line 3362
    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldrTick:I

    goto :goto_2

    .line 3364
    :cond_a
    iput v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldrType:I

    .line 3365
    iput v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldrTick:I

    .line 3366
    const/4 v4, -0x1

    .line 3367
    const/4 v5, -0x1

    .line 3370
    :goto_2
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    add-int/2addr v9, v2

    iput v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    .line 3371
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    add-int/2addr v9, v2

    iput v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    .line 3372
    const/4 v2, -0x1

    if-ne v1, v2, :cond_b

    if-ne v3, v2, :cond_b

    if-ne v4, v2, :cond_b

    if-ne v5, v2, :cond_b

    .line 3373
    iget-object v14, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    const/4 v15, 0x0

    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    invoke-static/range {v14 .. v21}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ZIIIIII)V

    .line 3374
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v2, v11}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2802(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)Z

    goto/16 :goto_3

    .line 3376
    :cond_b
    iget-object v14, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    const/4 v15, 0x1

    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v20, v6

    move/from16 v21, v7

    move/from16 v22, v8

    invoke-static/range {v14 .. v22}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5700(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ZIIIIIII)V

    goto/16 :goto_3

    .line 3378
    :cond_c
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->count:I

    mul-int/lit8 v9, v9, 0xa

    iget v11, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontPeriod:I

    rem-int/2addr v9, v11

    if-nez v9, :cond_d

    .line 3380
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    iget-object v11, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontData:[I

    array-length v11, v11

    if-ge v9, v11, :cond_e

    .line 3381
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontData:[I

    iget v11, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    aget v9, v9, v11

    and-int/2addr v9, v13

    shr-int/lit8 v1, v9, 0x8

    .line 3382
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontData:[I

    iget v11, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    aget v9, v9, v11

    and-int/lit16 v3, v9, 0xff

    .line 3383
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontData:[I

    iget v11, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    aget v9, v9, v11

    and-int/2addr v9, v12

    shr-int/lit8 v6, v9, 0x10

    .line 3384
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontData:[I

    iget v11, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    aget v9, v9, v11

    and-int/2addr v9, v10

    shr-int/lit8 v8, v9, 0x11

    .line 3386
    iput v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldfType:I

    .line 3387
    iput v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldfTick:I

    .line 3388
    iget v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldrType:I

    .line 3389
    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldrTick:I

    .line 3390
    iget-object v13, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    const/4 v14, 0x1

    const/16 v20, -0x1

    move v15, v1

    move/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    move/from16 v21, v8

    invoke-static/range {v13 .. v21}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5700(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ZIIIIIII)V

    .line 3391
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    add-int/2addr v9, v2

    iput v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    goto :goto_3

    .line 3393
    :cond_d
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->count:I

    mul-int/lit8 v9, v9, 0xa

    iget v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearPeriod:I

    rem-int/2addr v9, v10

    if-nez v9, :cond_e

    .line 3395
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    iget-object v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearData:[I

    array-length v10, v10

    if-ge v9, v10, :cond_e

    .line 3396
    iget v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldfType:I

    .line 3397
    iget v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldfTick:I

    .line 3399
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearData:[I

    iget v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    aget v9, v9, v10

    and-int/2addr v9, v13

    shr-int/lit8 v4, v9, 0x8

    .line 3400
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearData:[I

    iget v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    aget v9, v9, v10

    and-int/lit16 v5, v9, 0xff

    .line 3401
    iget-object v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearData:[I

    iget v10, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    aget v9, v9, v10

    and-int/2addr v9, v12

    shr-int/lit8 v7, v9, 0x10

    .line 3403
    iput v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldrType:I

    .line 3404
    iput v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldrTick:I

    .line 3405
    iget-object v14, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    const/4 v15, 0x1

    const/16 v20, -0x1

    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v4

    move/from16 v19, v5

    move/from16 v21, v7

    invoke-static/range {v14 .. v21}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ZIIIIII)V

    .line 3406
    iget v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    add-int/2addr v9, v2

    iput v9, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    .line 3409
    :cond_e
    :goto_3
    return-void

    .line 3310
    :cond_f
    :goto_4
    return-void
.end method

.method private infinite_llu_task()V
    .locals 20

    .line 3412
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2802(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)Z

    .line 3413
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5100(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    .line 3415
    const-string v1, ""

    .local v1, "sfType":Ljava/lang/String;
    const-string v3, ""

    .local v3, "srType":Ljava/lang/String;
    const-string v11, ""

    .line 3416
    .local v11, "expandCmd":Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "fLight":I
    const/4 v12, 0x0

    .line 3417
    .local v12, "rLight":I
    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->count:I

    add-int/2addr v5, v2

    iput v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->count:I

    .line 3419
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->srearData:[Ljava/lang/String;

    if-nez v5, :cond_0

    .line 3420
    return-void

    .line 3421
    :cond_0
    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->sfrontData:[Ljava/lang/String;

    array-length v6, v6

    const/4 v7, 0x0

    if-le v5, v6, :cond_6

    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->srearData:[Ljava/lang/String;

    array-length v6, v6

    if-le v5, v6, :cond_6

    .line 3423
    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontRetain:I

    if-eq v5, v2, :cond_2

    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearRetain:I

    if-ne v5, v2, :cond_1

    goto :goto_0

    .line 3426
    :cond_1
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    .line 3427
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$4000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    goto :goto_1

    .line 3424
    :cond_2
    :goto_0
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5200(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    .line 3430
    :goto_1
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5300(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)Landroid/media/AudioManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5100(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    .line 3431
    :cond_3
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v5, v7}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2802(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)Z

    .line 3432
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->cancel()Z

    .line 3433
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1600(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    move-result v5

    if-nez v5, :cond_6

    .line 3434
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v5, v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5400(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)V

    .line 3435
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3200(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    move-result v5

    if-lez v5, :cond_4

    .line 3436
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3210(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    .line 3437
    :cond_4
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3200(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)I

    move-result v5

    if-nez v5, :cond_5

    .line 3438
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v5}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5500(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    goto :goto_2

    .line 3440
    :cond_5
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->val$LLEffect:Lcom/xiaopeng/xuiservice/smart/LangLightEffect;

    const-string v8, ""

    invoke-static {v5, v2, v6, v8}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$1700(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ILcom/xiaopeng/xuiservice/smart/LangLightEffect;Ljava/lang/String;)V

    .line 3445
    :cond_6
    :goto_2
    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->count:I

    mul-int/lit8 v5, v5, 0xa

    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontPeriod:I

    rem-int/2addr v5, v6

    if-nez v5, :cond_e

    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->count:I

    mul-int/lit8 v5, v5, 0xa

    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearPeriod:I

    rem-int/2addr v5, v6

    if-nez v5, :cond_e

    .line 3447
    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->sfrontData:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_8

    .line 3448
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->sfrontData:[Ljava/lang/String;

    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    aget-object v5, v5, v6

    sget v6, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3451
    const/4 v4, 0x0

    .line 3452
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->sfrontData:[Ljava/lang/String;

    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    if-le v5, v6, :cond_7

    .line 3453
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->sfrontData:[Ljava/lang/String;

    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    aget-object v5, v5, v6

    sget v6, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    sget v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    add-int/2addr v8, v2

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v4, v5

    .line 3455
    :cond_7
    iput-object v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldsfType:Ljava/lang/String;

    .line 3465
    .end local v4    # "fLight":I
    .local v13, "fLight":I
    :goto_3
    move v13, v4

    goto :goto_4

    .line 3457
    .end local v13    # "fLight":I
    .restart local v4    # "fLight":I
    :cond_8
    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontRetain:I

    if-ne v5, v2, :cond_9

    .line 3458
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldsfType:Ljava/lang/String;

    goto :goto_3

    .line 3461
    :cond_9
    iput-object v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldsfType:Ljava/lang/String;

    .line 3462
    const-string v1, ""

    goto :goto_3

    .line 3465
    .end local v4    # "fLight":I
    .restart local v13    # "fLight":I
    :goto_4
    iget v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->srearData:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_b

    .line 3466
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->srearData:[Ljava/lang/String;

    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    aget-object v4, v4, v5

    sget v5, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3467
    const/4 v4, 0x0

    .line 3468
    .end local v12    # "rLight":I
    .local v4, "rLight":I
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->srearData:[Ljava/lang/String;

    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    if-le v5, v6, :cond_a

    .line 3469
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->srearData:[Ljava/lang/String;

    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    aget-object v5, v5, v6

    sget v6, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    sget v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    add-int/2addr v8, v2

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v4, v5

    .line 3470
    :cond_a
    iput-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldsrType:Ljava/lang/String;

    .line 3479
    move v12, v4

    goto :goto_5

    .line 3472
    .end local v4    # "rLight":I
    .restart local v12    # "rLight":I
    :cond_b
    iget v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearRetain:I

    if-ne v4, v2, :cond_c

    .line 3473
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldsrType:Ljava/lang/String;

    goto :goto_5

    .line 3475
    :cond_c
    iput-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldsrType:Ljava/lang/String;

    .line 3476
    const-string v3, ""

    .line 3479
    :goto_5
    iget v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    .line 3480
    iget v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    .line 3481
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 3482
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$3000(Lcom/xiaopeng/xuiservice/smart/SmartLluService;)V

    .line 3484
    iget-object v2, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    invoke-static {v2, v7}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$2802(Lcom/xiaopeng/xuiservice/smart/SmartLluService;Z)Z

    goto/16 :goto_6

    .line 3486
    :cond_d
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    const/4 v5, 0x1

    move-object v6, v1

    move-object v7, v3

    move v8, v13

    move v9, v12

    move-object v10, v11

    invoke-static/range {v4 .. v10}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5800(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    goto/16 :goto_6

    .line 3489
    .end local v13    # "fLight":I
    .local v4, "fLight":I
    :cond_e
    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->count:I

    mul-int/lit8 v5, v5, 0xa

    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontPeriod:I

    rem-int/2addr v5, v6

    if-nez v5, :cond_10

    .line 3491
    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->sfrontData:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_12

    .line 3492
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->sfrontData:[Ljava/lang/String;

    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    aget-object v5, v5, v6

    sget v6, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 3494
    const/4 v4, 0x0

    .line 3495
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->sfrontData:[Ljava/lang/String;

    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    aget-object v5, v5, v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    sget v6, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    if-le v5, v6, :cond_f

    .line 3496
    iget-object v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->sfrontData:[Ljava/lang/String;

    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    aget-object v5, v5, v6

    sget v6, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    sget v7, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_FRONTLIGHT_COUNT:I

    add-int/2addr v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v4, v5

    .line 3499
    .end local v4    # "fLight":I
    .restart local v13    # "fLight":I
    :cond_f
    move v13, v4

    iput-object v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldsfType:Ljava/lang/String;

    .line 3500
    iget-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldsrType:Ljava/lang/String;

    .line 3501
    iget-object v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    const/4 v5, 0x1

    const/4 v9, -0x1

    move-object v6, v1

    move-object v7, v3

    move v8, v13

    move-object v10, v11

    invoke-static/range {v4 .. v10}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5800(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 3502
    iget v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    add-int/2addr v4, v2

    iput v4, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->frontNum:I

    goto :goto_6

    .line 3504
    .end local v13    # "fLight":I
    .restart local v4    # "fLight":I
    :cond_10
    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->count:I

    mul-int/lit8 v5, v5, 0xa

    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearPeriod:I

    rem-int/2addr v5, v6

    if-nez v5, :cond_12

    .line 3506
    iget v5, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->srearData:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_12

    .line 3507
    iget-object v1, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldsfType:Ljava/lang/String;

    .line 3508
    const/4 v5, 0x0

    .line 3509
    .end local v12    # "rLight":I
    .local v5, "rLight":I
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->srearData:[Ljava/lang/String;

    iget v8, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    aget-object v6, v6, v8

    sget v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 3511
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->srearData:[Ljava/lang/String;

    iget v7, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sget v7, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    if-le v6, v7, :cond_11

    .line 3512
    iget-object v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->srearData:[Ljava/lang/String;

    iget v7, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    aget-object v6, v6, v7

    sget v7, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    sget v8, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->INFINITE_REARLIGHT_COUNT:I

    add-int/2addr v8, v2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "1"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    move v5, v6

    .line 3514
    :cond_11
    iput-object v3, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->oldsrType:Ljava/lang/String;

    .line 3515
    iget-object v13, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartLluService;

    const/4 v14, 0x1

    const/16 v17, -0x1

    const-string v19, ""

    move-object v15, v1

    move-object/from16 v16, v3

    move/from16 v18, v5

    invoke-static/range {v13 .. v19}, Lcom/xiaopeng/xuiservice/smart/SmartLluService;->access$5800(Lcom/xiaopeng/xuiservice/smart/SmartLluService;ZLjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    .line 3516
    iget v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    add-int/2addr v6, v2

    iput v6, v0, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->rearNum:I

    .line 3519
    move v13, v4

    move v12, v5

    goto :goto_6

    .end local v5    # "rLight":I
    .restart local v12    # "rLight":I
    :cond_12
    move v13, v4

    .end local v4    # "fLight":I
    .restart local v13    # "fLight":I
    :goto_6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3295
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->getLluType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3296
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->infinite_llu_task()V

    goto :goto_0

    .line 3298
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/smart/SmartLluService$13;->dictionary_llu_task()V

    .line 3300
    :goto_0
    return-void
.end method
