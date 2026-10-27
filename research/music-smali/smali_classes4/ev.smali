.class public final Lev;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lev$b;,
        Lev$a;
    }
.end annotation


# static fields
.field static final a:Ley;

.field static final b:Lev;

.field static final c:Lev;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field private final f:Z

.field private final g:I

.field private final h:Ley;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 85
    sget-object v0, Lez;->c:Ley;

    sput-object v0, Lev;->a:Ley;

    const/16 v0, 0x200e

    .line 115
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lev;->d:Ljava/lang/String;

    const/16 v0, 0x200f

    .line 120
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lev;->e:Ljava/lang/String;

    .line 217
    new-instance v0, Lev;

    sget-object v1, Lev;->a:Ley;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v2, v1}, Lev;-><init>(ZILey;)V

    sput-object v0, Lev;->b:Lev;

    .line 222
    new-instance v0, Lev;

    sget-object v1, Lev;->a:Ley;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v2, v1}, Lev;-><init>(ZILey;)V

    sput-object v0, Lev;->c:Lev;

    return-void
.end method

.method constructor <init>(ZILey;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 263
    iput-boolean p1, p0, Lev;->f:Z

    .line 264
    iput p2, p0, Lev;->g:I

    .line 265
    iput-object p3, p0, Lev;->h:Ley;

    return-void
.end method

.method public static a()Lev;
    .locals 1

    .line 236
    new-instance v0, Lev$a;

    invoke-direct {v0}, Lev$a;-><init>()V

    invoke-virtual {v0}, Lev$a;->a()Lev;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/CharSequence;Ley;)Ljava/lang/String;
    .locals 2

    .line 300
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Ley;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 302
    iget-boolean v0, p0, Lev;->f:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, Lev;->b(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 303
    :cond_0
    sget-object p1, Lev;->d:Ljava/lang/String;

    return-object p1

    .line 305
    :cond_1
    iget-boolean v0, p0, Lev;->f:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, Lev;->b(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 306
    :cond_2
    sget-object p1, Lev;->e:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method static a(Ljava/util/Locale;)Z
    .locals 1

    .line 516
    invoke-static {p0}, Lfa;->a(Ljava/util/Locale;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static b(Ljava/lang/CharSequence;)I
    .locals 2

    .line 541
    new-instance v0, Lev$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lev$b;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Lev$b;->b()I

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/CharSequence;Ley;)Ljava/lang/String;
    .locals 2

    .line 328
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1, v0}, Ley;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 330
    iget-boolean v0, p0, Lev;->f:Z

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    invoke-static {p1}, Lev;->c(Ljava/lang/CharSequence;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 331
    :cond_0
    sget-object p1, Lev;->d:Ljava/lang/String;

    return-object p1

    .line 333
    :cond_1
    iget-boolean v0, p0, Lev;->f:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {p1}, Lev;->c(Ljava/lang/CharSequence;)I

    move-result p1

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    .line 334
    :cond_2
    sget-object p1, Lev;->e:Ljava/lang/String;

    return-object p1

    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method private static c(Ljava/lang/CharSequence;)I
    .locals 2

    .line 558
    new-instance v0, Lev$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lev$b;-><init>(Ljava/lang/CharSequence;Z)V

    invoke-virtual {v0}, Lev$b;->a()I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2

    .line 506
    iget-object v0, p0, Lev;->h:Ley;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lev;->a(Ljava/lang/CharSequence;Ley;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/CharSequence;Ley;Z)Ljava/lang/CharSequence;
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 412
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Ley;->a(Ljava/lang/CharSequence;II)Z

    move-result p2

    .line 413
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 414
    invoke-virtual {p0}, Lev;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 416
    sget-object v1, Lez;->b:Ley;

    goto :goto_0

    :cond_1
    sget-object v1, Lez;->a:Ley;

    .line 415
    :goto_0
    invoke-direct {p0, p1, v1}, Lev;->b(Ljava/lang/CharSequence;Ley;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 418
    :cond_2
    iget-boolean v1, p0, Lev;->f:Z

    if-eq p2, v1, :cond_4

    if-eqz p2, :cond_3

    const/16 v1, 0x202b

    goto :goto_1

    :cond_3
    const/16 v1, 0x202a

    .line 419
    :goto_1
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 420
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const/16 v1, 0x202c

    .line 421
    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    .line 423
    :cond_4
    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_2
    if-eqz p3, :cond_6

    if-eqz p2, :cond_5

    .line 427
    sget-object p2, Lez;->b:Ley;

    goto :goto_3

    :cond_5
    sget-object p2, Lez;->a:Ley;

    .line 426
    :goto_3
    invoke-direct {p0, p1, p2}, Lev;->a(Ljava/lang/CharSequence;Ley;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_6
    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 494
    iget-object v0, p0, Lev;->h:Ley;

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lev;->a(Ljava/lang/String;Ley;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ley;Z)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 392
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lev;->a(Ljava/lang/CharSequence;Ley;Z)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    .line 280
    iget v0, p0, Lev;->g:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
