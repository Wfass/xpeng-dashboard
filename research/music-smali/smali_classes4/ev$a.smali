.class public final Lev$a;
.super Ljava/lang/Object;
.source "BidiFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lev;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:I

.field private c:Ley;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lev;->a(Ljava/util/Locale;)Z

    move-result v0

    invoke-direct {p0, v0}, Lev$a;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Lev$a;->a:Z

    .line 168
    sget-object p1, Lev;->a:Ley;

    iput-object p1, p0, Lev$a;->c:Ley;

    const/4 p1, 0x2

    .line 169
    iput p1, p0, Lev$a;->b:I

    return-void
.end method

.method private static b(Z)Lev;
    .locals 0

    if-eqz p0, :cond_0

    .line 198
    sget-object p0, Lev;->c:Lev;

    goto :goto_0

    :cond_0
    sget-object p0, Lev;->b:Lev;

    :goto_0
    return-object p0
.end method


# virtual methods
.method public a()Lev;
    .locals 4

    .line 205
    iget v0, p0, Lev$a;->b:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lev$a;->c:Ley;

    sget-object v1, Lev;->a:Ley;

    if-ne v0, v1, :cond_0

    .line 207
    iget-boolean v0, p0, Lev$a;->a:Z

    invoke-static {v0}, Lev$a;->b(Z)Lev;

    move-result-object v0

    return-object v0

    .line 209
    :cond_0
    new-instance v0, Lev;

    iget-boolean v1, p0, Lev$a;->a:Z

    iget v2, p0, Lev$a;->b:I

    iget-object v3, p0, Lev$a;->c:Ley;

    invoke-direct {v0, v1, v2, v3}, Lev;-><init>(ZILey;)V

    return-object v0
.end method
