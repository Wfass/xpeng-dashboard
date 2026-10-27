.class public Landroidx/constraintlayout/widget/d;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/widget/d$a;,
        Landroidx/constraintlayout/widget/d$c;,
        Landroidx/constraintlayout/widget/d$d;,
        Landroidx/constraintlayout/widget/d$e;,
        Landroidx/constraintlayout/widget/d$b;
    }
.end annotation


# static fields
.field private static final g:[I

.field private static i:Landroid/util/SparseIntArray;

.field private static j:Landroid/util/SparseIntArray;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field private d:Z

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/widget/a;",
            ">;"
        }
    .end annotation
.end field

.field private f:Z

.field private h:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/constraintlayout/widget/d$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 16

    const/4 v0, 0x3

    .line 241
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/constraintlayout/widget/d;->g:[I

    .line 246
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    .line 247
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    .line 354
    sget-object v1, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintLeft_toLeftOf:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 355
    sget-object v1, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintLeft_toRightOf:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 356
    sget-object v1, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintRight_toLeftOf:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 357
    sget-object v1, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintRight_toRightOf:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 358
    sget-object v1, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintTop_toTopOf:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 359
    sget-object v1, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintTop_toBottomOf:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 360
    sget-object v1, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintBottom_toTopOf:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 361
    sget-object v1, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v2, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 362
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 363
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintBaseline_toTopOf:I

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 364
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintBaseline_toBottomOf:I

    const/16 v2, 0x5c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 366
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 367
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_editor_absoluteY:I

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 368
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintGuide_begin:I

    const/16 v4, 0x11

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 369
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintGuide_end:I

    const/16 v4, 0x12

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 370
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintGuide_percent:I

    const/16 v4, 0x13

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 371
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_guidelineUseRtl:I

    const/16 v4, 0x63

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 373
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_orientation:I

    const/16 v4, 0x1b

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 374
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintStart_toEndOf:I

    const/16 v5, 0x20

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 375
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintStart_toStartOf:I

    const/16 v5, 0x21

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 376
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintEnd_toStartOf:I

    const/16 v5, 0xa

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 377
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintEnd_toEndOf:I

    const/16 v5, 0x9

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 378
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_goneMarginLeft:I

    const/16 v5, 0xd

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 379
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_goneMarginTop:I

    const/16 v6, 0x10

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 380
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_goneMarginRight:I

    const/16 v7, 0xe

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 381
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_goneMarginBottom:I

    const/16 v8, 0xb

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 382
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_goneMarginStart:I

    const/16 v9, 0xf

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 383
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_goneMarginEnd:I

    const/16 v10, 0xc

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 384
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintVertical_weight:I

    const/16 v11, 0x28

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 385
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintHorizontal_weight:I

    const/16 v12, 0x27

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 386
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintHorizontal_chainStyle:I

    const/16 v13, 0x29

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 387
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintVertical_chainStyle:I

    const/16 v14, 0x2a

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 389
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintHorizontal_bias:I

    const/16 v15, 0x14

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 390
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintVertical_bias:I

    const/16 v15, 0x25

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 391
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintDimensionRatio:I

    const/4 v15, 0x5

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 392
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintLeft_creator:I

    const/16 v15, 0x57

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 393
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 394
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 395
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 396
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 397
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_layout_marginLeft:I

    const/16 v15, 0x18

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 398
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_layout_marginRight:I

    const/16 v15, 0x1c

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 399
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_layout_marginStart:I

    const/16 v15, 0x1f

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 400
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_layout_marginEnd:I

    const/16 v15, 0x8

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 401
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_layout_marginTop:I

    const/16 v15, 0x22

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 402
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_layout_marginBottom:I

    const/4 v15, 0x2

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 403
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_layout_width:I

    const/16 v15, 0x17

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 404
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_layout_height:I

    const/16 v15, 0x15

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 405
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintWidth:I

    const/16 v15, 0x5f

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 406
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintHeight:I

    const/16 v15, 0x60

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 407
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_visibility:I

    const/16 v15, 0x16

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 408
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_alpha:I

    const/16 v15, 0x2b

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 409
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_elevation:I

    const/16 v15, 0x2c

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 410
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_rotationX:I

    const/16 v15, 0x2d

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 411
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_rotationY:I

    const/16 v15, 0x2e

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 412
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_rotation:I

    const/16 v15, 0x3c

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 413
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_scaleX:I

    const/16 v15, 0x2f

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 414
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_scaleY:I

    const/16 v15, 0x30

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 415
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_transformPivotX:I

    const/16 v15, 0x31

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 416
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_transformPivotY:I

    const/16 v15, 0x32

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 417
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_translationX:I

    const/16 v15, 0x33

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 418
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_translationY:I

    const/16 v15, 0x34

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 419
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_translationZ:I

    const/16 v15, 0x35

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 420
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintWidth_default:I

    const/16 v15, 0x36

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 421
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintHeight_default:I

    const/16 v15, 0x37

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 422
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintWidth_max:I

    const/16 v15, 0x38

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 423
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintHeight_max:I

    const/16 v15, 0x39

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 424
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintWidth_min:I

    const/16 v15, 0x3a

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 425
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintHeight_min:I

    const/16 v15, 0x3b

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 426
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintCircle:I

    const/16 v15, 0x3d

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 427
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintCircleRadius:I

    const/16 v15, 0x3e

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 428
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintCircleAngle:I

    const/16 v15, 0x3f

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 429
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_animateRelativeTo:I

    const/16 v15, 0x40

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 430
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_transitionEasing:I

    const/16 v15, 0x41

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 431
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_drawPath:I

    const/16 v15, 0x42

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 432
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_transitionPathRotate:I

    const/16 v15, 0x43

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 433
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_motionStagger:I

    const/16 v15, 0x4f

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 434
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_android_id:I

    const/16 v15, 0x26

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 435
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_motionProgress:I

    const/16 v15, 0x44

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 436
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintWidth_percent:I

    const/16 v15, 0x45

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 437
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintHeight_percent:I

    const/16 v15, 0x46

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 438
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_wrapBehaviorInParent:I

    const/16 v15, 0x61

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 440
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_chainUseRtl:I

    const/16 v15, 0x47

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 441
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_barrierDirection:I

    const/16 v15, 0x48

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 442
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_barrierMargin:I

    const/16 v15, 0x49

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 443
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_constraint_referenced_ids:I

    const/16 v15, 0x4a

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 444
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_barrierAllowsGoneWidgets:I

    const/16 v15, 0x4b

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 445
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_pathMotionArc:I

    const/16 v15, 0x4c

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 446
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constraintTag:I

    const/16 v15, 0x4d

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 447
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_visibilityMode:I

    const/16 v15, 0x4e

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 448
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constrainedWidth:I

    const/16 v15, 0x50

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 449
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_layout_constrainedHeight:I

    const/16 v15, 0x51

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 450
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_polarRelativeTo:I

    const/16 v15, 0x52

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 451
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_transformPivotTarget:I

    const/16 v15, 0x53

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 452
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_quantizeMotionSteps:I

    const/16 v15, 0x54

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 453
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_quantizeMotionPhase:I

    const/16 v15, 0x55

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 454
    sget-object v0, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Constraint_quantizeMotionInterpolator:I

    const/16 v15, 0x56

    invoke-virtual {v0, v1, v15}, Landroid/util/SparseIntArray;->append(II)V

    .line 477
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_editor_absoluteY:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 478
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_editor_absoluteY:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 479
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_orientation:I

    invoke-virtual {v0, v1, v4}, Landroid/util/SparseIntArray;->append(II)V

    .line 480
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_goneMarginLeft:I

    invoke-virtual {v0, v1, v5}, Landroid/util/SparseIntArray;->append(II)V

    .line 481
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_goneMarginTop:I

    invoke-virtual {v0, v1, v6}, Landroid/util/SparseIntArray;->append(II)V

    .line 482
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_goneMarginRight:I

    invoke-virtual {v0, v1, v7}, Landroid/util/SparseIntArray;->append(II)V

    .line 483
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_goneMarginBottom:I

    invoke-virtual {v0, v1, v8}, Landroid/util/SparseIntArray;->append(II)V

    .line 484
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_goneMarginStart:I

    invoke-virtual {v0, v1, v9}, Landroid/util/SparseIntArray;->append(II)V

    .line 485
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_goneMarginEnd:I

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseIntArray;->append(II)V

    .line 486
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintVertical_weight:I

    invoke-virtual {v0, v1, v11}, Landroid/util/SparseIntArray;->append(II)V

    .line 487
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintHorizontal_weight:I

    invoke-virtual {v0, v1, v12}, Landroid/util/SparseIntArray;->append(II)V

    .line 488
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintHorizontal_chainStyle:I

    invoke-virtual {v0, v1, v13}, Landroid/util/SparseIntArray;->append(II)V

    .line 489
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintVertical_chainStyle:I

    invoke-virtual {v0, v1, v14}, Landroid/util/SparseIntArray;->append(II)V

    .line 491
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 492
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 493
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 494
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintLeft_creator:I

    const/16 v2, 0x57

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 495
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 496
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 497
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 498
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 499
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 500
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 501
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 502
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 503
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 504
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 505
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 506
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 507
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintWidth:I

    const/16 v2, 0x5f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 508
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintHeight:I

    const/16 v2, 0x60

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 509
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 510
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 511
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 512
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 513
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 514
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 515
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 516
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 517
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 518
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 519
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 520
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 521
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 522
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 523
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 524
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 525
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 526
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 527
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 528
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 529
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 530
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_animateRelativeTo:I

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 531
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_transitionEasing:I

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 532
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_drawPath:I

    const/16 v2, 0x42

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 533
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_transitionPathRotate:I

    const/16 v2, 0x43

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 534
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_motionStagger:I

    const/16 v2, 0x4f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 535
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 536
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_motionTarget:I

    const/16 v2, 0x62

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 538
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_motionProgress:I

    const/16 v2, 0x44

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 539
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 540
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 542
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 543
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 544
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_barrierMargin:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 545
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_constraint_referenced_ids:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 546
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 547
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_pathMotionArc:I

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 548
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constraintTag:I

    const/16 v2, 0x4d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 549
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_visibilityMode:I

    const/16 v2, 0x4e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 550
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constrainedWidth:I

    const/16 v2, 0x50

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 551
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_constrainedHeight:I

    const/16 v2, 0x51

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 552
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_polarRelativeTo:I

    const/16 v2, 0x52

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 553
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_transformPivotTarget:I

    const/16 v2, 0x53

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 554
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_quantizeMotionSteps:I

    const/16 v2, 0x54

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 555
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_quantizeMotionPhase:I

    const/16 v2, 0x55

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 556
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_quantizeMotionInterpolator:I

    const/16 v2, 0x56

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 557
    sget-object v0, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride_layout_wrapBehaviorInParent:I

    const/16 v2, 0x61

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 89
    iput-object v0, p0, Landroidx/constraintlayout/widget/d;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Landroidx/constraintlayout/widget/d;->c:I

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/d;->e:Ljava/util/HashMap;

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d;->f:Z

    .line 244
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Landroid/content/res/TypedArray;II)I
    .locals 0

    .line 78
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result p0

    return p0
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/d$a;
    .locals 2

    .line 4239
    new-instance v0, Landroidx/constraintlayout/widget/d$a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d$a;-><init>()V

    if-eqz p3, :cond_0

    .line 4240
    sget-object v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride:[I

    goto :goto_0

    :cond_0
    sget-object v1, Landroidx/constraintlayout/widget/h$b;->Constraint:[I

    :goto_0
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 4241
    invoke-direct {p0, p1, v0, p2, p3}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/Context;Landroidx/constraintlayout/widget/d$a;Landroid/content/res/TypedArray;Z)V

    .line 4242
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private static a(Landroid/content/Context;Landroidx/constraintlayout/widget/d$a;Landroid/content/res/TypedArray;)V
    .locals 13

    .line 4264
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p0

    .line 4266
    new-instance v0, Landroidx/constraintlayout/widget/d$a$a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d$a$a;-><init>()V

    .line 4267
    iput-object v0, p1, Landroidx/constraintlayout/widget/d$a;->h:Landroidx/constraintlayout/widget/d$a$a;

    .line 4268
    iget-object v1, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/d$c;->a:Z

    .line 4269
    iget-object v1, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/d$b;->b:Z

    .line 4270
    iget-object v1, p1, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/d$d;->a:Z

    .line 4271
    iget-object v1, p1, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput-boolean v2, v1, Landroidx/constraintlayout/widget/d$e;->a:Z

    move v1, v2

    :goto_0
    if-ge v1, p0, :cond_7

    .line 4273
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 4276
    sget-object v4, Landroidx/constraintlayout/widget/d;->j:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v6, "   "

    const/4 v7, 0x3

    const/16 v8, 0x15

    const/16 v9, 0x11

    const-string v10, "ConstraintSet"

    const/4 v11, 0x1

    const/4 v12, -0x1

    packed-switch v4, :pswitch_data_0

    .line 4579
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attribute 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4580
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4579
    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_1
    const/16 v4, 0x63

    .line 4299
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v5, v5, Landroidx/constraintlayout/widget/d$b;->i:Z

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IZ)V

    goto/16 :goto_1

    .line 4468
    :pswitch_2
    sget-boolean v4, Ldb;->a:Z

    if-eqz v4, :cond_0

    .line 4469
    iget v4, p1, Landroidx/constraintlayout/widget/d$a;->a:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p1, Landroidx/constraintlayout/widget/d$a;->a:I

    .line 4470
    iget v4, p1, Landroidx/constraintlayout/widget/d$a;->a:I

    if-ne v4, v12, :cond_6

    .line 4471
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroidx/constraintlayout/widget/d$a;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 4474
    :cond_0
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    iget v4, v4, Landroid/util/TypedValue;->type:I

    if-ne v4, v7, :cond_1

    .line 4475
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Landroidx/constraintlayout/widget/d$a;->b:Ljava/lang/String;

    goto/16 :goto_1

    .line 4477
    :cond_1
    iget v4, p1, Landroidx/constraintlayout/widget/d$a;->a:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/d$a;->a:I

    goto/16 :goto_1

    :pswitch_3
    const/16 v4, 0x61

    .line 4375
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->aq:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    .line 4372
    :pswitch_4
    invoke-static {v0, p2, v3, v11}, Landroidx/constraintlayout/widget/d;->a(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    .line 4369
    :pswitch_5
    invoke-static {v0, p2, v3, v2}, Landroidx/constraintlayout/widget/d;->a(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    :pswitch_6
    const/16 v4, 0x5e

    .line 4329
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->U:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_7
    const/16 v4, 0x5d

    .line 4360
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->N:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    .line 4575
    :pswitch_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unused attribute 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4576
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4575
    invoke-static {v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 4524
    :pswitch_9
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 4525
    iget v5, v4, Landroid/util/TypedValue;->type:I

    const/4 v6, -0x2

    const/16 v8, 0x59

    const/16 v9, 0x58

    if-ne v5, v11, :cond_2

    .line 4526
    iget-object v4, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    invoke-virtual {p2, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v4, Landroidx/constraintlayout/widget/d$c;->n:I

    .line 4527
    iget-object v3, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->n:I

    invoke-virtual {v0, v8, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    .line 4528
    iget-object v3, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->n:I

    if-eq v3, v12, :cond_6

    .line 4529
    iget-object v3, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput v6, v3, Landroidx/constraintlayout/widget/d$c;->m:I

    .line 4530
    iget-object v3, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->m:I

    invoke-virtual {v0, v9, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    .line 4532
    :cond_2
    iget v4, v4, Landroid/util/TypedValue;->type:I

    if-ne v4, v7, :cond_4

    .line 4533
    iget-object v4, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Landroidx/constraintlayout/widget/d$c;->l:Ljava/lang/String;

    const/16 v4, 0x5a

    .line 4534
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object v5, v5, Landroidx/constraintlayout/widget/d$c;->l:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroidx/constraintlayout/widget/d$a$a;->a(ILjava/lang/String;)V

    .line 4536
    iget-object v4, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object v4, v4, Landroidx/constraintlayout/widget/d$c;->l:Ljava/lang/String;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_3

    .line 4537
    iget-object v4, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    invoke-virtual {p2, v3, v12}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, v4, Landroidx/constraintlayout/widget/d$c;->n:I

    .line 4538
    iget-object v3, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->n:I

    invoke-virtual {v0, v8, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    .line 4540
    iget-object v3, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput v6, v3, Landroidx/constraintlayout/widget/d$c;->m:I

    .line 4541
    iget-object v3, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->m:I

    invoke-virtual {v0, v9, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    .line 4544
    :cond_3
    iget-object v3, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput v12, v3, Landroidx/constraintlayout/widget/d$c;->m:I

    .line 4545
    iget-object v3, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->m:I

    invoke-virtual {v0, v9, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    .line 4548
    :cond_4
    iget-object v4, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v5, v5, Landroidx/constraintlayout/widget/d$c;->n:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, v4, Landroidx/constraintlayout/widget/d$c;->m:I

    .line 4549
    iget-object v3, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->m:I

    invoke-virtual {v0, v9, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_a
    const/16 v4, 0x55

    .line 4521
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v5, v5, Landroidx/constraintlayout/widget/d$c;->j:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_b
    const/16 v4, 0x54

    .line 4518
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v5, v5, Landroidx/constraintlayout/widget/d$c;->k:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_c
    const/16 v4, 0x53

    .line 4449
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v5, v5, Landroidx/constraintlayout/widget/d$e;->i:I

    invoke-static {p2, v3, v5}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_d
    const/16 v4, 0x52

    .line 4497
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v5, v5, Landroidx/constraintlayout/widget/d$c;->c:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_e
    const/16 v4, 0x51

    .line 4399
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v5, v5, Landroidx/constraintlayout/widget/d$b;->ao:Z

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IZ)V

    goto/16 :goto_1

    :pswitch_f
    const/16 v4, 0x50

    .line 4396
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v5, v5, Landroidx/constraintlayout/widget/d$b;->an:Z

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IZ)V

    goto/16 :goto_1

    :pswitch_10
    const/16 v4, 0x4f

    .line 4514
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v5, v5, Landroidx/constraintlayout/widget/d$c;->g:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_11
    const/16 v4, 0x4e

    .line 4405
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget v5, v5, Landroidx/constraintlayout/widget/d$d;->c:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_12
    const/16 v4, 0x4d

    .line 4569
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_13
    const/16 v4, 0x4c

    .line 4508
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v5, v5, Landroidx/constraintlayout/widget/d$c;->e:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_14
    const/16 v4, 0x4b

    .line 4572
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v5, v5, Landroidx/constraintlayout/widget/d$b;->ap:Z

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IZ)V

    goto/16 :goto_1

    :pswitch_15
    const/16 v4, 0x4a

    .line 4566
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_16
    const/16 v4, 0x49

    .line 4563
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->ai:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_17
    const/16 v4, 0x48

    .line 4560
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->ah:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_18
    const-string v3, "CURRENTLY UNSUPPORTED"

    .line 4556
    invoke-static {v10, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_19
    const/16 v4, 0x46

    .line 4488
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_1a
    const/16 v4, 0x45

    .line 4485
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_1b
    const/16 v4, 0x44

    .line 4491
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget v5, v5, Landroidx/constraintlayout/widget/d$d;->e:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_1c
    const/16 v4, 0x43

    .line 4511
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v5, v5, Landroidx/constraintlayout/widget/d$c;->i:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_1d
    const/16 v4, 0x42

    .line 4553
    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    .line 4500
    :pswitch_1e
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v4

    .line 4501
    iget v4, v4, Landroid/util/TypedValue;->type:I

    const/16 v5, 0x41

    if-ne v4, v7, :cond_5

    .line 4502
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v5, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    .line 4504
    :cond_5
    sget-object v4, Lan;->c:[Ljava/lang/String;

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    aget-object v3, v4, v3

    invoke-virtual {v0, v5, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :pswitch_1f
    const/16 v4, 0x40

    .line 4494
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v5, v5, Landroidx/constraintlayout/widget/d$c;->b:I

    invoke-static {p2, v3, v5}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_20
    const/16 v4, 0x3f

    .line 4308
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->D:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_21
    const/16 v4, 0x3e

    .line 4305
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->C:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_22
    const/16 v4, 0x3c

    .line 4417
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v5, v5, Landroidx/constraintlayout/widget/d$e;->b:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_23
    const/16 v4, 0x3b

    .line 4390
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->ae:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_24
    const/16 v4, 0x3a

    .line 4393
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->ad:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_25
    const/16 v4, 0x39

    .line 4384
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->ac:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_26
    const/16 v4, 0x38

    .line 4387
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->ab:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_27
    const/16 v4, 0x37

    .line 4381
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->aa:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_28
    const/16 v4, 0x36

    .line 4378
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->Z:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    .line 4444
    :pswitch_29
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_6

    const/16 v4, 0x35

    .line 4445
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v5, v5, Landroidx/constraintlayout/widget/d$e;->l:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_2a
    const/16 v4, 0x34

    .line 4441
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v5, v5, Landroidx/constraintlayout/widget/d$e;->k:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_2b
    const/16 v4, 0x33

    .line 4438
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v5, v5, Landroidx/constraintlayout/widget/d$e;->j:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_2c
    const/16 v4, 0x32

    .line 4435
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v5, v5, Landroidx/constraintlayout/widget/d$e;->h:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_2d
    const/16 v4, 0x31

    .line 4432
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v5, v5, Landroidx/constraintlayout/widget/d$e;->g:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_2e
    const/16 v4, 0x30

    .line 4429
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v5, v5, Landroidx/constraintlayout/widget/d$e;->f:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_2f
    const/16 v4, 0x2f

    .line 4426
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v5, v5, Landroidx/constraintlayout/widget/d$e;->e:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_30
    const/16 v4, 0x2e

    .line 4423
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v5, v5, Landroidx/constraintlayout/widget/d$e;->d:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_31
    const/16 v4, 0x2d

    .line 4420
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v5, v5, Landroidx/constraintlayout/widget/d$e;->c:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    .line 4411
    :pswitch_32
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v8, :cond_6

    const/16 v4, 0x2c

    .line 4412
    invoke-virtual {v0, v4, v11}, Landroidx/constraintlayout/widget/d$a$a;->a(IZ)V

    .line 4413
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v5, v5, Landroidx/constraintlayout/widget/d$e;->n:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_33
    const/16 v4, 0x2b

    .line 4408
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget v5, v5, Landroidx/constraintlayout/widget/d$d;->d:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_34
    const/16 v4, 0x2a

    .line 4458
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->Y:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_35
    const/16 v4, 0x29

    .line 4461
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->X:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_36
    const/16 v4, 0x28

    .line 4452
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->V:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_37
    const/16 v4, 0x27

    .line 4455
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->W:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    .line 4464
    :pswitch_38
    iget v4, p1, Landroidx/constraintlayout/widget/d$a;->a:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p1, Landroidx/constraintlayout/widget/d$a;->a:I

    const/16 v3, 0x26

    .line 4465
    iget v4, p1, Landroidx/constraintlayout/widget/d$a;->a:I

    invoke-virtual {v0, v3, v4}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_39
    const/16 v4, 0x25

    .line 4335
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->z:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_3a
    const/16 v4, 0x22

    .line 4354
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->J:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    .line 4344
    :pswitch_3b
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_6

    const/16 v4, 0x1f

    .line 4345
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->M:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_3c
    const/16 v4, 0x1c

    .line 4341
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->I:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_3d
    const/16 v4, 0x1b

    .line 4302
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->G:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_3e
    const/16 v4, 0x18

    .line 4338
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->H:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_3f
    const/16 v4, 0x17

    .line 4363
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->d:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_40
    const/16 v4, 0x16

    .line 4402
    sget-object v5, Landroidx/constraintlayout/widget/d;->g:[I

    iget-object v6, p1, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget v6, v6, Landroidx/constraintlayout/widget/d$d;->b:I

    invoke-virtual {p2, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    aget v3, v5, v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    .line 4366
    :pswitch_41
    iget-object v4, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v4, v4, Landroidx/constraintlayout/widget/d$b;->e:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    invoke-virtual {v0, v8, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_42
    const/16 v4, 0x14

    .line 4332
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->y:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_43
    const/16 v4, 0x13

    .line 4296
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->h:F

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto/16 :goto_1

    :pswitch_44
    const/16 v4, 0x12

    .line 4293
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->g:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    .line 4290
    :pswitch_45
    iget-object v4, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v4, v4, Landroidx/constraintlayout/widget/d$b;->f:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {v0, v9, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_46
    const/16 v4, 0x10

    .line 4314
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->P:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_47
    const/16 v4, 0xf

    .line 4323
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->T:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto/16 :goto_1

    :pswitch_48
    const/16 v4, 0xe

    .line 4317
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->Q:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto :goto_1

    :pswitch_49
    const/16 v4, 0xd

    .line 4311
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->O:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto :goto_1

    :pswitch_4a
    const/16 v4, 0xc

    .line 4326
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->S:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto :goto_1

    :pswitch_4b
    const/16 v4, 0xb

    .line 4320
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->R:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto :goto_1

    .line 4349
    :pswitch_4c
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v9, :cond_6

    const/16 v4, 0x8

    .line 4350
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->L:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto :goto_1

    :pswitch_4d
    const/4 v4, 0x7

    .line 4287
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->F:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto :goto_1

    :pswitch_4e
    const/4 v4, 0x6

    .line 4284
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->E:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto :goto_1

    :pswitch_4f
    const/4 v4, 0x5

    .line 4482
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(ILjava/lang/String;)V

    goto :goto_1

    :pswitch_50
    const/4 v4, 0x2

    .line 4357
    iget-object v5, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->K:I

    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    invoke-virtual {v0, v4, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    :cond_6
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_50
        :pswitch_0
        :pswitch_0
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_0
        :pswitch_0
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_0
        :pswitch_0
        :pswitch_3d
        :pswitch_3c
        :pswitch_0
        :pswitch_0
        :pswitch_3b
        :pswitch_0
        :pswitch_0
        :pswitch_3a
        :pswitch_0
        :pswitch_0
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Landroidx/constraintlayout/widget/d$a;Landroid/content/res/TypedArray;Z)V
    .locals 10

    if-eqz p4, :cond_0

    .line 4863
    invoke-static {p1, p2, p3}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/Context;Landroidx/constraintlayout/widget/d$a;Landroid/content/res/TypedArray;)V

    return-void

    .line 4866
    :cond_0
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p1

    const/4 p4, 0x0

    move v0, p4

    :goto_0
    if-ge v0, p1, :cond_7

    .line 4868
    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v1

    .line 4913
    sget v2, Landroidx/constraintlayout/widget/h$b;->Constraint_android_id:I

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    sget v2, Landroidx/constraintlayout/widget/h$b;->Constraint_android_layout_marginStart:I

    if-eq v2, v1, :cond_1

    sget v2, Landroidx/constraintlayout/widget/h$b;->Constraint_android_layout_marginEnd:I

    if-eq v2, v1, :cond_1

    .line 4916
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/d$c;->a:Z

    .line 4917
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/d$b;->b:Z

    .line 4918
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/d$d;->a:Z

    .line 4919
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/d$e;->a:Z

    .line 4922
    :cond_1
    sget-object v2, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x3

    const/16 v6, 0x15

    const/16 v7, 0x11

    const-string v8, "   "

    const-string v9, "ConstraintSet"

    packed-switch v2, :pswitch_data_0

    .line 5244
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5245
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5244
    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5060
    :pswitch_1
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->aq:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->aq:I

    goto/16 :goto_1

    .line 5057
    :pswitch_2
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-static {v2, p3, v1, v3}, Landroidx/constraintlayout/widget/d;->a(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    .line 5054
    :pswitch_3
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-static {v2, p3, v1, p4}, Landroidx/constraintlayout/widget/d;->a(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    .line 5014
    :pswitch_4
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->U:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->U:I

    goto/16 :goto_1

    .line 5045
    :pswitch_5
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->N:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->N:I

    goto/16 :goto_1

    .line 4954
    :pswitch_6
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->t:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->t:I

    goto/16 :goto_1

    .line 4951
    :pswitch_7
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->s:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->s:I

    goto/16 :goto_1

    .line 5240
    :pswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unused attribute 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5241
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Landroidx/constraintlayout/widget/d;->i:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5240
    invoke-static {v9, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5195
    :pswitch_9
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 5197
    iget v4, v2, Landroid/util/TypedValue;->type:I

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-ne v4, v3, :cond_2

    .line 5198
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    invoke-virtual {p3, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$c;->n:I

    .line 5199
    iget-object v1, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v1, v1, Landroidx/constraintlayout/widget/d$c;->n:I

    if-eq v1, v7, :cond_6

    .line 5200
    iget-object v1, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput v6, v1, Landroidx/constraintlayout/widget/d$c;->m:I

    goto/16 :goto_1

    .line 5202
    :cond_2
    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v5, :cond_4

    .line 5203
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroidx/constraintlayout/widget/d$c;->l:Ljava/lang/String;

    .line 5204
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object v2, v2, Landroidx/constraintlayout/widget/d$c;->l:Ljava/lang/String;

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_3

    .line 5205
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    invoke-virtual {p3, v1, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$c;->n:I

    .line 5206
    iget-object v1, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput v6, v1, Landroidx/constraintlayout/widget/d$c;->m:I

    goto/16 :goto_1

    .line 5208
    :cond_3
    iget-object v1, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput v7, v1, Landroidx/constraintlayout/widget/d$c;->m:I

    goto/16 :goto_1

    .line 5211
    :cond_4
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->n:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$c;->m:I

    goto/16 :goto_1

    .line 5192
    :pswitch_a
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->j:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$c;->j:F

    goto/16 :goto_1

    .line 5189
    :pswitch_b
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->k:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$c;->k:I

    goto/16 :goto_1

    .line 5135
    :pswitch_c
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->i:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$e;->i:I

    goto/16 :goto_1

    .line 5168
    :pswitch_d
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->c:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$c;->c:I

    goto/16 :goto_1

    .line 5084
    :pswitch_e
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/d$b;->ao:Z

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Landroidx/constraintlayout/widget/d$b;->ao:Z

    goto/16 :goto_1

    .line 5081
    :pswitch_f
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/d$b;->an:Z

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Landroidx/constraintlayout/widget/d$b;->an:Z

    goto/16 :goto_1

    .line 5185
    :pswitch_10
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->g:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$c;->g:F

    goto/16 :goto_1

    .line 5091
    :pswitch_11
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget v3, v3, Landroidx/constraintlayout/widget/d$d;->c:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$d;->c:I

    goto/16 :goto_1

    .line 5234
    :pswitch_12
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/constraintlayout/widget/d$b;->am:Ljava/lang/String;

    goto/16 :goto_1

    .line 5179
    :pswitch_13
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->e:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$c;->e:I

    goto/16 :goto_1

    .line 5237
    :pswitch_14
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/d$b;->ap:Z

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, v2, Landroidx/constraintlayout/widget/d$b;->ap:Z

    goto/16 :goto_1

    .line 5231
    :pswitch_15
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/constraintlayout/widget/d$b;->al:Ljava/lang/String;

    goto/16 :goto_1

    .line 5228
    :pswitch_16
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->ai:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->ai:I

    goto/16 :goto_1

    .line 5225
    :pswitch_17
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->ah:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->ah:I

    goto/16 :goto_1

    :pswitch_18
    const-string v1, "CURRENTLY UNSUPPORTED"

    .line 5221
    invoke-static {v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 5159
    :pswitch_19
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {p3, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->ag:F

    goto/16 :goto_1

    .line 5156
    :pswitch_1a
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {p3, v1, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->af:F

    goto/16 :goto_1

    .line 5162
    :pswitch_1b
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget v3, v3, Landroidx/constraintlayout/widget/d$d;->e:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$d;->e:F

    goto/16 :goto_1

    .line 5182
    :pswitch_1c
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->i:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$c;->i:F

    goto/16 :goto_1

    .line 5218
    :pswitch_1d
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    invoke-virtual {p3, v1, p4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$c;->f:I

    goto/16 :goto_1

    .line 5171
    :pswitch_1e
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v2

    .line 5172
    iget v2, v2, Landroid/util/TypedValue;->type:I

    if-ne v2, v5, :cond_5

    .line 5173
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/constraintlayout/widget/d$c;->d:Ljava/lang/String;

    goto/16 :goto_1

    .line 5175
    :cond_5
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    sget-object v3, Lan;->c:[Ljava/lang/String;

    invoke-virtual {p3, v1, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    aget-object v1, v3, v1

    iput-object v1, v2, Landroidx/constraintlayout/widget/d$c;->d:Ljava/lang/String;

    goto/16 :goto_1

    .line 5165
    :pswitch_1f
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget v3, v3, Landroidx/constraintlayout/widget/d$c;->b:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$c;->b:I

    goto/16 :goto_1

    .line 4993
    :pswitch_20
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->D:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->D:F

    goto/16 :goto_1

    .line 4990
    :pswitch_21
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->C:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->C:I

    goto/16 :goto_1

    .line 4987
    :pswitch_22
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->B:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->B:I

    goto/16 :goto_1

    .line 5103
    :pswitch_23
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->b:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$e;->b:F

    goto/16 :goto_1

    .line 5075
    :pswitch_24
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->ae:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->ae:I

    goto/16 :goto_1

    .line 5078
    :pswitch_25
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->ad:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->ad:I

    goto/16 :goto_1

    .line 5069
    :pswitch_26
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->ac:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->ac:I

    goto/16 :goto_1

    .line 5072
    :pswitch_27
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->ab:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->ab:I

    goto/16 :goto_1

    .line 5066
    :pswitch_28
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->aa:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->aa:I

    goto/16 :goto_1

    .line 5063
    :pswitch_29
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->Z:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->Z:I

    goto/16 :goto_1

    .line 5130
    :pswitch_2a
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_6

    .line 5131
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->l:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$e;->l:F

    goto/16 :goto_1

    .line 5127
    :pswitch_2b
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->k:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$e;->k:F

    goto/16 :goto_1

    .line 5124
    :pswitch_2c
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->j:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$e;->j:F

    goto/16 :goto_1

    .line 5121
    :pswitch_2d
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->h:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$e;->h:F

    goto/16 :goto_1

    .line 5118
    :pswitch_2e
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->g:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$e;->g:F

    goto/16 :goto_1

    .line 5115
    :pswitch_2f
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->f:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$e;->f:F

    goto/16 :goto_1

    .line 5112
    :pswitch_30
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->e:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$e;->e:F

    goto/16 :goto_1

    .line 5109
    :pswitch_31
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->d:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$e;->d:F

    goto/16 :goto_1

    .line 5106
    :pswitch_32
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->c:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$e;->c:F

    goto/16 :goto_1

    .line 5097
    :pswitch_33
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v6, :cond_6

    .line 5098
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput-boolean v3, v2, Landroidx/constraintlayout/widget/d$e;->m:Z

    .line 5099
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v3, v3, Landroidx/constraintlayout/widget/d$e;->n:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$e;->n:F

    goto/16 :goto_1

    .line 5094
    :pswitch_34
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget v3, v3, Landroidx/constraintlayout/widget/d$d;->d:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$d;->d:F

    goto/16 :goto_1

    .line 5144
    :pswitch_35
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->Y:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->Y:I

    goto/16 :goto_1

    .line 5147
    :pswitch_36
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->X:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->X:I

    goto/16 :goto_1

    .line 5138
    :pswitch_37
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->V:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->V:F

    goto/16 :goto_1

    .line 5141
    :pswitch_38
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->W:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->W:F

    goto/16 :goto_1

    .line 5150
    :pswitch_39
    iget v2, p2, Landroidx/constraintlayout/widget/d$a;->a:I

    invoke-virtual {p3, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p2, Landroidx/constraintlayout/widget/d$a;->a:I

    goto/16 :goto_1

    .line 5020
    :pswitch_3a
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->z:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->z:F

    goto/16 :goto_1

    .line 4936
    :pswitch_3b
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->n:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->n:I

    goto/16 :goto_1

    .line 4939
    :pswitch_3c
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->o:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->o:I

    goto/16 :goto_1

    .line 5039
    :pswitch_3d
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->J:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->J:I

    goto/16 :goto_1

    .line 4978
    :pswitch_3e
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->v:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->v:I

    goto/16 :goto_1

    .line 4975
    :pswitch_3f
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->u:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->u:I

    goto/16 :goto_1

    .line 5029
    :pswitch_40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_6

    .line 5030
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->M:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->M:I

    goto/16 :goto_1

    .line 4933
    :pswitch_41
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->m:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->m:I

    goto/16 :goto_1

    .line 4930
    :pswitch_42
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->l:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->l:I

    goto/16 :goto_1

    .line 5026
    :pswitch_43
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->I:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->I:I

    goto/16 :goto_1

    .line 4972
    :pswitch_44
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->G:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->G:I

    goto/16 :goto_1

    .line 4927
    :pswitch_45
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->k:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->k:I

    goto/16 :goto_1

    .line 4924
    :pswitch_46
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->j:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->j:I

    goto/16 :goto_1

    .line 5023
    :pswitch_47
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->H:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->H:I

    goto/16 :goto_1

    .line 5048
    :pswitch_48
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->d:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->d:I

    goto/16 :goto_1

    .line 5087
    :pswitch_49
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget v3, v3, Landroidx/constraintlayout/widget/d$d;->b:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$d;->b:I

    .line 5088
    iget-object v1, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    sget-object v2, Landroidx/constraintlayout/widget/d;->g:[I

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget v3, v3, Landroidx/constraintlayout/widget/d$d;->b:I

    aget v2, v2, v3

    iput v2, v1, Landroidx/constraintlayout/widget/d$d;->b:I

    goto/16 :goto_1

    .line 5051
    :pswitch_4a
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->e:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->e:I

    goto/16 :goto_1

    .line 5017
    :pswitch_4b
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->y:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->y:F

    goto/16 :goto_1

    .line 4969
    :pswitch_4c
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->h:F

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->h:F

    goto/16 :goto_1

    .line 4966
    :pswitch_4d
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->g:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->g:I

    goto/16 :goto_1

    .line 4963
    :pswitch_4e
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->f:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->f:I

    goto/16 :goto_1

    .line 4999
    :pswitch_4f
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->P:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->P:I

    goto/16 :goto_1

    .line 5008
    :pswitch_50
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->T:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->T:I

    goto/16 :goto_1

    .line 5002
    :pswitch_51
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->Q:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->Q:I

    goto/16 :goto_1

    .line 4996
    :pswitch_52
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->O:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->O:I

    goto/16 :goto_1

    .line 5011
    :pswitch_53
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->S:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->S:I

    goto/16 :goto_1

    .line 5005
    :pswitch_54
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->R:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->R:I

    goto/16 :goto_1

    .line 4981
    :pswitch_55
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->w:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->w:I

    goto/16 :goto_1

    .line 4984
    :pswitch_56
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->x:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->x:I

    goto :goto_1

    .line 5034
    :pswitch_57
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v2, v7, :cond_6

    .line 5035
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->L:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->L:I

    goto :goto_1

    .line 4960
    :pswitch_58
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->F:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->F:I

    goto :goto_1

    .line 4957
    :pswitch_59
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->E:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->E:I

    goto :goto_1

    .line 5153
    :pswitch_5a
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Landroidx/constraintlayout/widget/d$b;->A:Ljava/lang/String;

    goto :goto_1

    .line 4942
    :pswitch_5b
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->p:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->p:I

    goto :goto_1

    .line 4945
    :pswitch_5c
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->q:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->q:I

    goto :goto_1

    .line 5042
    :pswitch_5d
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->K:I

    invoke-virtual {p3, v1, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->K:I

    goto :goto_1

    .line 4948
    :pswitch_5e
    iget-object v2, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v3, v3, Landroidx/constraintlayout/widget/d$b;->r:I

    invoke-static {p3, v1, v3}, Landroidx/constraintlayout/widget/d;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, v2, Landroidx/constraintlayout/widget/d$b;->r:I

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 5248
    :cond_7
    iget-object p1, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object p1, p1, Landroidx/constraintlayout/widget/d$b;->al:Ljava/lang/String;

    if-eqz p1, :cond_8

    .line 5250
    iget-object p1, p2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    const/4 p2, 0x0

    iput-object p2, p1, Landroidx/constraintlayout/widget/d$b;->ak:[I

    :cond_8
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5e
        :pswitch_5d
        :pswitch_5c
        :pswitch_5b
        :pswitch_5a
        :pswitch_59
        :pswitch_58
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
        :pswitch_52
        :pswitch_51
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method static a(Landroidx/constraintlayout/widget/ConstraintLayout$a;Ljava/lang/String;)V
    .locals 8

    const/high16 v0, 0x7fc00000    # Float.NaN

    const/4 v1, -0x1

    if-eqz p1, :cond_5

    .line 794
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x2c

    .line 795
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v3, :cond_2

    add-int/lit8 v6, v2, -0x1

    if-ge v3, v6, :cond_2

    .line 797
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, "W"

    .line 798
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    const-string v4, "H"

    .line 800
    invoke-virtual {v6, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v5

    :cond_1
    :goto_0
    add-int/lit8 v4, v3, 0x1

    :cond_2
    const/16 v3, 0x3a

    .line 807
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ltz v3, :cond_4

    sub-int/2addr v2, v5

    if-ge v3, v2, :cond_4

    .line 809
    invoke-virtual {p1, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/2addr v3, v5

    .line 810
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 811
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 813
    :try_start_0
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 814
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v6, v2, v4

    if-lez v6, :cond_5

    cmpl-float v4, v3, v4

    if-lez v4, :cond_5

    if-ne v1, v5, :cond_3

    div-float/2addr v3, v2

    .line 817
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    goto :goto_1

    :cond_3
    div-float/2addr v2, v3

    .line 819
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 827
    :cond_4
    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 828
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 830
    :try_start_1
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 837
    :catch_0
    :cond_5
    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->I:Ljava/lang/String;

    .line 838
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->J:F

    .line 839
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->K:I

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/d$a;IF)V
    .locals 0

    .line 78
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/widget/d;->b(Landroidx/constraintlayout/widget/d$a;IF)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/d$a;II)V
    .locals 0

    .line 78
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/widget/d;->b(Landroidx/constraintlayout/widget/d$a;II)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/d$a;ILjava/lang/String;)V
    .locals 0

    .line 78
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/widget/d;->b(Landroidx/constraintlayout/widget/d$a;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Landroidx/constraintlayout/widget/d$a;IZ)V
    .locals 0

    .line 78
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/widget/d;->b(Landroidx/constraintlayout/widget/d$a;IZ)V

    return-void
.end method

.method static a(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    .line 719
    :cond_0
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v0

    .line 720
    iget v0, v0, Landroid/util/TypedValue;->type:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_b

    const/4 v1, 0x5

    const/4 v2, -0x2

    const/4 v3, 0x0

    if-eq v0, v1, :cond_4

    .line 734
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    const/4 p2, -0x4

    if-eq p1, p2, :cond_3

    const/4 p2, -0x3

    if-eq p1, p2, :cond_1

    if-eq p1, v2, :cond_2

    const/4 p2, -0x1

    if-eq p1, p2, :cond_2

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    move v2, p1

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    goto :goto_0

    .line 725
    :cond_4
    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 754
    :goto_0
    instance-of p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz p1, :cond_6

    .line 755
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-nez p3, :cond_5

    .line 757
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    .line 758
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->aa:Z

    goto :goto_1

    .line 760
    :cond_5
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    .line 761
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->ab:Z

    goto :goto_1

    .line 763
    :cond_6
    instance-of p1, p0, Landroidx/constraintlayout/widget/d$b;

    if-eqz p1, :cond_8

    .line 764
    check-cast p0, Landroidx/constraintlayout/widget/d$b;

    if-nez p3, :cond_7

    .line 766
    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->d:I

    .line 767
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/d$b;->an:Z

    goto :goto_1

    .line 769
    :cond_7
    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    .line 770
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/d$b;->ao:Z

    goto :goto_1

    .line 772
    :cond_8
    instance-of p1, p0, Landroidx/constraintlayout/widget/d$a$a;

    if-eqz p1, :cond_a

    .line 773
    check-cast p0, Landroidx/constraintlayout/widget/d$a$a;

    if-nez p3, :cond_9

    const/16 p1, 0x17

    .line 775
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    const/16 p1, 0x50

    .line 776
    invoke-virtual {p0, p1, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IZ)V

    goto :goto_1

    :cond_9
    const/16 p1, 0x15

    .line 778
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    const/16 p1, 0x51

    .line 779
    invoke-virtual {p0, p1, v3}, Landroidx/constraintlayout/widget/d$a$a;->a(IZ)V

    :cond_a
    :goto_1
    return-void

    .line 729
    :cond_b
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 730
    invoke-static {p0, p1, p3}, Landroidx/constraintlayout/widget/d;->a(Ljava/lang/Object;Ljava/lang/String;I)V

    return-void
.end method

.method static a(Ljava/lang/Object;Ljava/lang/String;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x3d

    .line 866
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 867
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v0, :cond_10

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_10

    const/4 v1, 0x0

    .line 869
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    .line 870
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 871
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_10

    .line 872
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 873
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const-string v2, "ratio"

    .line 874
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 875
    instance-of v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v0, :cond_2

    .line 876
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-nez p2, :cond_1

    .line 878
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    goto :goto_0

    .line 880
    :cond_1
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    .line 882
    :goto_0
    invoke-static {p0, p1}, Landroidx/constraintlayout/widget/d;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 883
    :cond_2
    instance-of p2, p0, Landroidx/constraintlayout/widget/d$b;

    if-eqz p2, :cond_3

    .line 884
    check-cast p0, Landroidx/constraintlayout/widget/d$b;

    .line 885
    iput-object p1, p0, Landroidx/constraintlayout/widget/d$b;->A:Ljava/lang/String;

    goto/16 :goto_1

    .line 886
    :cond_3
    instance-of p2, p0, Landroidx/constraintlayout/widget/d$a$a;

    if-eqz p2, :cond_10

    .line 887
    check-cast p0, Landroidx/constraintlayout/widget/d$a$a;

    const/4 p2, 0x5

    .line 888
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/d$a$a;->a(ILjava/lang/String;)V

    goto/16 :goto_1

    :cond_4
    const-string v2, "weight"

    .line 890
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x17

    const/16 v4, 0x15

    if-eqz v2, :cond_a

    .line 892
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 893
    instance-of v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-eqz v0, :cond_6

    .line 894
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-nez p2, :cond_5

    .line 896
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    .line 897
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->L:F

    goto/16 :goto_1

    .line 899
    :cond_5
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    .line 900
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->M:F

    goto/16 :goto_1

    .line 902
    :cond_6
    instance-of v0, p0, Landroidx/constraintlayout/widget/d$b;

    if-eqz v0, :cond_8

    .line 903
    check-cast p0, Landroidx/constraintlayout/widget/d$b;

    if-nez p2, :cond_7

    .line 905
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->d:I

    .line 906
    iput p1, p0, Landroidx/constraintlayout/widget/d$b;->W:F

    goto/16 :goto_1

    .line 908
    :cond_7
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    .line 909
    iput p1, p0, Landroidx/constraintlayout/widget/d$b;->V:F

    goto/16 :goto_1

    .line 911
    :cond_8
    instance-of v0, p0, Landroidx/constraintlayout/widget/d$a$a;

    if-eqz v0, :cond_10

    .line 912
    check-cast p0, Landroidx/constraintlayout/widget/d$a$a;

    if-nez p2, :cond_9

    .line 914
    invoke-virtual {p0, v3, v1}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    const/16 p2, 0x27

    .line 915
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V

    goto :goto_1

    .line 917
    :cond_9
    invoke-virtual {p0, v4, v1}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    const/16 p2, 0x28

    .line 918
    invoke-virtual {p0, p2, p1}, Landroidx/constraintlayout/widget/d$a$a;->a(IF)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_a
    const-string v2, "parent"

    .line 924
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/high16 v0, 0x3f800000    # 1.0f

    .line 926
    :try_start_1
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    .line 927
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 928
    instance-of v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    const/4 v2, 0x2

    if-eqz v0, :cond_c

    .line 929
    check-cast p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    if-nez p2, :cond_b

    .line 931
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->width:I

    .line 932
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->V:F

    .line 933
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->P:I

    goto :goto_1

    .line 935
    :cond_b
    iput v1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->height:I

    .line 936
    iput p1, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->W:F

    .line 937
    iput v2, p0, Landroidx/constraintlayout/widget/ConstraintLayout$a;->Q:I

    goto :goto_1

    .line 939
    :cond_c
    instance-of v0, p0, Landroidx/constraintlayout/widget/d$b;

    if-eqz v0, :cond_e

    .line 940
    check-cast p0, Landroidx/constraintlayout/widget/d$b;

    if-nez p2, :cond_d

    .line 942
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->d:I

    .line 943
    iput p1, p0, Landroidx/constraintlayout/widget/d$b;->af:F

    .line 944
    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->Z:I

    goto :goto_1

    .line 946
    :cond_d
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    .line 947
    iput p1, p0, Landroidx/constraintlayout/widget/d$b;->ag:F

    .line 948
    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->aa:I

    goto :goto_1

    .line 950
    :cond_e
    instance-of p1, p0, Landroidx/constraintlayout/widget/d$a$a;

    if-eqz p1, :cond_10

    .line 951
    check-cast p0, Landroidx/constraintlayout/widget/d$a$a;

    if-nez p2, :cond_f

    .line 953
    invoke-virtual {p0, v3, v1}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    const/16 p1, 0x36

    .line 954
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    goto :goto_1

    .line 956
    :cond_f
    invoke-virtual {p0, v4, v1}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V

    const/16 p1, 0x37

    .line 957
    invoke-virtual {p0, p1, v2}, Landroidx/constraintlayout/widget/d$a$a;->a(II)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_10
    :goto_1
    return-void
.end method

.method static synthetic a()[I
    .locals 1

    .line 78
    sget-object v0, Landroidx/constraintlayout/widget/d;->g:[I

    return-object v0
.end method

.method private a(Landroid/view/View;Ljava/lang/String;)[I
    .locals 9

    const-string v0, ","

    .line 5255
    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 5256
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 5257
    array-length v1, p2

    new-array v1, v1, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 5259
    :goto_0
    array-length v5, p2

    if-ge v3, v5, :cond_2

    .line 5260
    aget-object v5, p2, v3

    .line 5261
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 5264
    :try_start_0
    const-class v6, Landroidx/constraintlayout/widget/h$a;

    .line 5265
    invoke-virtual {v6, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    const/4 v7, 0x0

    .line 5266
    invoke-virtual {v6, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move v6, v2

    :goto_1
    if-nez v6, :cond_0

    .line 5271
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 5272
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "id"

    .line 5271
    invoke-virtual {v6, v5, v8, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    :cond_0
    if-nez v6, :cond_1

    .line 5275
    invoke-virtual {p1}, Landroid/view/View;->isInEditMode()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    instance-of v7, v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v7, :cond_1

    .line 5276
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 5277
    invoke-virtual {v7, v2, v5}, Landroidx/constraintlayout/widget/ConstraintLayout;->getDesignInformation(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 5278
    instance-of v7, v5, Ljava/lang/Integer;

    if-eqz v7, :cond_1

    .line 5279
    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    :cond_1
    add-int/lit8 v5, v4, 0x1

    .line 5282
    aput v6, v1, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    goto :goto_0

    .line 5284
    :cond_2
    array-length p1, p2

    if-eq v4, p1, :cond_3

    .line 5285
    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    :cond_3
    return-object v1
.end method

.method private static b(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 4231
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 4233
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    :cond_0
    return p2
.end method

.method public static b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/constraintlayout/widget/d$a;
    .locals 2

    .line 4254
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p1

    .line 4255
    new-instance v0, Landroidx/constraintlayout/widget/d$a;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d$a;-><init>()V

    .line 4256
    sget-object v1, Landroidx/constraintlayout/widget/h$b;->ConstraintOverride:[I

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 4257
    invoke-static {p0, v0, p1}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/Context;Landroidx/constraintlayout/widget/d$a;Landroid/content/res/TypedArray;)V

    .line 4258
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object v0
.end method

.method private static b(Landroidx/constraintlayout/widget/d$a;IF)V
    .locals 1

    const/16 v0, 0x13

    if-eq p1, v0, :cond_8

    const/16 v0, 0x14

    if-eq p1, v0, :cond_7

    const/16 v0, 0x25

    if-eq p1, v0, :cond_6

    const/16 v0, 0x3c

    if-eq p1, v0, :cond_5

    const/16 v0, 0x3f

    if-eq p1, v0, :cond_4

    const/16 v0, 0x4f

    if-eq p1, v0, :cond_3

    const/16 v0, 0x55

    if-eq p1, v0, :cond_2

    const/16 v0, 0x57

    if-eq p1, v0, :cond_9

    const/16 v0, 0x27

    if-eq p1, v0, :cond_1

    const/16 v0, 0x28

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    const-string p0, "ConstraintSet"

    const-string p1, "Unknown attribute 0x"

    .line 4663
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4646
    :pswitch_0
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->ag:F

    goto/16 :goto_0

    .line 4643
    :pswitch_1
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->af:F

    goto/16 :goto_0

    .line 4649
    :pswitch_2
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iput p2, p0, Landroidx/constraintlayout/widget/d$d;->e:F

    goto/16 :goto_0

    .line 4652
    :pswitch_3
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput p2, p0, Landroidx/constraintlayout/widget/d$c;->i:F

    goto/16 :goto_0

    .line 4634
    :pswitch_4
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput p2, p0, Landroidx/constraintlayout/widget/d$e;->l:F

    goto/16 :goto_0

    .line 4631
    :pswitch_5
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput p2, p0, Landroidx/constraintlayout/widget/d$e;->k:F

    goto/16 :goto_0

    .line 4628
    :pswitch_6
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput p2, p0, Landroidx/constraintlayout/widget/d$e;->j:F

    goto :goto_0

    .line 4625
    :pswitch_7
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput p2, p0, Landroidx/constraintlayout/widget/d$e;->h:F

    goto :goto_0

    .line 4622
    :pswitch_8
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput p2, p0, Landroidx/constraintlayout/widget/d$e;->g:F

    goto :goto_0

    .line 4619
    :pswitch_9
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput p2, p0, Landroidx/constraintlayout/widget/d$e;->f:F

    goto :goto_0

    .line 4616
    :pswitch_a
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput p2, p0, Landroidx/constraintlayout/widget/d$e;->e:F

    goto :goto_0

    .line 4613
    :pswitch_b
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput p2, p0, Landroidx/constraintlayout/widget/d$e;->d:F

    goto :goto_0

    .line 4610
    :pswitch_c
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput p2, p0, Landroidx/constraintlayout/widget/d$e;->c:F

    goto :goto_0

    .line 4603
    :pswitch_d
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput p2, p1, Landroidx/constraintlayout/widget/d$e;->n:F

    .line 4604
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/constraintlayout/widget/d$e;->m:Z

    goto :goto_0

    .line 4600
    :pswitch_e
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iput p2, p0, Landroidx/constraintlayout/widget/d$d;->d:F

    goto :goto_0

    .line 4637
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->V:F

    goto :goto_0

    .line 4640
    :cond_1
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->W:F

    goto :goto_0

    .line 4658
    :cond_2
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput p2, p0, Landroidx/constraintlayout/widget/d$c;->j:F

    goto :goto_0

    .line 4655
    :cond_3
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput p2, p0, Landroidx/constraintlayout/widget/d$c;->g:F

    goto :goto_0

    .line 4591
    :cond_4
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->D:F

    goto :goto_0

    .line 4607
    :cond_5
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput p2, p0, Landroidx/constraintlayout/widget/d$e;->b:F

    goto :goto_0

    .line 4597
    :cond_6
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->z:F

    goto :goto_0

    .line 4594
    :cond_7
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->y:F

    goto :goto_0

    .line 4588
    :cond_8
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->h:F

    :cond_9
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x2b
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x43
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroidx/constraintlayout/widget/d$a;II)V
    .locals 1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_a

    const/4 v0, 0x7

    if-eq p1, v0, :cond_9

    const/16 v0, 0x8

    if-eq p1, v0, :cond_8

    const/16 v0, 0x1b

    if-eq p1, v0, :cond_7

    const/16 v0, 0x1c

    if-eq p1, v0, :cond_6

    const/16 v0, 0x29

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2a

    if-eq p1, v0, :cond_4

    const/16 v0, 0x3d

    if-eq p1, v0, :cond_3

    const/16 v0, 0x3e

    if-eq p1, v0, :cond_2

    const/16 v0, 0x48

    if-eq p1, v0, :cond_1

    const/16 v0, 0x49

    if-eq p1, v0, :cond_0

    sparse-switch p1, :sswitch_data_0

    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    packed-switch p1, :pswitch_data_2

    packed-switch p1, :pswitch_data_3

    const-string p0, "ConstraintSet"

    const-string p1, "Unknown attribute 0x"

    .line 4808
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4794
    :pswitch_0
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput p2, p0, Landroidx/constraintlayout/widget/d$c;->n:I

    goto/16 :goto_0

    .line 4791
    :pswitch_1
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput p2, p0, Landroidx/constraintlayout/widget/d$c;->m:I

    goto/16 :goto_0

    .line 4788
    :pswitch_2
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput p2, p0, Landroidx/constraintlayout/widget/d$c;->k:I

    goto/16 :goto_0

    .line 4767
    :pswitch_3
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput p2, p0, Landroidx/constraintlayout/widget/d$e;->i:I

    goto/16 :goto_0

    .line 4782
    :pswitch_4
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput p2, p0, Landroidx/constraintlayout/widget/d$c;->c:I

    goto/16 :goto_0

    .line 4755
    :pswitch_5
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->ae:I

    goto/16 :goto_0

    .line 4758
    :pswitch_6
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->ad:I

    goto/16 :goto_0

    .line 4749
    :pswitch_7
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->ac:I

    goto/16 :goto_0

    .line 4752
    :pswitch_8
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->ab:I

    goto/16 :goto_0

    .line 4746
    :pswitch_9
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->aa:I

    goto/16 :goto_0

    .line 4743
    :pswitch_a
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->Z:I

    goto/16 :goto_0

    .line 4716
    :pswitch_b
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->H:I

    goto/16 :goto_0

    .line 4737
    :pswitch_c
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->d:I

    goto/16 :goto_0

    .line 4761
    :pswitch_d
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iput p2, p0, Landroidx/constraintlayout/widget/d$d;->b:I

    goto/16 :goto_0

    .line 4740
    :pswitch_e
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    goto/16 :goto_0

    .line 4677
    :sswitch_0
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->aq:I

    goto/16 :goto_0

    .line 4713
    :sswitch_1
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->U:I

    goto/16 :goto_0

    .line 4734
    :sswitch_2
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->N:I

    goto/16 :goto_0

    .line 4764
    :sswitch_3
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iput p2, p0, Landroidx/constraintlayout/widget/d$d;->c:I

    goto/16 :goto_0

    .line 4785
    :sswitch_4
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput p2, p0, Landroidx/constraintlayout/widget/d$c;->e:I

    goto/16 :goto_0

    .line 4797
    :sswitch_5
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput p2, p0, Landroidx/constraintlayout/widget/d$c;->f:I

    goto/16 :goto_0

    .line 4779
    :sswitch_6
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput p2, p0, Landroidx/constraintlayout/widget/d$c;->b:I

    goto/16 :goto_0

    .line 4776
    :sswitch_7
    iput p2, p0, Landroidx/constraintlayout/widget/d$a;->a:I

    goto/16 :goto_0

    .line 4728
    :sswitch_8
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->J:I

    goto/16 :goto_0

    .line 4722
    :sswitch_9
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->M:I

    goto/16 :goto_0

    .line 4683
    :sswitch_a
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->g:I

    goto/16 :goto_0

    .line 4680
    :sswitch_b
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->f:I

    goto :goto_0

    .line 4698
    :sswitch_c
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->P:I

    goto :goto_0

    .line 4707
    :sswitch_d
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->T:I

    goto :goto_0

    .line 4701
    :sswitch_e
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->Q:I

    goto :goto_0

    .line 4695
    :sswitch_f
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->O:I

    goto :goto_0

    .line 4710
    :sswitch_10
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->S:I

    goto :goto_0

    .line 4704
    :sswitch_11
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->R:I

    goto :goto_0

    .line 4731
    :sswitch_12
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->K:I

    goto :goto_0

    .line 4803
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->ai:I

    goto :goto_0

    .line 4800
    :cond_1
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->ah:I

    goto :goto_0

    .line 4692
    :cond_2
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->C:I

    goto :goto_0

    .line 4689
    :cond_3
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->B:I

    goto :goto_0

    .line 4770
    :cond_4
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->Y:I

    goto :goto_0

    .line 4773
    :cond_5
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->X:I

    goto :goto_0

    .line 4719
    :cond_6
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->I:I

    goto :goto_0

    .line 4686
    :cond_7
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->G:I

    goto :goto_0

    .line 4725
    :cond_8
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->L:I

    goto :goto_0

    .line 4674
    :cond_9
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->F:I

    goto :goto_0

    .line 4671
    :cond_a
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, p0, Landroidx/constraintlayout/widget/d$b;->E:I

    :goto_0
    :pswitch_f
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_12
        0xb -> :sswitch_11
        0xc -> :sswitch_10
        0xd -> :sswitch_f
        0xe -> :sswitch_e
        0xf -> :sswitch_d
        0x10 -> :sswitch_c
        0x11 -> :sswitch_b
        0x12 -> :sswitch_a
        0x1f -> :sswitch_9
        0x22 -> :sswitch_8
        0x26 -> :sswitch_7
        0x40 -> :sswitch_6
        0x42 -> :sswitch_5
        0x4c -> :sswitch_4
        0x4e -> :sswitch_3
        0x5d -> :sswitch_2
        0x5e -> :sswitch_1
        0x61 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x36
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x52
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x57
        :pswitch_f
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static b(Landroidx/constraintlayout/widget/d$a;ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_4

    const/16 v0, 0x41

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4a

    if-eq p1, v0, :cond_2

    const/16 v0, 0x4d

    if-eq p1, v0, :cond_1

    const/16 v0, 0x57

    if-eq p1, v0, :cond_5

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_0

    const-string p0, "ConstraintSet"

    const-string p1, "Unknown attribute 0x"

    .line 4835
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4822
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput-object p2, p0, Landroidx/constraintlayout/widget/d$c;->l:Ljava/lang/String;

    goto :goto_0

    .line 4830
    :cond_1
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput-object p2, p0, Landroidx/constraintlayout/widget/d$b;->am:Ljava/lang/String;

    goto :goto_0

    .line 4825
    :cond_2
    iget-object p1, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput-object p2, p1, Landroidx/constraintlayout/widget/d$b;->al:Ljava/lang/String;

    .line 4827
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/constraintlayout/widget/d$b;->ak:[I

    goto :goto_0

    .line 4819
    :cond_3
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iput-object p2, p0, Landroidx/constraintlayout/widget/d$c;->d:Ljava/lang/String;

    goto :goto_0

    .line 4816
    :cond_4
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput-object p2, p0, Landroidx/constraintlayout/widget/d$b;->A:Ljava/lang/String;

    :cond_5
    :goto_0
    return-void
.end method

.method private static b(Landroidx/constraintlayout/widget/d$a;IZ)V
    .locals 1

    const/16 v0, 0x2c

    if-eq p1, v0, :cond_3

    const/16 v0, 0x4b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x57

    if-eq p1, v0, :cond_4

    const/16 v0, 0x50

    if-eq p1, v0, :cond_1

    const/16 v0, 0x51

    if-eq p1, v0, :cond_0

    const-string p0, "ConstraintSet"

    const-string p1, "Unknown attribute 0x"

    .line 4857
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4846
    :cond_0
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput-boolean p2, p0, Landroidx/constraintlayout/widget/d$b;->ao:Z

    goto :goto_0

    .line 4843
    :cond_1
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput-boolean p2, p0, Landroidx/constraintlayout/widget/d$b;->an:Z

    goto :goto_0

    .line 4852
    :cond_2
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput-boolean p2, p0, Landroidx/constraintlayout/widget/d$b;->ap:Z

    goto :goto_0

    .line 4849
    :cond_3
    iget-object p0, p0, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput-boolean p2, p0, Landroidx/constraintlayout/widget/d$e;->m:Z

    :cond_4
    :goto_0
    return-void
.end method

.method private g(I)Landroidx/constraintlayout/widget/d$a;
    .locals 3

    .line 4053
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4054
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroidx/constraintlayout/widget/d$a;

    invoke-direct {v2}, Landroidx/constraintlayout/widget/d$a;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4056
    :cond_0
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/d$a;

    return-object p1
.end method


# virtual methods
.method public a(I)Landroidx/constraintlayout/widget/d$a;
    .locals 0

    .line 566
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/d;->g(I)Landroidx/constraintlayout/widget/d$a;

    move-result-object p1

    return-object p1
.end method

.method public a(II)V
    .locals 3

    .line 3051
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3052
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/d$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, -0x80000000

    const/4 v2, -0x1

    packed-switch p2, :pswitch_data_0

    .line 3106
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3101
    :pswitch_0
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p2, Landroidx/constraintlayout/widget/d$b;->D:F

    .line 3102
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->C:I

    .line 3103
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p1, Landroidx/constraintlayout/widget/d$b;->B:I

    goto/16 :goto_0

    .line 3095
    :pswitch_1
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->w:I

    .line 3096
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->x:I

    .line 3097
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v0, p2, Landroidx/constraintlayout/widget/d$b;->L:I

    .line 3098
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v1, p1, Landroidx/constraintlayout/widget/d$b;->S:I

    goto :goto_0

    .line 3089
    :pswitch_2
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->u:I

    .line 3090
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->v:I

    .line 3091
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v0, p2, Landroidx/constraintlayout/widget/d$b;->M:I

    .line 3092
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v1, p1, Landroidx/constraintlayout/widget/d$b;->T:I

    goto :goto_0

    .line 3082
    :pswitch_3
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->r:I

    .line 3083
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->s:I

    .line 3084
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->t:I

    .line 3085
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v0, p2, Landroidx/constraintlayout/widget/d$b;->N:I

    .line 3086
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v1, p1, Landroidx/constraintlayout/widget/d$b;->U:I

    goto :goto_0

    .line 3076
    :pswitch_4
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->p:I

    .line 3077
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->q:I

    .line 3078
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v0, p2, Landroidx/constraintlayout/widget/d$b;->K:I

    .line 3079
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v1, p1, Landroidx/constraintlayout/widget/d$b;->R:I

    goto :goto_0

    .line 3070
    :pswitch_5
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->o:I

    .line 3071
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->n:I

    .line 3072
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v0, p2, Landroidx/constraintlayout/widget/d$b;->J:I

    .line 3073
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v1, p1, Landroidx/constraintlayout/widget/d$b;->P:I

    goto :goto_0

    .line 3064
    :pswitch_6
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->m:I

    .line 3065
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->l:I

    .line 3066
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->I:I

    .line 3067
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v1, p1, Landroidx/constraintlayout/widget/d$b;->Q:I

    goto :goto_0

    .line 3058
    :pswitch_7
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->k:I

    .line 3059
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->j:I

    .line 3060
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v2, p2, Landroidx/constraintlayout/widget/d$b;->H:I

    .line 3061
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v1, p1, Landroidx/constraintlayout/widget/d$b;->O:I

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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

.method public a(IIIF)V
    .locals 1

    .line 3511
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/d;->g(I)Landroidx/constraintlayout/widget/d$a;

    move-result-object p1

    .line 3512
    iget-object v0, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p2, v0, Landroidx/constraintlayout/widget/d$b;->B:I

    .line 3513
    iget-object p2, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p3, p2, Landroidx/constraintlayout/widget/d$b;->C:I

    .line 3514
    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput p4, p1, Landroidx/constraintlayout/widget/d$b;->D:F

    return-void
.end method

.method public a(ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V
    .locals 2

    .line 2355
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2356
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/d$a;

    if-eqz p1, :cond_0

    .line 2358
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/d$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/content/Context;I)V
    .locals 1

    .line 2168
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/d;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method public a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9

    .line 4136
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_c

    if-eqz v0, :cond_b

    const/4 v4, -0x1

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_0

    goto/16 :goto_4

    .line 4207
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4208
    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v8}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v8, "constraintset"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v7

    goto :goto_1

    :sswitch_1
    const-string v7, "constraintoverride"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v6

    goto :goto_1

    :sswitch_2
    const-string v7, "constraint"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v3

    goto :goto_1

    :sswitch_3
    const-string v7, "guideline"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v4, v5

    :cond_1
    :goto_1
    if-eqz v4, :cond_3

    if-eq v4, v3, :cond_2

    if-eq v4, v6, :cond_2

    if-eq v4, v5, :cond_2

    goto/16 :goto_4

    .line 4214
    :cond_2
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    iget v3, v2, Landroidx/constraintlayout/widget/d$a;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    goto/16 :goto_4

    :cond_3
    return-void

    .line 4145
    :cond_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4149
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    goto/16 :goto_2

    :sswitch_4
    const-string v5, "Constraint"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v7

    goto/16 :goto_3

    :sswitch_5
    const-string v5, "CustomAttribute"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    goto :goto_3

    :sswitch_6
    const-string v6, "Barrier"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v5

    goto :goto_3

    :sswitch_7
    const-string v5, "CustomMethod"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    goto :goto_3

    :sswitch_8
    const-string v5, "Guideline"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v6

    goto :goto_3

    :sswitch_9
    const-string v5, "Transform"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto :goto_3

    :sswitch_a
    const-string v5, "PropertySet"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto :goto_3

    :sswitch_b
    const-string v5, "ConstraintOverride"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v3

    goto :goto_3

    :sswitch_c
    const-string v5, "Motion"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    goto :goto_3

    :sswitch_d
    const-string v5, "Layout"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    goto :goto_3

    :cond_5
    :goto_2
    move v0, v4

    :goto_3
    const-string v4, "XML parser error must be within a Constraint "

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    if-eqz v2, :cond_6

    .line 4194
    :try_start_1
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    invoke-static {p1, p2, v0}, Landroidx/constraintlayout/widget/a;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    goto/16 :goto_4

    .line 4192
    :cond_6
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_1
    if-eqz v2, :cond_7

    .line 4187
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/d$c;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    .line 4185
    :cond_7
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_2
    if-eqz v2, :cond_8

    .line 4181
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/d$b;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/16 :goto_4

    .line 4179
    :cond_8
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_3
    if-eqz v2, :cond_9

    .line 4175
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/d$e;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 4173
    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_4
    if-eqz v2, :cond_a

    .line 4169
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Landroidx/constraintlayout/widget/d$d;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_4

    .line 4167
    :cond_a
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4162
    :pswitch_5
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0, v7}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/d$a;

    move-result-object v2

    .line 4163
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v3, v0, Landroidx/constraintlayout/widget/d$b;->aj:I

    goto :goto_4

    .line 4157
    :pswitch_6
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0, v7}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/d$a;

    move-result-object v2

    .line 4158
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput-boolean v3, v0, Landroidx/constraintlayout/widget/d$b;->a:Z

    .line 4159
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput-boolean v3, v0, Landroidx/constraintlayout/widget/d$b;->b:Z

    goto :goto_4

    .line 4154
    :pswitch_7
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0, v3}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/d$a;

    move-result-object v2

    goto :goto_4

    .line 4151
    :pswitch_8
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    invoke-direct {p0, p1, v0, v7}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/d$a;

    move-result-object v2

    goto :goto_4

    .line 4141
    :cond_b
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 4138
    :goto_4
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 4226
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception p1

    .line 4224
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_c
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7bb8f310 -> :sswitch_3
        -0xb58ea23 -> :sswitch_2
        0x196d04a9 -> :sswitch_1
        0x7feafd65 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x78c018b6 -> :sswitch_d
        -0x7648542a -> :sswitch_c
        -0x74f4db17 -> :sswitch_b
        -0x4bab3dd3 -> :sswitch_a
        -0x49cf74b4 -> :sswitch_9
        -0x446d330 -> :sswitch_8
        0x15d883d2 -> :sswitch_7
        0x4f5d3b97 -> :sswitch_6
        0x6acd460b -> :sswitch_5
        0x6b78f1fd -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 10

    .line 613
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_a

    .line 615
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 616
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 618
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 619
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/d;->f:Z

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 620
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 622
    :cond_1
    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 623
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/d$a;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/d$a;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    :cond_2
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/d$a;

    if-nez v5, :cond_3

    goto/16 :goto_2

    .line 629
    :cond_3
    iget-object v6, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v6, v6, Landroidx/constraintlayout/widget/d$b;->b:Z

    const/4 v7, 0x1

    if-nez v6, :cond_5

    .line 630
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/d$a;->a(Landroidx/constraintlayout/widget/d$a;ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 631
    instance-of v3, v2, Landroidx/constraintlayout/widget/b;

    if-eqz v3, :cond_4

    .line 632
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    move-object v4, v2

    check-cast v4, Landroidx/constraintlayout/widget/b;

    invoke-virtual {v4}, Landroidx/constraintlayout/widget/b;->getReferencedIds()[I

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/widget/d$b;->ak:[I

    .line 633
    instance-of v3, v2, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v3, :cond_4

    .line 634
    move-object v3, v2

    check-cast v3, Landroidx/constraintlayout/widget/Barrier;

    .line 635
    iget-object v4, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Barrier;->getAllowsGoneWidget()Z

    move-result v6

    iput-boolean v6, v4, Landroidx/constraintlayout/widget/d$b;->ap:Z

    .line 636
    iget-object v4, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v6

    iput v6, v4, Landroidx/constraintlayout/widget/d$b;->ah:I

    .line 637
    iget-object v4, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {v3}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result v3

    iput v3, v4, Landroidx/constraintlayout/widget/d$b;->ai:I

    .line 640
    :cond_4
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput-boolean v7, v3, Landroidx/constraintlayout/widget/d$b;->b:Z

    .line 642
    :cond_5
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/d$d;->a:Z

    if-nez v3, :cond_6

    .line 643
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$d;->b:I

    .line 644
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$d;->d:F

    .line 645
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iput-boolean v7, v3, Landroidx/constraintlayout/widget/d$d;->a:Z

    .line 647
    :cond_6
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_9

    .line 649
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/d$e;->a:Z

    if-nez v3, :cond_9

    .line 650
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput-boolean v7, v3, Landroidx/constraintlayout/widget/d$e;->a:Z

    .line 651
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->b:F

    .line 652
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->c:F

    .line 653
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->d:F

    .line 654
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->e:F

    .line 655
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->f:F

    .line 657
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v3

    .line 658
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v4

    float-to-double v6, v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_7

    float-to-double v6, v4

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_8

    .line 661
    :cond_7
    iget-object v6, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput v3, v6, Landroidx/constraintlayout/widget/d$e;->g:F

    .line 662
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->h:F

    .line 665
    :cond_8
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->j:F

    .line 666
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->k:F

    .line 667
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_9

    .line 668
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->l:F

    .line 669
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/d$e;->m:Z

    if-eqz v3, :cond_9

    .line 670
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$e;->n:F

    :cond_9
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method a(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V
    .locals 11

    .line 2367
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 2368
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_e

    .line 2370
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 2371
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    .line 2372
    iget-object v7, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "ConstraintSet"

    if-nez v7, :cond_0

    .line 2373
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id unknown "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcl;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2377
    :cond_0
    iget-boolean v7, p0, Landroidx/constraintlayout/widget/d;->f:Z

    const/4 v9, -0x1

    if-eqz v7, :cond_2

    if-eq v6, v9, :cond_1

    goto :goto_1

    .line 2378
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    if-ne v6, v9, :cond_3

    goto/16 :goto_4

    .line 2384
    :cond_3
    iget-object v7, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 2385
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 2386
    iget-object v7, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/d$a;

    if-nez v7, :cond_4

    goto/16 :goto_4

    .line 2390
    :cond_4
    instance-of v8, v5, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v8, :cond_6

    .line 2391
    iget-object v8, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput v4, v8, Landroidx/constraintlayout/widget/d$b;->aj:I

    .line 2392
    move-object v4, v5

    check-cast v4, Landroidx/constraintlayout/widget/Barrier;

    .line 2393
    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setId(I)V

    .line 2394
    iget-object v6, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v6, v6, Landroidx/constraintlayout/widget/d$b;->ah:I

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 2395
    iget-object v6, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v6, v6, Landroidx/constraintlayout/widget/d$b;->ai:I

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    .line 2397
    iget-object v6, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v6, v6, Landroidx/constraintlayout/widget/d$b;->ap:Z

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setAllowsGoneWidget(Z)V

    .line 2398
    iget-object v6, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v6, v6, Landroidx/constraintlayout/widget/d$b;->ak:[I

    if-eqz v6, :cond_5

    .line 2399
    iget-object v6, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v6, v6, Landroidx/constraintlayout/widget/d$b;->ak:[I

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    goto :goto_2

    .line 2400
    :cond_5
    iget-object v6, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v6, v6, Landroidx/constraintlayout/widget/d$b;->al:Ljava/lang/String;

    if-eqz v6, :cond_6

    .line 2401
    iget-object v6, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v8, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v8, v8, Landroidx/constraintlayout/widget/d$b;->al:Ljava/lang/String;

    invoke-direct {p0, v4, v8}, Landroidx/constraintlayout/widget/d;->a(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v8

    iput-object v8, v6, Landroidx/constraintlayout/widget/d$b;->ak:[I

    .line 2403
    iget-object v6, v7, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v6, v6, Landroidx/constraintlayout/widget/d$b;->ak:[I

    invoke-virtual {v4, v6}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    .line 2407
    :cond_6
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 2408
    invoke-virtual {v4}, Landroidx/constraintlayout/widget/ConstraintLayout$a;->a()V

    .line 2409
    invoke-virtual {v7, v4}, Landroidx/constraintlayout/widget/d$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    if-eqz p2, :cond_7

    .line 2412
    iget-object v6, v7, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    invoke-static {v5, v6}, Landroidx/constraintlayout/widget/a;->a(Landroid/view/View;Ljava/util/HashMap;)V

    .line 2414
    :cond_7
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2415
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget v4, v4, Landroidx/constraintlayout/widget/d$d;->c:I

    if-nez v4, :cond_8

    .line 2416
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget v4, v4, Landroidx/constraintlayout/widget/d$d;->b:I

    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 2418
    :cond_8
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v4, v6, :cond_d

    .line 2419
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget v4, v4, Landroidx/constraintlayout/widget/d$d;->d:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setAlpha(F)V

    .line 2420
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v4, v4, Landroidx/constraintlayout/widget/d$e;->b:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setRotation(F)V

    .line 2421
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v4, v4, Landroidx/constraintlayout/widget/d$e;->c:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setRotationX(F)V

    .line 2422
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v4, v4, Landroidx/constraintlayout/widget/d$e;->d:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setRotationY(F)V

    .line 2423
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v4, v4, Landroidx/constraintlayout/widget/d$e;->e:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setScaleX(F)V

    .line 2424
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v4, v4, Landroidx/constraintlayout/widget/d$e;->f:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setScaleY(F)V

    .line 2425
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v4, v4, Landroidx/constraintlayout/widget/d$e;->i:I

    if-eq v4, v9, :cond_9

    .line 2426
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 2427
    iget-object v6, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v6, v6, Landroidx/constraintlayout/widget/d$e;->i:I

    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 2429
    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v6

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v8

    add-int/2addr v6, v8

    int-to-float v6, v6

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v6, v8

    .line 2430
    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v9

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    add-int/2addr v9, v4

    int-to-float v4, v9

    div-float/2addr v4, v8

    .line 2431
    invoke-virtual {v5}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v9

    sub-int/2addr v8, v9

    if-lez v8, :cond_b

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v9

    sub-int/2addr v8, v9

    if-lez v8, :cond_b

    .line 2432
    invoke-virtual {v5}, Landroid/view/View;->getLeft()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v4, v8

    .line 2433
    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v8

    int-to-float v8, v8

    sub-float/2addr v6, v8

    .line 2434
    invoke-virtual {v5, v4}, Landroid/view/View;->setPivotX(F)V

    .line 2435
    invoke-virtual {v5, v6}, Landroid/view/View;->setPivotY(F)V

    goto :goto_3

    .line 2439
    :cond_9
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v4, v4, Landroidx/constraintlayout/widget/d$e;->g:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_a

    .line 2440
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v4, v4, Landroidx/constraintlayout/widget/d$e;->g:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setPivotX(F)V

    .line 2442
    :cond_a
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v4, v4, Landroidx/constraintlayout/widget/d$e;->h:F

    invoke-static {v4}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-nez v4, :cond_b

    .line 2443
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v4, v4, Landroidx/constraintlayout/widget/d$e;->h:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setPivotY(F)V

    .line 2446
    :cond_b
    :goto_3
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v4, v4, Landroidx/constraintlayout/widget/d$e;->j:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationX(F)V

    .line 2447
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v4, v4, Landroidx/constraintlayout/widget/d$e;->k:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationY(F)V

    .line 2448
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v4, v6, :cond_d

    .line 2449
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v4, v4, Landroidx/constraintlayout/widget/d$e;->l:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setTranslationZ(F)V

    .line 2450
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-boolean v4, v4, Landroidx/constraintlayout/widget/d$e;->m:Z

    if-eqz v4, :cond_d

    .line 2451
    iget-object v4, v7, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget v4, v4, Landroidx/constraintlayout/widget/d$e;->n:F

    invoke-virtual {v5, v4}, Landroid/view/View;->setElevation(F)V

    goto :goto_4

    .line 2456
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WARNING NO CONSTRAINTS for view "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 2459
    :cond_e
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_f
    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2460
    iget-object v3, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/d$a;

    if-nez v3, :cond_10

    goto :goto_5

    .line 2464
    :cond_10
    iget-object v5, v3, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v5, v5, Landroidx/constraintlayout/widget/d$b;->aj:I

    if-ne v5, v4, :cond_13

    .line 2465
    new-instance v5, Landroidx/constraintlayout/widget/Barrier;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/Barrier;-><init>(Landroid/content/Context;)V

    .line 2466
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setId(I)V

    .line 2467
    iget-object v6, v3, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v6, v6, Landroidx/constraintlayout/widget/d$b;->ak:[I

    if-eqz v6, :cond_11

    .line 2468
    iget-object v6, v3, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v6, v6, Landroidx/constraintlayout/widget/d$b;->ak:[I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    goto :goto_6

    .line 2469
    :cond_11
    iget-object v6, v3, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v6, v6, Landroidx/constraintlayout/widget/d$b;->al:Ljava/lang/String;

    if-eqz v6, :cond_12

    .line 2470
    iget-object v6, v3, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v7, v3, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v7, v7, Landroidx/constraintlayout/widget/d$b;->al:Ljava/lang/String;

    invoke-direct {p0, v5, v7}, Landroidx/constraintlayout/widget/d;->a(Landroid/view/View;Ljava/lang/String;)[I

    move-result-object v7

    iput-object v7, v6, Landroidx/constraintlayout/widget/d$b;->ak:[I

    .line 2472
    iget-object v6, v3, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v6, v6, Landroidx/constraintlayout/widget/d$b;->ak:[I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setReferencedIds([I)V

    .line 2474
    :cond_12
    :goto_6
    iget-object v6, v3, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v6, v6, Landroidx/constraintlayout/widget/d$b;->ah:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setType(I)V

    .line 2475
    iget-object v6, v3, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget v6, v6, Landroidx/constraintlayout/widget/d$b;->ai:I

    invoke-virtual {v5, v6}, Landroidx/constraintlayout/widget/Barrier;->setMargin(I)V

    .line 2477
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v6

    .line 2478
    invoke-virtual {v5}, Landroidx/constraintlayout/widget/Barrier;->d()V

    .line 2479
    invoke-virtual {v3, v6}, Landroidx/constraintlayout/widget/d$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 2480
    invoke-virtual {p1, v5, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2482
    :cond_13
    iget-object v5, v3, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v5, v5, Landroidx/constraintlayout/widget/d$b;->a:Z

    if-eqz v5, :cond_f

    .line 2483
    new-instance v5, Landroidx/constraintlayout/widget/Guideline;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroidx/constraintlayout/widget/Guideline;-><init>(Landroid/content/Context;)V

    .line 2484
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroidx/constraintlayout/widget/Guideline;->setId(I)V

    .line 2485
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->generateDefaultLayoutParams()Landroidx/constraintlayout/widget/ConstraintLayout$a;

    move-result-object v1

    .line 2486
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/widget/d$a;->a(Landroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 2487
    invoke-virtual {p1, v5, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_5

    :cond_14
    :goto_7
    if-ge v2, v0, :cond_16

    .line 2491
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    .line 2492
    instance-of v1, p2, Landroidx/constraintlayout/widget/b;

    if-eqz v1, :cond_15

    .line 2493
    check-cast p2, Landroidx/constraintlayout/widget/b;

    .line 2494
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/widget/b;->b(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_16
    return-void
.end method

.method public a(Landroidx/constraintlayout/widget/b;Lbf;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/widget/b;",
            "Lbf;",
            "Landroidx/constraintlayout/widget/ConstraintLayout$a;",
            "Landroid/util/SparseArray<",
            "Lbf;",
            ">;)V"
        }
    .end annotation

    .line 2338
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/b;->getId()I

    move-result v0

    .line 2339
    iget-object v1, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2340
    iget-object v1, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/d$a;

    if-eqz v0, :cond_0

    .line 2341
    instance-of v1, p2, Lbk;

    if-eqz v1, :cond_0

    .line 2342
    check-cast p2, Lbk;

    .line 2343
    invoke-virtual {p1, v0, p2, p3, p4}, Landroidx/constraintlayout/widget/b;->a(Landroidx/constraintlayout/widget/d$a;Lbk;Landroidx/constraintlayout/widget/ConstraintLayout$a;Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public a(Landroidx/constraintlayout/widget/d;)V
    .locals 7

    .line 576
    iget-object v0, p1, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 577
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 578
    iget-object v3, p1, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/d$a;

    .line 580
    iget-object v3, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 581
    iget-object v3, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v5, Landroidx/constraintlayout/widget/d$a;

    invoke-direct {v5}, Landroidx/constraintlayout/widget/d$a;-><init>()V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 583
    :cond_1
    iget-object v3, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/d$a;

    if-nez v2, :cond_2

    goto :goto_0

    .line 587
    :cond_2
    iget-object v3, v2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/d$b;->b:Z

    if-nez v3, :cond_3

    .line 588
    iget-object v3, v2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v4, v1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/d$b;->a(Landroidx/constraintlayout/widget/d$b;)V

    .line 590
    :cond_3
    iget-object v3, v2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/d$d;->a:Z

    if-nez v3, :cond_4

    .line 591
    iget-object v3, v2, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget-object v4, v1, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/d$d;->a(Landroidx/constraintlayout/widget/d$d;)V

    .line 593
    :cond_4
    iget-object v3, v2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/d$e;->a:Z

    if-nez v3, :cond_5

    .line 594
    iget-object v3, v2, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-object v4, v1, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/d$e;->a(Landroidx/constraintlayout/widget/d$e;)V

    .line 596
    :cond_5
    iget-object v3, v2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/d$c;->a:Z

    if-nez v3, :cond_6

    .line 597
    iget-object v3, v2, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    iget-object v4, v1, Landroidx/constraintlayout/widget/d$a;->d:Landroidx/constraintlayout/widget/d$c;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/widget/d$c;->a(Landroidx/constraintlayout/widget/d$c;)V

    .line 599
    :cond_6
    iget-object v3, v1, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_7
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 600
    iget-object v5, v2, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 601
    iget-object v5, v2, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    iget-object v6, v1, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/a;

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_8
    return-void
.end method

.method public a(Landroidx/constraintlayout/widget/e;)V
    .locals 8

    .line 2254
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/e;->getChildCount()I

    move-result v0

    .line 2255
    iget-object v1, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 2257
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/e;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2258
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/e$a;

    .line 2260
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 2261
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/d;->f:Z

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 2262
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2264
    :cond_1
    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2265
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/d$a;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/d$a;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2267
    :cond_2
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/d$a;

    if-nez v5, :cond_3

    goto :goto_2

    .line 2271
    :cond_3
    instance-of v6, v2, Landroidx/constraintlayout/widget/b;

    if-eqz v6, :cond_4

    .line 2272
    check-cast v2, Landroidx/constraintlayout/widget/b;

    .line 2273
    invoke-static {v5, v2, v4, v3}, Landroidx/constraintlayout/widget/d$a;->a(Landroidx/constraintlayout/widget/d$a;Landroidx/constraintlayout/widget/b;ILandroidx/constraintlayout/widget/e$a;)V

    .line 2275
    :cond_4
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/d$a;->a(Landroidx/constraintlayout/widget/d$a;ILandroidx/constraintlayout/widget/e$a;)V

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5327
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/d;->f:Z

    return-void
.end method

.method public b(I)I
    .locals 0

    .line 3242
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/d;->g(I)Landroidx/constraintlayout/widget/d$a;

    move-result-object p1

    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget p1, p1, Landroidx/constraintlayout/widget/d$d;->c:I

    return p1
.end method

.method public b(Landroid/content/Context;I)V
    .locals 4

    .line 4088
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4089
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 4094
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    .line 4102
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4103
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/Context;Landroid/util/AttributeSet;Z)Landroidx/constraintlayout/widget/d$a;

    move-result-object v2

    const-string v3, "Guideline"

    .line 4104
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4105
    iget-object v0, v2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iput-boolean v1, v0, Landroidx/constraintlayout/widget/d$b;->a:Z

    .line 4110
    :cond_1
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    iget v1, v2, Landroidx/constraintlayout/widget/d$a;->a:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4099
    :cond_2
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 4096
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4122
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception p1

    .line 4120
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public b(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 10

    .line 2193
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 2194
    iget-object v1, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_8

    .line 2196
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2197
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 2199
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 2200
    iget-boolean v5, p0, Landroidx/constraintlayout/widget/d;->f:Z

    if-eqz v5, :cond_1

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    goto :goto_1

    .line 2201
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2203
    :cond_1
    :goto_1
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 2204
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroidx/constraintlayout/widget/d$a;

    invoke-direct {v7}, Landroidx/constraintlayout/widget/d$a;-><init>()V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2206
    :cond_2
    iget-object v5, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/widget/d$a;

    if-nez v5, :cond_3

    goto/16 :goto_2

    .line 2210
    :cond_3
    iget-object v6, p0, Landroidx/constraintlayout/widget/d;->e:Ljava/util/HashMap;

    invoke-static {v6, v2}, Landroidx/constraintlayout/widget/a;->a(Ljava/util/HashMap;Landroid/view/View;)Ljava/util/HashMap;

    move-result-object v6

    iput-object v6, v5, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    .line 2211
    invoke-static {v5, v4, v3}, Landroidx/constraintlayout/widget/d$a;->a(Landroidx/constraintlayout/widget/d$a;ILandroidx/constraintlayout/widget/ConstraintLayout$a;)V

    .line 2212
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$d;->b:I

    .line 2213
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_6

    .line 2214
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$d;->d:F

    .line 2215
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->b:F

    .line 2216
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->c:F

    .line 2217
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->d:F

    .line 2218
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->e:F

    .line 2219
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->f:F

    .line 2221
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v3

    .line 2222
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v4

    float-to-double v6, v3

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-nez v6, :cond_4

    float-to-double v6, v4

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_5

    .line 2225
    :cond_4
    iget-object v6, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput v3, v6, Landroidx/constraintlayout/widget/d$e;->g:F

    .line 2226
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->h:F

    .line 2229
    :cond_5
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->j:F

    .line 2230
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->k:F

    .line 2231
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_6

    .line 2232
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->l:F

    .line 2233
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    iget-boolean v3, v3, Landroidx/constraintlayout/widget/d$e;->m:Z

    if-eqz v3, :cond_6

    .line 2234
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->f:Landroidx/constraintlayout/widget/d$e;

    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$e;->n:F

    .line 2238
    :cond_6
    instance-of v3, v2, Landroidx/constraintlayout/widget/Barrier;

    if-eqz v3, :cond_7

    .line 2239
    check-cast v2, Landroidx/constraintlayout/widget/Barrier;

    .line 2240
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/Barrier;->getAllowsGoneWidget()Z

    move-result v4

    iput-boolean v4, v3, Landroidx/constraintlayout/widget/d$b;->ap:Z

    .line 2241
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/Barrier;->getReferencedIds()[I

    move-result-object v4

    iput-object v4, v3, Landroidx/constraintlayout/widget/d$b;->ak:[I

    .line 2242
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/Barrier;->getType()I

    move-result v4

    iput v4, v3, Landroidx/constraintlayout/widget/d$b;->ah:I

    .line 2243
    iget-object v3, v5, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/Barrier;->getMargin()I

    move-result v2

    iput v2, v3, Landroidx/constraintlayout/widget/d$b;->ai:I

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public b(Landroidx/constraintlayout/widget/d;)V
    .locals 5

    .line 680
    iget-object p1, p1, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/d$a;

    .line 681
    iget-object v1, v0, Landroidx/constraintlayout/widget/d$a;->h:Landroidx/constraintlayout/widget/d$a$a;

    if-eqz v1, :cond_0

    .line 682
    iget-object v1, v0, Landroidx/constraintlayout/widget/d$a;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 684
    iget-object v1, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 685
    invoke-virtual {p0, v2}, Landroidx/constraintlayout/widget/d;->f(I)Landroidx/constraintlayout/widget/d$a;

    move-result-object v2

    .line 686
    iget-object v3, v2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v3, v3, Landroidx/constraintlayout/widget/d$b;->am:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 687
    iget-object v3, v0, Landroidx/constraintlayout/widget/d$a;->b:Ljava/lang/String;

    iget-object v4, v2, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget-object v4, v4, Landroidx/constraintlayout/widget/d$b;->am:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 688
    iget-object v3, v0, Landroidx/constraintlayout/widget/d$a;->h:Landroidx/constraintlayout/widget/d$a$a;

    invoke-virtual {v3, v2}, Landroidx/constraintlayout/widget/d$a$a;->a(Landroidx/constraintlayout/widget/d$a;)V

    .line 689
    iget-object v2, v2, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    iget-object v3, v0, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    goto :goto_1

    .line 694
    :cond_2
    iget v1, v0, Landroidx/constraintlayout/widget/d$a;->a:I

    invoke-virtual {p0, v1}, Landroidx/constraintlayout/widget/d;->f(I)Landroidx/constraintlayout/widget/d$a;

    move-result-object v1

    .line 695
    iget-object v0, v0, Landroidx/constraintlayout/widget/d$a;->h:Landroidx/constraintlayout/widget/d$a$a;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/d$a$a;->a(Landroidx/constraintlayout/widget/d$a;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 5337
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/d;->d:Z

    return-void
.end method

.method public c(I)I
    .locals 0

    .line 3252
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/d;->g(I)Landroidx/constraintlayout/widget/d$a;

    move-result-object p1

    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->c:Landroidx/constraintlayout/widget/d$d;

    iget p1, p1, Landroidx/constraintlayout/widget/d$d;->b:I

    return p1
.end method

.method public c(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 1

    const/4 v0, 0x1

    .line 2285
    invoke-virtual {p0, p1, v0}, Landroidx/constraintlayout/widget/d;->a(Landroidx/constraintlayout/widget/ConstraintLayout;Z)V

    const/4 v0, 0x0

    .line 2286
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setConstraintSet(Landroidx/constraintlayout/widget/d;)V

    .line 2287
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->requestLayout()V

    return-void
.end method

.method public c(Landroidx/constraintlayout/widget/d;)V
    .locals 4

    .line 2177
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 2178
    iget-object v0, p1, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2179
    iget-object v2, p1, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/d$a;

    if-nez v2, :cond_0

    goto :goto_0

    .line 2183
    :cond_0
    iget-object v3, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/d$a;->a()Landroidx/constraintlayout/widget/d$a;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(I)I
    .locals 0

    .line 3262
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/d;->g(I)Landroidx/constraintlayout/widget/d$a;

    move-result-object p1

    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget p1, p1, Landroidx/constraintlayout/widget/d$b;->e:I

    return p1
.end method

.method public d(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 6

    .line 2307
    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_5

    .line 2309
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 2310
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v3

    .line 2311
    iget-object v4, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2312
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id unknown "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lcl;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ConstraintSet"

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2315
    :cond_0
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/d;->f:Z

    if-eqz v4, :cond_2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    goto :goto_1

    .line 2316
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "All children of ConstraintLayout must have ids to use ConstraintSet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2319
    :cond_2
    :goto_1
    iget-object v4, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2320
    iget-object v4, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/widget/d$a;

    if-nez v3, :cond_3

    goto :goto_2

    .line 2324
    :cond_3
    iget-object v3, v3, Landroidx/constraintlayout/widget/d$a;->g:Ljava/util/HashMap;

    invoke-static {v2, v3}, Landroidx/constraintlayout/widget/a;->a(Landroid/view/View;Ljava/util/HashMap;)V

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public e(I)I
    .locals 0

    .line 3272
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/d;->g(I)Landroidx/constraintlayout/widget/d$a;

    move-result-object p1

    iget-object p1, p1, Landroidx/constraintlayout/widget/d$a;->e:Landroidx/constraintlayout/widget/d$b;

    iget p1, p1, Landroidx/constraintlayout/widget/d$b;->d:I

    return p1
.end method

.method public f(I)Landroidx/constraintlayout/widget/d$a;
    .locals 2

    .line 5294
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5295
    iget-object v0, p0, Landroidx/constraintlayout/widget/d;->h:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/d$a;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
