.class final Laam$a;
.super Ljava/lang/Object;
.source "ObjectSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Laam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/regex/Pattern;

.field final b:Laai;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;Laai;)V
    .locals 0

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object p1, p0, Laam$a;->a:Ljava/util/regex/Pattern;

    .line 586
    iput-object p2, p0, Laam$a;->b:Laai;

    return-void
.end method
