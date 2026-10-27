.class public Ldd;
.super Ljava/lang/Object;
.source "MotionScene.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldd$a;
    }
.end annotation


# instance fields
.field a:Landroidx/constraintlayout/widget/j;

.field b:Ldd$a;

.field final c:Ldg;

.field d:F

.field e:F

.field private final f:Ldb;

.field private g:Z

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldd$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ldd$a;

.field private j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ldd$a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/d;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private m:Landroid/util/SparseIntArray;

.field private n:Z

.field private o:I

.field private p:I

.field private q:Landroid/view/MotionEvent;

.field private r:Z

.field private s:Z

.field private t:Ldb$d;

.field private u:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ldb;I)V
    .locals 3

    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Ldd;->a:Landroidx/constraintlayout/widget/j;

    .line 71
    iput-object v0, p0, Ldd;->b:Ldd$a;

    const/4 v1, 0x0

    .line 72
    iput-boolean v1, p0, Ldd;->g:Z

    .line 73
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Ldd;->h:Ljava/util/ArrayList;

    .line 74
    iput-object v0, p0, Ldd;->i:Ldd$a;

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ldd;->j:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Ldd;->k:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldd;->l:Ljava/util/HashMap;

    .line 79
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Ldd;->m:Landroid/util/SparseIntArray;

    .line 80
    iput-boolean v1, p0, Ldd;->n:Z

    const/16 v0, 0x190

    .line 81
    iput v0, p0, Ldd;->o:I

    .line 82
    iput v1, p0, Ldd;->p:I

    .line 88
    iput-boolean v1, p0, Ldd;->r:Z

    .line 89
    iput-boolean v1, p0, Ldd;->s:Z

    .line 1048
    iput-object p2, p0, Ldd;->f:Ldb;

    .line 1049
    new-instance v0, Ldg;

    invoke-direct {v0, p2}, Ldg;-><init>(Ldb;)V

    iput-object v0, p0, Ldd;->c:Ldg;

    .line 1051
    invoke-direct {p0, p1, p3}, Ldd;->a(Landroid/content/Context;I)V

    .line 1052
    iget-object p1, p0, Ldd;->k:Landroid/util/SparseArray;

    sget p2, Landroidx/constraintlayout/widget/h$a;->motion_base:I

    new-instance p3, Landroidx/constraintlayout/widget/d;

    invoke-direct {p3}, Landroidx/constraintlayout/widget/d;-><init>()V

    invoke-virtual {p1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1053
    iget-object p1, p0, Ldd;->l:Ljava/util/HashMap;

    sget p2, Landroidx/constraintlayout/widget/h$a;->motion_base:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "motion_base"

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)I
    .locals 5

    const-string v0, "/"

    .line 1189
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/16 v0, 0x2f

    .line 1190
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/2addr v0, v2

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "id"

    invoke-virtual {v3, v0, v4, p1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 1192
    iget-boolean v0, p0, Ldd;->n:Z

    if-eqz v0, :cond_1

    .line 1193
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id getMap res = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move p1, v1

    :cond_1
    :goto_0
    if-ne p1, v1, :cond_3

    if-eqz p2, :cond_2

    .line 1197
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 1198
    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_1

    :cond_2
    const-string p2, "MotionScene"

    const-string v0, "error in parsing id"

    .line 1200
    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return p1
.end method

.method static synthetic a(Ldd;Landroid/content/Context;I)I
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2}, Ldd;->b(Landroid/content/Context;I)I

    move-result p0

    return p0
.end method

