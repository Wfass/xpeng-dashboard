.class public Landroidx/constraintlayout/widget/d$b;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# static fields
.field private static ar:Landroid/util/SparseIntArray;


# instance fields
.field public A:Ljava/lang/String;

.field public B:I

.field public C:I

.field public D:F

.field public E:I

.field public F:I

.field public G:I

.field public H:I

.field public I:I

.field public J:I

.field public K:I

.field public L:I

.field public M:I

.field public N:I

.field public O:I

.field public P:I

.field public Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:F

.field public W:F

.field public X:I

.field public Y:I

.field public Z:I

.field public a:Z

.field public aa:I

.field public ab:I

.field public ac:I

.field public ad:I

.field public ae:I

.field public af:F

.field public ag:F

.field public ah:I

.field public ai:I

.field public aj:I

.field public ak:[I

.field public al:Ljava/lang/String;

.field public am:Ljava/lang/String;

.field public an:Z

.field public ao:Z

.field public ap:Z

.field public aq:I

.field public b:Z

.field public c:Z

.field public d:I

.field public e:I

.field public f:I

.field public g:I

.field public h:F

.field public i:Z

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public q:I

.field public r:I

.field public s:I

.field public t:I

.field public u:I

.field public v:I

.field public w:I

.field public x:I

.field public y:F

.field public z:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1122
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    .line 1196
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintLeft_toLeftOf:I

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1197
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintLeft_toRightOf:I

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1198
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintRight_toLeftOf:I

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1199
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintRight_toRightOf:I

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1200
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintTop_toTopOf:I

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1201
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintTop_toBottomOf:I

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1202
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintBottom_toTopOf:I

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1203
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintBottom_toBottomOf:I

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1204
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintBaseline_toBaselineOf:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1206
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_editor_absoluteX:I

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1207
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_editor_absoluteY:I

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1208
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintGuide_begin:I

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1209
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintGuide_end:I

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1210
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintGuide_percent:I

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1211
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_guidelineUseRtl:I

    const/16 v2, 0x5a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1212
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_android_orientation:I

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1213
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintStart_toEndOf:I

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1214
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintStart_toStartOf:I

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1215
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintEnd_toStartOf:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1216
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintEnd_toEndOf:I

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1217
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_goneMarginLeft:I

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1218
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_goneMarginTop:I

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1219
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_goneMarginRight:I

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1220
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_goneMarginBottom:I

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1221
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_goneMarginStart:I

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1222
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_goneMarginEnd:I

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1223
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintVertical_weight:I

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1224
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintHorizontal_weight:I

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1225
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintHorizontal_chainStyle:I

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1226
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintVertical_chainStyle:I

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1228
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintHorizontal_bias:I

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1229
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintVertical_bias:I

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1230
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintDimensionRatio:I

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1231
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintLeft_creator:I

    const/16 v2, 0x5b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1232
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintTop_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1233
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintRight_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1234
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintBottom_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1235
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintBaseline_creator:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1236
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_android_layout_marginLeft:I

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1237
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_android_layout_marginRight:I

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1238
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_android_layout_marginStart:I

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1239
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_android_layout_marginEnd:I

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1240
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_android_layout_marginTop:I

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1241
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_android_layout_marginBottom:I

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1242
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_android_layout_width:I

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1243
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_android_layout_height:I

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1244
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintWidth:I

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1245
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintHeight:I

    const/16 v3, 0x2a

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1246
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constrainedWidth:I

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1247
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constrainedHeight:I

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseIntArray;->append(II)V

    .line 1248
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_wrapBehaviorInParent:I

    const/16 v2, 0x4c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1250
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintCircle:I

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1251
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintCircleRadius:I

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1252
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintCircleAngle:I

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1253
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintWidth_percent:I

    const/16 v2, 0x45

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1254
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_layout_constraintHeight_percent:I

    const/16 v2, 0x46

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1256
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_chainUseRtl:I

    const/16 v2, 0x47

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1257
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_barrierDirection:I

    const/16 v2, 0x48

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1258
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_barrierMargin:I

    const/16 v2, 0x49

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1259
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_constraint_referenced_ids:I

    const/16 v2, 0x4a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    .line 1260
    sget-object v0, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    sget v1, Landroidx/constraintlayout/widget/h$b;->Layout_barrierAllowsGoneWidgets:I

    const/16 v2, 0x4b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 971
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 972
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->a:Z

    .line 973
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->b:Z

    .line 974
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->c:Z

    const/4 v1, -0x1

    .line 979
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->f:I

    .line 980
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->g:I

    const/high16 v2, -0x40800000    # -1.0f

    .line 981
    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->h:F

    const/4 v3, 0x1

    .line 982
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/d$b;->i:Z

    .line 983
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->j:I

    .line 984
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->k:I

    .line 985
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->l:I

    .line 986
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->m:I

    .line 987
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->n:I

    .line 988
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->o:I

    .line 989
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->p:I

    .line 990
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->q:I

    .line 991
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->r:I

    .line 992
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->s:I

    .line 993
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->t:I

    .line 994
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->u:I

    .line 995
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->v:I

    .line 996
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->w:I

    .line 997
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->x:I

    const/high16 v4, 0x3f000000    # 0.5f

    .line 998
    iput v4, p0, Landroidx/constraintlayout/widget/d$b;->y:F

    .line 999
    iput v4, p0, Landroidx/constraintlayout/widget/d$b;->z:F

    const/4 v4, 0x0

    .line 1000
    iput-object v4, p0, Landroidx/constraintlayout/widget/d$b;->A:Ljava/lang/String;

    .line 1001
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->B:I

    .line 1002
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->C:I

    const/4 v4, 0x0

    .line 1003
    iput v4, p0, Landroidx/constraintlayout/widget/d$b;->D:F

    .line 1004
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->E:I

    .line 1005
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->F:I

    .line 1006
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->G:I

    .line 1007
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->H:I

    .line 1008
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->I:I

    .line 1009
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->J:I

    .line 1010
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->K:I

    .line 1011
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->L:I

    .line 1012
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->M:I

    .line 1013
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->N:I

    const/high16 v4, -0x80000000

    .line 1014
    iput v4, p0, Landroidx/constraintlayout/widget/d$b;->O:I

    .line 1015
    iput v4, p0, Landroidx/constraintlayout/widget/d$b;->P:I

    .line 1016
    iput v4, p0, Landroidx/constraintlayout/widget/d$b;->Q:I

    .line 1017
    iput v4, p0, Landroidx/constraintlayout/widget/d$b;->R:I

    .line 1018
    iput v4, p0, Landroidx/constraintlayout/widget/d$b;->S:I

    .line 1019
    iput v4, p0, Landroidx/constraintlayout/widget/d$b;->T:I

    .line 1020
    iput v4, p0, Landroidx/constraintlayout/widget/d$b;->U:I

    .line 1021
    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->V:F

    .line 1022
    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->W:F

    .line 1023
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->X:I

    .line 1024
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->Y:I

    .line 1025
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->Z:I

    .line 1026
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->aa:I

    .line 1027
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->ab:I

    .line 1028
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->ac:I

    .line 1029
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->ad:I

    .line 1030
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->ae:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1031
    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->af:F

    .line 1032
    iput v2, p0, Landroidx/constraintlayout/widget/d$b;->ag:F

    .line 1033
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->ah:I

    .line 1034
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->ai:I

    .line 1035
    iput v1, p0, Landroidx/constraintlayout/widget/d$b;->aj:I

    .line 1039
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->an:Z

    .line 1040
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->ao:Z

    .line 1042
    iput-boolean v3, p0, Landroidx/constraintlayout/widget/d$b;->ap:Z

    .line 1043
    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->aq:I

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1264
    sget-object v0, Landroidx/constraintlayout/widget/h$b;->Layout:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x1

    .line 1265
    iput-boolean p2, p0, Landroidx/constraintlayout/widget/d$b;->b:Z

    .line 1266
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 1268
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 1270
    sget-object v4, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const/16 v5, 0x11

    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    const/high16 v5, 0x3f800000    # 1.0f

    const-string v6, "   "

    const-string v7, "ConstraintSet"

    packed-switch v4, :pswitch_data_2

    .line 1483
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown attribute 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1484
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1483
    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1479
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unused attribute 0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1480
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Landroidx/constraintlayout/widget/d$b;->ar:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1479
    invoke-static {v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1320
    :pswitch_1
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/d$b;->i:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/widget/d$b;->i:Z

    goto/16 :goto_1

    .line 1476
    :pswitch_2
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/widget/d$b;->am:Ljava/lang/String;

    goto/16 :goto_1

    .line 1454
    :pswitch_3
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/d$b;->ao:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/widget/d$b;->ao:Z

    goto/16 :goto_1

    .line 1451
    :pswitch_4
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/d$b;->an:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/widget/d$b;->an:Z

    goto/16 :goto_1

    .line 1442
    :pswitch_5
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->ad:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->ad:I

    goto/16 :goto_1

    .line 1439
    :pswitch_6
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->ae:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->ae:I

    goto/16 :goto_1

    .line 1436
    :pswitch_7
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->ab:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->ab:I

    goto/16 :goto_1

    .line 1433
    :pswitch_8
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->ac:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->ac:I

    goto/16 :goto_1

    .line 1415
    :pswitch_9
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->aa:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->aa:I

    goto/16 :goto_1

    .line 1412
    :pswitch_a
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->Z:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->Z:I

    goto/16 :goto_1

    .line 1397
    :pswitch_b
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->N:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->N:I

    goto/16 :goto_1

    .line 1366
    :pswitch_c
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->U:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->U:I

    goto/16 :goto_1

    .line 1302
    :pswitch_d
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->t:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->t:I

    goto/16 :goto_1

    .line 1299
    :pswitch_e
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->s:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->s:I

    goto/16 :goto_1

    .line 1464
    :pswitch_f
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->aq:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->aq:I

    goto/16 :goto_1

    .line 1473
    :pswitch_10
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/d$b;->ap:Z

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroidx/constraintlayout/widget/d$b;->ap:Z

    goto/16 :goto_1

    .line 1470
    :pswitch_11
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/widget/d$b;->al:Ljava/lang/String;

    goto/16 :goto_1

    .line 1467
    :pswitch_12
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->ai:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->ai:I

    goto/16 :goto_1

    .line 1461
    :pswitch_13
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->ah:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->ah:I

    goto/16 :goto_1

    :pswitch_14
    const-string v3, "CURRENTLY UNSUPPORTED"

    .line 1457
    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1448
    :pswitch_15
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->ag:F

    goto/16 :goto_1

    .line 1445
    :pswitch_16
    invoke-virtual {p1, v3, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->af:F

    goto/16 :goto_1

    .line 1345
    :pswitch_17
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->D:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->D:F

    goto/16 :goto_1

    .line 1342
    :pswitch_18
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->C:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->C:I

    goto/16 :goto_1

    .line 1339
    :pswitch_19
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->B:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->B:I

    goto/16 :goto_1

    .line 1409
    :pswitch_1a
    invoke-static {p0, p1, v3, p2}, Landroidx/constraintlayout/widget/d;->a(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    .line 1406
    :pswitch_1b
    invoke-static {p0, p1, v3, v1}, Landroidx/constraintlayout/widget/d;->a(Ljava/lang/Object;Landroid/content/res/TypedArray;II)V

    goto/16 :goto_1

    .line 1424
    :pswitch_1c
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->Y:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->Y:I

    goto/16 :goto_1

    .line 1427
    :pswitch_1d
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->X:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->X:I

    goto/16 :goto_1

    .line 1418
    :pswitch_1e
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->V:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->V:F

    goto/16 :goto_1

    .line 1421
    :pswitch_1f
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->W:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->W:F

    goto/16 :goto_1

    .line 1372
    :pswitch_20
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->z:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->z:F

    goto/16 :goto_1

    .line 1284
    :pswitch_21
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->n:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->n:I

    goto/16 :goto_1

    .line 1287
    :pswitch_22
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->o:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->o:I

    goto/16 :goto_1

    .line 1391
    :pswitch_23
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->J:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->J:I

    goto/16 :goto_1

    .line 1330
    :pswitch_24
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->v:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->v:I

    goto/16 :goto_1

    .line 1327
    :pswitch_25
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->u:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->u:I

    goto/16 :goto_1

    .line 1381
    :pswitch_26
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_0

    .line 1382
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->M:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->M:I

    goto/16 :goto_1

    .line 1281
    :pswitch_27
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->m:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->m:I

    goto/16 :goto_1

    .line 1278
    :pswitch_28
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->l:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->l:I

    goto/16 :goto_1

    .line 1378
    :pswitch_29
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->I:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->I:I

    goto/16 :goto_1

    .line 1324
    :pswitch_2a
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->G:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->G:I

    goto/16 :goto_1

    .line 1275
    :pswitch_2b
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->k:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->k:I

    goto/16 :goto_1

    .line 1272
    :pswitch_2c
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->j:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->j:I

    goto/16 :goto_1

    .line 1375
    :pswitch_2d
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->H:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->H:I

    goto/16 :goto_1

    .line 1400
    :pswitch_2e
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->d:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->d:I

    goto/16 :goto_1

    .line 1403
    :pswitch_2f
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    goto/16 :goto_1

    .line 1369
    :pswitch_30
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->y:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->y:F

    goto/16 :goto_1

    .line 1317
    :pswitch_31
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->h:F

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->h:F

    goto/16 :goto_1

    .line 1314
    :pswitch_32
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->g:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->g:I

    goto/16 :goto_1

    .line 1311
    :pswitch_33
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->f:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->f:I

    goto/16 :goto_1

    .line 1351
    :pswitch_34
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->P:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->P:I

    goto/16 :goto_1

    .line 1360
    :pswitch_35
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->T:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->T:I

    goto/16 :goto_1

    .line 1354
    :pswitch_36
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->Q:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->Q:I

    goto/16 :goto_1

    .line 1348
    :pswitch_37
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->O:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->O:I

    goto/16 :goto_1

    .line 1363
    :pswitch_38
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->S:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->S:I

    goto :goto_1

    .line 1357
    :pswitch_39
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->R:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->R:I

    goto :goto_1

    .line 1333
    :pswitch_3a
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->w:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->w:I

    goto :goto_1

    .line 1336
    :pswitch_3b
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->x:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->x:I

    goto :goto_1

    .line 1386
    :pswitch_3c
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v4, v5, :cond_0

    .line 1387
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->L:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->L:I

    goto :goto_1

    .line 1308
    :pswitch_3d
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->F:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->F:I

    goto :goto_1

    .line 1305
    :pswitch_3e
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->E:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->E:I

    goto :goto_1

    .line 1430
    :pswitch_3f
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroidx/constraintlayout/widget/d$b;->A:Ljava/lang/String;

    goto :goto_1

    .line 1290
    :pswitch_40
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->p:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->p:I

    goto :goto_1

    .line 1293
    :pswitch_41
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->q:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->q:I

    goto :goto_1

    .line 1394
    :pswitch_42
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->K:I

    invoke-virtual {p1, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->K:I

    goto :goto_1

    .line 1296
    :pswitch_43
    iget v4, p0, Landroidx/constraintlayout/widget/d$b;->r:I

    invoke-static {p1, v3, v4}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/d$b;->r:I

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 1488
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3d
        :pswitch_19
        :pswitch_18
        :pswitch_17
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x45
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
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public a(Landroidx/constraintlayout/widget/d$b;)V
    .locals 2

    .line 1046
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$b;->a:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->a:Z

    .line 1047
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->d:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->d:I

    .line 1048
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$b;->b:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->b:Z

    .line 1049
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->e:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->e:I

    .line 1050
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->f:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->f:I

    .line 1051
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->g:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->g:I

    .line 1052
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->h:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->h:F

    .line 1053
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$b;->i:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->i:Z

    .line 1054
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->j:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->j:I

    .line 1055
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->k:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->k:I

    .line 1056
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->l:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->l:I

    .line 1057
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->m:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->m:I

    .line 1058
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->n:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->n:I

    .line 1059
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->o:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->o:I

    .line 1060
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->p:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->p:I

    .line 1061
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->q:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->q:I

    .line 1062
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->r:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->r:I

    .line 1063
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->s:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->s:I

    .line 1064
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->t:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->t:I

    .line 1065
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->u:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->u:I

    .line 1066
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->v:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->v:I

    .line 1067
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->w:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->w:I

    .line 1068
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->x:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->x:I

    .line 1069
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->y:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->y:F

    .line 1070
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->z:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->z:F

    .line 1071
    iget-object v0, p1, Landroidx/constraintlayout/widget/d$b;->A:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/d$b;->A:Ljava/lang/String;

    .line 1072
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->B:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->B:I

    .line 1073
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->C:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->C:I

    .line 1074
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->D:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->D:F

    .line 1075
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->E:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->E:I

    .line 1076
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->F:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->F:I

    .line 1077
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->G:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->G:I

    .line 1078
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->H:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->H:I

    .line 1079
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->I:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->I:I

    .line 1080
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->J:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->J:I

    .line 1081
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->K:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->K:I

    .line 1082
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->L:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->L:I

    .line 1083
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->M:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->M:I

    .line 1084
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->N:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->N:I

    .line 1085
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->O:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->O:I

    .line 1086
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->P:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->P:I

    .line 1087
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->Q:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->Q:I

    .line 1088
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->R:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->R:I

    .line 1089
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->S:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->S:I

    .line 1090
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->T:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->T:I

    .line 1091
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->U:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->U:I

    .line 1092
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->V:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->V:F

    .line 1093
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->W:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->W:F

    .line 1094
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->X:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->X:I

    .line 1095
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->Y:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->Y:I

    .line 1096
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->Z:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->Z:I

    .line 1097
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->aa:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->aa:I

    .line 1098
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->ab:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->ab:I

    .line 1099
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->ac:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->ac:I

    .line 1100
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->ad:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->ad:I

    .line 1101
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->ae:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->ae:I

    .line 1102
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->af:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->af:F

    .line 1103
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->ag:F

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->ag:F

    .line 1104
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->ah:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->ah:I

    .line 1105
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->ai:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->ai:I

    .line 1106
    iget v0, p1, Landroidx/constraintlayout/widget/d$b;->aj:I

    iput v0, p0, Landroidx/constraintlayout/widget/d$b;->aj:I

    .line 1107
    iget-object v0, p1, Landroidx/constraintlayout/widget/d$b;->am:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/d$b;->am:Ljava/lang/String;

    .line 1109
    iget-object v0, p1, Landroidx/constraintlayout/widget/d$b;->ak:[I

    if-eqz v0, :cond_0

    iget-object v1, p1, Landroidx/constraintlayout/widget/d$b;->al:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1110
    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/widget/d$b;->ak:[I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1112
    iput-object v0, p0, Landroidx/constraintlayout/widget/d$b;->ak:[I

    .line 1114
    :goto_0
    iget-object v0, p1, Landroidx/constraintlayout/widget/d$b;->al:Ljava/lang/String;

    iput-object v0, p0, Landroidx/constraintlayout/widget/d$b;->al:Ljava/lang/String;

    .line 1115
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$b;->an:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->an:Z

    .line 1116
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$b;->ao:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->ao:Z

    .line 1118
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/d$b;->ap:Z

    iput-boolean v0, p0, Landroidx/constraintlayout/widget/d$b;->ap:Z

    .line 1119
    iget p1, p1, Landroidx/constraintlayout/widget/d$b;->aq:I

    iput p1, p0, Landroidx/constraintlayout/widget/d$b;->aq:I

    return-void
.end method
