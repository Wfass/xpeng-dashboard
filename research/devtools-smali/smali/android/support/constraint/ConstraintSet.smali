.class public Landroid/support/constraint/ConstraintSet;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/constraint/ConstraintSet$Constraint;
    }
.end annotation


# static fields
.field private static final ALPHA:I = 0x2b

.field private static final BARRIER_TYPE:I = 0x1

.field public static final BASELINE:I = 0x5

.field private static final BASELINE_TO_BASELINE:I = 0x1

.field public static final BOTTOM:I = 0x4

.field private static final BOTTOM_MARGIN:I = 0x2

.field private static final BOTTOM_TO_BOTTOM:I = 0x3

.field private static final BOTTOM_TO_TOP:I = 0x4

.field public static final CHAIN_PACKED:I = 0x2

.field public static final CHAIN_SPREAD:I = 0x0

.field public static final CHAIN_SPREAD_INSIDE:I = 0x1

.field private static final DEBUG:Z = false

.field private static final DIMENSION_RATIO:I = 0x5

.field private static final EDITOR_ABSOLUTE_X:I = 0x6

.field private static final EDITOR_ABSOLUTE_Y:I = 0x7

.field private static final ELEVATION:I = 0x2c

.field public static final END:I = 0x7

.field private static final END_MARGIN:I = 0x8

.field private static final END_TO_END:I = 0x9

.field private static final END_TO_START:I = 0xa

.field public static final GONE:I = 0x8

.field private static final GONE_BOTTOM_MARGIN:I = 0xb

.field private static final GONE_END_MARGIN:I = 0xc

.field private static final GONE_LEFT_MARGIN:I = 0xd

.field private static final GONE_RIGHT_MARGIN:I = 0xe

.field private static final GONE_START_MARGIN:I = 0xf

.field private static final GONE_TOP_MARGIN:I = 0x10

.field private static final GUIDE_BEGIN:I = 0x11

.field private static final GUIDE_END:I = 0x12

.field private static final GUIDE_PERCENT:I = 0x13

.field private static final HEIGHT_DEFAULT:I = 0x37

.field private static final HEIGHT_MAX:I = 0x39

.field private static final HEIGHT_MIN:I = 0x3b

.field public static final HORIZONTAL:I = 0x0

.field private static final HORIZONTAL_BIAS:I = 0x14

.field public static final HORIZONTAL_GUIDELINE:I = 0x0

.field private static final HORIZONTAL_STYLE:I = 0x29

.field private static final HORIZONTAL_WEIGHT:I = 0x27

.field public static final INVISIBLE:I = 0x4

.field private static final LAYOUT_HEIGHT:I = 0x15

.field private static final LAYOUT_VISIBILITY:I = 0x16

.field private static final LAYOUT_WIDTH:I = 0x17

.field public static final LEFT:I = 0x1

.field private static final LEFT_MARGIN:I = 0x18

.field private static final LEFT_TO_LEFT:I = 0x19

.field private static final LEFT_TO_RIGHT:I = 0x1a

.field public static final MATCH_CONSTRAINT:I = 0x0

.field public static final MATCH_CONSTRAINT_SPREAD:I = 0x0

.field public static final MATCH_CONSTRAINT_WRAP:I = 0x1

.field private static final ORIENTATION:I = 0x1b

.field public static final PARENT_ID:I = 0x0

.field public static final RIGHT:I = 0x2

.field private static final RIGHT_MARGIN:I = 0x1c

.field private static final RIGHT_TO_LEFT:I = 0x1d

.field private static final RIGHT_TO_RIGHT:I = 0x1e

.field private static final ROTATION:I = 0x3c

.field private static final ROTATION_X:I = 0x2d

.field private static final ROTATION_Y:I = 0x2e

.field private static final SCALE_X:I = 0x2f

.field private static final SCALE_Y:I = 0x30

.field public static final START:I = 0x6

.field private static final START_MARGIN:I = 0x1f

.field private static final START_TO_END:I = 0x20

.field private static final START_TO_START:I = 0x21

.field private static final TAG:Ljava/lang/String; = "ConstraintSet"

.field public static final TOP:I = 0x3

.field private static final TOP_MARGIN:I = 0x22

.field private static final TOP_TO_BOTTOM:I = 0x23

.field private static final TOP_TO_TOP:I = 0x24

.field private static final TRANSFORM_PIVOT_X:I = 0x31

.field private static final TRANSFORM_PIVOT_Y:I = 0x32

.field private static final TRANSLATION_X:I = 0x33

.field private static final TRANSLATION_Y:I = 0x34

.field private static final TRANSLATION_Z:I = 0x35

.field public static final UNSET:I = -0x1

.field private static final UNUSED:I = 0x3d

.field public static final VERTICAL:I = 0x1

.field private static final VERTICAL_BIAS:I = 0x25

.field public static final VERTICAL_GUIDELINE:I = 0x1

.field private static final VERTICAL_STYLE:I = 0x2a

.field private static final VERTICAL_WEIGHT:I = 0x28

.field private static final VIEW_ID:I = 0x26

