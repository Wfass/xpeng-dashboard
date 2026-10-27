.class Landroidx/navigation/g$c;
.super Ljava/lang/Object;
.source "NavDeepLink.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/navigation/g$c;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .line 328
    iget-object v0, p0, Landroidx/navigation/g$c;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(I)Ljava/lang/String;
    .locals 1

    .line 336
    iget-object v0, p0, Landroidx/navigation/g$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    .line 324
    iput-object p1, p0, Landroidx/navigation/g$c;->a:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    .line 340
    iget-object v0, p0, Landroidx/navigation/g$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method b(Ljava/lang/String;)V
    .locals 1

    .line 332
    iget-object v0, p0, Landroidx/navigation/g$c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
