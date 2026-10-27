.class Lgr$h;
.super Lgr$g;
.source "WindowInsetsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "h"
.end annotation


# static fields
.field private static e:Z = false

.field private static f:Ljava/lang/reflect/Method;

.field private static g:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static i:Ljava/lang/reflect/Field;

.field private static j:Ljava/lang/reflect/Field;


# instance fields
.field final c:Landroid/view/WindowInsets;

.field d:Ldv;

.field private k:[Ldv;

.field private l:Ldv;

.field private m:Lgr;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Lgr;Landroid/view/WindowInsets;)V
    .locals 0

    .line 898
    invoke-direct {p0, p1}, Lgr$g;-><init>(Lgr;)V

    const/4 p1, 0x0

    .line 892
    iput-object p1, p0, Lgr$h;->l:Ldv;

    .line 899
    iput-object p2, p0, Lgr$h;->c:Landroid/view/WindowInsets;

    return-void
.end method

.method constructor <init>(Lgr;Lgr$h;)V
    .locals 1

    .line 903
    new-instance v0, Landroid/view/WindowInsets;

    iget-object p2, p2, Lgr$h;->c:Landroid/view/WindowInsets;

    invoke-direct {v0, p2}, Landroid/view/WindowInsets;-><init>(Landroid/view/WindowInsets;)V

    invoke-direct {p0, p1, v0}, Lgr$h;-><init>(Lgr;Landroid/view/WindowInsets;)V

    return-void
.end method

