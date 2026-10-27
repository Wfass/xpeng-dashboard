.class Lbwe$a;
.super Ljava/lang/Object;
.source "AsrToTextNode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbwe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbwe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    new-instance v0, Lbwe;

    invoke-direct {v0}, Lbwe;-><init>()V

    sput-object v0, Lbwe$a;->a:Lbwe;

    return-void
.end method
