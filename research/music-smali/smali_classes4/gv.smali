.class public Lgv;
.super Ljava/lang/Object;
.source "AccessibilityNodeProviderCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lgv$c;,
        Lgv$b;,
        Lgv$a;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 121
    new-instance v0, Lgv$c;

    invoke-direct {v0, p0}, Lgv$c;-><init>(Lgv;)V

    iput-object v0, p0, Lgv;->a:Ljava/lang/Object;

    goto :goto_0

    .line 122
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 123
    new-instance v0, Lgv$b;

    invoke-direct {v0, p0}, Lgv$b;-><init>(Lgv;)V

    iput-object v0, p0, Lgv;->a:Ljava/lang/Object;

    goto :goto_0

    .line 124
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_2

    .line 125
    new-instance v0, Lgv$a;

    invoke-direct {v0, p0}, Lgv$a;-><init>(Lgv;)V

    iput-object v0, p0, Lgv;->a:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 127
    iput-object v0, p0, Lgv;->a:Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lgv;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(I)Lgu;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/Object;
    .locals 1

    .line 145
    iget-object v0, p0, Lgv;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public a(Ljava/lang/String;I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Lgu;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(ILgu;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public a(IILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(I)Lgu;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