.field private static final VISIBILITY_FLAGS:[I

.field public static final VISIBLE:I = 0x0

.field private static final WIDTH_DEFAULT:I = 0x36

.field private static final WIDTH_MAX:I = 0x38

.field private static final WIDTH_MIN:I = 0x3a

.field public static final WRAP_CONTENT:I = -0x2

.field private static mapToConstant:Landroid/util/SparseIntArray;


# instance fields
.field private mConstraints:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/support/constraint/ConstraintSet$Constraint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 193
    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroid/support/constraint/ConstraintSet;->VISIBILITY_FLAGS:[I

    .line 198
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    .line 263
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_toLeftOf:I

    const/16 v3, 0x19

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 264
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_toRightOf:I

    const/16 v3, 0x1a

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 265
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_toLeftOf:I

    const/16 v3, 0x1d

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 266
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_toRightOf:I

    const/16 v3, 0x1e

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 267
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_toTopOf:I

    const/16 v3, 0x24

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 268
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_toBottomOf:I

    const/16 v3, 0x23

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 269
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_toTopOf:I

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 270
    sget-object v1, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v2, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_toBottomOf:I

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseIntArray;->append(II)V

    .line 271
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 273
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 274
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 275
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 276
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 277
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 278
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_orientation:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 279
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintStart_toEndOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 280
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintStart_toStartOf:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 281
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 282
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 283
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 284
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 285
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 286
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 287
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 288
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 289
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_weight:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 290
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_weight:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 291
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 292
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 294
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 295
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintVertical_bias:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 296
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 297
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintLeft_creator:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 298
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 299
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 300
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 301
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 302
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginLeft:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 303
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginRight:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 304
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginStart:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 305
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 306
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginTop:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 307
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 308
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_width:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 309
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 310
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_visibility:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 311
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_alpha:I

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 312
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_elevation:I

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 313
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationX:I

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 314
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotationY:I

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 315
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_rotation:I

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 316
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleX:I

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 317
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_scaleY:I

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 318
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotX:I

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 319
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_transformPivotY:I

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 320
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationX:I

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 321
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationY:I

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 322
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_translationZ:I

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 323
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_default:I

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 324
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_default:I

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 325
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_max:I

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 326
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_max:I

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 327
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintWidth_min:I

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 328
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_layout_constraintHeight_min:I

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 330
    sget-object v0, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    sget v1, Landroid/support/constraint/R$styleable;->ConstraintSet_android_id:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 331
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x4
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 333
    return-void
.end method

.method private createHorizontalChain(IIII[I[FIII)V
    .locals 12

    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 970
    array-length v0, v7

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 973
    if-eqz v8, :cond_1

    array-length v0, v8

    array-length v1, v7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 974
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 976
    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz v8, :cond_2

    .line 977
    aget v1, v7, v0

    invoke-direct {v6, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v1

    aget v2, v8, v0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 979
    :cond_2
    aget v1, v7, v0

    invoke-direct {v6, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v1

    move/from16 v2, p7

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 980
    aget v1, v7, v0

    const/4 v5, -0x1

    move-object v0, v6

    move/from16 v2, p8

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 981
    const/4 v9, 0x1

    move v10, v9

    :goto_1
    array-length v0, v7

    if-ge v10, v0, :cond_4

    .line 982
    aget v0, v7, v10

    .line 983
    aget v1, v7, v10

    add-int/lit8 v11, v10, -0x1

    aget v3, v7, v11

    const/4 v5, -0x1

    move-object v0, v6

    move/from16 v2, p8

    move/from16 v4, p9

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 984
    aget v1, v7, v11

    aget v3, v7, v10

    move/from16 v2, p9

    move/from16 v4, p8

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 985
    if-eqz v8, :cond_3

    .line 986
    aget v0, v7, v10

    invoke-direct {v6, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    aget v1, v8, v10

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    .line 981
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 990
    :cond_4
    array-length v0, v7

    sub-int/2addr v0, v9

    aget v1, v7, v0

    const/4 v5, -0x1

    move-object v0, v6

    move/from16 v2, p9

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 993
    return-void

    .line 971
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintSet$Constraint;
    .locals 2

    .line 2023
    new-instance v0, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    .line 2024
    sget-object v1, Landroid/support/constraint/R$styleable;->ConstraintSet:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 2025
    invoke-direct {p0, v0, p1}, Landroid/support/constraint/ConstraintSet;->populateConstraint(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V

    .line 2026
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 2027
    return-object v0
.end method

.method private get(I)Landroid/support/constraint/ConstraintSet$Constraint;
    .locals 4

    .line 1946
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1947
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1949
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintSet$Constraint;

    return-object p1
.end method

.method private static lookupID(Landroid/content/res/TypedArray;II)I
    .locals 1

    .line 2015
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    .line 2016
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 2017
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    .line 2019
    :cond_0
    return p2
.end method

.method private populateConstraint(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/content/res/TypedArray;)V
    .locals 6

    .line 2031
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 2032
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2033
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 2072
    sget-object v3, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    packed-switch v3, :pswitch_data_1

    .line 2241
    const-string v3, "ConstraintSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attribute 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2242
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2241
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 2237
    :pswitch_0
    const-string v3, "ConstraintSet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unused attribute 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2238
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "   "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroid/support/constraint/ConstraintSet;->mapToConstant:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2237
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    goto/16 :goto_2

    .line 2190
    :pswitch_1
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    goto :goto_1

    .line 2216
    :pswitch_2
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    .line 2217
    goto/16 :goto_2

    .line 2213
    :pswitch_3
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 2214
    goto/16 :goto_2

    .line 2210
    :pswitch_4
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 2211
    goto/16 :goto_2

    .line 2207
    :pswitch_5
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 2208
    goto/16 :goto_2

    .line 2204
    :pswitch_6
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 2205
    goto/16 :goto_2

    .line 2201
    :pswitch_7
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    .line 2202
    goto/16 :goto_2

    .line 2198
    :pswitch_8
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    .line 2199
    goto/16 :goto_2

    .line 2195
    :pswitch_9
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    .line 2196
    goto/16 :goto_2

    .line 2192
    :goto_1
    :pswitch_a
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    .line 2193
    goto/16 :goto_2

    .line 2186
    :pswitch_b
    const/4 v3, 0x1

    iput-boolean v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    .line 2187
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    .line 2188
    goto/16 :goto_2

    .line 2183
    :pswitch_c
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    .line 2184
    goto/16 :goto_2

    .line 2225
    :pswitch_d
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 2226
    goto/16 :goto_2

    .line 2228
    :pswitch_e
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 2229
    goto/16 :goto_2

    .line 2219
    :pswitch_f
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 2220
    goto/16 :goto_2

    .line 2222
    :pswitch_10
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    .line 2223
    goto/16 :goto_2

    .line 2231
    :pswitch_11
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    .line 2232
    goto/16 :goto_2

    .line 2152
    :pswitch_12
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 2153
    goto/16 :goto_2

    .line 2086
    :pswitch_13
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 2087
    goto/16 :goto_2

    .line 2089
    :pswitch_14
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 2090
    goto/16 :goto_2

    .line 2167
    :pswitch_15
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 2168
    goto/16 :goto_2

    .line 2122
    :pswitch_16
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 2123
    goto/16 :goto_2

    .line 2119
    :pswitch_17
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 2120
    goto/16 :goto_2

    .line 2161
    :pswitch_18
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 2162
    goto/16 :goto_2

    .line 2083
    :pswitch_19
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 2084
    goto/16 :goto_2

    .line 2080
    :pswitch_1a
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 2081
    goto/16 :goto_2

    .line 2158
    :pswitch_1b
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 2159
    goto/16 :goto_2

    .line 2116
    :pswitch_1c
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    .line 2117
    goto/16 :goto_2

    .line 2077
    :pswitch_1d
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 2078
    goto/16 :goto_2

    .line 2074
    :pswitch_1e
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 2075
    goto/16 :goto_2

    .line 2155
    :pswitch_1f
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 2156
    goto/16 :goto_2

    .line 2173
    :pswitch_20
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    .line 2174
    goto/16 :goto_2

    .line 2179
    :pswitch_21
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 2180
    sget-object v2, Landroid/support/constraint/ConstraintSet;->VISIBILITY_FLAGS:[I

    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    aget v2, v2, v3

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 2181
    goto/16 :goto_2

    .line 2176
    :pswitch_22
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    .line 2177
    goto/16 :goto_2

    .line 2149
    :pswitch_23
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 2150
    goto/16 :goto_2

    .line 2113
    :pswitch_24
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 2114
    goto/16 :goto_2

    .line 2110
    :pswitch_25
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 2111
    goto/16 :goto_2

    .line 2107
    :pswitch_26
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 2108
    goto/16 :goto_2

    .line 2134
    :pswitch_27
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    .line 2135
    goto/16 :goto_2

    .line 2143
    :pswitch_28
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    .line 2144
    goto/16 :goto_2

    .line 2137
    :pswitch_29
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    .line 2138
    goto/16 :goto_2

    .line 2131
    :pswitch_2a
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 2132
    goto/16 :goto_2

    .line 2146
    :pswitch_2b
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    .line 2147
    goto :goto_2

    .line 2140
    :pswitch_2c
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 2141
    goto :goto_2

    .line 2125
    :pswitch_2d
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 2126
    goto :goto_2

    .line 2128
    :pswitch_2e
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 2129
    goto :goto_2

    .line 2164
    :pswitch_2f
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 2165
    goto :goto_2

    .line 2104
    :pswitch_30
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteY:I

    .line 2105
    goto :goto_2

    .line 2101
    :pswitch_31
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->editorAbsoluteX:I

    .line 2102
    goto :goto_2

    .line 2234
    :pswitch_32
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 2235
    goto :goto_2

    .line 2092
    :pswitch_33
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 2093
    goto :goto_2

    .line 2095
    :pswitch_34
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 2096
    goto :goto_2

    .line 2170
    :pswitch_35
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 2171
    goto :goto_2

    .line 2098
    :pswitch_36
    iget v3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    invoke-static {p2, v2, v3}, Landroid/support/constraint/ConstraintSet;->lookupID(Landroid/content/res/TypedArray;II)I

    move-result v2

    iput v2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 2099
    nop

    .line 2032
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 2245
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sideToString(I)Ljava/lang/String;
    .locals 0

    .line 1953
    packed-switch p1, :pswitch_data_0

    .line 1969
    const-string p1, "undefined"

    return-object p1

    .line 1967
    :pswitch_0
    const-string p1, "end"

    return-object p1

    .line 1965
    :pswitch_1
    const-string p1, "start"

    return-object p1

    .line 1963
    :pswitch_2
    const-string p1, "baseline"

    return-object p1

    .line 1961
    :pswitch_3
    const-string p1, "bottom"

    return-object p1

    .line 1959
    :pswitch_4
    const-string p1, "top"

    return-object p1

    .line 1957
    :pswitch_5
    const-string p1, "right"

    return-object p1

    .line 1955
    :pswitch_6
    const-string p1, "left"

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public addToHorizontalChain(III)V
    .locals 8

    .line 1747
    const/4 v6, 0x2

    const/4 v7, 0x1

    if-nez p2, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    const/4 v5, 0x0

    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1748
    const/4 v2, 0x2

    if-nez p3, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1749
    if-eqz p2, :cond_2

    .line 1750
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1752
    :cond_2
    if-eqz p3, :cond_3

    .line 1753
    const/4 v2, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1755
    :cond_3
    return-void
.end method

.method public addToHorizontalChainRTL(III)V
    .locals 8

    .line 1765
    const/4 v6, 0x7

    const/4 v7, 0x6

    if-nez p2, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    const/4 v5, 0x0

    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1766
    const/4 v2, 0x7

    if-nez p3, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1767
    if-eqz p2, :cond_2

    .line 1768
    const/4 v2, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p2

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1770
    :cond_2
    if-eqz p3, :cond_3

    .line 1771
    const/4 v2, 0x6

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p3

    move v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1773
    :cond_3
    return-void
.end method

.method public addToVerticalChain(III)V
    .locals 15

    .line 1783
    const/4 v6, 0x4

    const/4 v7, 0x3

    if-nez p2, :cond_0

    move v4, v7

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    const/4 v5, 0x0

    const/4 v2, 0x3

    move-object v0, p0

    move/from16 v1, p1

    move/from16 v3, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1784
    const/4 v10, 0x4

    if-nez p3, :cond_1

    move v12, v6

    goto :goto_1

    :cond_1
    move v12, v7

    :goto_1
    const/4 v13, 0x0

    move-object v8, p0

    move/from16 v9, p1

    move/from16 v11, p3

    invoke-virtual/range {v8 .. v13}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1785
    if-eqz p2, :cond_2

    .line 1786
    const/4 v2, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p2

    move/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1788
    :cond_2
    if-eqz p2, :cond_3

    .line 1789
    const/4 v2, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v3, p1

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1791
    :cond_3
    return-void
.end method

.method public applyTo(Landroid/support/constraint/ConstraintLayout;)V
    .locals 1

    .line 707
    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintSet;->applyToInternal(Landroid/support/constraint/ConstraintLayout;)V

    .line 708
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/constraint/ConstraintLayout;->setConstraintSet(Landroid/support/constraint/ConstraintSet;)V

    .line 709
    return-void
.end method

.method applyToInternal(Landroid/support/constraint/ConstraintLayout;)V
    .locals 9

    .line 715
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 716
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 718
    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x1

    if-ge v2, v0, :cond_3

    .line 719
    invoke-virtual {p1, v2}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 720
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    .line 721
    iget-object v7, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 722
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 723
    iget-object v7, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 724
    iget v8, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    if-eq v8, v3, :cond_1

    .line 725
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 727
    :cond_0
    move-object v3, v5

    check-cast v3, Landroid/support/constraint/Barrier;

    .line 728
    invoke-virtual {v3, v6}, Landroid/support/constraint/Barrier;->setId(I)V

    .line 729
    iget-object v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v3, v4}, Landroid/support/constraint/Barrier;->setReferencedIds([I)V

    .line 730
    iget v4, v7, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {v3, v4}, Landroid/support/constraint/Barrier;->setType(I)V

    .line 731
    nop

    .line 732
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v3

    .line 733
    invoke-virtual {v7, v3}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 738
    :cond_1
    :goto_1
    nop

    .line 739
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 740
    invoke-virtual {v7, v3}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 741
    invoke-virtual {v5, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 742
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 743
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_2

    .line 744
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setAlpha(F)V

    .line 745
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotation(F)V

    .line 746
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationX(F)V

    .line 747
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setRotationY(F)V

    .line 748
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleX(F)V

    .line 749
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setScaleY(F)V

    .line 750
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotX(F)V

    .line 751
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setPivotY(F)V

    .line 752
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 753
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationY(F)V

    .line 754
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_2

    .line 755
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setTranslationZ(F)V

    .line 756
    iget-boolean v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v3, :cond_2

    .line 757
    iget v3, v7, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    invoke-virtual {v5, v3}, Landroid/view/View;->setElevation(F)V

    .line 718
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 763
    :cond_3
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 764
    iget-object v2, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 765
    iget v5, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    if-eq v5, v3, :cond_5

    .line 766
    iget v5, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    if-eq v5, v4, :cond_4

    goto :goto_3

    .line 768
    :cond_4
    new-instance v5, Landroid/support/constraint/Barrier;

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/constraint/Barrier;-><init>(Landroid/content/Context;)V

    .line 769
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/constraint/Barrier;->setId(I)V

    .line 770
    iget-object v6, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    invoke-virtual {v5, v6}, Landroid/support/constraint/Barrier;->setReferencedIds([I)V

    .line 771
    iget v6, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierDirection:I

    invoke-virtual {v5, v6}, Landroid/support/constraint/Barrier;->setType(I)V

    .line 772
    nop

    .line 773
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v6

    .line 774
    invoke-virtual {v2, v6}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 775
    invoke-virtual {p1, v5, v6}, Landroid/support/constraint/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    :cond_5
    :goto_3
    iget-boolean v5, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    if-eqz v5, :cond_6

    .line 781
    new-instance v5, Landroid/support/constraint/Guideline;

    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/constraint/Guideline;-><init>(Landroid/content/Context;)V

    .line 782
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/support/constraint/Guideline;->setId(I)V

    .line 783
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->generateDefaultLayoutParams()Landroid/support/constraint/ConstraintLayout$LayoutParams;

    move-result-object v1

    .line 784
    invoke-virtual {v2, v1}, Landroid/support/constraint/ConstraintSet$Constraint;->applyTo(Landroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 785
    invoke-virtual {p1, v5, v1}, Landroid/support/constraint/ConstraintLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 787
    :cond_6
    goto :goto_2

    .line 788
    :cond_7
    return-void
.end method

.method public center(IIIIIIIF)V
    .locals 9

    move-object v6, p0

    move v4, p3

    .line 808
    move/from16 v7, p8

    if-ltz p4, :cond_6

    .line 811
    if-ltz p7, :cond_5

    .line 814
    const/4 v0, 0x0

    cmpg-float v0, v7, v0

    if-lez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, v7, v0

    if-gtz v0, :cond_4

    .line 818
    const/4 v0, 0x1

    if-eq v4, v0, :cond_3

    const/4 v0, 0x2

    if-ne v4, v0, :cond_0

    goto :goto_1

    .line 823
    :cond_0
    const/4 v0, 0x6

    if-eq v4, v0, :cond_2

    const/4 v0, 0x7

    if-ne v4, v0, :cond_1

    goto :goto_0

    .line 829
    :cond_1
    const/4 v2, 0x3

    move-object v0, v6

    move v1, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 830
    const/4 v2, 0x4

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 831
    iget-object v0, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 832
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    goto :goto_2

    .line 824
    :cond_2
    :goto_0
    const/4 v2, 0x6

    move-object v0, v6

    move v1, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 825
    const/4 v2, 0x7

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 826
    iget-object v0, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 827
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 828
    goto :goto_2

    .line 819
    :cond_3
    :goto_1
    const/4 v2, 0x1

    move-object v0, v6

    move v1, p1

    move v3, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 820
    const/4 v2, 0x2

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 821
    iget-object v0, v6, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 822
    iput v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 823
    nop

    .line 834
    :goto_2
    return-void

    .line 815
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bias must be between 0 and 1 inclusive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 812
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "margin must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 809
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "margin must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public centerHorizontally(II)V
    .locals 9

    .line 1218
    if-nez p2, :cond_0

    .line 1219
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0

    .line 1221
    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    .line 1223
    :goto_0
    return-void
.end method

.method public centerHorizontally(IIIIIIIF)V
    .locals 9

    .line 850
    const/4 v2, 0x1

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 851
    const/4 v5, 0x2

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 852
    iget-object v0, v0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 853
    move/from16 v1, p8

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 854
    return-void
.end method

.method public centerHorizontallyRtl(II)V
    .locals 9

    .line 1232
    if-nez p2, :cond_0

    .line 1233
    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0

    .line 1235
    :cond_0
    const/4 v3, 0x7

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    .line 1237
    :goto_0
    return-void
.end method

.method public centerHorizontallyRtl(IIIIIIIF)V
    .locals 9

    .line 870
    const/4 v2, 0x6

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 871
    const/4 v5, 0x7

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 872
    iget-object v0, v0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 873
    move/from16 v1, p8

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 874
    return-void
.end method

.method public centerVertically(II)V
    .locals 9

    .line 1247
    if-nez p2, :cond_0

    .line 1248
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    goto :goto_0

    .line 1250
    :cond_0
    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v5, p2

    invoke-virtual/range {v0 .. v8}, Landroid/support/constraint/ConstraintSet;->center(IIIIIIIF)V

    .line 1252
    :goto_0
    return-void
.end method

.method public centerVertically(IIIIIIIF)V
    .locals 9

    .line 890
    const/4 v2, 0x3

    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 891
    const/4 v5, 0x4

    move-object v3, p0

    move v4, p1

    move v6, p5

    move v7, p6

    move/from16 v8, p7

    invoke-virtual/range {v3 .. v8}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 892
    iget-object v0, v0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 893
    move/from16 v1, p8

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 894
    return-void
.end method

.method public clear(I)V
    .locals 1

    .line 1260
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    return-void
.end method

.method public clear(II)V
    .locals 2

    .line 1270
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1271
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1272
    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    .line 1314
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1308
    :pswitch_0
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1309
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1310
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 1311
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    .line 1312
    goto :goto_0

    .line 1302
    :pswitch_1
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1303
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1304
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 1305
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    .line 1306
    goto :goto_0

    .line 1299
    :pswitch_2
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1300
    goto :goto_0

    .line 1292
    :pswitch_3
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1293
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1294
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 1295
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 1296
    goto :goto_0

    .line 1286
    :pswitch_4
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1287
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1288
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 1289
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    .line 1290
    goto :goto_0

    .line 1280
    :pswitch_5
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 1281
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1282
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 1283
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    .line 1284
    goto :goto_0

    .line 1274
    :pswitch_6
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1275
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1276
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 1277
    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 1278
    nop

    .line 1317
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public clone(Landroid/content/Context;I)V
    .locals 1

    .line 621
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintLayout;

    invoke-virtual {p0, p1}, Landroid/support/constraint/ConstraintSet;->clone(Landroid/support/constraint/ConstraintLayout;)V

    .line 622
    return-void
.end method

.method public clone(Landroid/support/constraint/ConstraintLayout;)V
    .locals 9

    .line 642
    invoke-virtual {p1}, Landroid/support/constraint/ConstraintLayout;->getChildCount()I

    move-result v0

    .line 643
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 644
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 645
    invoke-virtual {p1, v1}, Landroid/support/constraint/ConstraintLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 646
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintLayout$LayoutParams;

    .line 648
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 649
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 650
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 652
    :cond_0
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 653
    invoke-static {v5, v4, v3}, Landroid/support/constraint/ConstraintSet$Constraint;->access$100(Landroid/support/constraint/ConstraintSet$Constraint;ILandroid/support/constraint/ConstraintLayout$LayoutParams;)V

    .line 654
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 655
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_1

    .line 656
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    .line 657
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    .line 658
    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    .line 659
    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    .line 660
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    .line 661
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    .line 662
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 663
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 664
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 665
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 666
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 667
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    move-result v3

    iput v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    .line 668
    iget-boolean v3, v5, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    if-eqz v3, :cond_1

    .line 669
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    move-result v2

    iput v2, v5, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    .line 644
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 674
    :cond_2
    return-void
.end method

.method public clone(Landroid/support/constraint/ConstraintSet;)V
    .locals 4

    .line 630
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 631
    iget-object v0, p1, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 632
    iget-object v2, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget-object v3, p1, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/ConstraintSet$Constraint;

    invoke-virtual {v3}, Landroid/support/constraint/ConstraintSet$Constraint;->clone()Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    goto :goto_0

    .line 634
    :cond_0
    return-void
.end method

.method public clone(Landroid/support/constraint/Constraints;)V
    .locals 9

    .line 682
    invoke-virtual {p1}, Landroid/support/constraint/Constraints;->getChildCount()I

    move-result v0

    .line 683
    iget-object v1, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 684
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 685
    invoke-virtual {p1, v1}, Landroid/support/constraint/Constraints;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 686
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/support/constraint/Constraints$LayoutParams;

    .line 688
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v4

    .line 689
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 690
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    :cond_0
    iget-object v5, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 693
    instance-of v6, v2, Landroid/support/constraint/ConstraintHelper;

    if-eqz v6, :cond_1

    .line 694
    check-cast v2, Landroid/support/constraint/ConstraintHelper;

    .line 695
    invoke-static {v5, v2, v4, v3}, Landroid/support/constraint/ConstraintSet$Constraint;->access$200(Landroid/support/constraint/ConstraintSet$Constraint;Landroid/support/constraint/ConstraintHelper;ILandroid/support/constraint/Constraints$LayoutParams;)V

    .line 697
    :cond_1
    invoke-static {v5, v4, v3}, Landroid/support/constraint/ConstraintSet$Constraint;->access$300(Landroid/support/constraint/ConstraintSet$Constraint;ILandroid/support/constraint/Constraints$LayoutParams;)V

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 699
    :cond_2
    return-void
.end method

.method public connect(IIII)V
    .locals 7

    .line 1118
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1119
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1122
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x6

    const/4 v5, 0x7

    const/4 v6, -0x1

    packed-switch p2, :pswitch_data_0

    .line 1206
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1207
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unknown"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1195
    :pswitch_0
    if-ne p4, v5, :cond_1

    .line 1196
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1197
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    goto/16 :goto_0

    .line 1198
    :cond_1
    if-ne p4, v4, :cond_2

    .line 1199
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1200
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    goto/16 :goto_0

    .line 1202
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1184
    :pswitch_1
    if-ne p4, v4, :cond_3

    .line 1185
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1186
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    goto/16 :goto_0

    .line 1187
    :cond_3
    if-ne p4, v5, :cond_4

    .line 1188
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1189
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    goto/16 :goto_0

    .line 1191
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1173
    :pswitch_2
    const/4 p2, 0x5

    if-ne p4, p2, :cond_5

    .line 1174
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1175
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1176
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1177
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1178
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_0

    .line 1180
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1160
    :pswitch_3
    if-ne p4, v3, :cond_6

    .line 1161
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1162
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1163
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_0

    .line 1164
    :cond_6
    if-ne p4, v2, :cond_7

    .line 1165
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1166
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1167
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto/16 :goto_0

    .line 1169
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1147
    :pswitch_4
    if-ne p4, v2, :cond_8

    .line 1148
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1149
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1150
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_0

    .line 1151
    :cond_8
    if-ne p4, v3, :cond_9

    .line 1152
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1153
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1154
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_0

    .line 1156
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1135
    :pswitch_5
    if-ne p4, v1, :cond_a

    .line 1136
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1137
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    goto :goto_0

    .line 1139
    :cond_a
    if-ne p4, v0, :cond_b

    .line 1140
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 1141
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    goto :goto_0

    .line 1143
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1124
    :pswitch_6
    if-ne p4, v1, :cond_c

    .line 1125
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1126
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    goto :goto_0

    .line 1127
    :cond_c
    if-ne p4, v0, :cond_d

    .line 1128
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1129
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1209
    :goto_0
    return-void

    .line 1131
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "left to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public connect(IIIII)V
    .locals 7

    .line 1005
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Landroid/support/constraint/ConstraintSet$Constraint;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/constraint/ConstraintSet$Constraint;-><init>(Landroid/support/constraint/ConstraintSet$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1009
    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x6

    const/4 v5, 0x7

    const/4 v6, -0x1

    packed-switch p2, :pswitch_data_0

    .line 1104
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1105
    invoke-direct {p0, p2}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " unknown"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1092
    :pswitch_0
    if-ne p4, v5, :cond_1

    .line 1093
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1094
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    goto :goto_0

    .line 1095
    :cond_1
    if-ne p4, v4, :cond_2

    .line 1096
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1097
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endToEnd:I

    .line 1101
    :goto_0
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 1102
    goto/16 :goto_6

    .line 1099
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1080
    :pswitch_1
    if-ne p4, v4, :cond_3

    .line 1081
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1082
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    goto :goto_1

    .line 1083
    :cond_3
    if-ne p4, v5, :cond_4

    .line 1084
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1085
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startToStart:I

    .line 1089
    :goto_1
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 1090
    goto/16 :goto_6

    .line 1087
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1069
    :pswitch_2
    const/4 p2, 0x5

    if-ne p4, p2, :cond_5

    .line 1070
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1071
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1072
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1073
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1074
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    goto/16 :goto_6

    .line 1076
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1053
    :pswitch_3
    if-ne p4, v3, :cond_6

    .line 1054
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1055
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1056
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_2

    .line 1058
    :cond_6
    if-ne p4, v2, :cond_7

    .line 1059
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1060
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    .line 1061
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1066
    :goto_2
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 1067
    goto/16 :goto_6

    .line 1064
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1038
    :pswitch_4
    if-ne p4, v2, :cond_8

    .line 1039
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1040
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1041
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    goto :goto_3

    .line 1042
    :cond_8
    if-ne p4, v3, :cond_9

    .line 1043
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1044
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    .line 1045
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->baselineToBaseline:I

    .line 1050
    :goto_3
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 1051
    goto :goto_6

    .line 1048
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1024
    :pswitch_5
    if-ne p4, v1, :cond_a

    .line 1025
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1026
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    goto :goto_4

    .line 1028
    :cond_a
    if-ne p4, v0, :cond_b

    .line 1029
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    .line 1030
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1035
    :goto_4
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 1036
    goto :goto_6

    .line 1033
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "right to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1011
    :pswitch_6
    if-ne p4, v1, :cond_c

    .line 1012
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1013
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    goto :goto_5

    .line 1014
    :cond_c
    if-ne p4, v0, :cond_d

    .line 1015
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1016
    iput v6, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    .line 1021
    :goto_5
    iput p5, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 1022
    nop

    .line 1107
    :goto_6
    return-void

    .line 1019
    :cond_d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Left to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p4}, Landroid/support/constraint/ConstraintSet;->sideToString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " undefined"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constrainDefaultHeight(II)V
    .locals 0

    .line 1671
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->heightDefault:I

    .line 1672
    return-void
.end method

.method public constrainDefaultWidth(II)V
    .locals 0

    .line 1682
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->widthDefault:I

    .line 1683
    return-void
.end method

.method public constrainHeight(II)V
    .locals 0

    .line 1604
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mHeight:I

    .line 1605
    return-void
.end method

.method public constrainMaxHeight(II)V
    .locals 0

    .line 1626
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->heightMax:I

    .line 1627
    return-void
.end method

.method public constrainMaxWidth(II)V
    .locals 0

    .line 1637
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->widthMax:I

    .line 1638
    return-void
.end method

.method public constrainMinHeight(II)V
    .locals 0

    .line 1648
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->heightMin:I

    .line 1649
    return-void
.end method

.method public constrainMinWidth(II)V
    .locals 0

    .line 1659
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->widthMin:I

    .line 1660
    return-void
.end method

.method public constrainWidth(II)V
    .locals 0

    .line 1615
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mWidth:I

    .line 1616
    return-void
.end method

.method public create(II)V
    .locals 1

    .line 1885
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    .line 1886
    const/4 v0, 0x1

    iput-boolean v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 1887
    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->orientation:I

    .line 1888
    return-void
.end method

.method public varargs createBarrier(II[I)V
    .locals 1

    .line 1898
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    .line 1899
    const/4 v0, 0x1

    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mHelperType:I

    .line 1900
    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mBarrierDirection:I

    .line 1901
    const/4 p2, 0x0

    iput-boolean p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 1902
    iput-object p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->mReferenceIds:[I

    .line 1903
    return-void
.end method

.method public createHorizontalChain(IIII[I[FI)V
    .locals 10

    .line 947
    const/4 v8, 0x1

    const/4 v9, 0x2

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Landroid/support/constraint/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    .line 948
    return-void
.end method

.method public createHorizontalChainRtl(IIII[I[FI)V
    .locals 10

    .line 964
    const/4 v8, 0x6

    const/4 v9, 0x7

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Landroid/support/constraint/ConstraintSet;->createHorizontalChain(IIII[I[FIII)V

    .line 965
    return-void
.end method

.method public createVerticalChain(IIII[I[FI)V
    .locals 12

    move-object v6, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    .line 910
    array-length v0, v7

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 913
    if-eqz v8, :cond_1

    array-length v0, v8

    array-length v1, v7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 914
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz v8, :cond_2

    .line 917
    aget v1, v7, v0

    invoke-direct {v6, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v1

    aget v2, v8, v0

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 919
    :cond_2
    aget v1, v7, v0

    invoke-direct {v6, v1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v1

    move/from16 v2, p7

    iput v2, v1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 921
    aget v1, v7, v0

    const/4 v2, 0x3

    const/4 v5, 0x0

    move-object v0, v6

    move v3, p1

    move v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 922
    const/4 v9, 0x1

    move v10, v9

    :goto_1
    array-length v0, v7

    if-ge v10, v0, :cond_4

    .line 923
    aget v0, v7, v10

    .line 924
    aget v1, v7, v10

    const/4 v2, 0x3

    add-int/lit8 v11, v10, -0x1

    aget v3, v7, v11

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 925
    aget v1, v7, v11

    const/4 v2, 0x4

    aget v3, v7, v10

    const/4 v4, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 926
    if-eqz v8, :cond_3

    .line 927
    aget v0, v7, v10

    invoke-direct {v6, v0}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    aget v1, v8, v10

    iput v1, v0, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 922
    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 930
    :cond_4
    array-length v0, v7

    sub-int/2addr v0, v9

    aget v1, v7, v0

    const/4 v2, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move v3, p3

    move/from16 v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 931
    return-void

    .line 911
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must have 2 or more widgets in a chain"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getApplyElevation(I)Z
    .locals 0

    .line 1446
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iget-boolean p1, p1, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    return p1
.end method

.method public load(Landroid/content/Context;I)V
    .locals 4

    .line 1979
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1980
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 1981
    nop

    .line 1982
    nop

    .line 1985
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 1986
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 1988
    if-eqz v0, :cond_1

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 2001
    :pswitch_0
    nop

    .line 2002
    goto :goto_1

    .line 1993
    :pswitch_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1994
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Landroid/support/constraint/ConstraintSet;->fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v2

    .line 1995
    const-string v3, "Guideline"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1996
    iput-boolean v1, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mIsGuideline:Z

    .line 1998
    :cond_0
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    iget v1, v2, Landroid/support/constraint/ConstraintSet$Constraint;->mViewId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1999
    goto :goto_1

    .line 1990
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1991
    nop

    .line 1987
    :goto_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2009
    :catch_0
    move-exception p1

    .line 2010
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 2007
    :catch_1
    move-exception p1

    .line 2008
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 2011
    :cond_2
    nop

    .line 2012
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeFromHorizontalChain(I)V
    .locals 8

    .line 1833
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 1834
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1835
    iget v6, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToRight:I

    .line 1836
    iget v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToLeft:I

    .line 1837
    const/4 v1, -0x1

    if-ne v6, v1, :cond_6

    if-eq v7, v1, :cond_0

    goto :goto_1

    .line 1855
    :cond_0
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->startToEnd:I

    .line 1856
    iget v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->endToStart:I

    .line 1857
    if-ne v2, v1, :cond_1

    if-eq v7, v1, :cond_5

    .line 1858
    :cond_1
    if-eq v2, v1, :cond_2

    if-eq v7, v1, :cond_2

    .line 1860
    const/4 v3, 0x7

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v2

    move v2, v3

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1861
    const/4 v2, 0x6

    const/4 v4, 0x7

    move v1, v7

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 1862
    :cond_2
    if-ne v6, v1, :cond_3

    if-eq v7, v1, :cond_5

    .line 1863
    :cond_3
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    if-eq v2, v1, :cond_4

    .line 1865
    const/4 v2, 0x7

    iget v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 1866
    :cond_4
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    if-eq v2, v1, :cond_5

    .line 1868
    const/4 v2, 0x6

    iget v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1872
    :cond_5
    :goto_0
    const/4 v0, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1873
    const/4 v0, 0x7

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    goto :goto_3

    .line 1838
    :cond_6
    :goto_1
    if-eq v6, v1, :cond_7

    if-eq v7, v1, :cond_7

    .line 1840
    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v6

    move v3, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1841
    const/4 v2, 0x1

    const/4 v4, 0x2

    move v1, v7

    move v3, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_2

    .line 1842
    :cond_7
    if-ne v6, v1, :cond_8

    if-eq v7, v1, :cond_a

    .line 1843
    :cond_8
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    if-eq v2, v1, :cond_9

    .line 1845
    const/4 v2, 0x2

    iget v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->rightToRight:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_2

    .line 1846
    :cond_9
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    if-eq v2, v1, :cond_a

    .line 1848
    const/4 v2, 0x1

    iget v3, v0, Landroid/support/constraint/ConstraintSet$Constraint;->leftToLeft:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, v7

    invoke-virtual/range {v0 .. v5}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1851
    :cond_a
    :goto_2
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1852
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1876
    :cond_b
    :goto_3
    return-void
.end method

.method public removeFromVerticalChain(I)V
    .locals 9

    .line 1801
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1802
    iget-object v0, p0, Landroid/support/constraint/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/constraint/ConstraintSet$Constraint;

    .line 1803
    iget v7, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToBottom:I

    .line 1804
    iget v8, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToTop:I

    .line 1805
    const/4 v1, -0x1

    if-ne v7, v1, :cond_0

    if-eq v8, v1, :cond_4

    .line 1806
    :cond_0
    if-eq v7, v1, :cond_1

    if-eq v8, v1, :cond_1

    .line 1808
    const/4 v3, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v7

    move v4, v8

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1809
    const/4 v3, 0x3

    const/4 v5, 0x4

    move v2, v8

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 1810
    :cond_1
    if-ne v7, v1, :cond_2

    if-eq v8, v1, :cond_4

    .line 1811
    :cond_2
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    if-eq v2, v1, :cond_3

    .line 1813
    const/4 v3, 0x4

    iget v4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->bottomToBottom:I

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v7

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    goto :goto_0

    .line 1814
    :cond_3
    iget v2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    if-eq v2, v1, :cond_4

    .line 1816
    const/4 v3, 0x3

    iget v4, v0, Landroid/support/constraint/ConstraintSet$Constraint;->topToTop:I

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    move v2, v8

    invoke-virtual/range {v1 .. v6}, Landroid/support/constraint/ConstraintSet;->connect(IIIII)V

    .line 1821
    :cond_4
    :goto_0
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1822
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Landroid/support/constraint/ConstraintSet;->clear(II)V

    .line 1823
    return-void
.end method

.method public setAlpha(IF)V
    .locals 0

    .line 1437
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->alpha:F

    .line 1438
    return-void
.end method

.method public setApplyElevation(IZ)V
    .locals 0

    .line 1457
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput-boolean p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    .line 1458
    return-void
.end method

.method public setBarrierType(II)V
    .locals 0

    .line 1944
    return-void
.end method

.method public setDimensionRatio(ILjava/lang/String;)V
    .locals 0

    .line 1417
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput-object p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->dimensionRatio:Ljava/lang/String;

    .line 1418
    return-void
.end method

.method public setElevation(IF)V
    .locals 1

    .line 1467
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->elevation:F

    .line 1468
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    const/4 p2, 0x1

    iput-boolean p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->applyElevation:Z

    .line 1469
    return-void
.end method

.method public setGoneMargin(III)V
    .locals 0

    .line 1362
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    .line 1363
    packed-switch p2, :pswitch_data_0

    .line 1385
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1382
    :pswitch_0
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneEndMargin:I

    .line 1383
    goto :goto_0

    .line 1379
    :pswitch_1
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneStartMargin:I

    .line 1380
    goto :goto_0

    .line 1377
    :pswitch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "baseline does not support margins"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1374
    :pswitch_3
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneBottomMargin:I

    .line 1375
    goto :goto_0

    .line 1371
    :pswitch_4
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneTopMargin:I

    .line 1372
    goto :goto_0

    .line 1368
    :pswitch_5
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneRightMargin:I

    .line 1369
    goto :goto_0

    .line 1365
    :pswitch_6
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->goneLeftMargin:I

    .line 1366
    nop

    .line 1387
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setGuidelineBegin(II)V
    .locals 1

    .line 1912
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 1913
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 1914
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 1916
    return-void
.end method

.method public setGuidelineEnd(II)V
    .locals 1

    .line 1925
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 1926
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 1927
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    const/high16 p2, -0x40800000    # -1.0f

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 1928
    return-void
.end method

.method public setGuidelinePercent(IF)V
    .locals 1

    .line 1937
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object v0

    iput p2, v0, Landroid/support/constraint/ConstraintSet$Constraint;->guidePercent:F

    .line 1938
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p2

    const/4 v0, -0x1

    iput v0, p2, Landroid/support/constraint/ConstraintSet$Constraint;->guideEnd:I

    .line 1939
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput v0, p1, Landroid/support/constraint/ConstraintSet$Constraint;->guideBegin:I

    .line 1940
    return-void
.end method

.method public setHorizontalBias(IF)V
    .locals 0

    .line 1396
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalBias:F

    .line 1397
    return-void
.end method

.method public setHorizontalChainStyle(II)V
    .locals 0

    .line 1720
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalChainStyle:I

    .line 1721
    return-void
.end method

.method public setHorizontalWeight(IF)V
    .locals 0

    .line 1694
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->horizontalWeight:F

    .line 1695
    return-void
.end method

.method public setMargin(III)V
    .locals 0

    .line 1327
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    .line 1328
    packed-switch p2, :pswitch_data_0

    .line 1350
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "unknown constraint"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1347
    :pswitch_0
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->endMargin:I

    .line 1348
    goto :goto_0

    .line 1344
    :pswitch_1
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->startMargin:I

    .line 1345
    goto :goto_0

    .line 1342
    :pswitch_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "baseline does not support margins"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1339
    :pswitch_3
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->bottomMargin:I

    .line 1340
    goto :goto_0

    .line 1336
    :pswitch_4
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->topMargin:I

    .line 1337
    goto :goto_0

    .line 1333
    :pswitch_5
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rightMargin:I

    .line 1334
    goto :goto_0

    .line 1330
    :pswitch_6
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->leftMargin:I

    .line 1331
    nop

    .line 1352
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setRotation(IF)V
    .locals 0

    .line 1477
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotation:F

    .line 1478
    return-void
.end method

.method public setRotationX(IF)V
    .locals 0

    .line 1487
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationX:F

    .line 1488
    return-void
.end method

.method public setRotationY(IF)V
    .locals 0

    .line 1497
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->rotationY:F

    .line 1498
    return-void
.end method

.method public setScaleX(IF)V
    .locals 0

    .line 1507
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleX:F

    .line 1508
    return-void
.end method

.method public setScaleY(IF)V
    .locals 0

    .line 1517
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->scaleY:F

    .line 1518
    return-void
.end method

.method public setTransformPivot(IFF)V
    .locals 0

    .line 1548
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    .line 1549
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 1550
    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 1551
    return-void
.end method

.method public setTransformPivotX(IF)V
    .locals 0

    .line 1527
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotX:F

    .line 1528
    return-void
.end method

.method public setTransformPivotY(IF)V
    .locals 0

    .line 1537
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->transformPivotY:F

    .line 1538
    return-void
.end method

.method public setTranslation(IFF)V
    .locals 0

    .line 1581
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    .line 1582
    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 1583
    iput p3, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 1584
    return-void
.end method

.method public setTranslationX(IF)V
    .locals 0

    .line 1560
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationX:F

    .line 1561
    return-void
.end method

.method public setTranslationY(IF)V
    .locals 0

    .line 1570
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationY:F

    .line 1571
    return-void
.end method

.method public setTranslationZ(IF)V
    .locals 0

    .line 1593
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->translationZ:F

    .line 1594
    return-void
.end method

.method public setVerticalBias(IF)V
    .locals 0

    .line 1406
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalBias:F

    .line 1407
    return-void
.end method

.method public setVerticalChainStyle(II)V
    .locals 0

    .line 1736
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalChainStyle:I

    .line 1737
    return-void
.end method

.method public setVerticalWeight(IF)V
    .locals 0

    .line 1705
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->verticalWeight:F

    .line 1706
    return-void
.end method

.method public setVisibility(II)V
    .locals 0

    .line 1427
    invoke-direct {p0, p1}, Landroid/support/constraint/ConstraintSet;->get(I)Landroid/support/constraint/ConstraintSet$Constraint;

    move-result-object p1

    iput p2, p1, Landroid/support/constraint/ConstraintSet$Constraint;->visibility:I

    .line 1428
    return-void
.end method
