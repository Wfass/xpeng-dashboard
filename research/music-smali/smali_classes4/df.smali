.class public Ldf;
.super Ljava/lang/Object;
.source "ViewTransition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf$a;
    }
.end annotation


# static fields
.field private static e:Ljava/lang/String; = "ViewTransition"


# instance fields
.field a:I

.field b:Lcr;

.field c:Landroidx/constraintlayout/widget/d$a;

.field d:Landroid/content/Context;

.field private f:I

.field private g:I

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:Ljava/lang/String;

.field private n:I

.field private o:Ljava/lang/String;

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 77
    iput v0, p0, Ldf;->g:I

    const/4 v1, 0x0

    .line 78
    iput-boolean v1, p0, Ldf;->h:Z

    .line 79
    iput v1, p0, Ldf;->i:I

    .line 86
    iput v0, p0, Ldf;->j:I

    .line 87
    iput v0, p0, Ldf;->k:I

    .line 95
    iput v1, p0, Ldf;->n:I

    const/4 v2, 0x0

    .line 96
    iput-object v2, p0, Ldf;->o:Ljava/lang/String;

    .line 97
    iput v0, p0, Ldf;->p:I

    .line 107
    iput v0, p0, Ldf;->q:I

    .line 108
    iput v0, p0, Ldf;->r:I

    .line 109
    iput v0, p0, Ldf;->s:I

    .line 110
    iput v0, p0, Ldf;->t:I

    .line 115
    iput v0, p0, Ldf;->u:I

    .line 116
    iput v0, p0, Ldf;->v:I

    .line 117
    iput v0, p0, Ldf;->w:I

    .line 213
    iput-object p1, p0, Ldf;->d:Landroid/content/Context;

    .line 217
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    if-eqz v2, :cond_7

    const-string v4, "ViewTransition"

    const/4 v5, 0x3

    const/4 v6, 0x2

    if-eq v2, v6, :cond_1

    if-eq v2, v5, :cond_0

    goto/16 :goto_3

    .line 246
    :cond_0
    :try_start_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    return-void

    .line 224
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x4

    sparse-switch v7, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "CustomAttribute"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_2

    :sswitch_1
    const-string v4, "CustomMethod"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v8

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v1

    goto :goto_2

    :sswitch_3
    const-string v4, "KeyFrameSet"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v3

    goto :goto_2

    :sswitch_4
    const-string v4, "ConstraintOverride"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    goto :goto_2

    :cond_2
    :goto_1
    move v4, v0

    :goto_2
    if-eqz v4, :cond_6

    if-eq v4, v3, :cond_5

    if-eq v4, v6, :cond_4

    if-eq v4, v5, :cond_3

    if-eq v4, v8, :cond_3

    .line 240
    sget-object v3, Ldf;->e:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcl;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " unknown tag "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    sget-object v2, Ldf;->e:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ".xml:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 237
    :cond_3
    iget-object v2, p0, Ldf;->c:Landroidx/constraintlayout/widget/d$a;

    iget-object v2, v2, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    invoke-static {p1, p2, v2}, Landroidx/constraintlayout/widget/a;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto :goto_3

    .line 233
    :cond_4
    invoke-static {p1, p2}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/constraintlayout/widget/d$a;

    move-result-object v2

    iput-object v2, p0, Ldf;->c:Landroidx/constraintlayout/widget/d$a;

    goto :goto_3

    .line 230
    :cond_5
    new-instance v2, Lcr;

    invoke-direct {v2, p1, p2}, Lcr;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v2, p0, Ldf;->b:Lcr;

    goto :goto_3

    .line 227
    :cond_6
    invoke-direct {p0, p1, p2}, Ldf;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 219
    :cond_7
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 257
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p1

    .line 255
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_8
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x74f4db17 -> :sswitch_4
        -0x49df9cec -> :sswitch_3
        0x3b205fa -> :sswitch_2
        0x15d883d2 -> :sswitch_1
        0x6acd460b -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8

    .line 262
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 263
    sget-object v0, Landroidx/constraintlayout/widget/h$b;->ViewTransition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_14

    .line 266
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 267
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_android_id:I

    if-ne v1, v2, :cond_0

    .line 268
    iget v2, p0, Ldf;->f:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ldf;->f:I

    goto/16 :goto_1

    .line 269
    :cond_0
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_motionTarget:I

    const/4 v3, 0x3

    const/4 v4, -0x1

    if-ne v1, v2, :cond_3

    .line 270
    sget-boolean v2, Ldb;->a:Z

    if-eqz v2, :cond_1

    .line 271
    iget v2, p0, Ldf;->l:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Ldf;->l:I

    .line 272
    iget v2, p0, Ldf;->l:I

    if-ne v2, v4, :cond_13

    .line 273
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldf;->m:Ljava/lang/String;

    goto/16 :goto_1

    .line 276
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v3, :cond_2

    .line 277
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ldf;->m:Ljava/lang/String;

    goto/16 :goto_1

    .line 279
    :cond_2
    iget v2, p0, Ldf;->l:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ldf;->l:I

    goto/16 :goto_1

    .line 282
    :cond_3
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_onStateTransition:I

    if-ne v1, v2, :cond_4

    .line 283
    iget v2, p0, Ldf;->g:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ldf;->g:I

    goto/16 :goto_1

    .line 284
    :cond_4
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_transitionDisable:I

    if-ne v1, v2, :cond_5

    .line 285
    iget-boolean v2, p0, Ldf;->h:Z

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Ldf;->h:Z

    goto/16 :goto_1

    .line 286
    :cond_5
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_pathMotionArc:I

    if-ne v1, v2, :cond_6

    .line 287
    iget v2, p0, Ldf;->i:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ldf;->i:I

    goto/16 :goto_1

    .line 288
    :cond_6
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_duration:I

    if-ne v1, v2, :cond_7

    .line 289
    iget v2, p0, Ldf;->j:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ldf;->j:I

    goto/16 :goto_1

    .line 290
    :cond_7
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_upDuration:I

    if-ne v1, v2, :cond_8

    .line 291
    iget v2, p0, Ldf;->k:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ldf;->k:I

    goto/16 :goto_1

    .line 292
    :cond_8
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_viewTransitionMode:I

    if-ne v1, v2, :cond_9

    .line 293
    iget v2, p0, Ldf;->a:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ldf;->a:I

    goto/16 :goto_1

    .line 294
    :cond_9
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_motionInterpolator:I

    if-ne v1, v2, :cond_d

    .line 295
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 296
    iget v5, v2, Landroid/util/TypedValue;->type:I

    const/4 v6, -0x2

    const/4 v7, 0x1

    if-ne v5, v7, :cond_a

    .line 297
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ldf;->p:I

    .line 298
    iget v1, p0, Ldf;->p:I

    if-eq v1, v4, :cond_13

    .line 299
    iput v6, p0, Ldf;->n:I

    goto/16 :goto_1

    .line 301
    :cond_a
    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v3, :cond_c

    .line 302
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Ldf;->o:Ljava/lang/String;

    .line 303
    iget-object v2, p0, Ldf;->o:Ljava/lang/String;

    if-eqz v2, :cond_b

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_b

    .line 304
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ldf;->p:I

    .line 305
    iput v6, p0, Ldf;->n:I

    goto :goto_1

    .line 307
    :cond_b
    iput v4, p0, Ldf;->n:I

    goto :goto_1

    .line 310
    :cond_c
    iget v2, p0, Ldf;->n:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Ldf;->n:I

    goto :goto_1

    .line 312
    :cond_d
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_setsTag:I

    if-ne v1, v2, :cond_e

    .line 313
    iget v2, p0, Ldf;->q:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ldf;->q:I

    goto :goto_1

    .line 314
    :cond_e
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_clearsTag:I

    if-ne v1, v2, :cond_f

    .line 315
    iget v2, p0, Ldf;->r:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ldf;->r:I

    goto :goto_1

    .line 316
    :cond_f
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_ifTagSet:I

    if-ne v1, v2, :cond_10

    .line 317
    iget v2, p0, Ldf;->s:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ldf;->s:I

    goto :goto_1

    .line 318
    :cond_10
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_ifTagNotSet:I

    if-ne v1, v2, :cond_11

    .line 319
    iget v2, p0, Ldf;->t:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ldf;->t:I

    goto :goto_1

    .line 320
    :cond_11
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_SharedValueId:I

    if-ne v1, v2, :cond_12

    .line 321
    iget v2, p0, Ldf;->v:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Ldf;->v:I

    goto :goto_1

    .line 322
    :cond_12
    sget v2, Landroidx/constraintlayout/widget/h$b;->ViewTransition_SharedValue:I

    if-ne v1, v2, :cond_13

    .line 323
    iget v2, p0, Ldf;->u:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Ldf;->u:I

    :cond_13
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 326
    :cond_14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Ldd$a;Landroid/view/View;)V
    .locals 4

    .line 533
    iget v0, p0, Ldf;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 534
    invoke-virtual {p1, v0}, Ldd$a;->a(I)V

    .line 536
    :cond_0
    iget v0, p0, Ldf;->i:I

    invoke-virtual {p1, v0}, Ldd$a;->b(I)V

    .line 537
    iget v0, p0, Ldf;->n:I

    iget-object v2, p0, Ldf;->o:Ljava/lang/String;

    iget v3, p0, Ldf;->p:I

    invoke-virtual {p1, v0, v2, v3}, Ldd$a;->a(ILjava/lang/String;I)V

    .line 538
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result p2

    .line 539
    iget-object v0, p0, Ldf;->b:Lcr;

    if-eqz v0, :cond_2

    .line 540
    invoke-virtual {v0, v1}, Lcr;->a(I)Ljava/util/ArrayList;

    move-result-object v0

    .line 541
    new-instance v1, Lcr;

    invoke-direct {v1}, Lcr;-><init>()V

    .line 542
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco;

    .line 543
    invoke-virtual {v2}, Lco;->a()Lco;

    move-result-object v2

    invoke-virtual {v2, p2}, Lco;->a(I)Lco;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcr;->a(Lco;)V

    goto :goto_0

    .line 546
    :cond_1
    invoke-virtual {p1, v1}, Ldd$a;->a(Lcr;)V

    :cond_2
    return-void