.method private b(IZ)Ldv;
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 940
    sget-object v0, Ldv;->a:Ldv;

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x100

    if-gt v1, v2, :cond_1

    and-int v2, p1, v1

    if-nez v2, :cond_0

    goto :goto_1

    .line 945
    :cond_0
    invoke-virtual {p0, v1, p2}, Lgr$h;->a(IZ)Ldv;

    move-result-object v2

    invoke-static {v0, v2}, Ldv;->a(Ldv;Ldv;)Ldv;

    move-result-object v0

    :goto_1
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private b(Landroid/view/View;)Ldv;
    .locals 4

    const-string v0, "WindowInsetsCompat"

    .line 1125
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1e

    if-ge v1, v2, :cond_5

    .line 1130
    sget-boolean v1, Lgr$h;->e:Z

    if-nez v1, :cond_0

    .line 1131
    invoke-static {}, Lgr$h;->m()V

    .line 1134
    :cond_0
    sget-object v1, Lgr$h;->f:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    sget-object v3, Lgr$h;->h:Ljava/lang/Class;

    if-eqz v3, :cond_4

    sget-object v3, Lgr$h;->i:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1141
    :try_start_0
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden"

    .line 1143
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    invoke-static {v0, p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    .line 1149
    :cond_2
    sget-object v1, Lgr$h;->j:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1150
    sget-object v1, Lgr$h;->i:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz p1, :cond_3

    .line 1151
    invoke-static {p1}, Ldv;->a(Landroid/graphics/Rect;)Ldv;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    return-object v2

    :catch_0
    move-exception p1

    .line 1154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    return-object v2

    .line 1126
    :cond_5
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private l()Ldv;
    .locals 1

    .line 1101
    iget-object v0, p0, Lgr$h;->m:Lgr;

    if-eqz v0, :cond_0

    .line 1102
    invoke-virtual {v0}, Lgr;->k()Ldv;

    move-result-object v0

    return-object v0

    .line 1104
    :cond_0
    sget-object v0, Ldv;->a:Ldv;

    return-object v0
.end method

.method private static m()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1168
    :try_start_0
    const-class v1, Landroid/view/View;

    const-string v2, "getViewRootImpl"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Lgr$h;->f:Ljava/lang/reflect/Method;

    const-string v1, "android.view.ViewRootImpl"

    .line 1169
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lgr$h;->g:Ljava/lang/Class;

    const-string v1, "android.view.View$AttachInfo"

    .line 1170
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lgr$h;->h:Ljava/lang/Class;

    .line 1171
    sget-object v1, Lgr$h;->h:Ljava/lang/Class;

    const-string v2, "mVisibleInsets"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lgr$h;->i:Ljava/lang/reflect/Field;

    .line 1172
    sget-object v1, Lgr$h;->g:Ljava/lang/Class;

    const-string v2, "mAttachInfo"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Lgr$h;->j:Ljava/lang/reflect/Field;

    .line 1173
    sget-object v1, Lgr$h;->i:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1174
    sget-object v1, Lgr$h;->j:Ljava/lang/reflect/Field;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 1176
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get visible insets. (Reflection error). "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/ReflectiveOperationException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "WindowInsetsCompat"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1179
    :goto_0
    sput-boolean v0, Lgr$h;->e:Z

    return-void
.end method


# virtual methods
.method public a(I)Ldv;
    .locals 1

    const/4 v0, 0x0

    .line 914
    invoke-direct {p0, p1, v0}, Lgr$h;->b(IZ)Ldv;

    move-result-object p1

    return-object p1
.end method

.method protected a(IZ)Ldv;
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_f

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eq p1, v0, :cond_b

    const/16 p2, 0x8

    if-eq p1, p2, :cond_6

    const/16 p2, 0x10

    if-eq p1, p2, :cond_5

    const/16 p2, 0x20

    if-eq p1, p2, :cond_4

    const/16 p2, 0x40

    if-eq p1, p2, :cond_3

    const/16 p2, 0x80

    if-eq p1, p2, :cond_0

    .line 1041
    sget-object p1, Ldv;->a:Ldv;

    return-object p1

    .line 1030
    :cond_0
    iget-object p1, p0, Lgr$h;->m:Lgr;

    if-eqz p1, :cond_1

    .line 1031
    invoke-virtual {p1}, Lgr;->i()Lfk;

    move-result-object p1

    goto :goto_0

    .line 1032
    :cond_1
    invoke-virtual {p0}, Lgr$h;->e()Lfk;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 1034
    invoke-virtual {p1}, Lfk;->c()I

    move-result p2

    invoke-virtual {p1}, Lfk;->a()I

    move-result v0

    .line 1035
    invoke-virtual {p1}, Lfk;->d()I

    move-result v1

    invoke-virtual {p1}, Lfk;->b()I

    move-result p1

    .line 1034
    invoke-static {p2, v0, v1, p1}, Ldv;->a(IIII)Ldv;

    move-result-object p1

    return-object p1

    .line 1037
    :cond_2
    sget-object p1, Ldv;->a:Ldv;

    return-object p1

    .line 1026
    :cond_3
    invoke-virtual {p0}, Lgr$h;->k()Ldv;

    move-result-object p1

    return-object p1

    .line 1022
    :cond_4
    invoke-virtual {p0}, Lgr$h;->j()Ldv;

    move-result-object p1

    return-object p1

    .line 1018
    :cond_5
    invoke-virtual {p0}, Lgr$h;->i()Ldv;

    move-result-object p1

    return-object p1

    .line 994
    :cond_6
    iget-object p1, p0, Lgr$h;->k:[Ldv;

    if-eqz p1, :cond_7

    .line 995
    invoke-static {p2}, Lgr$m;->a(I)I

    move-result p2

    aget-object v2, p1, p2

    :cond_7
    if-eqz v2, :cond_8

    return-object v2

    .line 999
    :cond_8
    invoke-virtual {p0}, Lgr$h;->g()Ldv;

    move-result-object p1

    .line 1000
    invoke-direct {p0}, Lgr$h;->l()Ldv;

    move-result-object p2

    .line 1002
    iget v0, p1, Ldv;->e:I

    iget v2, p2, Ldv;->e:I

    if-le v0, v2, :cond_9

    .line 1005
    iget p1, p1, Ldv;->e:I

    invoke-static {v1, v1, v1, p1}, Ldv;->a(IIII)Ldv;

    move-result-object p1

    return-object p1

    .line 1006
    :cond_9
    iget-object p1, p0, Lgr$h;->d:Ldv;

    if-eqz p1, :cond_a

    sget-object v0, Ldv;->a:Ldv;

    .line 1007
    invoke-virtual {p1, v0}, Ldv;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 1010
    iget-object p1, p0, Lgr$h;->d:Ldv;

    iget p1, p1, Ldv;->e:I

    iget p2, p2, Ldv;->e:I

    if-le p1, p2, :cond_a

    .line 1011
    iget-object p1, p0, Lgr$h;->d:Ldv;

    iget p1, p1, Ldv;->e:I

    invoke-static {v1, v1, v1, p1}, Ldv;->a(IIII)Ldv;

    move-result-object p1

    return-object p1

    .line 1014
    :cond_a
    sget-object p1, Ldv;->a:Ldv;

    return-object p1

    :cond_b
    if-eqz p2, :cond_c

    .line 964
    invoke-direct {p0}, Lgr$h;->l()Ldv;

    move-result-object p1

    .line 965
    invoke-virtual {p0}, Lgr$h;->h()Ldv;

    move-result-object p2

    .line 966
    iget v0, p1, Ldv;->b:I

    iget v2, p2, Ldv;->b:I

    .line 967
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget v2, p1, Ldv;->d:I

    iget v3, p2, Ldv;->d:I

    .line 969
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget p1, p1, Ldv;->e:I

    iget p2, p2, Ldv;->e:I

    .line 970
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 966
    invoke-static {v0, v1, v2, p1}, Ldv;->a(IIII)Ldv;

    move-result-object p1

    return-object p1

    .line 973
    :cond_c
    invoke-virtual {p0}, Lgr$h;->g()Ldv;

    move-result-object p1

    .line 974
    iget-object p2, p0, Lgr$h;->m:Lgr;

    if-eqz p2, :cond_d

    .line 975
    invoke-virtual {p2}, Lgr;->k()Ldv;

    move-result-object v2

    .line 978
    :cond_d
    iget p2, p1, Ldv;->e:I

    if-eqz v2, :cond_e

    .line 983
    iget v0, v2, Ldv;->e:I

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 985
    :cond_e
    iget v0, p1, Ldv;->b:I

    iget p1, p1, Ldv;->d:I

    invoke-static {v0, v1, p1, p2}, Ldv;->a(IIII)Ldv;

    move-result-object p1

    return-object p1

    :cond_f
    if-eqz p2, :cond_10

    .line 955
    invoke-direct {p0}, Lgr$h;->l()Ldv;

    move-result-object p1

    .line 956
    iget p1, p1, Ldv;->c:I

    .line 957
    invoke-virtual {p0}, Lgr$h;->g()Ldv;

    move-result-object p2

    iget p2, p2, Ldv;->c:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 956
    invoke-static {v1, p1, v1, v1}, Ldv;->a(IIII)Ldv;

    move-result-object p1

    return-object p1

    .line 959
    :cond_10
    invoke-virtual {p0}, Lgr$h;->g()Ldv;

    move-result-object p1

    iget p1, p1, Ldv;->c:I

    invoke-static {v1, p1, v1, v1}, Ldv;->a(IIII)Ldv;

    move-result-object p1

    return-object p1
.end method

.method a(IIII)Lgr;
    .locals 2

    .line 1077
    new-instance v0, Lgr$b;

    iget-object v1, p0, Lgr$h;->c:Landroid/view/WindowInsets;

    invoke-static {v1}, Lgr;->a(Landroid/view/WindowInsets;)Lgr;

    move-result-object v1

    invoke-direct {v0, v1}, Lgr$b;-><init>(Lgr;)V

    .line 1078
    invoke-virtual {p0}, Lgr$h;->g()Ldv;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lgr;->a(Ldv;IIII)Ldv;

    move-result-object v1

    invoke-virtual {v0, v1}, Lgr$b;->a(Ldv;)Lgr$b;

    .line 1079
    invoke-virtual {p0}, Lgr$h;->h()Ldv;

    move-result-object v1

    invoke-static {v1, p1, p2, p3, p4}, Lgr;->a(Ldv;IIII)Ldv;

    move-result-object p1

    invoke-virtual {v0, p1}, Lgr$b;->b(Ldv;)Lgr$b;

    .line 1080
    invoke-virtual {v0}, Lgr$b;->a()Lgr;

    move-result-object p1

    return-object p1
.end method

.method a(Landroid/view/View;)V
    .locals 0

    .line 1110
    invoke-direct {p0, p1}, Lgr$h;->b(Landroid/view/View;)Ldv;

    move-result-object p1

    if-nez p1, :cond_0

    .line 1112
    sget-object p1, Ldv;->a:Ldv;

    .line 1114
    :cond_0
    invoke-virtual {p0, p1}, Lgr$h;->a(Ldv;)V

    return-void
.end method

.method a(Ldv;)V
    .locals 0

    .line 1096
    iput-object p1, p0, Lgr$h;->d:Ldv;

    return-void
.end method

.method a(Lgr;)V
    .locals 0

    .line 1091
    iput-object p1, p0, Lgr$h;->m:Lgr;

    return-void
.end method

.method public a([Ldv;)V
    .locals 0

    .line 1162
    iput-object p1, p0, Lgr$h;->k:[Ldv;

    return-void
.end method

.method a()Z
    .locals 1

    .line 908
    iget-object v0, p0, Lgr$h;->c:Landroid/view/WindowInsets;

    invoke-virtual {v0}, Landroid/view/WindowInsets;->isRound()Z

    move-result v0

    return v0
.end method

.method b(Lgr;)V
    .locals 1

    .line 1085
    iget-object v0, p0, Lgr$h;->m:Lgr;

    invoke-virtual {p1, v0}, Lgr;->a(Lgr;)V

    .line 1086
    iget-object v0, p0, Lgr$h;->d:Ldv;

    invoke-virtual {p1, v0}, Lgr;->b(Ldv;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1184
    invoke-super {p0, p1}, Lgr$g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1185
    :cond_0
    check-cast p1, Lgr$h;

    .line 1186
    iget-object v0, p0, Lgr$h;->d:Ldv;

    iget-object p1, p1, Lgr$h;->d:Ldv;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method final g()Ldv;
    .locals 4

    .line 1063
    iget-object v0, p0, Lgr$h;->l:Ldv;

    if-nez v0, :cond_0

    .line 1064
    iget-object v0, p0, Lgr$h;->c:Landroid/view/WindowInsets;

    .line 1065
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v0

    iget-object v1, p0, Lgr$h;->c:Landroid/view/WindowInsets;

    .line 1066
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v1

    iget-object v2, p0, Lgr$h;->c:Landroid/view/WindowInsets;

    .line 1067
    invoke-virtual {v2}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v2

    iget-object v3, p0, Lgr$h;->c:Landroid/view/WindowInsets;

    .line 1068
    invoke-virtual {v3}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v3

    .line 1064
    invoke-static {v0, v1, v2, v3}, Ldv;->a(IIII)Ldv;

    move-result-object v0

    iput-object v0, p0, Lgr$h;->l:Ldv;

    .line 1070
    :cond_0
    iget-object v0, p0, Lgr$h;->l:Ldv;

    return-object v0
.end method
