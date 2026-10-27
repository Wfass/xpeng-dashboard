.class public Landroidx/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/preference/Preference$d;,
        Landroidx/preference/Preference$BaseSavedState;,
        Landroidx/preference/Preference$e;,
        Landroidx/preference/Preference$a;,
        Landroidx/preference/Preference$c;,
        Landroidx/preference/Preference$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Landroidx/preference/Preference;",
        ">;"
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Z

.field private D:Z

.field private E:Z

.field private F:Z

.field private G:Z

.field private H:I

.field private I:I

.field private J:Landroidx/preference/Preference$a;

.field private K:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private L:Landroidx/preference/PreferenceGroup;

.field private M:Z

.field private N:Z

.field private O:Landroidx/preference/Preference$d;

.field private P:Landroidx/preference/Preference$e;

.field private final Q:Landroid/view/View$OnClickListener;

.field private a:Landroid/content/Context;

.field private b:Landroidx/preference/e;

.field private c:Landroidx/preference/b;

.field private d:J

.field private e:Z

.field private f:Landroidx/preference/Preference$b;

.field private g:Landroidx/preference/Preference$c;

.field private h:I

.field private i:I

.field private j:Ljava/lang/CharSequence;

.field private k:Ljava/lang/CharSequence;

.field private l:I

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Ljava/lang/String;

.field private o:Landroid/content/Intent;

.field private p:Ljava/lang/String;

.field private q:Landroid/os/Bundle;

.field private r:Z

.field private s:Z

.field private t:Z