.end method

.method private synthetic a([Landroid/view/View;)V
    .locals 8

    .line 519
    iget v0, p0, Ldf;->q:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    .line 520
    array-length v0, p1

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p1, v3

    .line 521
    iget v5, p0, Ldf;->q:I

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    :cond_0
    iget v0, p0, Ldf;->r:I

    if-eq v0, v2, :cond_1

    .line 525
    array-length v0, p1

    :goto_1
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 526
    iget v3, p0, Ldf;->r:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static synthetic lambda$t61KcVg-z5ZOriQcztIYAJGlORE(Ldf;[Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Ldf;->a([Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 133
    iget v0, p0, Ldf;->g:I

    return v0
.end method

.method a(Landroid/content/Context;)Landroid/view/animation/Interpolator;
    .locals 2

    .line 182
    iget v0, p0, Ldf;->n:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-object v1

    .line 203
    :pswitch_0
    new-instance p1, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    return-object p1

    .line 205
    :pswitch_1
    new-instance p1, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {p1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    return-object p1

    .line 207
    :pswitch_2
    new-instance p1, Landroid/view/animation/BounceInterpolator;

    invoke-direct {p1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object p1

    :pswitch_3
    return-object v1

    .line 199
    :pswitch_4
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object p1

    .line 197
    :pswitch_5
    new-instance p1, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object p1

    .line 195
    :pswitch_6
    new-instance p1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object p1

    .line 184
    :pswitch_7
    iget-object p1, p0, Ldf;->o:Ljava/lang/String;

    invoke-static {p1}, Lan;->a(Ljava/lang/String;)Lan;

    move-result-object p1

    .line 185
    new-instance v0, Ldf$1;

    invoke-direct {v0, p0, p1}, Ldf$1;-><init>(Ldf;Lan;)V

    return-object v0

    .line 192
    :pswitch_8
    iget v0, p0, Ldf;->p:I

    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method varargs a(Ldg;Ldb;ILandroidx/constraintlayout/widget/d;[Landroid/view/View;)V
    .locals 7

    .line 475
    iget-boolean v0, p0, Ldf;->h:Z

    if-eqz v0, :cond_0

    return-void

    .line 478
    :cond_0
    iget v0, p0, Ldf;->a:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 479
    aget-object p3, p5, v2

    invoke-virtual {p0, p1, p2, p3}, Ldf;->a(Ldg;Ldb;Landroid/view/View;)V

    return-void

    :cond_1
    const/4 p1, 0x1

    if-ne v0, p1, :cond_5

    .line 483
    invoke-virtual {p2}, Ldb;->getConstraintSetIds()[I

    move-result-object p1

    move v0, v2

    .line 484
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 485
    aget v1, p1, v0

    if-ne v1, p3, :cond_2

    goto :goto_2

    .line 489
    :cond_2
    invoke-virtual {p2, v1}, Ldb;->c(I)Landroidx/constraintlayout/widget/d;

    move-result-object v1

    .line 490
    array-length v3, p5

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_4

    aget-object v5, p5, v4

    .line 491
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    invoke-virtual {v1, v5}, Landroidx/constraintlayout/widget/d;->f(I)Landroidx/constraintlayout/widget/d$a;

    move-result-object v5

    .line 492
    iget-object v6, p0, Ldf;->c:Landroidx/constraintlayout/widget/d$a;

    if-eqz v6, :cond_3

    .line 493
    invoke-virtual {v6, v5}, Landroidx/constraintlayout/widget/d$a;->a(Landroidx/constraintlayout/widget/d$a;)V

    .line 494
    iget-object v5, v5, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    iget-object v6, p0, Ldf;->c:Landroidx/constraintlayout/widget/d$a;

    iget-object v6, v6, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 500
    :cond_5
    new-instance p1, Landroidx/constraintlayout/widget/d;

    invoke-direct {p1}, Landroidx/constraintlayout/widget/d;-><init>()V

    .line 501
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/widget/d;->c(Landroidx/constraintlayout/widget/d;)V

    .line 502
    array-length v0, p5

    move v1, v2

    :goto_3
    if-ge v1, v0, :cond_7

    aget-object v3, p5, v1

    .line 503
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/d;->f(I)Landroidx/constraintlayout/widget/d$a;

    move-result-object v3

    .line 504
    iget-object v4, p0, Ldf;->c:Landroidx/constraintlayout/widget/d$a;

    if-eqz v4, :cond_6

    .line 505
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/widget/d$a;->a(Landroidx/constraintlayout/widget/d$a;)V

    .line 506
    iget-object v3, v3, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    iget-object v4, p0, Ldf;->c:Landroidx/constraintlayout/widget/d$a;

    iget-object v4, v4, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 510
    :cond_7
    invoke-virtual {p2, p3, p1}, Ldb;->a(ILandroidx/constraintlayout/widget/d;)V

    .line 511
    sget p1, Landroidx/constraintlayout/widget/h$a;->view_transition:I

    invoke-virtual {p2, p1, p4}, Ldb;->a(ILandroidx/constraintlayout/widget/d;)V

    .line 512
    sget p1, Landroidx/constraintlayout/widget/h$a;->view_transition:I

    const/4 p4, -0x1

    invoke-virtual {p2, p1, p4, p4}, Ldb;->setState(III)V

    .line 513
    new-instance p1, Ldd$a;

    iget-object v0, p2, Ldb;->b:Ldd;

    sget v1, Landroidx/constraintlayout/widget/h$a;->view_transition:I

    invoke-direct {p1, p4, v0, v1, p3}, Ldd$a;-><init>(ILdd;II)V

    .line 514
    array-length p3, p5

    :goto_4
    if-ge v2, p3, :cond_8

    aget-object p4, p5, v2

    .line 515
    invoke-direct {p0, p1, p4}, Ldf;->a(Ldd$a;Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 517
    :cond_8
    invoke-virtual {p2, p1}, Ldb;->setTransition(Ldd$a;)V

    .line 518
    new-instance p1, L-$$Lambda$df$t61KcVg-z5ZOriQcztIYAJGlORE;

    invoke-direct {p1, p0, p5}, L-$$Lambda$df$t61KcVg-z5ZOriQcztIYAJGlORE;-><init>(Ldf;[Landroid/view/View;)V

    invoke-virtual {p2, p1}, Ldb;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ldg;Ldb;Landroid/view/View;)V
    .locals 9

    .line 330
    new-instance v6, Lcx;

    invoke-direct {v6, p3}, Lcx;-><init>(Landroid/view/View;)V

    .line 331
    invoke-virtual {v6, p3}, Lcx;->c(Landroid/view/View;)V

    .line 332
    iget-object p3, p0, Ldf;->b:Lcr;

    invoke-virtual {p3, v6}, Lcr;->a(Lcx;)V

    .line 333
    invoke-virtual {p2}, Ldb;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Ldb;->getHeight()I

    move-result v2

    iget p3, p0, Ldf;->j:I

    int-to-float v3, p3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Lcx;->a(IIFJ)V

    .line 334
    new-instance v0, Ldf$a;

    iget v3, p0, Ldf;->j:I

    iget v4, p0, Ldf;->k:I

    iget v5, p0, Ldf;->g:I

    .line 336
    invoke-virtual {p2}, Ldb;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2}, Ldf;->a(Landroid/content/Context;)Landroid/view/animation/Interpolator;

    move-result-object p2

    iget v7, p0, Ldf;->q:I

    iget v8, p0, Ldf;->r:I

    move-object v1, p1

    move-object v2, v6

    move-object v6, p2

    invoke-direct/range {v0 .. v8}, Ldf$a;-><init>(Ldg;Lcx;IIILandroid/view/animation/Interpolator;II)V

    return-void
.end method

.method a(I)Z
    .locals 4

    .line 585
    iget v0, p0, Ldf;->g:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    return v1

    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    if-nez p1, :cond_4

    move v1, v2

    :cond_4
    return v1
.end method

.method a(Landroid/view/View;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 562
    :cond_0
    iget v1, p0, Ldf;->l:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Ldf;->m:Ljava/lang/String;

    if-nez v1, :cond_1

    return v0

    .line 565
    :cond_1
    invoke-virtual {p0, p1}, Ldf;->b(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_2

    return v0

    .line 568
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget v2, p0, Ldf;->l:I

    const/4 v3, 0x1

    if-ne v1, v2, :cond_3

    return v3

    .line 571
    :cond_3
    iget-object v1, p0, Ldf;->m:Ljava/lang/String;

    if-nez v1, :cond_4

    return v0

    .line 574
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 575
    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v1, :cond_5

    .line 576
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ac:Ljava/lang/String;

    if-eqz p1, :cond_5

    .line 577
    iget-object v1, p0, Ldf;->m:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    return v3

    :cond_5
    return v0
.end method

.method public b()I
    .locals 1

    .line 151
    iget v0, p0, Ldf;->u:I

    return v0
.end method

.method b(Landroid/view/View;)Z
    .locals 5

    .line 607
    iget v0, p0, Ldf;->s:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    :goto_0
    move v0, v3

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, v2

    .line 608
    :goto_1
    iget v4, p0, Ldf;->t:I

    if-ne v4, v1, :cond_2

    :goto_2
    move p1, v3

    goto :goto_3

    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    move p1, v2

    :goto_3
    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public c()I
    .locals 1

    .line 167
    iget v0, p0, Ldf;->v:I

    return v0
.end method

.method d()I
    .locals 1

    .line 551
    iget v0, p0, Ldf;->f:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ViewTransition("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldf;->d:Landroid/content/Context;

    iget v2, p0, Ldf;->f:I

    invoke-static {v1, v2}, Lcl;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