.method static synthetic a(Ldd;)Ldb;
    .locals 0

    .line 60
    iget-object p0, p0, Ldd;->f:Ldb;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const/16 v0, 0x2f

    .line 1853
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 1857
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private a(ILdb;)V
    .locals 2

    .line 1829
    iget-object v0, p0, Ldd;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/d;

    .line 1830
    iget-object v1, v0, Landroidx/constraintlayout/widget/d;->a:Ljava/lang/String;

    iput-object v1, v0, Landroidx/constraintlayout/widget/d;->b:Ljava/lang/String;

    .line 1831
    iget-object v1, p0, Ldd;->m:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    if-lez p1, :cond_1

    .line 1833
    invoke-direct {p0, p1, p2}, Ldd;->a(ILdb;)V

    .line 1834
    iget-object p2, p0, Ldd;->k:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/d;

    if-nez p2, :cond_0

    .line 1836
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "ERROR! invalid deriveConstraintsFrom: @id/"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Ldd;->f:Ldb;

    .line 1837
    invoke-virtual {v0}, Ldb;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcl;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    .line 1836
    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1840
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroidx/constraintlayout/widget/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p2, Landroidx/constraintlayout/widget/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/constraintlayout/widget/d;->b:Ljava/lang/String;

    .line 1841
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/d;->a(Landroidx/constraintlayout/widget/d;)V

    goto :goto_0

    .line 1843
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v0, Landroidx/constraintlayout/widget/d;->b:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  layout"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroidx/constraintlayout/widget/d;->b:Ljava/lang/String;

    .line 1844
    invoke-virtual {v0, p2}, Landroidx/constraintlayout/widget/d;->a(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1846
    :goto_0
    invoke-virtual {v0, v0}, Landroidx/constraintlayout/widget/d;->b(Landroidx/constraintlayout/widget/d;)V

    return-void
.end method

.method private a(Landroid/content/Context;I)V
    .locals 9

    .line 1064
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1065
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    const/4 v1, 0x0

    .line 1070
    :try_start_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    :goto_0
    const/4 v3, 0x1

    if-eq v2, v3, :cond_9

    if-eqz v2, :cond_7

    const/4 v4, 0x3

    const/4 v5, 0x2

    if-eq v2, v5, :cond_0

    goto/16 :goto_4

    .line 1078
    :cond_0
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1079
    iget-boolean v6, p0, Ldd;->n:Z

    if-eqz v6, :cond_1

    .line 1080
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parsing = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1085
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v6
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "MotionScene"

    const/4 v8, -0x1

    sparse-switch v6, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    :try_start_1
    const-string v3, "include"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x6

    goto :goto_2

    :sswitch_1
    const-string v3, "StateSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x4

    goto :goto_2

    :sswitch_2
    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :sswitch_3
    const-string v3, "OnSwipe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v5

    goto :goto_2

    :sswitch_4
    const-string v3, "OnClick"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v3, v4

    goto :goto_2

    :sswitch_5
    const-string v4, "Transition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :sswitch_6
    const-string v3, "ViewTransition"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x9

    goto :goto_2

    :sswitch_7
    const-string v3, "Include"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x7

    goto :goto_2

    :sswitch_8
    const-string v3, "KeyFrameSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v3, 0x8

    goto :goto_2

    :sswitch_9
    const-string v3, "ConstraintSet"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x5

    goto :goto_2

    :cond_2
    :goto_1
    move v3, v8

    :goto_2
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_4

    .line 1138
    :pswitch_0
    new-instance v2, Ldf;

    invoke-direct {v2, p1, v0}, Ldf;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 1139
    iget-object v3, p0, Ldd;->c:Ldg;

    invoke-virtual {v3, v2}, Ldg;->a(Ldf;)V

    goto/16 :goto_4

    .line 1132
    :pswitch_1
    new-instance v2, Lcr;

    invoke-direct {v2, p1, v0}, Lcr;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eqz v1, :cond_8

    .line 1134
    invoke-static {v1}, Ldd$a;->j(Ldd$a;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1129
    :pswitch_2
    invoke-direct {p0, p1, v0}, Ldd;->b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    .line 1125
    :pswitch_3
    invoke-direct {p0, p1, v0}, Ldd;->c(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I

    goto/16 :goto_4

    .line 1122
    :pswitch_4
    new-instance v2, Landroidx/constraintlayout/widget/j;

    invoke-direct {v2, p1, v0}, Landroidx/constraintlayout/widget/j;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    iput-object v2, p0, Ldd;->a:Landroidx/constraintlayout/widget/j;

    goto/16 :goto_4

    :pswitch_5
    if-eqz v1, :cond_8

    .line 1118
    invoke-virtual {v1, p1, v0}, Ldd$a;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4

    :pswitch_6
    if-nez v1, :cond_3

    .line 1108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v2

    .line 1109
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    move-result v3

    .line 1110
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " OnSwipe ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml:"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz v1, :cond_8

    .line 1113
    new-instance v2, Lde;

    iget-object v3, p0, Ldd;->f:Ldb;

    invoke-direct {v2, p1, v3, v0}, Lde;-><init>(Landroid/content/Context;Ldb;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-static {v1, v2}, Ldd$a;->a(Ldd$a;Lde;)Lde;

    goto :goto_4

    .line 1090
    :pswitch_7
    iget-object v1, p0, Ldd;->h:Ljava/util/ArrayList;

    new-instance v2, Ldd$a;

    invoke-direct {v2, p0, p1, v0}, Ldd$a;-><init>(Ldd;Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1091
    iget-object v1, p0, Ldd;->b:Ldd$a;

    if-nez v1, :cond_4

    invoke-static {v2}, Ldd$a;->i(Ldd$a;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1092
    iput-object v2, p0, Ldd;->b:Ldd$a;

    .line 1093
    iget-object v1, p0, Ldd;->b:Ldd$a;

    if-eqz v1, :cond_4

    iget-object v1, p0, Ldd;->b:Ldd$a;

    invoke-static {v1}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 1094
    iget-object v1, p0, Ldd;->b:Ldd$a;

    invoke-static {v1}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v1

    iget-boolean v3, p0, Ldd;->u:Z

    invoke-virtual {v1, v3}, Lde;->a(Z)V

    .line 1097
    :cond_4
    invoke-static {v2}, Ldd$a;->i(Ldd$a;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1098
    invoke-static {v2}, Ldd$a;->a(Ldd$a;)I

    move-result v1

    if-ne v1, v8, :cond_5

    .line 1099
    iput-object v2, p0, Ldd;->i:Ldd$a;

    goto :goto_3

    .line 1101
    :cond_5
    iget-object v1, p0, Ldd;->j:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1103
    :goto_3
    iget-object v1, p0, Ldd;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_6
    move-object v1, v2

    goto :goto_4

    .line 1087
    :pswitch_8
    invoke-direct {p0, p1, v0}, Ldd;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_4

    .line 1075
    :cond_7
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 1072
    :cond_8
    :goto_4
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 1165
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catch_1
    move-exception p1

    .line 1160
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_9
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x50764adb -> :sswitch_9
        -0x49df9cec -> :sswitch_8
        -0x28fe1378 -> :sswitch_7
        0x3b205fa -> :sswitch_6
        0x100d4975 -> :sswitch_5
        0x12a432c9 -> :sswitch_4
        0x138aac7b -> :sswitch_3
        0x2f487256 -> :sswitch_2
        0x526c4e31 -> :sswitch_1
        0x73c954a8 -> :sswitch_0
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
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1170
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    .line 1171
    sget-object v0, Landroidx/constraintlayout/widget/h$b;->MotionScene:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 1172
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 1174
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 1175
    sget v3, Landroidx/constraintlayout/widget/h$b;->MotionScene_defaultDuration:I

    if-ne v2, v3, :cond_0

    .line 1176
    iget v3, p0, Ldd;->o:I

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Ldd;->o:I

    .line 1177
    iget v2, p0, Ldd;->o:I

    const/16 v3, 0x8

    if-ge v2, v3, :cond_1

    .line 1178
    iput v3, p0, Ldd;->o:I

    goto :goto_1

    .line 1180
    :cond_0
    sget v3, Landroidx/constraintlayout/widget/h$b;->MotionScene_layoutDuringTransition:I

    if-ne v2, v3, :cond_1

    .line 1181
    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Ldd;->p:I

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1184
    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private b(Landroid/content/Context;I)I
    .locals 3

    .line 1220
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1221
    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p2

    .line 1223
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1226
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    const-string v0, "ConstraintSet"

    .line 1228
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1229
    invoke-direct {p0, p1, p2}, Ldd;->c(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I

    move-result p1

    return p1

    .line 1225
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1241
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1236
    invoke-virtual {p1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    :cond_1
    :goto_1
    const/4 p1, -0x1

    return p1
.end method

.method static synthetic b(Ldd;)I
    .locals 0

    .line 60
    iget p0, p0, Ldd;->o:I

    return p0
.end method

.method private b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 4

    .line 1207
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p2

    sget-object v0, Landroidx/constraintlayout/widget/h$b;->include:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 1208
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1210
    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 1211
    sget v3, Landroidx/constraintlayout/widget/h$b;->include_constraintSet:I

    if-ne v2, v3, :cond_0

    const/4 v3, -0x1

    .line 1212
    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 1213
    invoke-direct {p0, p1, v2}, Ldd;->b(Landroid/content/Context;I)I

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1216
    :cond_1
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private c(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)I
    .locals 13

    .line 1247
    new-instance v0, Landroidx/constraintlayout/widget/d;

    invoke-direct {v0}, Landroidx/constraintlayout/widget/d;-><init>()V

    const/4 v1, 0x0

    .line 1248
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/d;->a(Z)V

    .line 1249
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    const/4 v3, -0x1

    move v4, v1

    move v5, v3

    move v6, v5

    :goto_0
    const/4 v7, 0x1

    if-ge v4, v2, :cond_e

    .line 1253
    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v8

    .line 1254
    invoke-interface {p2, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 1255
    iget-boolean v10, p0, Ldd;->n:Z

    if-eqz v10, :cond_0

    .line 1256
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "id string = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1258
    :cond_0
    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x59328327

    const/4 v12, 0x2

    if-eq v10, v11, :cond_3

    const v11, -0x44bbba68

    if-eq v10, v11, :cond_2

    const/16 v11, 0xd1b

    if-eq v10, v11, :cond_1

    goto :goto_1

    :cond_1
    const-string v10, "id"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v1

    goto :goto_2

    :cond_2
    const-string v10, "constraintRotate"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v12

    goto :goto_2

    :cond_3
    const-string v10, "deriveConstraintsFrom"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v7

    goto :goto_2

    :cond_4
    :goto_1
    move v8, v3

    :goto_2
    if-eqz v8, :cond_d

    if-eq v8, v7, :cond_c

    if-eq v8, v12, :cond_5

    goto/16 :goto_5

    .line 1269
    :cond_5
    :try_start_0
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Landroidx/constraintlayout/widget/d;->c:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 1271
    :catch_0
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v10, 0x4

    const/4 v11, 0x3

    sparse-switch v8, :sswitch_data_0

    goto :goto_3

    :sswitch_0
    const-string v8, "x_right"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v11

    goto :goto_4

    :sswitch_1
    const-string v8, "right"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v7

    goto :goto_4

    :sswitch_2
    const-string v8, "none"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v1

    goto :goto_4

    :sswitch_3
    const-string v8, "left"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v12

    goto :goto_4

    :sswitch_4
    const-string v8, "x_left"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    move v8, v10

    goto :goto_4

    :cond_6
    :goto_3
    move v8, v3

    :goto_4
    if-eqz v8, :cond_b

    if-eq v8, v7, :cond_a

    if-eq v8, v12, :cond_9

    if-eq v8, v11, :cond_8

    if-eq v8, v10, :cond_7

    goto :goto_5

    .line 1285
    :cond_7
    iput v10, v0, Landroidx/constraintlayout/widget/d;->c:I

    goto :goto_5

    .line 1282
    :cond_8
    iput v11, v0, Landroidx/constraintlayout/widget/d;->c:I

    goto :goto_5

    .line 1279
    :cond_9
    iput v12, v0, Landroidx/constraintlayout/widget/d;->c:I

    goto :goto_5

    .line 1276
    :cond_a
    iput v7, v0, Landroidx/constraintlayout/widget/d;->c:I

    goto :goto_5

    .line 1273
    :cond_b
    iput v1, v0, Landroidx/constraintlayout/widget/d;->c:I

    goto :goto_5

    .line 1265
    :cond_c
    invoke-direct {p0, p1, v9}, Ldd;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v6

    goto :goto_5

    .line 1260
    :cond_d
    invoke-direct {p0, p1, v9}, Ldd;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    .line 1261
    iget-object v7, p0, Ldd;->l:Ljava/util/HashMap;

    invoke-static {v9}, Ldd;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    invoke-static {p1, v5}, Lcl;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Landroidx/constraintlayout/widget/d;->a:Ljava/lang/String;

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    :cond_e
    if-eq v5, v3, :cond_11

    .line 1295
    iget-object v1, p0, Ldd;->f:Ldb;

    iget v1, v1, Ldb;->l:I

    if-eqz v1, :cond_f

    .line 1296
    invoke-virtual {v0, v7}, Landroidx/constraintlayout/widget/d;->b(Z)V

    .line 1298
    :cond_f
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/widget/d;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    if-eq v6, v3, :cond_10

    .line 1300
    iget-object p1, p0, Ldd;->m:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 1302
    :cond_10
    iget-object p1, p0, Ldd;->k:Landroid/util/SparseArray;

    invoke-virtual {p1, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_11
    return v5

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2dcd1c92 -> :sswitch_4
        0x32a007 -> :sswitch_3
        0x33af38 -> :sswitch_2
        0x677c21c -> :sswitch_1
        0x747feb95 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic c(Ldd;)I
    .locals 0

    .line 60
    iget p0, p0, Ldd;->p:I

    return p0
.end method

.method static synthetic d(Ldd;)Landroid/util/SparseArray;
    .locals 0

    .line 60
    iget-object p0, p0, Ldd;->k:Landroid/util/SparseArray;

    return-object p0
.end method

.method private e(I)I
    .locals 2

    .line 239
    iget-object v0, p0, Ldd;->a:Landroidx/constraintlayout/widget/j;

    if-eqz v0, :cond_0

    const/4 v1, -0x1

    .line 240
    invoke-virtual {v0, p1, v1, v1}, Landroidx/constraintlayout/widget/j;->a(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    return v0

    :cond_0
    return p1
.end method

.method private f(I)Z
    .locals 4

    .line 1808
    iget-object v0, p0, Ldd;->m:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    .line 1809
    iget-object v1, p0, Ldd;->m:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    :goto_0
    if-lez v0, :cond_2

    const/4 v2, 0x1

    if-ne v0, p1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v1, -0x1

    if-gez v1, :cond_1

    return v2

    .line 1817
    :cond_1
    iget-object v1, p0, Ldd;->m:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v0

    move v1, v3

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private t()Z
    .locals 1

    .line 439
    iget-object v0, p0, Ldd;->t:Ldb$d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method a(III)Landroidx/constraintlayout/widget/d;
    .locals 3

    .line 1333
    iget-boolean v0, p0, Ldd;->n:Z

    if-eqz v0, :cond_0

    .line 1334
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1335
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Ldd;->k:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1337
    :cond_0
    iget-object v0, p0, Ldd;->a:Landroidx/constraintlayout/widget/j;

    if-eqz v0, :cond_1

    .line 1338
    invoke-virtual {v0, p1, p2, p3}, Landroidx/constraintlayout/widget/j;->a(III)I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    move p1, p2

    .line 1343
    :cond_1
    iget-object p2, p0, Ldd;->k:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_2

    .line 1344
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Warning could not find ConstraintSet id/"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ldd;->f:Ldb;

    invoke-virtual {p3}, Ldb;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Lcl;->a(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " In MotionScene"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MotionScene"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    iget-object p1, p0, Ldd;->k:Landroid/util/SparseArray;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/d;

    return-object p1

    .line 1347
    :cond_2
    iget-object p2, p0, Ldd;->k:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/widget/d;

    return-object p1
.end method

.method public a(IFFLandroid/view/MotionEvent;)Ldd$a;
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    const/4 v4, -0x1

    if-eq v1, v4, :cond_7

    .line 296
    invoke-virtual/range {p0 .. p1}, Ldd;->a(I)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 299
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 300
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldd$a;

    .line 301
    invoke-static {v8}, Ldd$a;->f(Ldd$a;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    .line 304
    :cond_1
    invoke-static {v8}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 305
    invoke-static {v8}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v9

    iget-boolean v10, v0, Ldd;->u:Z

    invoke-virtual {v9, v10}, Lde;->a(Z)V

    .line 306
    invoke-static {v8}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v9

    iget-object v10, v0, Ldd;->f:Ldb;

    invoke-virtual {v9, v10, v7}, Lde;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    if-eqz v9, :cond_2

    if-eqz p4, :cond_2

    .line 307
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    if-nez v9, :cond_2

    goto :goto_0

    .line 310
    :cond_2
    invoke-static {v8}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v9

    iget-object v10, v0, Ldd;->f:Ldb;

    invoke-virtual {v9, v10, v7}, Lde;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v9

    if-eqz v9, :cond_3

    if-eqz p4, :cond_3

    .line 311
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    invoke-virtual {v9, v10, v11}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v9

    if-nez v9, :cond_3

    goto :goto_0

    .line 315
    :cond_3
    invoke-static {v8}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v9

    invoke-virtual {v9, v2, v3}, Lde;->f(FF)F

    move-result v9

    .line 316
    invoke-static {v8}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v10

    iget-boolean v10, v10, Lde;->c:Z

    if-eqz v10, :cond_4

    if-eqz p4, :cond_4

    .line 317
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-static {v8}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v10

    iget v10, v10, Lde;->a:F

    sub-float/2addr v9, v10

    .line 318
    invoke-virtual/range {p4 .. p4}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    invoke-static {v8}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v11

    iget v11, v11, Lde;->b:F

    sub-float/2addr v10, v11

    add-float v11, v2, v9

    add-float v12, v3, v10

    float-to-double v12, v12

    float-to-double v14, v11

    .line 321
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v11

    float-to-double v13, v9

    float-to-double v9, v10

    .line 322
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    sub-double/2addr v11, v9

    double-to-float v9, v11

    const/high16 v10, 0x41200000    # 10.0f

    mul-float/2addr v9, v10

    .line 325
    :cond_4
    invoke-static {v8}, Ldd$a;->a(Ldd$a;)I

    move-result v10

    if-ne v10, v1, :cond_5

    const/high16 v10, -0x40800000    # -1.0f

    goto :goto_1

    :cond_5
    const v10, 0x3f8ccccd    # 1.1f

    :goto_1
    mul-float/2addr v9, v10

    cmpl-float v10, v9, v5

    if-lez v10, :cond_0

    move-object v6, v8

    move v5, v9

    goto/16 :goto_0

    :cond_6
    return-object v6

    .line 347
    :cond_7
    iget-object v1, v0, Ldd;->b:Ldd$a;

    return-object v1
.end method

.method public a()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ldd$a;",
            ">;"
        }
    .end annotation

    .line 351
    iget-object v0, p0, Ldd;->h:Ljava/util/ArrayList;

    return-object v0
.end method

.method public a(I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ldd$a;",
            ">;"
        }
    .end annotation

    .line 249
    invoke-direct {p0, p1}, Ldd;->e(I)I

    move-result p1

    .line 250
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object v1, p0, Ldd;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd$a;

    .line 252
    invoke-static {v2}, Ldd$a;->b(Ldd$a;)I

    move-result v3

    if-eq v3, p1, :cond_1

    invoke-static {v2}, Ldd$a;->a(Ldd$a;)I

    move-result v3

    if-ne v3, p1, :cond_0

    .line 253
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method a(FF)V
    .locals 1

    .line 1595
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1596
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lde;->e(FF)V

    :cond_0
    return-void
.end method

.method a(II)V
    .locals 6

    .line 115
    iget-object v0, p0, Ldd;->a:Landroidx/constraintlayout/widget/j;

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {v0, p1, v1, v1}, Landroidx/constraintlayout/widget/j;->a(III)I

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, p1

    .line 120
    :goto_0
    iget-object v2, p0, Ldd;->a:Landroidx/constraintlayout/widget/j;

    invoke-virtual {v2, p2, v1, v1}, Landroidx/constraintlayout/widget/j;->a(III)I

    move-result v2

    if-eq v2, v1, :cond_2

    goto :goto_1

    :cond_1
    move v0, p1

    :cond_2
    move v2, p2

    .line 130
    :goto_1
    iget-object v3, p0, Ldd;->b:Ldd$a;

    if-eqz v3, :cond_3

    .line 131
    invoke-static {v3}, Ldd$a;->a(Ldd$a;)I

    move-result v3

    if-ne v3, p2, :cond_3

    iget-object v3, p0, Ldd;->b:Ldd$a;

    .line 132
    invoke-static {v3}, Ldd$a;->b(Ldd$a;)I

    move-result v3

    if-ne v3, p1, :cond_3

    return-void

    .line 136
    :cond_3
    iget-object v3, p0, Ldd;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldd$a;

    .line 137
    invoke-static {v4}, Ldd$a;->a(Ldd$a;)I

    move-result v5

    if-ne v5, v2, :cond_5

    .line 138
    invoke-static {v4}, Ldd$a;->b(Ldd$a;)I

    move-result v5

    if-eq v5, v0, :cond_6

    .line 139
    :cond_5
    invoke-static {v4}, Ldd$a;->a(Ldd$a;)I

    move-result v5

    if-ne v5, p2, :cond_4

    .line 140
    invoke-static {v4}, Ldd$a;->b(Ldd$a;)I

    move-result v5

    if-ne v5, p1, :cond_4

    .line 146
    :cond_6
    iput-object v4, p0, Ldd;->b:Ldd$a;

    .line 147
    iget-object p1, p0, Ldd;->b:Ldd$a;

    if-eqz p1, :cond_7

    invoke-static {p1}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 148
    iget-object p1, p0, Ldd;->b:Ldd$a;

    invoke-static {p1}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object p1

    iget-boolean p2, p0, Ldd;->u:Z

    invoke-virtual {p1, p2}, Lde;->a(Z)V

    :cond_7
    return-void

    .line 154
    :cond_8
    iget-object p1, p0, Ldd;->i:Ldd$a;

    .line 155
    iget-object v3, p0, Ldd;->j:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_9
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldd$a;

    .line 156
    invoke-static {v4}, Ldd$a;->a(Ldd$a;)I

    move-result v5

    if-ne v5, p2, :cond_9

    move-object p1, v4

    goto :goto_2

    .line 160
    :cond_a
    new-instance p2, Ldd$a;

    invoke-direct {p2, p0, p1}, Ldd$a;-><init>(Ldd;Ldd$a;)V

    .line 162
    invoke-static {p2, v0}, Ldd$a;->a(Ldd$a;I)I

    .line 163
    invoke-static {p2, v2}, Ldd$a;->b(Ldd$a;I)I

    if-eq v0, v1, :cond_b

    .line 165
    iget-object p1, p0, Ldd;->h:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    :cond_b
    iput-object p2, p0, Ldd;->b:Ldd$a;

    return-void
.end method

.method public a(ILandroidx/constraintlayout/widget/d;)V
    .locals 1

    .line 1357
    iget-object v0, p0, Ldd;->k:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public varargs a(I[Landroid/view/View;)V
    .locals 1

    .line 450
    iget-object v0, p0, Ldd;->c:Ldg;

    invoke-virtual {v0, p1, p2}, Ldg;->a(I[Landroid/view/View;)V

    return-void
.end method

.method a(Landroid/view/MotionEvent;ILdb;)V
    .locals 11

    .line 1504
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 1505
    iget-object v1, p0, Ldd;->t:Ldb$d;

    if-nez v1, :cond_0

    .line 1506
    iget-object v1, p0, Ldd;->f:Ldb;

    invoke-virtual {v1}, Ldb;->a()Ldb$d;

    move-result-object v1

    iput-object v1, p0, Ldd;->t:Ldb$d;

    .line 1508
    :cond_0
    iget-object v1, p0, Ldd;->t:Ldb$d;

    invoke-interface {v1, p1}, Ldb$d;->a(Landroid/view/MotionEvent;)V

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p2, v2, :cond_b

    .line 1520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_7

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    goto/16 :goto_1

    .line 1546
    :cond_1
    iget-boolean v4, p0, Ldd;->r:Z

    if-eqz v4, :cond_2

    goto/16 :goto_1

    .line 1549
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iget v6, p0, Ldd;->e:F

    sub-float/2addr v4, v6

    .line 1550
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    iget v7, p0, Ldd;->d:F

    sub-float/2addr v6, v7

    float-to-double v7, v6

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_3

    float-to-double v7, v4

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_4

    .line 1554
    :cond_3
    iget-object v7, p0, Ldd;->q:Landroid/view/MotionEvent;

    if-nez v7, :cond_5

    :cond_4
    return-void

    .line 1558
    :cond_5
    invoke-virtual {p0, p2, v6, v4, v7}, Ldd;->a(IFFLandroid/view/MotionEvent;)Ldd$a;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1565
    invoke-virtual {p3, v4}, Ldb;->setTransition(Ldd$a;)V

    .line 1566
    iget-object v4, p0, Ldd;->b:Ldd$a;

    invoke-static {v4}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v4

    iget-object v6, p0, Ldd;->f:Ldb;

    invoke-virtual {v4, v6, v0}, Lde;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1567
    iget-object v4, p0, Ldd;->q:Landroid/view/MotionEvent;

    .line 1568
    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v6, p0, Ldd;->q:Landroid/view/MotionEvent;

    invoke-virtual {v6}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-virtual {v0, v4, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-nez v0, :cond_6

    move v5, v3

    :cond_6
    iput-boolean v5, p0, Ldd;->s:Z

    .line 1569
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    iget v4, p0, Ldd;->d:F

    iget v5, p0, Ldd;->e:F

    invoke-virtual {v0, v4, v5}, Lde;->a(FF)V

    goto :goto_1

    .line 1522
    :cond_7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Ldd;->d:F

    .line 1523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Ldd;->e:F

    .line 1524
    iput-object p1, p0, Ldd;->q:Landroid/view/MotionEvent;

    .line 1525
    iput-boolean v5, p0, Ldd;->r:Z

    .line 1526
    iget-object p1, p0, Ldd;->b:Ldd$a;

    invoke-static {p1}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 1527
    iget-object p1, p0, Ldd;->b:Ldd$a;

    invoke-static {p1}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object p1

    iget-object p2, p0, Ldd;->f:Ldb;

    invoke-virtual {p1, p2, v0}, Lde;->b(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1528
    iget-object p2, p0, Ldd;->q:Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object p3, p0, Ldd;->q:Landroid/view/MotionEvent;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_8

    .line 1529
    iput-object v1, p0, Ldd;->q:Landroid/view/MotionEvent;

    .line 1530
    iput-boolean v3, p0, Ldd;->r:Z

    return-void

    .line 1533
    :cond_8
    iget-object p1, p0, Ldd;->b:Ldd$a;

    invoke-static {p1}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object p1

    iget-object p2, p0, Ldd;->f:Ldb;

    invoke-virtual {p1, p2, v0}, Lde;->a(Landroid/view/ViewGroup;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1534
    iget-object p2, p0, Ldd;->q:Landroid/view/MotionEvent;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iget-object p3, p0, Ldd;->q:Landroid/view/MotionEvent;

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-nez p1, :cond_9

    .line 1535
    iput-boolean v3, p0, Ldd;->s:Z

    goto :goto_0

    .line 1537
    :cond_9
    iput-boolean v5, p0, Ldd;->s:Z

    .line 1539
    :goto_0
    iget-object p1, p0, Ldd;->b:Ldd$a;

    invoke-static {p1}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object p1

    iget p2, p0, Ldd;->d:F

    iget p3, p0, Ldd;->e:F

    invoke-virtual {p1, p2, p3}, Lde;->b(FF)V

    :cond_a
    return-void

    .line 1573
    :cond_b
    :goto_1
    iget-boolean v0, p0, Ldd;->r:Z

    if-eqz v0, :cond_c

    return-void

    .line 1576
    :cond_c
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_d

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Ldd;->s:Z

    if-nez v0, :cond_d

    .line 1577
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    iget-object v4, p0, Ldd;->t:Ldb$d;

    invoke-virtual {v0, p1, v4, p2, p0}, Lde;->b(Landroid/view/MotionEvent;Ldb$d;ILdd;)V

    .line 1580
    :cond_d
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result p2

    iput p2, p0, Ldd;->d:F

    .line 1581
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    iput p2, p0, Ldd;->e:F

    .line 1583
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_e

    .line 1584
    iget-object p1, p0, Ldd;->t:Ldb$d;

    if-eqz p1, :cond_e

    .line 1585
    invoke-interface {p1}, Ldb$d;->a()V

    .line 1586
    iput-object v1, p0, Ldd;->t:Ldb$d;

    .line 1587
    iget p1, p3, Ldb;->f:I

    if-eq p1, v2, :cond_e

    .line 1588
    iget p1, p3, Ldb;->f:I

    invoke-virtual {p0, p3, p1}, Ldd;->b(Ldb;I)Z

    :cond_e
    return-void
.end method

.method public a(Lcx;)V
    .locals 2

    .line 1366
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-nez v0, :cond_1

    .line 1367
    iget-object v0, p0, Ldd;->i:Ldd$a;

    if-eqz v0, :cond_0

    .line 1368
    invoke-static {v0}, Ldd$a;->j(Ldd$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcr;

    .line 1369
    invoke-virtual {v1, p1}, Lcr;->b(Lcx;)V

    goto :goto_0

    :cond_0
    return-void

    .line 1374
    :cond_1
    invoke-static {v0}, Ldd$a;->j(Ldd$a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcr;

    .line 1375
    invoke-virtual {v1, p1}, Lcr;->b(Lcx;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method a(Ldb;)V
    .locals 3

    const/4 v0, 0x0

    .line 1791
    :goto_0
    iget-object v1, p0, Ldd;->k:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1792
    iget-object v1, p0, Ldd;->k:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 1793
    invoke-direct {p0, v1}, Ldd;->f(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "MotionScene"

    const-string v0, "Cannot be derived from yourself"

    .line 1794
    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1797
    :cond_0
    invoke-direct {p0, v1, p1}, Ldd;->a(ILdb;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public a(Ldb;I)V
    .locals 4

    .line 262
    iget-object v0, p0, Ldd;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd$a;

    .line 263
    invoke-static {v1}, Ldd$a;->e(Ldd$a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 264
    invoke-static {v1}, Ldd$a;->e(Ldd$a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd$a$a;

    .line 265
    invoke-virtual {v2, p1}, Ldd$a$a;->a(Ldb;)V

    goto :goto_0

    .line 269
    :cond_1
    iget-object v0, p0, Ldd;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd$a;

    .line 270
    invoke-static {v1}, Ldd$a;->e(Ldd$a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 271
    invoke-static {v1}, Ldd$a;->e(Ldd$a;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd$a$a;

    .line 272
    invoke-virtual {v2, p1}, Ldd$a$a;->a(Ldb;)V

    goto :goto_1

    .line 277
    :cond_3
    iget-object v0, p0, Ldd;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd$a;

    .line 278
    invoke-static {v1}, Ldd$a;->e(Ldd$a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 279
    invoke-static {v1}, Ldd$a;->e(Ldd$a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd$a$a;

    .line 280
    invoke-virtual {v3, p1, p2, v1}, Ldd$a$a;->a(Ldb;ILdd$a;)V

    goto :goto_2

    .line 284
    :cond_5
    iget-object v0, p0, Ldd;->j:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd$a;

    .line 285
    invoke-static {v1}, Ldd$a;->e(Ldd$a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 286
    invoke-static {v1}, Ldd$a;->e(Ldd$a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd$a$a;

    .line 287
    invoke-virtual {v3, p1, p2, v1}, Ldd$a$a;->a(Ldb;ILdd$a;)V

    goto :goto_3

    :cond_7
    return-void
.end method

.method public a(Ldd$a;)V
    .locals 1

    .line 232
    iput-object p1, p0, Ldd;->b:Ldd$a;

    .line 233
    iget-object p1, p0, Ldd;->b:Ldd$a;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Ldd;->b:Ldd$a;

    invoke-static {p1}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object p1

    iget-boolean v0, p0, Ldd;->u:Z

    invoke-virtual {p1, v0}, Lde;->a(Z)V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 443
    iput-boolean p1, p0, Ldd;->u:Z

    .line 444
    iget-object p1, p0, Ldd;->b:Ldd$a;

    if-eqz p1, :cond_0

    invoke-static {p1}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 445
    iget-object p1, p0, Ldd;->b:Ldd$a;

    invoke-static {p1}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object p1

    iget-boolean v0, p0, Ldd;->u:Z

    invoke-virtual {p1, v0}, Lde;->a(Z)V

    :cond_0
    return-void
.end method

.method public b(I)Ldd$a;
    .locals 3

    .line 355
    iget-object v0, p0, Ldd;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd$a;

    .line 356
    invoke-static {v1}, Ldd$a;->d(Ldd$a;)I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method b(FF)V
    .locals 1

    .line 1601
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1602
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lde;->d(FF)V

    :cond_0
    return-void
.end method

.method b(Ldb;I)Z
    .locals 7

    .line 381
    invoke-direct {p0}, Ldd;->t()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 384
    :cond_0
    iget-boolean v0, p0, Ldd;->g:Z

    if-eqz v0, :cond_1

    return v1

    .line 388
    :cond_1
    iget-object v0, p0, Ldd;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldd$a;

    .line 389
    invoke-static {v2}, Ldd$a;->g(Ldd$a;)I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 392
    :cond_3
    iget-object v3, p0, Ldd;->b:Ldd$a;

    const/4 v4, 0x2

    if-ne v3, v2, :cond_4

    .line 393
    invoke-virtual {v3, v4}, Ldd$a;->c(I)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 396
    :cond_4
    invoke-static {v2}, Ldd$a;->b(Ldd$a;)I

    move-result v3

    const/4 v5, 0x1

    if-ne p2, v3, :cond_7

    .line 397
    invoke-static {v2}, Ldd$a;->g(Ldd$a;)I

    move-result v3

    const/4 v6, 0x4

    if-eq v3, v6, :cond_5

    .line 398
    invoke-static {v2}, Ldd$a;->g(Ldd$a;)I

    move-result v3

    if-ne v3, v4, :cond_7

    .line 399
    :cond_5
    sget-object p2, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {p1, p2}, Ldb;->setState(Ldb$h;)V

    .line 400
    invoke-virtual {p1, v2}, Ldb;->setTransition(Ldd$a;)V

    .line 401
    invoke-static {v2}, Ldd$a;->g(Ldd$a;)I

    move-result p2

    if-ne p2, v6, :cond_6

    .line 402
    invoke-virtual {p1}, Ldb;->c()V

    .line 403
    sget-object p2, Ldb$h;->SETUP:Ldb$h;

    invoke-virtual {p1, p2}, Ldb;->setState(Ldb$h;)V

    .line 404
    sget-object p2, Ldb$h;->MOVING:Ldb$h;

    invoke-virtual {p1, p2}, Ldb;->setState(Ldb$h;)V

    goto :goto_1

    :cond_6
    const/high16 p2, 0x3f800000    # 1.0f

    .line 406
    invoke-virtual {p1, p2}, Ldb;->setProgress(F)V

    .line 407
    invoke-virtual {p1, v5}, Ldb;->b(Z)V

    .line 408
    sget-object p2, Ldb$h;->SETUP:Ldb$h;

    invoke-virtual {p1, p2}, Ldb;->setState(Ldb$h;)V

    .line 409
    sget-object p2, Ldb$h;->MOVING:Ldb$h;

    invoke-virtual {p1, p2}, Ldb;->setState(Ldb$h;)V

    .line 410
    sget-object p2, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {p1, p2}, Ldb;->setState(Ldb$h;)V

    .line 411
    invoke-virtual {p1}, Ldb;->d()V

    :goto_1
    return v5

    .line 415
    :cond_7
    invoke-static {v2}, Ldd$a;->a(Ldd$a;)I

    move-result v3

    if-ne p2, v3, :cond_2

    .line 416
    invoke-static {v2}, Ldd$a;->g(Ldd$a;)I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_8

    .line 417
    invoke-static {v2}, Ldd$a;->g(Ldd$a;)I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 418
    :cond_8
    sget-object p2, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {p1, p2}, Ldb;->setState(Ldb$h;)V

    .line 419
    invoke-virtual {p1, v2}, Ldb;->setTransition(Ldd$a;)V

    .line 420
    invoke-static {v2}, Ldd$a;->g(Ldd$a;)I

    move-result p2

    if-ne p2, v4, :cond_9

    .line 421
    invoke-virtual {p1}, Ldb;->b()V

    .line 422
    sget-object p2, Ldb$h;->SETUP:Ldb$h;

    invoke-virtual {p1, p2}, Ldb;->setState(Ldb$h;)V

    .line 423
    sget-object p2, Ldb$h;->MOVING:Ldb$h;

    invoke-virtual {p1, p2}, Ldb;->setState(Ldb$h;)V

    goto :goto_2

    :cond_9
    const/4 p2, 0x0

    .line 425
    invoke-virtual {p1, p2}, Ldb;->setProgress(F)V

    .line 426
    invoke-virtual {p1, v5}, Ldb;->b(Z)V

    .line 427
    sget-object p2, Ldb$h;->SETUP:Ldb$h;

    invoke-virtual {p1, p2}, Ldb;->setState(Ldb$h;)V

    .line 428
    sget-object p2, Ldb$h;->MOVING:Ldb$h;

    invoke-virtual {p1, p2}, Ldb;->setState(Ldb$h;)V

    .line 429
    sget-object p2, Ldb$h;->FINISHED:Ldb$h;

    invoke-virtual {p1, p2}, Ldb;->setState(Ldb$h;)V

    .line 430
    invoke-virtual {p1}, Ldb;->d()V

    :goto_2
    return v5

    :cond_a
    return v1
.end method

.method public b()[I
    .locals 3

    .line 364
    iget-object v0, p0, Ldd;->k:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 365
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 366
    iget-object v2, p0, Ldd;->k:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method c(FF)F
    .locals 1

    .line 1614
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1615
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lde;->c(FF)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method c(I)Landroidx/constraintlayout/widget/d;
    .locals 1

    const/4 v0, -0x1

    .line 1329
    invoke-virtual {p0, p1, v0, v0}, Ldd;->a(III)Landroidx/constraintlayout/widget/d;

    move-result-object p1

    return-object p1
.end method

.method c()Z
    .locals 3

    .line 1490
    iget-object v0, p0, Ldd;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd$a;

    .line 1491
    invoke-static {v1}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v1

    if-eqz v1, :cond_0

    return v2

    .line 1495
    :cond_1
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_2

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method d()I
    .locals 1

    .line 1623
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1626
    :cond_0
    invoke-static {v0}, Ldd$a;->b(Ldd$a;)I

    move-result v0

    return v0
.end method

.method public d(I)V
    .locals 1

    .line 1693
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    .line 1694
    invoke-virtual {v0, p1}, Ldd$a;->a(I)V

    goto :goto_0

    .line 1696
    :cond_0
    iput p1, p0, Ldd;->o:I

    :goto_0
    return-void
.end method

.method e()I
    .locals 1

    .line 1630
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 1633
    :cond_0
    invoke-static {v0}, Ldd$a;->a(Ldd$a;)I

    move-result v0

    return v0
.end method

.method public f()Landroid/view/animation/Interpolator;
    .locals 2

    .line 1645
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->k(Ldd$a;)I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return-object v1

    .line 1666
    :pswitch_0
    new-instance v0, Landroid/view/animation/AnticipateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    return-object v0

    .line 1668
    :pswitch_1
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    return-object v0

    .line 1670
    :pswitch_2
    new-instance v0, Landroid/view/animation/BounceInterpolator;

    invoke-direct {v0}, Landroid/view/animation/BounceInterpolator;-><init>()V

    return-object v0

    :pswitch_3
    return-object v1

    .line 1662
    :pswitch_4
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    return-object v0

    .line 1660
    :pswitch_5
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    return-object v0

    .line 1658
    :pswitch_6
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    return-object v0

    .line 1647
    :pswitch_7
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->l(Ldd$a;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lan;->a(Ljava/lang/String;)Lan;

    move-result-object v0

    .line 1648
    new-instance v1, Ldd$1;

    invoke-direct {v1, p0, v0}, Ldd$1;-><init>(Ldd;Lan;)V

    return-object v1

    .line 1655
    :pswitch_8
    iget-object v0, p0, Ldd;->f:Ldb;

    invoke-virtual {v0}, Ldb;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldd;->b:Ldd$a;

    .line 1656
    invoke-static {v1}, Ldd$a;->m(Ldd$a;)I

    move-result v1

    .line 1655
    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    return-object v0

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

.method public g()I
    .locals 1

    .line 1681
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    .line 1682
    invoke-static {v0}, Ldd$a;->n(Ldd$a;)I

    move-result v0

    return v0

    .line 1684
    :cond_0
    iget v0, p0, Ldd;->o:I

    return v0
.end method

.method public h()I
    .locals 1

    .line 1701
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldd$a;->o(Ldd$a;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public i()F
    .locals 1

    .line 1711
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    .line 1712
    invoke-static {v0}, Ldd$a;->p(Ldd$a;)F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method j()F
    .locals 1

    .line 1718
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1719
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    invoke-virtual {v0}, Lde;->b()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method k()F
    .locals 1

    .line 1725
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1726
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    invoke-virtual {v0}, Lde;->c()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method l()F
    .locals 1

    .line 1732
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1733
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    invoke-virtual {v0}, Lde;->h()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method m()F
    .locals 1

    .line 1739
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1740
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    invoke-virtual {v0}, Lde;->i()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method n()F
    .locals 1

    .line 1746
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1747
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    invoke-virtual {v0}, Lde;->j()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method o()F
    .locals 1

    .line 1753
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1754
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    invoke-virtual {v0}, Lde;->k()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method p()I
    .locals 1

    .line 1759
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1760
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    invoke-virtual {v0}, Lde;->l()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method q()I
    .locals 1

    .line 1765
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1766
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    invoke-virtual {v0}, Lde;->e()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method r()V
    .locals 1

    .line 1771
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1772
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    invoke-virtual {v0}, Lde;->a()V

    :cond_0
    return-void
.end method

.method s()Z
    .locals 1

    .line 1777
    iget-object v0, p0, Ldd;->b:Ldd$a;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1778
    iget-object v0, p0, Ldd;->b:Ldd$a;

    invoke-static {v0}, Ldd$a;->c(Ldd$a;)Lde;

    move-result-object v0

    invoke-virtual {v0}, Lde;->d()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
