.class Lez$f;
.super Lez$d;
.source "TextDirectionHeuristicsCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lez;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# static fields
.field static final a:Lez$f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 253
    new-instance v0, Lez$f;

    invoke-direct {v0}, Lez$f;-><init>()V

    sput-object v0, Lez$f;->a:Lez$f;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 244
    invoke-direct {p0, v0}, Lez$d;-><init>(Lez$c;)V

    return-void
.end method


# virtual methods
.method protected a()Z
    .locals 2

    .line 249
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lfa;->a(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