.field private u:Z

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/Object;

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 323
    invoke-direct {p0, p1, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 312
    sget v0, Landroidx/preference/h$a;->preferenceStyle:I

    const v1, 0x101008e

    invoke-static {p1, v0, v1}, Ldt;->a(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 297
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    .line 204
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 127
    iput v0, p0, Landroidx/preference/Preference;->h:I

    const/4 v1, 0x0

    .line 128
    iput v1, p0, Landroidx/preference/Preference;->i:I

    const/4 v2, 0x1

    .line 141
    iput-boolean v2, p0, Landroidx/preference/Preference;->r:Z

    .line 142
    iput-boolean v2, p0, Landroidx/preference/Preference;->s:Z

    .line 144
    iput-boolean v2, p0, Landroidx/preference/Preference;->u:Z

    .line 147
    iput-boolean v2, p0, Landroidx/preference/Preference;->x:Z

    .line 148
    iput-boolean v2, p0, Landroidx/preference/Preference;->y:Z

    .line 149
    iput-boolean v2, p0, Landroidx/preference/Preference;->z:Z

    .line 151
    iput-boolean v2, p0, Landroidx/preference/Preference;->A:Z

    .line 152
    iput-boolean v2, p0, Landroidx/preference/Preference;->B:Z

    .line 154
    iput-boolean v2, p0, Landroidx/preference/Preference;->D:Z

    .line 161
    iput-boolean v2, p0, Landroidx/preference/Preference;->G:Z

    .line 163
    sget v3, Landroidx/preference/h$e;->preference:I

    iput v3, p0, Landroidx/preference/Preference;->H:I

    .line 178
    new-instance v3, Landroidx/preference/Preference$1;

    invoke-direct {v3, p0}, Landroidx/preference/Preference$1;-><init>(Landroidx/preference/Preference;)V

    iput-object v3, p0, Landroidx/preference/Preference;->Q:Landroid/view/View$OnClickListener;

    .line 205
    iput-object p1, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    .line 207
    sget-object v3, Landroidx/preference/h$h;->Preference:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 210
    sget p2, Landroidx/preference/h$h;->Preference_icon:I

    sget p3, Landroidx/preference/h$h;->Preference_android_icon:I

    invoke-static {p1, p2, p3, v1}, Ldt;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->l:I

    .line 213
    sget p2, Landroidx/preference/h$h;->Preference_key:I

    sget p3, Landroidx/preference/h$h;->Preference_android_key:I

    invoke-static {p1, p2, p3}, Ldt;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    .line 216
    sget p2, Landroidx/preference/h$h;->Preference_title:I

    sget p3, Landroidx/preference/h$h;->Preference_android_title:I

    invoke-static {p1, p2, p3}, Ldt;->c(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    .line 219
    sget p2, Landroidx/preference/h$h;->Preference_summary:I

    sget p3, Landroidx/preference/h$h;->Preference_android_summary:I

    invoke-static {p1, p2, p3}, Ldt;->c(Landroid/content/res/TypedArray;II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    .line 222
    sget p2, Landroidx/preference/h$h;->Preference_order:I

    sget p3, Landroidx/preference/h$h;->Preference_android_order:I

    invoke-static {p1, p2, p3, v0}, Ldt;->a(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->h:I

    .line 225
    sget p2, Landroidx/preference/h$h;->Preference_fragment:I

    sget p3, Landroidx/preference/h$h;->Preference_android_fragment:I

    invoke-static {p1, p2, p3}, Ldt;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->p:Ljava/lang/String;

    .line 228
    sget p2, Landroidx/preference/h$h;->Preference_layout:I

    sget p3, Landroidx/preference/h$h;->Preference_android_layout:I

    sget p4, Landroidx/preference/h$e;->preference:I

    invoke-static {p1, p2, p3, p4}, Ldt;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->H:I

    .line 231
    sget p2, Landroidx/preference/h$h;->Preference_widgetLayout:I

    sget p3, Landroidx/preference/h$h;->Preference_android_widgetLayout:I

    invoke-static {p1, p2, p3, v1}, Ldt;->b(Landroid/content/res/TypedArray;III)I

    move-result p2

    iput p2, p0, Landroidx/preference/Preference;->I:I

    .line 234
    sget p2, Landroidx/preference/h$h;->Preference_enabled:I

    sget p3, Landroidx/preference/h$h;->Preference_android_enabled:I

    invoke-static {p1, p2, p3, v2}, Ldt;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->r:Z

    .line 237
    sget p2, Landroidx/preference/h$h;->Preference_selectable:I

    sget p3, Landroidx/preference/h$h;->Preference_android_selectable:I

    invoke-static {p1, p2, p3, v2}, Ldt;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->s:Z

    .line 240
    sget p2, Landroidx/preference/h$h;->Preference_persistent:I

    sget p3, Landroidx/preference/h$h;->Preference_android_persistent:I

    invoke-static {p1, p2, p3, v2}, Ldt;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->u:Z

    .line 243
    sget p2, Landroidx/preference/h$h;->Preference_dependency:I

    sget p3, Landroidx/preference/h$h;->Preference_android_dependency:I

    invoke-static {p1, p2, p3}, Ldt;->b(Landroid/content/res/TypedArray;II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->v:Ljava/lang/String;

    .line 246
    sget p2, Landroidx/preference/h$h;->Preference_allowDividerAbove:I

    sget p3, Landroidx/preference/h$h;->Preference_allowDividerAbove:I

    iget-boolean p4, p0, Landroidx/preference/Preference;->s:Z

    invoke-static {p1, p2, p3, p4}, Ldt;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->A:Z

    .line 249
    sget p2, Landroidx/preference/h$h;->Preference_allowDividerBelow:I

    sget p3, Landroidx/preference/h$h;->Preference_allowDividerBelow:I

    iget-boolean p4, p0, Landroidx/preference/Preference;->s:Z

    invoke-static {p1, p2, p3, p4}, Ldt;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->B:Z

    .line 252
    sget p2, Landroidx/preference/h$h;->Preference_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 253
    sget p2, Landroidx/preference/h$h;->Preference_defaultValue:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->w:Ljava/lang/Object;

    goto :goto_0

    .line 254
    :cond_0
    sget p2, Landroidx/preference/h$h;->Preference_android_defaultValue:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 255
    sget p2, Landroidx/preference/h$h;->Preference_android_defaultValue:I

    invoke-virtual {p0, p1, p2}, Landroidx/preference/Preference;->a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Landroidx/preference/Preference;->w:Ljava/lang/Object;

    .line 258
    :cond_1
    :goto_0
    sget p2, Landroidx/preference/h$h;->Preference_shouldDisableView:I

    sget p3, Landroidx/preference/h$h;->Preference_android_shouldDisableView:I

    .line 259
    invoke-static {p1, p2, p3, v2}, Ldt;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->G:Z

    .line 262
    sget p2, Landroidx/preference/h$h;->Preference_singleLineTitle:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->C:Z

    .line 263
    iget-boolean p2, p0, Landroidx/preference/Preference;->C:Z

    if-eqz p2, :cond_2

    .line 264
    sget p2, Landroidx/preference/h$h;->Preference_singleLineTitle:I

    sget p3, Landroidx/preference/h$h;->Preference_android_singleLineTitle:I

    invoke-static {p1, p2, p3, v2}, Ldt;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->D:Z

    .line 268
    :cond_2
    sget p2, Landroidx/preference/h$h;->Preference_iconSpaceReserved:I

    sget p3, Landroidx/preference/h$h;->Preference_android_iconSpaceReserved:I

    invoke-static {p1, p2, p3, v1}, Ldt;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->E:Z

    .line 271
    sget p2, Landroidx/preference/h$h;->Preference_isPreferenceVisible:I

    sget p3, Landroidx/preference/h$h;->Preference_isPreferenceVisible:I

    invoke-static {p1, p2, p3, v2}, Ldt;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->z:Z

    .line 274
    sget p2, Landroidx/preference/h$h;->Preference_enableCopying:I

    sget p3, Landroidx/preference/h$h;->Preference_enableCopying:I

    invoke-static {p1, p2, p3, v1}, Ldt;->a(Landroid/content/res/TypedArray;IIZ)Z

    move-result p2

    iput-boolean p2, p0, Landroidx/preference/Preference;->F:Z

    .line 277
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private a(Landroid/content/SharedPreferences$Editor;)V
    .locals 1

    .line 1631
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    invoke-virtual {v0}, Landroidx/preference/e;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1632
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    .line 599
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 601
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 602
    check-cast p1, Landroid/view/ViewGroup;

    .line 603
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 604
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Landroidx/preference/Preference;->a(Landroid/view/View;Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    .line 1387
    iget-object v0, p0, Landroidx/preference/Preference;->v:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1389
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->v:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->e(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1391
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->b(Landroidx/preference/Preference;)V

    return-void

    .line 1393
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dependency \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->v:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" not found for preference \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\" (title: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private b(Landroidx/preference/Preference;)V
    .locals 1

    .line 1436
    iget-object v0, p0, Landroidx/preference/Preference;->K:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1437
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->K:Ljava/util/List;

    .line 1440
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->K:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1442
    invoke-virtual {p0}, Landroidx/preference/Preference;->j()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method private c()V
    .locals 1

    .line 1399
    iget-object v0, p0, Landroidx/preference/Preference;->v:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1400
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->e(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1402
    invoke-direct {v0, p0}, Landroidx/preference/Preference;->c(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private c(Landroidx/preference/Preference;)V
    .locals 1

    .line 1452
    iget-object v0, p0, Landroidx/preference/Preference;->K:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1453
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private d()V
    .locals 3

    .line 1575
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroidx/preference/b;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1576
    iget-object v0, p0, Landroidx/preference/Preference;->w:Ljava/lang/Object;

    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->a(ZLjava/lang/Object;)V

    return-void

    .line 1581
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1582
    invoke-virtual {p0}, Landroidx/preference/Preference;->R()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 1587
    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->a(ZLjava/lang/Object;)V

    goto :goto_1

    .line 1583
    :cond_2
    :goto_0
    iget-object v0, p0, Landroidx/preference/Preference;->w:Ljava/lang/Object;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 1584
    invoke-virtual {p0, v1, v0}, Landroidx/preference/Preference;->a(ZLjava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 794
    iget-boolean v0, p0, Landroidx/preference/Preference;->r:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->x:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/preference/Preference;->y:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()Z
    .locals 1

    .line 815
    iget-boolean v0, p0, Landroidx/preference/Preference;->s:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .line 842
    iget-boolean v0, p0, Landroidx/preference/Preference;->G:Z

    return v0
.end method

.method public final D()Z
    .locals 1

    .line 878
    iget-boolean v0, p0, Landroidx/preference/Preference;->z:Z

    return v0
.end method

.method public E()Ljava/lang/String;
    .locals 1

    .line 952
    iget-object v0, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    return-object v0
.end method

.method F()V
    .locals 2

    .line 962
    iget-object v0, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 966
    iput-boolean v0, p0, Landroidx/preference/Preference;->t:Z

    return-void

    .line 963
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public G()Z
    .locals 1

    .line 975
    iget-object v0, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public H()Z
    .locals 1

    .line 986
    iget-boolean v0, p0, Landroidx/preference/Preference;->u:Z

    return v0
.end method

.method protected I()Z
    .locals 1

    .line 998
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public J()Z
    .locals 1

    .line 1032
    iget-boolean v0, p0, Landroidx/preference/Preference;->D:Z

    return v0
.end method

.method public K()Z
    .locals 1

    .line 1058
    iget-boolean v0, p0, Landroidx/preference/Preference;->E:Z

    return v0
.end method

.method public L()Z
    .locals 1

    .line 1081
    iget-boolean v0, p0, Landroidx/preference/Preference;->F:Z

    return v0
.end method

.method public final M()Landroidx/preference/Preference$e;
    .locals 1

    .line 1107
    iget-object v0, p0, Landroidx/preference/Preference;->P:Landroidx/preference/Preference$e;

    return-object v0
.end method

.method public N()Landroidx/preference/Preference$b;
    .locals 1

    .line 1139
    iget-object v0, p0, Landroidx/preference/Preference;->f:Landroidx/preference/Preference$b;

    return-object v0
.end method

.method public O()Landroidx/preference/Preference$c;
    .locals 1

    .line 1157
    iget-object v0, p0, Landroidx/preference/Preference;->g:Landroidx/preference/Preference$c;

    return-object v0
.end method

.method public P()V
    .locals 2

    .line 1178
    invoke-virtual {p0}, Landroidx/preference/Preference;->A()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroidx/preference/Preference;->B()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1182
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->g()V

    .line 1184
    iget-object v0, p0, Landroidx/preference/Preference;->g:Landroidx/preference/Preference$c;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Landroidx/preference/Preference$c;->a(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 1188
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->T()Landroidx/preference/e;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1191
    invoke-virtual {v0}, Landroidx/preference/e;->h()Landroidx/preference/e$c;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1192
    invoke-interface {v0, p0}, Landroidx/preference/e$c;->onPreferenceTreeClick(Landroidx/preference/Preference;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 1197
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->o:Landroid/content/Intent;

    if-eqz v0, :cond_3

    .line 1198
    invoke-virtual {p0}, Landroidx/preference/Preference;->Q()Landroid/content/Context;

    move-result-object v0

    .line 1199
    iget-object v1, p0, Landroidx/preference/Preference;->o:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public Q()Landroid/content/Context;
    .locals 1

    .line 1212
    iget-object v0, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    return-object v0
.end method

.method public R()Landroid/content/SharedPreferences;
    .locals 1

    .line 1228
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroidx/preference/b;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1232
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    invoke-virtual {v0}, Landroidx/preference/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected S()V
    .locals 1

    .line 1284
    iget-object v0, p0, Landroidx/preference/Preference;->J:Landroidx/preference/Preference$a;

    if-eqz v0, :cond_0

    .line 1285
    invoke-interface {v0, p0}, Landroidx/preference/Preference$a;->b(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public T()Landroidx/preference/e;
    .locals 1

    .line 1295
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    return-object v0
.end method

.method public U()V
    .locals 0

    .line 1357
    invoke-direct {p0}, Landroidx/preference/Preference;->b()V

    return-void
.end method

.method public V()V
    .locals 1

    .line 1366
    invoke-direct {p0}, Landroidx/preference/Preference;->c()V

    const/4 v0, 0x1

    .line 1367
    iput-boolean v0, p0, Landroidx/preference/Preference;->M:Z

    return-void
.end method

.method final W()V
    .locals 1

    const/4 v0, 0x0

    .line 1382
    iput-boolean v0, p0, Landroidx/preference/Preference;->M:Z

    return-void
.end method

.method public X()Ljava/lang/String;
    .locals 1

    .line 1541
    iget-object v0, p0, Landroidx/preference/Preference;->v:Ljava/lang/String;

    return-object v0
.end method

.method public Y()Landroidx/preference/PreferenceGroup;
    .locals 1

    .line 1552
    iget-object v0, p0, Landroidx/preference/Preference;->L:Landroidx/preference/PreferenceGroup;

    return-object v0
.end method

.method protected Z()V
    .locals 0

    .line 1561
    invoke-direct {p0}, Landroidx/preference/Preference;->c()V

    return-void
.end method

.method public a(Landroidx/preference/Preference;)I
    .locals 2

    .line 1244
    iget v0, p0, Landroidx/preference/Preference;->h:I

    iget v1, p1, Landroidx/preference/Preference;->h:I

    if-eq v0, v1, :cond_0

    sub-int/2addr v0, v1

    return v0

    .line 1247
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    iget-object v1, p1, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_1
    if-nez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    if-nez v1, :cond_3

    const/4 p1, -0x1

    return p1

    .line 1256
    :cond_3
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected a(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/content/Intent;)V
    .locals 0

    .line 349
    iput-object p1, p0, Landroidx/preference/Preference;->o:Landroid/content/Intent;

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .line 1997
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method protected a(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x1

    .line 2085
    iput-boolean v0, p0, Landroidx/preference/Preference;->N:Z

    .line 2086
    sget-object v0, Landroidx/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2087
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong state class -- expecting Preference State"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 0

    .line 1166
    invoke-virtual {p0}, Landroidx/preference/Preference;->P()V

    return-void
.end method

.method final a(Landroidx/preference/Preference$a;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Landroidx/preference/Preference;->J:Landroidx/preference/Preference$a;

    return-void
.end method

.method public a(Landroidx/preference/Preference$b;)V
    .locals 0

    .line 1129
    iput-object p1, p0, Landroidx/preference/Preference;->f:Landroidx/preference/Preference$b;

    return-void
.end method

.method public a(Landroidx/preference/Preference$c;)V
    .locals 0

    .line 1148
    iput-object p1, p0, Landroidx/preference/Preference;->g:Landroidx/preference/Preference$c;

    return-void
.end method

.method public final a(Landroidx/preference/Preference$e;)V
    .locals 0

    .line 1093
    iput-object p1, p0, Landroidx/preference/Preference;->P:Landroidx/preference/Preference$e;

    .line 1094
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()V

    return-void
.end method

.method public a(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 1483
    iget-boolean p1, p0, Landroidx/preference/Preference;->x:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 1484
    iput-boolean p1, p0, Landroidx/preference/Preference;->x:Z

    .line 1487
    invoke-virtual {p0}, Landroidx/preference/Preference;->j()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->h(Z)V

    .line 1489
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()V

    :cond_0
    return-void
.end method

.method a(Landroidx/preference/PreferenceGroup;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1341
    iget-object v0, p0, Landroidx/preference/Preference;->L:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1342
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This preference already has a parent. You must remove the existing parent before assigning a new one."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1346
    :cond_1
    :goto_0
    iput-object p1, p0, Landroidx/preference/Preference;->L:Landroidx/preference/PreferenceGroup;

    return-void
.end method

.method public a(Landroidx/preference/b;)V
    .locals 0

    .line 391
    iput-object p1, p0, Landroidx/preference/Preference;->c:Landroidx/preference/b;

    return-void
.end method

.method protected a(Landroidx/preference/e;)V
    .locals 2

    .line 1305
    iput-object p1, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    .line 1307
    iget-boolean v0, p0, Landroidx/preference/Preference;->e:Z

    if-nez v0, :cond_0

    .line 1308
    invoke-virtual {p1}, Landroidx/preference/e;->a()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/preference/Preference;->d:J

    .line 1311
    :cond_0
    invoke-direct {p0}, Landroidx/preference/Preference;->d()V

    return-void
.end method

.method protected a(Landroidx/preference/e;J)V
    .locals 0

    .line 1323
    iput-wide p2, p0, Landroidx/preference/Preference;->d:J

    const/4 p2, 0x1

    .line 1324
    iput-boolean p2, p0, Landroidx/preference/Preference;->e:Z

    const/4 p2, 0x0

    .line 1326
    :try_start_0
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(Landroidx/preference/e;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1328
    iput-boolean p2, p0, Landroidx/preference/Preference;->e:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Landroidx/preference/Preference;->e:Z

    .line 1329
    throw p1
.end method

.method public a(Landroidx/preference/g;)V
    .locals 8

    .line 502
    iget-object v0, p1, Landroidx/preference/g;->itemView:Landroid/view/View;

    .line 505
    iget-object v1, p0, Landroidx/preference/Preference;->Q:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 506
    iget v1, p0, Landroidx/preference/Preference;->i:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setId(I)V

    const v1, 0x1020010

    .line 508
    invoke-virtual {p1, v1}, Landroidx/preference/g;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz v1, :cond_1

    .line 510
    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Ljava/lang/CharSequence;

    move-result-object v5

    .line 511
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 512
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 513
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 514
    invoke-virtual {v1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 516
    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    move-object v1, v2

    :goto_0
    const v5, 0x1020016

    .line 520
    invoke-virtual {p1, v5}, Landroidx/preference/g;->a(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_4

    .line 522
    invoke-virtual {p0}, Landroidx/preference/Preference;->y()Ljava/lang/CharSequence;

    move-result-object v6

    .line 523
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 524
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 525
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 526
    iget-boolean v6, p0, Landroidx/preference/Preference;->C:Z

    if-eqz v6, :cond_2

    .line 527
    iget-boolean v6, p0, Landroidx/preference/Preference;->D:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 531
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/Preference;->B()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {p0}, Landroidx/preference/Preference;->A()Z

    move-result v6

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    .line 532
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 535
    :cond_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_1
    const v1, 0x1020006

    .line 539
    invoke-virtual {p1, v1}, Landroidx/preference/g;->a(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v5, 0x4

    if-eqz v1, :cond_a

    .line 541
    iget v6, p0, Landroidx/preference/Preference;->l:I

    if-nez v6, :cond_5

    iget-object v6, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    .line 542
    :cond_5
    iget-object v6, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_6

    .line 543
    iget-object v6, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    iget v7, p0, Landroidx/preference/Preference;->l:I

    invoke-static {v6, v7}, Lf;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    .line 545
    :cond_6
    iget-object v6, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_7

    .line 546
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 549
    :cond_7
    iget-object v6, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_8

    .line 550
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 552
    :cond_8
    iget-boolean v6, p0, Landroidx/preference/Preference;->E:Z

    if-eqz v6, :cond_9

    move v6, v5

    goto :goto_2

    :cond_9
    move v6, v4

    :goto_2
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 556
    :cond_a
    :goto_3
    sget v1, Landroidx/preference/h$d;->icon_frame:I

    invoke-virtual {p1, v1}, Landroidx/preference/g;->a(I)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_b

    const v1, 0x102003e

    .line 558
    invoke-virtual {p1, v1}, Landroidx/preference/g;->a(I)Landroid/view/View;

    move-result-object v1

    :cond_b
    if-eqz v1, :cond_e

    .line 561
    iget-object v6, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_c

    .line 562
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 564
    :cond_c
    iget-boolean v3, p0, Landroidx/preference/Preference;->E:Z

    if-eqz v3, :cond_d

    move v4, v5

    :cond_d
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 568
    :cond_e
    :goto_4
    iget-boolean v1, p0, Landroidx/preference/Preference;->G:Z

    if-eqz v1, :cond_f

    .line 569
    invoke-virtual {p0}, Landroidx/preference/Preference;->A()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->a(Landroid/view/View;Z)V

    goto :goto_5

    :cond_f
    const/4 v1, 0x1

    .line 571
    invoke-direct {p0, v0, v1}, Landroidx/preference/Preference;->a(Landroid/view/View;Z)V

    .line 574
    :goto_5
    invoke-virtual {p0}, Landroidx/preference/Preference;->B()Z

    move-result v1

    .line 575
    invoke-virtual {v0, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 576
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 578
    iget-boolean v3, p0, Landroidx/preference/Preference;->A:Z

    invoke-virtual {p1, v3}, Landroidx/preference/g;->a(Z)V

    .line 579
    iget-boolean v3, p0, Landroidx/preference/Preference;->B:Z

    invoke-virtual {p1, v3}, Landroidx/preference/g;->b(Z)V

    .line 581
    invoke-virtual {p0}, Landroidx/preference/Preference;->L()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 583
    iget-object v3, p0, Landroidx/preference/Preference;->O:Landroidx/preference/Preference$d;

    if-nez v3, :cond_10

    .line 584
    new-instance v3, Landroidx/preference/Preference$d;

    invoke-direct {v3, p0}, Landroidx/preference/Preference$d;-><init>(Landroidx/preference/Preference;)V

    iput-object v3, p0, Landroidx/preference/Preference;->O:Landroidx/preference/Preference$d;

    :cond_10
    if-eqz p1, :cond_11

    .line 586
    iget-object v3, p0, Landroidx/preference/Preference;->O:Landroidx/preference/Preference$d;

    goto :goto_6

    :cond_11
    move-object v3, v2

    :goto_6
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 587
    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    if-eqz p1, :cond_12

    if-nez v1, :cond_12

    .line 591
    invoke-static {v0, v2}, Lgj;->a(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_12
    return-void
.end method

.method public a(Lgu;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected a(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 803
    iget-boolean v0, p0, Landroidx/preference/Preference;->s:Z

    if-eq v0, p1, :cond_0

    .line 804
    iput-boolean p1, p0, Landroidx/preference/Preference;->s:Z

    .line 805
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()V

    :cond_0
    return-void
.end method

.method protected a(ZLjava/lang/Object;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1614
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->a(Ljava/lang/Object;)V

    return-void
.end method

.method aa()Ljava/lang/StringBuilder;
    .locals 4

    .line 1973
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1974
    invoke-virtual {p0}, Landroidx/preference/Preference;->y()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1975
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x20

    if-nez v2, :cond_0

    .line 1976
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1978
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->n()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1979
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1980
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1982
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_2

    .line 1984
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_2
    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 691
    iget-object v0, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_0

    .line 692
    iput-object p1, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 693
    iput p1, p0, Landroidx/preference/Preference;->l:I

    .line 694
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()V

    :cond_0
    return-void
.end method

.method b(Landroid/os/Bundle;)V
    .locals 2

    .line 2010
    invoke-virtual {p0}, Landroidx/preference/Preference;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2011
    iput-boolean v0, p0, Landroidx/preference/Preference;->N:Z

    .line 2012
    invoke-virtual {p0}, Landroidx/preference/Preference;->k()Landroid/os/Parcelable;

    move-result-object v0

    .line 2013
    iget-boolean v1, p0, Landroidx/preference/Preference;->N:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_1

    .line 2018
    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0

    .line 2014
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public b(Landroidx/preference/Preference;Z)V
    .locals 0

    .line 1500
    iget-boolean p1, p0, Landroidx/preference/Preference;->y:Z

    if-ne p1, p2, :cond_0

    xor-int/lit8 p1, p2, 0x1

    .line 1501
    iput-boolean p1, p0, Landroidx/preference/Preference;->y:Z

    .line 1504
    invoke-virtual {p0}, Landroidx/preference/Preference;->j()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->h(Z)V

    .line 1506
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 829
    iget-boolean v0, p0, Landroidx/preference/Preference;->G:Z

    if-eq v0, p1, :cond_0

    .line 830
    iput-boolean p1, p0, Landroidx/preference/Preference;->G:Z

    .line 831
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()V

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    .line 1118
    iget-object v0, p0, Landroidx/preference/Preference;->f:Landroidx/preference/Preference$b;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Landroidx/preference/Preference$b;->a(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 1700
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1705
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->c(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 1710
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroidx/preference/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1712
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/b;->a(Ljava/lang/String;Ljava/util/Set;)V

    goto :goto_0

    .line 1714
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    invoke-virtual {v0}, Landroidx/preference/e;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1715
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1716
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method public c(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1730
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1734
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroidx/preference/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1736
    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/b;->b(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1

    .line 1739
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    invoke-virtual {v0}, Landroidx/preference/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public c(Landroid/os/Bundle;)V
    .locals 0

    .line 2047
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->d(Landroid/os/Bundle;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 367
    iput-object p1, p0, Landroidx/preference/Preference;->p:Ljava/lang/String;

    return-void
.end method

.method public final c(Z)V
    .locals 1

    .line 859
    iget-boolean v0, p0, Landroidx/preference/Preference;->z:Z

    if-eq v0, p1, :cond_0

    .line 860
    iput-boolean p1, p0, Landroidx/preference/Preference;->z:Z

    .line 861
    iget-object p1, p0, Landroidx/preference/Preference;->J:Landroidx/preference/Preference$a;

    if-eqz p1, :cond_0

    .line 862
    invoke-interface {p1, p0}, Landroidx/preference/Preference$a;->c(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method c_()J
    .locals 2

    .line 920
    iget-wide v0, p0, Landroidx/preference/Preference;->d:J

    return-wide v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 91
    check-cast p1, Landroidx/preference/Preference;

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public d(I)V
    .locals 0

    .line 453
    iput p1, p0, Landroidx/preference/Preference;->H:I

    return-void
.end method

.method d(Landroid/os/Bundle;)V
    .locals 1

    .line 2061
    invoke-virtual {p0}, Landroidx/preference/Preference;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2062
    iget-object v0, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 2064
    iput-boolean v0, p0, Landroidx/preference/Preference;->N:Z

    .line 2065
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->a(Landroid/os/Parcelable;)V

    .line 2066
    iget-boolean p1, p0, Landroidx/preference/Preference;->N:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 2067
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .line 938
    iput-object p1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    .line 940
    iget-boolean p1, p0, Landroidx/preference/Preference;->t:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroidx/preference/Preference;->G()Z

    move-result p1

    if-nez p1, :cond_0

    .line 941
    invoke-virtual {p0}, Landroidx/preference/Preference;->F()V

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    .line 1009
    iput-boolean p1, p0, Landroidx/preference/Preference;->u:Z

    return-void
.end method

.method protected e(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 1420
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1424
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/preference/e;->a(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public e(I)V
    .locals 0

    .line 477
    iput p1, p0, Landroidx/preference/Preference;->I:I

    return-void
.end method

.method public e(Ljava/lang/CharSequence;)V
    .locals 1

    .line 749
    invoke-virtual {p0}, Landroidx/preference/Preference;->M()Landroidx/preference/Preference$e;

    move-result-object v0

    if-nez v0, :cond_1

    .line 752
    iget-object v0, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 753
    iput-object p1, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    .line 754
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()V

    :cond_0
    return-void

    .line 750
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Preference already has a SummaryProvider set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Z)V
    .locals 1

    const/4 v0, 0x1

    .line 1020
    iput-boolean v0, p0, Landroidx/preference/Preference;->C:Z

    .line 1021
    iput-boolean p1, p0, Landroidx/preference/Preference;->D:Z

    return-void
.end method

.method public f(I)V
    .locals 1

    .line 621
    iget v0, p0, Landroidx/preference/Preference;->h:I

    if-eq p1, v0, :cond_0

    .line 622
    iput p1, p0, Landroidx/preference/Preference;->h:I

    .line 625
    invoke-virtual {p0}, Landroidx/preference/Preference;->S()V

    :cond_0
    return-void
.end method

.method public f(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    .line 657
    iget-object v0, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 658
    :cond_1
    iput-object p1, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    .line 659
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()V

    :cond_2
    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    .line 1527
    invoke-direct {p0}, Landroidx/preference/Preference;->c()V

    .line 1530
    iput-object p1, p0, Landroidx/preference/Preference;->v:Ljava/lang/String;

    .line 1531
    invoke-direct {p0}, Landroidx/preference/Preference;->b()V

    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1044
    iget-boolean v0, p0, Landroidx/preference/Preference;->E:Z

    if-eq v0, p1, :cond_0

    .line 1045
    iput-boolean p1, p0, Landroidx/preference/Preference;->E:Z

    .line 1046
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()V

    :cond_0
    return-void
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method public g(I)V
    .locals 1

    .line 670
    iget-object v0, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->f(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public g(Z)V
    .locals 1

    .line 1068
    iget-boolean v0, p0, Landroidx/preference/Preference;->F:Z

    if-eq v0, p1, :cond_0

    .line 1069
    iput-boolean p1, p0, Landroidx/preference/Preference;->F:Z

    .line 1070
    invoke-virtual {p0}, Landroidx/preference/Preference;->i()V

    :cond_0
    return-void
.end method

.method protected g(Ljava/lang/String;)Z
    .locals 3

    .line 1647
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 1652
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    return v1

    .line 1657
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroidx/preference/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1659
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1661
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    invoke-virtual {v0}, Landroidx/preference/e;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1662
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1663
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method protected h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1677
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 1681
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroidx/preference/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1683
    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/b;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1686
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    invoke-virtual {v0}, Landroidx/preference/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(I)V
    .locals 1

    .line 705
    iget-object v0, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lf;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->b(Landroid/graphics/drawable/Drawable;)V

    .line 706
    iput p1, p0, Landroidx/preference/Preference;->l:I

    return-void
.end method

.method public h(Z)V
    .locals 4

    .line 1464
    iget-object v0, p0, Landroidx/preference/Preference;->K:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    .line 1470
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 1472
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/preference/Preference;

    invoke-virtual {v3, p0, p1}, Landroidx/preference/Preference;->a(Landroidx/preference/Preference;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected i()V
    .locals 1

    .line 1274
    iget-object v0, p0, Landroidx/preference/Preference;->J:Landroidx/preference/Preference$a;

    if-eqz v0, :cond_0

    .line 1275
    invoke-interface {v0, p0}, Landroidx/preference/Preference$a;->a(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method protected i(I)Z
    .locals 3

    .line 1754
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    not-int v0, p1

    .line 1758
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->j(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 1763
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroidx/preference/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1765
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/b;->a(Ljava/lang/String;I)V

    goto :goto_0

    .line 1767
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    invoke-virtual {v0}, Landroidx/preference/e;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1768
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1769
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method protected i(Z)Z
    .locals 3

    .line 1916
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    xor-int/lit8 v0, p1, 0x1

    .line 1920
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->j(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    return v1

    .line 1925
    :cond_1
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroidx/preference/b;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1927
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v2, p1}, Landroidx/preference/b;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 1929
    :cond_2
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    invoke-virtual {v0}, Landroidx/preference/e;->e()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1930
    iget-object v2, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1931
    invoke-direct {p0, v0}, Landroidx/preference/Preference;->a(Landroid/content/SharedPreferences$Editor;)V

    :goto_0
    return v1
.end method

.method protected j(I)I
    .locals 2

    .line 1784
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 1788
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroidx/preference/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1790
    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/b;->b(Ljava/lang/String;I)I

    move-result p1

    return p1

    .line 1793
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    invoke-virtual {v0}, Landroidx/preference/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method public j()Z
    .locals 1

    .line 1516
    invoke-virtual {p0}, Landroidx/preference/Preference;->A()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected j(Z)Z
    .locals 2

    .line 1946
    invoke-virtual {p0}, Landroidx/preference/Preference;->I()Z

    move-result v0

    if-nez v0, :cond_0

    return p1

    .line 1950
    :cond_0
    invoke-virtual {p0}, Landroidx/preference/Preference;->s()Landroidx/preference/b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1952
    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Landroidx/preference/b;->b(Ljava/lang/String;Z)Z

    move-result p1

    return p1

    .line 1955
    :cond_1
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    invoke-virtual {v0}, Landroidx/preference/e;->c()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Landroidx/preference/Preference;->n:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected k()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x1

    .line 2035
    iput-boolean v0, p0, Landroidx/preference/Preference;->N:Z

    .line 2036
    sget-object v0, Landroidx/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method public n()Ljava/lang/CharSequence;
    .locals 1

    .line 732
    invoke-virtual {p0}, Landroidx/preference/Preference;->M()Landroidx/preference/Preference$e;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 733
    invoke-virtual {p0}, Landroidx/preference/Preference;->M()Landroidx/preference/Preference$e;

    move-result-object v0

    invoke-interface {v0, p0}, Landroidx/preference/Preference$e;->a(Landroidx/preference/Preference;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    .line 735
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->k:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public q()Landroid/content/Intent;
    .locals 1

    .line 358
    iget-object v0, p0, Landroidx/preference/Preference;->o:Landroid/content/Intent;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 376
    iget-object v0, p0, Landroidx/preference/Preference;->p:Ljava/lang/String;

    return-object v0
.end method

.method public s()Landroidx/preference/b;
    .locals 1

    .line 408
    iget-object v0, p0, Landroidx/preference/Preference;->c:Landroidx/preference/b;

    if-eqz v0, :cond_0

    return-object v0

    .line 410
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->b:Landroidx/preference/e;

    if-eqz v0, :cond_1

    .line 411
    invoke-virtual {v0}, Landroidx/preference/e;->b()Landroidx/preference/b;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public t()Landroid/os/Bundle;
    .locals 1

    .line 422
    iget-object v0, p0, Landroidx/preference/Preference;->q:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 423
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Landroidx/preference/Preference;->q:Landroid/os/Bundle;

    .line 425
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->q:Landroid/os/Bundle;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1960
    invoke-virtual {p0}, Landroidx/preference/Preference;->aa()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Landroid/os/Bundle;
    .locals 1

    .line 433
    iget-object v0, p0, Landroidx/preference/Preference;->q:Landroid/os/Bundle;

    return-object v0
.end method

.method public final v()I
    .locals 1

    .line 462
    iget v0, p0, Landroidx/preference/Preference;->H:I

    return v0
.end method

.method public final w()I
    .locals 1

    .line 486
    iget v0, p0, Landroidx/preference/Preference;->I:I

    return v0
.end method

.method public x()I
    .locals 1

    .line 636
    iget v0, p0, Landroidx/preference/Preference;->h:I

    return v0
.end method

.method public y()Ljava/lang/CharSequence;
    .locals 1

    .line 680
    iget-object v0, p0, Landroidx/preference/Preference;->j:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public z()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 716
    iget-object v0, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    iget v0, p0, Landroidx/preference/Preference;->l:I

    if-eqz v0, :cond_0

    .line 717
    iget-object v1, p0, Landroidx/preference/Preference;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lf;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    .line 719
    :cond_0
    iget-object v0, p0, Landroidx/preference/Preference;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method
