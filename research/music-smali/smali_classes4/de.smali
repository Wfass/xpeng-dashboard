.class Lde;
.super Ljava/lang/Object;
.source "TouchResponse.java"


# static fields
.field private static final u:[[F

.field private static final v:[[F


# instance fields
.field private A:I

.field private B:F

.field private C:F

.field private D:F

.field private E:F

.field private F:F

.field private G:I

.field private H:I

.field a:F

.field b:F

.field c:Z

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:F

.field private k:F

.field private l:I

.field private m:F

.field private n:F

.field private o:Z

.field private p:[F

.field private q:[I

.field private r:F

.field private s:F

.field private final t:Ldb;

.field private w:F

.field private x:F

.field private y:Z

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x7

    .line 67
    new-array v0, v0, [[F

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_1

    const/4 v4, 0x1

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_3

    const/4 v5, 0x3

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_4

    const/4 v6, 0x4

    aput-object v2, v0, v6

    new-array v2, v1, [F

    fill-array-data v2, :array_5

    const/4 v7, 0x5

    aput-object v2, v0, v7

    new-array v2, v1, [F

    fill-array-data v2, :array_6

    const/4 v8, 0x6

    aput-object v2, v0, v8

    sput-object v0, Lde;->u:[[F

    .line 76
    new-array v0, v8, [[F

    new-array v2, v1, [F

    fill-array-data v2, :array_7

    aput-object v2, v0, v3

    new-array v2, v1, [F

    fill-array-data v2, :array_8

    aput-object v2, v0, v4

    new-array v2, v1, [F

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    new-array v2, v1, [F

    fill-array-data v2, :array_a

    aput-object v2, v0, v5

    new-array v2, v1, [F

    fill-array-data v2, :array_b

    aput-object v2, v0, v6

    new-array v1, v1, [F

    fill-array-data v1, :array_c

    aput-object v1, v0, v7

    sput-object v0, Lde;->v:[[F

    return-void

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x3f000000    # 0.5f
    .end array-data

    :array_6
    .array-data 4
        0x3f800000    # 1.0f
        0x3f000000    # 0.5f
    .end array-data

    :array_7
    .array-data 4
        0x0
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_9
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_a
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_b
    .array-data 4
        -0x40800000    # -1.0f
        0x0
    .end array-data

    :array_c
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;Ldb;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lde;->d:I

    .line 46
    iput v0, p0, Lde;->e:I

    .line 47
    iput v0, p0, Lde;->f:I

    const/4 v1, -0x1

    .line 48
    iput v1, p0, Lde;->g:I

    .line 49
    iput v1, p0, Lde;->h:I

    .line 50
    iput v1, p0, Lde;->i:I

    const/high16 v2, 0x3f000000    # 0.5f

    .line 51
    iput v2, p0, Lde;->j:F

    .line 52
    iput v2, p0, Lde;->k:F

    .line 53
    iput v2, p0, Lde;->a:F

    .line 54
    iput v2, p0, Lde;->b:F

    .line 55
    iput v1, p0, Lde;->l:I

    .line 56
    iput-boolean v0, p0, Lde;->c:Z

    const/4 v1, 0x0

    .line 57
    iput v1, p0, Lde;->m:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 58
    iput v1, p0, Lde;->n:F

    .line 59
    iput-boolean v0, p0, Lde;->o:Z

    const/4 v2, 0x2

    .line 60
    new-array v3, v2, [F

    iput-object v3, p0, Lde;->p:[F

    .line 61
    new-array v2, v2, [I

    iput-object v2, p0, Lde;->q:[I

    const/high16 v2, 0x40800000    # 4.0f

    .line 99
    iput v2, p0, Lde;->w:F

    const v2, 0x3f99999a    # 1.2f

    .line 100
    iput v2, p0, Lde;->x:F

    const/4 v2, 0x1

    .line 101
    iput-boolean v2, p0, Lde;->y:Z

    .line 102
    iput v1, p0, Lde;->z:F

    .line 103
    iput v0, p0, Lde;->A:I

    const/high16 v2, 0x41200000    # 10.0f

    .line 108
    iput v2, p0, Lde;->B:F

    .line 109
    iput v2, p0, Lde;->C:F

    .line 110
    iput v1, p0, Lde;->D:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 111
    iput v1, p0, Lde;->E:F

    .line 112
    iput v1, p0, Lde;->F:F

    .line 113
    iput v0, p0, Lde;->G:I

    .line 114
    iput v0, p0, Lde;->H:I

    .line 119
    iput-object p2, p0, Lde;->t:Ldb;

    .line 120
    invoke-static {p3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lde;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 180
    sget-object v0, Landroidx/constraintlayout/widget/h$b;->OnSwipe:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 181
    invoke-direct {p0, p1}, Lde;->a(Landroid/content/res/TypedArray;)V

    .line 182
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/content/res/TypedArray;)V
    .locals 7

    .line 186
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_14

    .line 188
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 189
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_touchAnchorId:I

    if-ne v3, v4, :cond_0

    .line 190
    iget v4, p0, Lde;->g:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lde;->g:I

    goto/16 :goto_1

    .line 191
    :cond_0
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_touchAnchorSide:I

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    .line 192
    iget v4, p0, Lde;->d:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lde;->d:I

    .line 193
    sget-object v3, Lde;->u:[[F

    iget v4, p0, Lde;->d:I

    aget-object v6, v3, v4

    aget v6, v6, v1

    iput v6, p0, Lde;->k:F

    .line 194
    aget-object v3, v3, v4

    aget v3, v3, v5

    iput v3, p0, Lde;->j:F

    goto/16 :goto_1

    .line 195
    :cond_1
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_dragDirection:I

    if-ne v3, v4, :cond_3

    .line 196
    iget v4, p0, Lde;->e:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lde;->e:I

    .line 197
    iget v3, p0, Lde;->e:I

    sget-object v4, Lde;->v:[[F

    array-length v6, v4

    if-ge v3, v6, :cond_2

    .line 198
    aget-object v6, v4, v3

    aget v6, v6, v1

    iput v6, p0, Lde;->m:F

    .line 199
    aget-object v3, v4, v3

    aget v3, v3, v5

    iput v3, p0, Lde;->n:F

    goto/16 :goto_1

    :cond_2
    const/high16 v3, 0x7fc00000    # Float.NaN

    .line 201
    iput v3, p0, Lde;->n:F

    iput v3, p0, Lde;->m:F

    .line 202
    iput-boolean v5, p0, Lde;->c:Z

    goto/16 :goto_1

    .line 204
    :cond_3
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_maxVelocity:I

    if-ne v3, v4, :cond_4

    .line 205
    iget v4, p0, Lde;->w:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lde;->w:F

    goto/16 :goto_1

    .line 206
    :cond_4
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_maxAcceleration:I

    if-ne v3, v4, :cond_5

    .line 207
    iget v4, p0, Lde;->x:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lde;->x:F

    goto/16 :goto_1

    .line 208
    :cond_5
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_moveWhenScrollAtTop:I

    if-ne v3, v4, :cond_6

    .line 209
    iget-boolean v4, p0, Lde;->y:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lde;->y:Z

    goto/16 :goto_1

    .line 210
    :cond_6
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_dragScale:I

    if-ne v3, v4, :cond_7

    .line 211
    iget v4, p0, Lde;->z:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lde;->z:F

    goto/16 :goto_1

    .line 212
    :cond_7
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_dragThreshold:I

    if-ne v3, v4, :cond_8

    .line 213
    iget v4, p0, Lde;->B:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lde;->B:F

    goto/16 :goto_1

    .line 214
    :cond_8
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_touchRegionId:I

    if-ne v3, v4, :cond_9

    .line 215
    iget v4, p0, Lde;->h:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lde;->h:I

    goto/16 :goto_1

    .line 216
    :cond_9
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_onTouchUp:I

    if-ne v3, v4, :cond_a

    .line 217
    iget v4, p0, Lde;->f:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lde;->f:I

    goto/16 :goto_1

    .line 218
    :cond_a
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_nestedScrollFlags:I

    if-ne v3, v4, :cond_b

    .line 219
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Lde;->A:I

    goto :goto_1

    .line 220
    :cond_b
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_limitBoundsTo:I

    if-ne v3, v4, :cond_c

    .line 221
    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lde;->i:I

    goto :goto_1

    .line 222
    :cond_c
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_rotationCenterId:I

    if-ne v3, v4, :cond_d

    .line 223
    iget v4, p0, Lde;->l:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lde;->l:I

    goto :goto_1

    .line 224
    :cond_d
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_springDamping:I

    if-ne v3, v4, :cond_e

    .line 225
    iget v4, p0, Lde;->C:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lde;->C:F

    goto :goto_1

    .line 226
    :cond_e
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_springMass:I

    if-ne v3, v4, :cond_f

    .line 227
    iget v4, p0, Lde;->D:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lde;->D:F

    goto :goto_1

    .line 228
    :cond_f
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_springStiffness:I

    if-ne v3, v4, :cond_10

    .line 229
    iget v4, p0, Lde;->E:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lde;->E:F

    goto :goto_1

    .line 230
    :cond_10
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_springStopThreshold:I

    if-ne v3, v4, :cond_11

    .line 231
    iget v4, p0, Lde;->F:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lde;->F:F

    goto :goto_1

    .line 232
    :cond_11
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_springBoundary:I

    if-ne v3, v4, :cond_12

    .line 233
    iget v4, p0, Lde;->G:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lde;->G:I

    goto :goto_1

    .line 234
    :cond_12
    sget v4, Landroidx/constraintlayout/widget/h$b;->OnSwipe_autoCompleteMode:I

    if-ne v3, v4, :cond_13

    .line 235
    iget v4, p0, Lde;->H:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lde;->H:I

    :cond_13
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_14
    return-void
.end method


# virtual methods
.method a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    .line 781
    iget v0, p0, Lde;->h:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 784
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 788
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method a()V
    .locals 4

    .line 663
    iget v0, p0, Lde;->g:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 664
    iget-object v1, p0, Lde;->t:Ldb;

    invoke-virtual {v1, v0}, Ldb;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 666
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot find TouchAnchorId @id/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lde;->t:Ldb;

    invoke-virtual {v2}, Ldb;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lde;->g:I

    invoke-static {v2, v3}, Lcl;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TouchResponse"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 669
    :cond_1
    :goto_0
    instance-of v1, v0, Landroidx/core/widget/NestedScrollView;

    if-eqz v1, :cond_2

    .line 670
    check-cast v0, Landroidx/core/widget/NestedScrollView;

    .line 671
    new-instance v1, Lde$1;

    invoke-direct {v1, p0}, Lde$1;-><init>(Lde;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 677
    new-instance v1, Lde$2;

    invoke-direct {v1, p0}, Lde$2;-><init>(Lde;)V

    invoke-virtual {v0, v1}, Landroidx/core/widget/NestedScrollView;->setOnScrollChangeListener(Landroidx/core/widget/NestedScrollView$b;)V

    :cond_2
    return-void
.end method

.method a(FF)V
    .locals 0

    .line 242
    iput p1, p0, Lde;->r:F

    .line 243
    iput p2, p0, Lde;->s:F

    const/4 p1, 0x0

    .line 244
    iput-boolean p1, p0, Lde;->o:Z

    return-void
.end method

.method a(Landroid/view/MotionEvent;Ldb$d;ILdd;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    .line 254
    invoke-interface {v1, v2}, Ldb$d;->a(Landroid/view/MotionEvent;)V

    .line 255
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1a

    const/high16 v5, 0x43b40000    # 360.0f

    const/4 v6, -0x1

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v10, 0x1

    if-eq v3, v10, :cond_d

    const/4 v11, 0x2

    if-eq v3, v11, :cond_0

    goto/16 :goto_a

    .line 264
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    iget v3, v0, Lde;->s:F

    .line 265
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    iget v3, v0, Lde;->r:F

    .line 269
    iget-object v3, v0, Lde;->t:Ldb;

    invoke-virtual {v3}, Ldb;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v9

    .line 270
    iget-object v11, v0, Lde;->t:Ldb;

    invoke-virtual {v11}, Ldb;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v9

    .line 271
    iget v12, v0, Lde;->l:I

    if-eq v12, v6, :cond_1

    .line 272
    iget-object v3, v0, Lde;->t:Ldb;

    invoke-virtual {v3, v12}, Ldb;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 273
    iget-object v11, v0, Lde;->t:Ldb;

    iget-object v12, v0, Lde;->q:[I

    invoke-virtual {v11, v12}, Ldb;->getLocationOnScreen([I)V

    .line 274
    iget-object v11, v0, Lde;->q:[I

    aget v11, v11, v4

    int-to-float v11, v11

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v12

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v13

    add-int/2addr v12, v13

    int-to-float v12, v12

    div-float/2addr v12, v9

    add-float/2addr v11, v12

    .line 275
    iget-object v12, v0, Lde;->q:[I

    aget v12, v12, v10

    int-to-float v12, v12

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    add-int/2addr v13, v3

    int-to-float v3, v13

    div-float/2addr v3, v9

    add-float/2addr v3, v12

    move/from16 v22, v11

    move v11, v3

    move/from16 v3, v22

    goto :goto_0

    .line 276
    :cond_1
    iget v12, v0, Lde;->g:I

    if-eq v12, v6, :cond_3

    .line 277
    iget-object v13, v0, Lde;->t:Ldb;

    invoke-virtual {v13, v12}, Ldb;->a(I)Lcx;

    move-result-object v12

    .line 278
    iget-object v13, v0, Lde;->t:Ldb;

    invoke-virtual {v12}, Lcx;->c()I

    move-result v12

    invoke-virtual {v13, v12}, Ldb;->findViewById(I)Landroid/view/View;

    move-result-object v12

    if-nez v12, :cond_2

    const-string v9, "TouchResponse"

    const-string v12, "could not find view to animate to"

    .line 280
    invoke-static {v9, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 282
    :cond_2
    iget-object v3, v0, Lde;->t:Ldb;

    iget-object v11, v0, Lde;->q:[I

    invoke-virtual {v3, v11}, Ldb;->getLocationOnScreen([I)V

    .line 283
    iget-object v3, v0, Lde;->q:[I

    aget v3, v3, v4

    int-to-float v3, v3

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v12}, Landroid/view/View;->getRight()I

    move-result v13

    add-int/2addr v11, v13

    int-to-float v11, v11

    div-float/2addr v11, v9

    add-float/2addr v3, v11

    .line 284
    iget-object v11, v0, Lde;->q:[I

    aget v11, v11, v10

    int-to-float v11, v11

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v12

    add-int/2addr v13, v12

    int-to-float v12, v13

    div-float/2addr v12, v9

    add-float/2addr v11, v12

    .line 287
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v9

    sub-float/2addr v9, v3

    .line 288
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v12

    sub-float/2addr v12, v11

    .line 290
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v13

    sub-float/2addr v13, v11

    float-to-double v13, v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v15

    sub-float/2addr v15, v3

    move/from16 p4, v9

    float-to-double v8, v15

    invoke-static {v13, v14, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v8

    .line 291
    iget v13, v0, Lde;->s:F

    sub-float/2addr v13, v11

    float-to-double v13, v13

    iget v11, v0, Lde;->r:F

    sub-float/2addr v11, v3

    float-to-double v6, v11

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v6

    sub-double v6, v8, v6

    const-wide v13, 0x4066800000000000L    # 180.0

    mul-double/2addr v6, v13

    const-wide v13, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v6, v13

    double-to-float v6, v6

    const/high16 v7, 0x43a50000    # 330.0f

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4

    sub-float/2addr v6, v5

    goto :goto_1

    :cond_4
    const/high16 v7, -0x3c5b0000    # -330.0f

    cmpg-float v7, v6, v7

    if-gez v7, :cond_5

    add-float/2addr v6, v5

    .line 299
    :cond_5
    :goto_1
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v13, v7

    const-wide v16, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v7, v13, v16

    if-gtz v7, :cond_6

    iget-boolean v7, v0, Lde;->o:Z

    if-eqz v7, :cond_1b

    .line 300
    :cond_6
    iget-object v7, v0, Lde;->t:Ldb;

    invoke-virtual {v7}, Ldb;->getProgress()F

    move-result v7

    .line 301
    iget-boolean v11, v0, Lde;->o:Z

    if-nez v11, :cond_7

    .line 302
    iput-boolean v10, v0, Lde;->o:Z

    .line 303
    iget-object v11, v0, Lde;->t:Ldb;

    invoke-virtual {v11, v7}, Ldb;->setProgress(F)V

    .line 305
    :cond_7
    iget v11, v0, Lde;->g:I

    const/4 v3, -0x1

    if-eq v11, v3, :cond_8

    .line 306
    iget-object v3, v0, Lde;->t:Ldb;

    iget v5, v0, Lde;->k:F

    iget v13, v0, Lde;->j:F

    iget-object v14, v0, Lde;->p:[F

    move-object/from16 v16, v3

    move/from16 v17, v11

    move/from16 v18, v7

    move/from16 v19, v5

    move/from16 v20, v13

    move-object/from16 v21, v14

    invoke-virtual/range {v16 .. v21}, Ldb;->a(IFFF[F)V

    .line 307
    iget-object v3, v0, Lde;->p:[F

    aget v5, v3, v10

    float-to-double v13, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v13

    double-to-float v5, v13

    aput v5, v3, v10

    goto :goto_2

    .line 309
    :cond_8
    iget-object v3, v0, Lde;->p:[F

    aput v5, v3, v10

    .line 311
    :goto_2
    iget v3, v0, Lde;->z:F

    mul-float/2addr v6, v3

    iget-object v3, v0, Lde;->p:[F

    aget v3, v3, v10

    div-float/2addr v6, v3

    add-float/2addr v7, v6

    const/high16 v3, 0x3f800000    # 1.0f

    .line 313
    invoke-static {v7, v3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 314
    iget-object v7, v0, Lde;->t:Ldb;

    invoke-virtual {v7}, Ldb;->getProgress()F

    move-result v7

    cmpl-float v11, v5, v7

    if-eqz v11, :cond_c

    cmpl-float v6, v7, v6

    if-eqz v6, :cond_9

    cmpl-float v3, v7, v3

    if-nez v3, :cond_b

    .line 318
    :cond_9
    iget-object v3, v0, Lde;->t:Ldb;

    if-nez v6, :cond_a

    move v4, v10

    :cond_a
    invoke-virtual {v3, v4}, Ldb;->a(Z)V

    .line 320
    :cond_b
    iget-object v3, v0, Lde;->t:Ldb;

    invoke-virtual {v3, v5}, Ldb;->setProgress(F)V

    const/16 v3, 0x3e8

    .line 321
    invoke-interface {v1, v3}, Ldb$d;->a(I)V

    .line 322
    invoke-interface/range {p2 .. p2}, Ldb$d;->b()F

    move-result v3

    .line 323
    invoke-interface/range {p2 .. p2}, Ldb$d;->c()F

    move-result v1

    float-to-double v4, v1

    float-to-double v6, v3

    .line 324
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    sub-double/2addr v3, v8

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    mul-double/2addr v10, v3

    move/from16 v9, p4

    float-to-double v3, v9

    float-to-double v5, v12

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v3

    div-double/2addr v10, v3

    double-to-float v1, v10

    .line 325
    iget-object v3, v0, Lde;->t:Ldb;

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v1, v4

    iput v1, v3, Ldb;->e:F

    goto :goto_3

    .line 327
    :cond_c
    iget-object v1, v0, Lde;->t:Ldb;

    const/4 v3, 0x0

    iput v3, v1, Ldb;->e:F

    .line 329
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Lde;->r:F

    .line 330
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lde;->s:F

    goto/16 :goto_a

    .line 335
    :cond_d
    iput-boolean v4, v0, Lde;->o:Z

    const/16 v6, 0x10

    .line 336
    invoke-interface {v1, v6}, Ldb$d;->a(I)V

    .line 338
    invoke-interface/range {p2 .. p2}, Ldb$d;->b()F

    move-result v6

    .line 339
    invoke-interface/range {p2 .. p2}, Ldb$d;->c()F

    move-result v1

    .line 340
    iget-object v7, v0, Lde;->t:Ldb;

    invoke-virtual {v7}, Ldb;->getProgress()F

    move-result v7

    .line 342
    iget-object v8, v0, Lde;->t:Ldb;

    invoke-virtual {v8}, Ldb;->getWidth()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v8, v9

    .line 343
    iget-object v11, v0, Lde;->t:Ldb;

    invoke-virtual {v11}, Ldb;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v9

    .line 344
    iget v12, v0, Lde;->l:I

    const/4 v3, -0x1

    if-eq v12, v3, :cond_e

    .line 345
    iget-object v8, v0, Lde;->t:Ldb;

    invoke-virtual {v8, v12}, Ldb;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 346
    iget-object v11, v0, Lde;->t:Ldb;

    iget-object v12, v0, Lde;->q:[I

    invoke-virtual {v11, v12}, Ldb;->getLocationOnScreen([I)V

    .line 347
    iget-object v11, v0, Lde;->q:[I

    aget v4, v11, v4

    int-to-float v4, v4

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v11, v9

    add-float/2addr v4, v11

    .line 348
    iget-object v11, v0, Lde;->q:[I

    aget v11, v11, v10

    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    :goto_4
    add-int/2addr v12, v8

    int-to-float v8, v12

    div-float/2addr v8, v9

    add-float/2addr v11, v8

    goto :goto_5

    .line 349
    :cond_e
    iget v12, v0, Lde;->g:I

    const/4 v3, -0x1

    if-eq v12, v3, :cond_f

    .line 350
    iget-object v8, v0, Lde;->t:Ldb;

    invoke-virtual {v8, v12}, Ldb;->a(I)Lcx;

    move-result-object v8

    .line 351
    iget-object v11, v0, Lde;->t:Ldb;

    invoke-virtual {v8}, Lcx;->c()I

    move-result v8

    invoke-virtual {v11, v8}, Ldb;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 352
    iget-object v11, v0, Lde;->t:Ldb;

    iget-object v12, v0, Lde;->q:[I

    invoke-virtual {v11, v12}, Ldb;->getLocationOnScreen([I)V

    .line 353
    iget-object v11, v0, Lde;->q:[I

    aget v4, v11, v4

    int-to-float v4, v4

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v12

    add-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v11, v9

    add-float/2addr v4, v11

    .line 354
    iget-object v11, v0, Lde;->q:[I

    aget v11, v11, v10

    int-to-float v11, v11

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v12

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    goto :goto_4

    :cond_f
    move v4, v8

    .line 356
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v8

    sub-float/2addr v8, v4

    .line 357
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    sub-float/2addr v2, v11

    float-to-double v11, v2

    float-to-double v13, v8

    .line 358
    invoke-static {v11, v12, v13, v14}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v11

    .line 360
    iget v4, v0, Lde;->g:I

    const/4 v3, -0x1

    if-eq v4, v3, :cond_10

    .line 361
    iget-object v3, v0, Lde;->t:Ldb;

    iget v5, v0, Lde;->k:F

    iget v9, v0, Lde;->j:F

    iget-object v13, v0, Lde;->p:[F

    move-object/from16 v16, v3

    move/from16 v17, v4

    move/from16 v18, v7

    move/from16 v19, v5

    move/from16 v20, v9

    move-object/from16 v21, v13

    invoke-virtual/range {v16 .. v21}, Ldb;->a(IFFF[F)V

    .line 362
    iget-object v3, v0, Lde;->p:[F

    aget v4, v3, v10

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    double-to-float v4, v4

    aput v4, v3, v10

    goto :goto_6

    .line 364
    :cond_10
    iget-object v3, v0, Lde;->p:[F

    aput v5, v3, v10

    :goto_6
    add-float/2addr v1, v2

    float-to-double v1, v1

    add-float/2addr v6, v8

    float-to-double v3, v6

    .line 366
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    sub-double/2addr v1, v11

    double-to-float v1, v1

    const/high16 v2, 0x427a0000    # 62.5f

    mul-float/2addr v1, v2

    .line 370
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    const/high16 v3, 0x40400000    # 3.0f

    if-nez v2, :cond_11

    mul-float v2, v1, v3

    .line 371
    iget v4, v0, Lde;->z:F

    mul-float/2addr v2, v4

    iget-object v4, v0, Lde;->p:[F

    aget v4, v4, v10

    div-float/2addr v2, v4

    add-float/2addr v2, v7

    goto :goto_7

    :cond_11
    move v2, v7

    :goto_7
    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_18

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v5, v2, v4

    if-eqz v5, :cond_18

    .line 373
    iget v4, v0, Lde;->f:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_18

    .line 374
    iget v4, v0, Lde;->z:F

    mul-float/2addr v1, v4

    iget-object v4, v0, Lde;->p:[F

    aget v4, v4, v10

    div-float/2addr v1, v4

    float-to-double v4, v2

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    cmpg-double v2, v4, v8

    if-gez v2, :cond_12

    const/4 v2, 0x0

    goto :goto_8

    :cond_12
    const/high16 v2, 0x3f800000    # 1.0f

    .line 377
    :goto_8
    iget v4, v0, Lde;->f:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_14

    add-float v2, v7, v1

    const/4 v4, 0x0

    cmpg-float v2, v2, v4

    if-gez v2, :cond_13

    .line 379
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    :cond_13
    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_9

    :cond_14
    move v8, v2

    .line 383
    :goto_9
    iget v2, v0, Lde;->f:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_16

    add-float v2, v7, v1

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_15

    .line 385
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v1, v1

    :cond_15
    const/4 v8, 0x0

    .line 389
    :cond_16
    iget-object v2, v0, Lde;->t:Ldb;

    iget v4, v0, Lde;->f:I

    mul-float/2addr v1, v3

    invoke-virtual {v2, v4, v8, v1}, Ldb;->a(IFF)V

    const/4 v1, 0x0

    cmpl-float v1, v1, v7

    if-gez v1, :cond_17

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v7

    if-gtz v1, :cond_1b

    .line 391
    :cond_17
    iget-object v1, v0, Lde;->t:Ldb;

    sget-object v2, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {v1, v2}, Ldb;->setState(Ldb$h;)V

    goto :goto_a

    :cond_18
    const/4 v1, 0x0

    cmpl-float v1, v1, v2

    if-gez v1, :cond_19

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1b

    .line 394
    :cond_19
    iget-object v1, v0, Lde;->t:Ldb;

    sget-object v2, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {v1, v2}, Ldb;->setState(Ldb$h;)V

    goto :goto_a

    .line 258
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Lde;->r:F

    .line 259
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lde;->s:F

    .line 261
    iput-boolean v4, v0, Lde;->o:Z

    :cond_1b
    :goto_a
    return-void
.end method

.method public a(Z)V
    .locals 7

    const/4 v0, 0x6

    const/4 v1, 0x3

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x5

    const/4 v5, 0x2

    if-eqz p1, :cond_0

    .line 159
    sget-object p1, Lde;->v:[[F

    aget-object v1, p1, v1

    aput-object v1, p1, v2

    .line 160
    aget-object v1, p1, v5

    aput-object v1, p1, v4

    .line 161
    sget-object p1, Lde;->u:[[F

    aget-object v1, p1, v5

    aput-object v1, p1, v4

    .line 162
    aget-object v1, p1, v3

    aput-object v1, p1, v0

    goto :goto_0

    .line 164
    :cond_0
    sget-object p1, Lde;->v:[[F

    aget-object v6, p1, v5

    aput-object v6, p1, v2

    .line 165
    aget-object v1, p1, v1

    aput-object v1, p1, v4

    .line 166
    sget-object p1, Lde;->u:[[F

    aget-object v1, p1, v3

    aput-object v1, p1, v4

    .line 167
    aget-object v1, p1, v5

    aput-object v1, p1, v0

    .line 170
    :goto_0
    sget-object p1, Lde;->u:[[F

    iget v0, p0, Lde;->d:I

    aget-object v1, p1, v0

    const/4 v2, 0x0

    aget v1, v1, v2

    iput v1, p0, Lde;->k:F

    .line 171
    aget-object p1, p1, v0

    aget p1, p1, v3

    iput p1, p0, Lde;->j:F

    .line 172
    iget p1, p0, Lde;->e:I

    sget-object v0, Lde;->v:[[F

    array-length v1, v0

    if-lt p1, v1, :cond_1

    return-void

    .line 175
    :cond_1
    aget-object v1, v0, p1

    aget v1, v1, v2

    iput v1, p0, Lde;->m:F

    .line 176
    aget-object p1, v0, p1

    aget p1, p1, v3

    iput p1, p0, Lde;->n:F

    return-void
.end method

.method b()F
    .locals 1

    .line 737
    iget v0, p0, Lde;->x:F

    return v0
.end method

.method b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    .line 805
    iget v0, p0, Lde;->i:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 808
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    .line 812
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, v0, v1, v2, p1}, Landroid/graphics/RectF;->set(FFFF)V

    return-object p2
.end method

.method b(FF)V
    .locals 0

    .line 576
    iput p1, p0, Lde;->r:F

    .line 577
    iput p2, p0, Lde;->s:F

    return-void
.end method

.method b(Landroid/view/MotionEvent;Ldb$d;ILdd;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 412
    iget-boolean v2, v0, Lde;->c:Z

    if-eqz v2, :cond_0

    .line 413
    invoke-virtual/range {p0 .. p4}, Lde;->a(Landroid/view/MotionEvent;Ldb$d;ILdd;)V

    return-void

    :cond_0
    move-object/from16 v2, p1

    .line 416
    invoke-interface {v1, v2}, Ldb$d;->a(Landroid/view/MotionEvent;)V

    .line 417
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1a

    const/4 v6, 0x6

    const/4 v7, -0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eq v3, v10, :cond_e

    const/4 v12, 0x2

    if-eq v3, v12, :cond_1

    goto/16 :goto_9

    .line 424
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v12, v0, Lde;->s:F

    sub-float/2addr v3, v12

    .line 425
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v12

    iget v13, v0, Lde;->r:F

    sub-float/2addr v12, v13

    .line 426
    iget v13, v0, Lde;->m:F

    mul-float/2addr v13, v12

    iget v14, v0, Lde;->n:F

    mul-float/2addr v14, v3

    add-float/2addr v13, v14

    .line 431
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v13

    iget v14, v0, Lde;->B:F

    cmpl-float v13, v13, v14

    if-gtz v13, :cond_2

    iget-boolean v13, v0, Lde;->o:Z

    if-eqz v13, :cond_1b

    .line 435
    :cond_2
    iget-object v13, v0, Lde;->t:Ldb;

    invoke-virtual {v13}, Ldb;->getProgress()F

    move-result v13

    .line 436
    iget-boolean v14, v0, Lde;->o:Z

    if-nez v14, :cond_3

    .line 437
    iput-boolean v10, v0, Lde;->o:Z

    .line 438
    iget-object v14, v0, Lde;->t:Ldb;

    invoke-virtual {v14, v13}, Ldb;->setProgress(F)V

    .line 443
    :cond_3
    iget v15, v0, Lde;->g:I

    if-eq v15, v7, :cond_4

    .line 445
    iget-object v14, v0, Lde;->t:Ldb;

    iget v7, v0, Lde;->k:F

    iget v8, v0, Lde;->j:F

    iget-object v5, v0, Lde;->p:[F

    move/from16 v16, v13

    move/from16 v17, v7

    move/from16 v18, v8

    move-object/from16 v19, v5

    invoke-virtual/range {v14 .. v19}, Ldb;->a(IFFF[F)V

    goto :goto_0

    .line 453
    :cond_4
    iget-object v5, v0, Lde;->t:Ldb;

    invoke-virtual {v5}, Ldb;->getWidth()I

    move-result v5

    iget-object v7, v0, Lde;->t:Ldb;

    invoke-virtual {v7}, Ldb;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    .line 454
    iget-object v7, v0, Lde;->p:[F

    iget v8, v0, Lde;->n:F

    mul-float/2addr v8, v5

    aput v8, v7, v10

    .line 455
    iget v8, v0, Lde;->m:F

    mul-float/2addr v5, v8

    aput v5, v7, v4

    .line 458
    :goto_0
    iget v5, v0, Lde;->m:F

    iget-object v7, v0, Lde;->p:[F

    aget v8, v7, v4

    mul-float/2addr v5, v8

    iget v8, v0, Lde;->n:F

    aget v7, v7, v10

    mul-float/2addr v8, v7

    add-float/2addr v5, v8

    .line 466
    iget v7, v0, Lde;->z:F

    mul-float/2addr v5, v7

    .line 468
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    float-to-double v7, v5

    const-wide v14, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v5, v7, v14

    const v7, 0x3c23d70a    # 0.01f

    if-gez v5, :cond_5

    .line 469
    iget-object v5, v0, Lde;->p:[F

    aput v7, v5, v4

    .line 470
    aput v7, v5, v10

    .line 474
    :cond_5
    iget v5, v0, Lde;->m:F

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_6

    .line 475
    iget-object v3, v0, Lde;->p:[F

    aget v3, v3, v4

    div-float/2addr v12, v3

    goto :goto_1

    .line 477
    :cond_6
    iget-object v5, v0, Lde;->p:[F

    aget v5, v5, v10

    div-float v12, v3, v5

    :goto_1
    add-float/2addr v13, v12

    .line 483
    invoke-static {v13, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 485
    iget v5, v0, Lde;->f:I

    if-ne v5, v6, :cond_7

    .line 486
    invoke-static {v3, v7}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 488
    :cond_7
    iget v5, v0, Lde;->f:I

    const/4 v6, 0x7

    if-ne v5, v6, :cond_8

    const v5, 0x3f7d70a4    # 0.99f

    .line 489
    invoke-static {v3, v5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 492
    :cond_8
    iget-object v5, v0, Lde;->t:Ldb;

    invoke-virtual {v5}, Ldb;->getProgress()F

    move-result v5

    cmpl-float v6, v3, v5

    if-eqz v6, :cond_d

    cmpl-float v6, v5, v11

    if-eqz v6, :cond_9

    cmpl-float v5, v5, v9

    if-nez v5, :cond_b

    .line 495
    :cond_9
    iget-object v5, v0, Lde;->t:Ldb;

    if-nez v6, :cond_a

    move v6, v10

    goto :goto_2

    :cond_a
    move v6, v4

    :goto_2
    invoke-virtual {v5, v6}, Ldb;->a(Z)V

    .line 497
    :cond_b
    iget-object v5, v0, Lde;->t:Ldb;

    invoke-virtual {v5, v3}, Ldb;->setProgress(F)V

    const/16 v3, 0x3e8

    .line 501
    invoke-interface {v1, v3}, Ldb$d;->a(I)V

    .line 502
    invoke-interface/range {p2 .. p2}, Ldb$d;->b()F

    move-result v3

    .line 503
    invoke-interface/range {p2 .. p2}, Ldb$d;->c()F

    move-result v1

    .line 504
    iget v5, v0, Lde;->m:F

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_c

    iget-object v1, v0, Lde;->p:[F

    aget v1, v1, v4

    div-float/2addr v3, v1

    goto :goto_3

    :cond_c
    iget-object v3, v0, Lde;->p:[F

    aget v3, v3, v10

    div-float v3, v1, v3

    .line 505
    :goto_3
    iget-object v1, v0, Lde;->t:Ldb;

    iput v3, v1, Ldb;->e:F

    goto :goto_4

    .line 507
    :cond_d
    iget-object v1, v0, Lde;->t:Ldb;

    iput v11, v1, Ldb;->e:F

    .line 509
    :goto_4
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Lde;->r:F

    .line 510
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lde;->s:F

    goto/16 :goto_9

    .line 514
    :cond_e
    iput-boolean v4, v0, Lde;->o:Z

    const/16 v2, 0x3e8

    .line 515
    invoke-interface {v1, v2}, Ldb$d;->a(I)V

    .line 516
    invoke-interface/range {p2 .. p2}, Ldb$d;->b()F

    move-result v2

    .line 517
    invoke-interface/range {p2 .. p2}, Ldb$d;->c()F

    move-result v1

    .line 518
    iget-object v3, v0, Lde;->t:Ldb;

    invoke-virtual {v3}, Ldb;->getProgress()F

    move-result v3

    .line 524
    iget v13, v0, Lde;->g:I

    if-eq v13, v7, :cond_f

    .line 525
    iget-object v12, v0, Lde;->t:Ldb;

    iget v15, v0, Lde;->k:F

    iget v5, v0, Lde;->j:F

    iget-object v7, v0, Lde;->p:[F

    move v14, v3

    move/from16 v16, v5

    move-object/from16 v17, v7

    invoke-virtual/range {v12 .. v17}, Ldb;->a(IFFF[F)V

    goto :goto_5

    .line 527
    :cond_f
    iget-object v5, v0, Lde;->t:Ldb;

    invoke-virtual {v5}, Ldb;->getWidth()I

    move-result v5

    iget-object v7, v0, Lde;->t:Ldb;

    invoke-virtual {v7}, Ldb;->getHeight()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    int-to-float v5, v5

    .line 528
    iget-object v7, v0, Lde;->p:[F

    iget v8, v0, Lde;->n:F

    mul-float/2addr v8, v5

    aput v8, v7, v10

    .line 529
    iget v8, v0, Lde;->m:F

    mul-float/2addr v5, v8

    aput v5, v7, v4

    .line 531
    :goto_5
    iget v5, v0, Lde;->m:F

    iget-object v7, v0, Lde;->p:[F

    aget v8, v7, v4

    iget v8, v0, Lde;->n:F

    aget v8, v7, v10

    cmpl-float v5, v5, v11

    if-eqz v5, :cond_10

    .line 534
    aget v1, v7, v4

    div-float/2addr v2, v1

    goto :goto_6

    .line 536
    :cond_10
    aget v2, v7, v10

    div-float v2, v1, v2

    .line 544
    :goto_6
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_11

    const/high16 v1, 0x40400000    # 3.0f

    div-float v1, v2, v1

    add-float/2addr v1, v3

    goto :goto_7

    :cond_11
    move v1, v3

    :goto_7
    cmpl-float v4, v1, v11

    if-eqz v4, :cond_18

    cmpl-float v4, v1, v9

    if-eqz v4, :cond_18

    .line 547
    iget v4, v0, Lde;->f:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_18

    float-to-double v4, v1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v4, v7

    if-gez v1, :cond_12

    move v1, v11

    goto :goto_8

    :cond_12
    move v1, v9

    .line 550
    :goto_8
    iget v4, v0, Lde;->f:I

    if-ne v4, v6, :cond_14

    add-float v1, v3, v2

    cmpg-float v1, v1, v11

    if-gez v1, :cond_13

    .line 552
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    move v2, v1

    :cond_13
    move v1, v9

    .line 556
    :cond_14
    iget v4, v0, Lde;->f:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_16

    add-float v1, v3, v2

    cmpl-float v1, v1, v9

    if-lez v1, :cond_15

    .line 558
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    neg-float v1, v1

    move v2, v1

    :cond_15
    move v1, v11

    .line 563
    :cond_16
    iget-object v4, v0, Lde;->t:Ldb;

    iget v5, v0, Lde;->f:I

    invoke-virtual {v4, v5, v1, v2}, Ldb;->a(IFF)V

    cmpl-float v1, v11, v3

    if-gez v1, :cond_17

    cmpg-float v1, v9, v3

    if-gtz v1, :cond_1b

    .line 565
    :cond_17
    iget-object v1, v0, Lde;->t:Ldb;

    sget-object v2, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {v1, v2}, Ldb;->setState(Ldb$h;)V

    goto :goto_9

    :cond_18
    cmpl-float v2, v11, v1

    if-gez v2, :cond_19

    cmpg-float v1, v9, v1

    if-gtz v1, :cond_1b

    .line 568
    :cond_19
    iget-object v1, v0, Lde;->t:Ldb;

    sget-object v2, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {v1, v2}, Ldb;->setState(Ldb$h;)V

    goto :goto_9

    .line 419
    :cond_1a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, v0, Lde;->r:F

    .line 420
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, v0, Lde;->s:F

    .line 421
    iput-boolean v4, v0, Lde;->o:Z

    :cond_1b
    :goto_9
    return-void
.end method

.method public c()F
    .locals 1

    .line 747
    iget v0, p0, Lde;->w:F

    return v0
.end method

.method c(FF)F
    .locals 7

    .line 588
    iget-object v0, p0, Lde;->t:Ldb;

    invoke-virtual {v0}, Ldb;->getProgress()F

    move-result v3

    .line 589
    iget-object v1, p0, Lde;->t:Ldb;

    iget v2, p0, Lde;->g:I

    iget v4, p0, Lde;->k:F

    iget v5, p0, Lde;->j:F

    iget-object v6, p0, Lde;->p:[F

    invoke-virtual/range {v1 .. v6}, Ldb;->a(IFFF[F)V

    .line 591
    iget v0, p0, Lde;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const v2, 0x33d6bf95    # 1.0E-7f

    if-eqz v0, :cond_1

    .line 592
    iget-object p2, p0, Lde;->p:[F

    const/4 v0, 0x0

    aget v3, p2, v0

    cmpl-float v1, v3, v1

    if-nez v1, :cond_0

    .line 593
    aput v2, p2, v0

    .line 595
    :cond_0
    iget p2, p0, Lde;->m:F

    mul-float/2addr p1, p2

    iget-object p2, p0, Lde;->p:[F

    aget p2, p2, v0

    div-float/2addr p1, p2

    goto :goto_0

    .line 597
    :cond_1
    iget-object p1, p0, Lde;->p:[F

    const/4 v0, 0x1

    aget v3, p1, v0

    cmpl-float v1, v3, v1

    if-nez v1, :cond_2

    .line 598
    aput v2, p1, v0

    .line 600
    :cond_2
    iget p1, p0, Lde;->n:F

    mul-float/2addr p2, p1

    iget-object p1, p0, Lde;->p:[F

    aget p1, p1, v0

    div-float p1, p2, p1

    :goto_0
    return p1
.end method

.method d(FF)V
    .locals 9

    const/4 v0, 0x0

    .line 606
    iput-boolean v0, p0, Lde;->o:Z

    .line 608
    iget-object v1, p0, Lde;->t:Ldb;

    invoke-virtual {v1}, Ldb;->getProgress()F

    move-result v1

    .line 609
    iget-object v2, p0, Lde;->t:Ldb;

    iget v3, p0, Lde;->g:I

    iget v5, p0, Lde;->k:F

    iget v6, p0, Lde;->j:F

    iget-object v7, p0, Lde;->p:[F

    move v4, v1

    invoke-virtual/range {v2 .. v7}, Ldb;->a(IFFF[F)V

    .line 610
    iget v2, p0, Lde;->m:F

    iget-object v3, p0, Lde;->p:[F

    aget v4, v3, v0

    iget v4, p0, Lde;->n:F

    const/4 v5, 0x1

    aget v6, v3, v5

    const/4 v6, 0x0

    cmpl-float v7, v2, v6

    if-eqz v7, :cond_0

    mul-float/2addr p1, v2

    .line 613
    aget p2, v3, v0

    div-float/2addr p1, p2

    goto :goto_0

    :cond_0
    mul-float/2addr p2, v4

    .line 615
    aget p1, v3, v5

    div-float p1, p2, p1

    .line 617
    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p2

    if-nez p2, :cond_1

    const/high16 p2, 0x40400000    # 3.0f

    div-float p2, p1, p2

    add-float/2addr v1, p2

    :cond_1
    cmpl-float p2, v1, v6

    if-eqz p2, :cond_5

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float v2, v1, p2

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v0

    .line 620
    :goto_1
    iget v3, p0, Lde;->f:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_3

    move v0, v5

    :cond_3
    and-int/2addr v0, v2

    if-eqz v0, :cond_5

    .line 621
    iget-object v0, p0, Lde;->t:Ldb;

    iget v2, p0, Lde;->f:I

    float-to-double v3, v1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    cmpg-double v1, v3, v7

    if-gez v1, :cond_4

    move p2, v6

    :cond_4
    invoke-virtual {v0, v2, p2, p1}, Ldb;->a(IFF)V

    :cond_5
    return-void
.end method

.method d()Z
    .locals 1

    .line 751
    iget-boolean v0, p0, Lde;->y:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 760
    iget v0, p0, Lde;->H:I

    return v0
.end method

.method e(FF)V
    .locals 8

    .line 627
    iget v0, p0, Lde;->m:F

    iget v0, p0, Lde;->n:F

    .line 629
    iget-object v0, p0, Lde;->t:Ldb;

    invoke-virtual {v0}, Ldb;->getProgress()F

    move-result v0

    .line 630
    iget-boolean v1, p0, Lde;->o:Z

    const/4 v7, 0x1

    if-nez v1, :cond_0

    .line 631
    iput-boolean v7, p0, Lde;->o:Z

    .line 632
    iget-object v1, p0, Lde;->t:Ldb;

    invoke-virtual {v1, v0}, Ldb;->setProgress(F)V

    .line 634
    :cond_0
    iget-object v1, p0, Lde;->t:Ldb;

    iget v2, p0, Lde;->g:I

    iget v4, p0, Lde;->k:F

    iget v5, p0, Lde;->j:F

    iget-object v6, p0, Lde;->p:[F

    move v3, v0

    invoke-virtual/range {v1 .. v6}, Ldb;->a(IFFF[F)V

    .line 635
    iget v1, p0, Lde;->m:F

    iget-object v2, p0, Lde;->p:[F

    const/4 v3, 0x0

    aget v4, v2, v3

    mul-float/2addr v1, v4

    iget v4, p0, Lde;->n:F

    aget v2, v2, v7

    mul-float/2addr v4, v2

    add-float/2addr v1, v4

    .line 637
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v1, v1, v4

    if-gez v1, :cond_1

    .line 638
    iget-object v1, p0, Lde;->p:[F

    const v2, 0x3c23d70a    # 0.01f

    aput v2, v1, v3

    .line 639
    aput v2, v1, v7

    .line 643
    :cond_1
    iget v1, p0, Lde;->m:F

    const/4 v2, 0x0

    cmpl-float v4, v1, v2

    if-eqz v4, :cond_2

    mul-float/2addr p1, v1

    .line 644
    iget-object p2, p0, Lde;->p:[F

    aget p2, p2, v3

    div-float/2addr p1, p2

    goto :goto_0

    .line 646
    :cond_2
    iget p1, p0, Lde;->n:F

    mul-float/2addr p2, p1

    iget-object p1, p0, Lde;->p:[F

    aget p1, p1, v7

    div-float p1, p2, p1

    :goto_0
    add-float/2addr v0, p1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 648
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p1, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 650
    iget-object p2, p0, Lde;->t:Ldb;

    invoke-virtual {p2}, Ldb;->getProgress()F

    move-result p2

    cmpl-float p2, p1, p2

    if-eqz p2, :cond_3

    .line 651
    iget-object p2, p0, Lde;->t:Ldb;

    invoke-virtual {p2, p1}, Ldb;->setProgress(F)V

    :cond_3
    return-void
.end method

.method f(FF)F
    .locals 1

    .line 821
    iget v0, p0, Lde;->m:F

    mul-float/2addr p1, v0

    iget v0, p0, Lde;->n:F

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    return p1
.end method

.method f()I
    .locals 1

    .line 793
    iget v0, p0, Lde;->h:I

    return v0
.end method

.method public g()I
    .locals 1

    .line 834
    iget v0, p0, Lde;->A:I

    return v0
.end method

.method public h()F
    .locals 1

    .line 847
    iget v0, p0, Lde;->E:F

    return v0
.end method

.method public i()F
    .locals 1

    .line 856
    iget v0, p0, Lde;->D:F

    return v0
.end method

.method public j()F
    .locals 1

    .line 865
    iget v0, p0, Lde;->C:F

    return v0
.end method

.method public k()F
    .locals 1

    .line 873
    iget v0, p0, Lde;->F:F

    return v0
.end method

.method public l()I
    .locals 1

    .line 885
    iget v0, p0, Lde;->G:I

    return v0
.end method

.method m()Z
    .locals 1

    .line 889
    iget-boolean v0, p0, Lde;->o:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 825
    iget v0, p0, Lde;->m:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rotation"

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lde;->m:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lde;->n:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
