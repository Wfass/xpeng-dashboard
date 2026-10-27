.class public final Lhc;
.super Ljava/lang/Object;
.source "InputContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lhc$a;,
        Lhc$b;,
        Lhc$c;
    }
.end annotation


# instance fields
.field private final a:Lhc$c;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 2

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x19

    if-lt v0, v1, :cond_0

    .line 171
    new-instance v0, Lhc$a;

    invoke-direct {v0, p1, p2, p3}, Lhc$a;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Lhc;->a:Lhc$c;

    goto :goto_0

    .line 173
    :cond_0
    new-instance v0, Lhc$b;

    invoke-direct {v0, p1, p2, p3}, Lhc$b;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    iput-object v0, p0, Lhc;->a:Lhc$c;

    :goto_0
    return-void
.end method

.method private constructor <init>(Lhc$c;)V
    .locals 0

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p1, p0, Lhc;->a:Lhc$c;

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lhc;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 222
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x19

    if-ge v1, v2, :cond_1

    return-object v0

    .line 225
    :cond_1
    new-instance v0, Lhc;

    new-instance v1, Lhc$a;

    invoke-direct {v1, p0}, Lhc$a;-><init>(Ljava/lang/Object;)V

    invoke-direct {v0, v1}, Lhc;-><init>(Lhc$c;)V

    return-object v0
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .line 186
    iget-object v0, p0, Lhc;->a:Lhc$c;

    invoke-interface {v0}, Lhc$c;->a()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public b()Landroid/content/ClipDescription;
    .locals 1

    .line 196
    iget-object v0, p0, Lhc;->a:Lhc$c;

    invoke-interface {v0}, Lhc$c;->b()Landroid/content/ClipDescription;

    move-result-object v0

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .line 204
    iget-object v0, p0, Lhc;->a:Lhc$c;

    invoke-interface {v0}, Lhc$c;->c()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .line 238
    iget-object v0, p0, Lhc;->a:Lhc$c;

    invoke-interface {v0}, Lhc$c;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()V
    .locals 1

    .line 247
    iget-object v0, p0, Lhc;->a:Lhc$c;

    invoke-interface {v0}, Lhc$c;->e()V

    return-void
.end method
