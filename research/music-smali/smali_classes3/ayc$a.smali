.class Layc$a;
.super Ljava/lang/Object;
.source "MusicLrcModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Layc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Layc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    new-instance v0, Layc;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Layc;-><init>(Layc$1;)V

    sput-object v0, Layc$a;->a:Layc;

    return-void
.end method

.method static synthetic a()Layc;
    .locals 1

    .line 25
    sget-object v0, Layc$a;->a:Layc;

    return-object v0
.end method
