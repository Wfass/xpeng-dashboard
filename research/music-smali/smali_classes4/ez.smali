.class public final Lez;
.super Ljava/lang/Object;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lez$f;,
        Lez$a;,
        Lez$b;,
        Lez$c;,
        Lez$e;,
        Lez$d;
    }
.end annotation


# static fields
.field public static final a:Ley;

.field public static final b:Ley;

.field public static final c:Ley;

.field public static final d:Ley;

.field public static final e:Ley;

.field public static final f:Ley;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    new-instance v0, Lez$e;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lez$e;-><init>(Lez$c;Z)V

    sput-object v0, Lez;->a:Ley;

    .line 39
    new-instance v0, Lez$e;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lez$e;-><init>(Lez$c;Z)V

    sput-object v0, Lez;->b:Ley;

    .line 47
    new-instance v0, Lez$e;

    sget-object v1, Lez$b;->a:Lez$b;

    invoke-direct {v0, v1, v2}, Lez$e;-><init>(Lez$c;Z)V

    sput-object v0, Lez;->c:Ley;

    .line 55
    new-instance v0, Lez$e;

    sget-object v1, Lez$b;->a:Lez$b;

    invoke-direct {v0, v1, v3}, Lez$e;-><init>(Lez$c;Z)V

    sput-object v0, Lez;->d:Ley;

    .line 62
    new-instance v0, Lez$e;

    sget-object v1, Lez$a;->a:Lez$a;

    invoke-direct {v0, v1, v2}, Lez$e;-><init>(Lez$c;Z)V

    sput-object v0, Lez;->e:Ley;

    .line 68
    sget-object v0, Lez$f;->a:Lez$f;

    sput-object v0, Lez;->f:Ley;

    return-void
.end method

.method static a(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    return v0
.end method

.method static b(I)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    return v1

    :cond_0
    :pswitch_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :pswitch_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
